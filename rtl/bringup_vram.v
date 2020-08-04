// vim: set ts=4:sts=4:sw=4:noet
`default_nettype none

module bringup_vram(
	// Clock input
	input  clock,

	// UART
	output uart_tx,
	input  uart_rx,

	// SNES reset
	output ppu1_reset_n,
	output ppu2_reset_n,

	// Direction pins
	output lvl_va_dir,
	output lvl_vd_dir,

	// VRAM pins
	output  vrd_n,
	output  vawr_n,
	output  vbwr_n,
	output  va14,
	output  [13:0] vaa,
	output  [13:0] vab,
	inout   [7:0] vda,
	inout   [7:0] vdb,
	
	// LEDs
	output  led7,
	output  led8);

wire reset;
unreset_by_uart unreset(.clock(clock), .uart_rx(uart_rx), .reset(reset));

// SNES chips held in reset.
assign ppu1_reset_n = 0;
assign ppu2_reset_n = 0;

// FPGA owns the VRAM address bus.
assign lvl_va_dir = LVL_DIR_OUTPUT;

// Bidirectional data pins.
wire [7:0] vda_i;
wire [7:0] vdb_i;
wire [7:0] vda_o;
wire [7:0] vdb_o;

pin_bidir_8 pin_bidir_vda(.i(vda_i), .o(vda_o), .dir(lvl_vd_dir), .pin(vda));
pin_bidir_8 pin_bidir_vdb(.i(vdb_i), .o(vdb_o), .dir(lvl_vd_dir), .pin(vdb));

// UART RX/TX wiring.
wire [7:0] incoming_data;
wire incoming_valid;
wire [7:0] outgoing_data;
wire outgoing_valid;
wire tx_busy;

// UART RX.
uart_rx #(.CLOCKS_PER_BAUD(104)) // 115200 baud
	uart_rx0(
		.clock(clock),
		.reset(reset),
		.data_o(incoming_data),
		.valid_o(incoming_valid),
		.rx_i(uart_rx));

// VRAM.
wire error_bad_state;
wire error_bad_opcode;

vram_control
	vram(
		.clock(clock),
		.reset(reset),
		// Control/Data interface
		.read_data_i(incoming_data),
		.read_valid_i(incoming_valid),
		.write_data_o(outgoing_data),
		.write_valid_o(outgoing_valid),
		.write_ready_i(!tx_busy),
		// VRAM bus
		.vrd_n_o(vrd_n),
		.vawr_n_o(vawr_n),
		.vbwr_n_o(vbwr_n),
		.va14_o(va14),
		.vaa_o(vaa),
		.vab_o(vab),
		.vd_dir_o(lvl_vd_dir),
		.vda_i(vda_i),
		.vdb_i(vdb_i),
		.vda_o(vda_o),
		.vdb_o(vdb_o),
		// Error output
		.error_bad_state_o(error_bad_state),
		.error_bad_opcode_o(error_bad_opcode));

// UART TX.
uart_tx #(.CLOCKS_PER_BAUD(104)) // 115200 baud
	uart_tx0(
		.clock(clock),
		.write_i(outgoing_valid),
		.data_i(outgoing_data),
		.busy_o(tx_busy),
		.tx_o(uart_tx));

// LEDs.
oneshot #(.CYCLES(60000)) // 5ms
	oneshot_led7(.clock(clock), .in(incoming_valid), .out(led7));

assign led8 = error_bad_state || error_bad_opcode;

endmodule

module vram_control(
	input  clock,
	input  reset,

	// Control/Data interface
	input  [7:0] read_data_i,
	input  read_valid_i,
	output [7:0] write_data_o,
	output write_valid_o,
	input  write_ready_i,

	// VRAM bus
	output vrd_n_o,
	output vawr_n_o,
	output vbwr_n_o,
	output va14_o,
	output [13:0] vaa_o,
	output [13:0] vab_o,
	output vd_dir_o,
	input  [7:0] vda_i,
	input  [7:0] vdb_i,
	output [7:0] vda_o,
	output [7:0] vdb_o,

	// Error output
	output error_bad_state_o,
	output error_bad_opcode_o);

// Commands: opcode + argument
reg [7:0] opcode;
reg [7:0] arg;

localparam OPCODE_NOOP               = 8'h00;
localparam OPCODE_ECHO               = 8'h01;
localparam OPCODE_ECHO2              = 8'h02;
localparam OPCODE_RESET              = 8'h10;
localparam OPCODE_SET_VA_LOW         = 8'h20;
localparam OPCODE_SET_VA_HIGH        = 8'h21;
localparam OPCODE_SET_VAA_LOW        = 8'h30;
localparam OPCODE_SET_VAA_HIGH       = 8'h31;
localparam OPCODE_SET_VAB_LOW        = 8'h40;
localparam OPCODE_SET_VAB_HIGH       = 8'h41;
localparam OPCODE_SET_VDA            = 8'h50;
localparam OPCODE_SET_VDB            = 8'h51;
localparam OPCODE_SET_CYCLE_DURATION = 8'h60;
localparam OPCODE_WRITE              = 8'h80;
localparam OPCODE_READ               = 8'h90;

// Registers
reg reg_error_bad_state;
reg reg_error_bad_opcode;
reg reg_va14;
reg [13:0] reg_vaa;
reg [13:0] reg_vab;
reg [7:0] reg_vda;
reg [7:0] reg_vdb;

localparam CYCLE_DURATION_BITS = 6;
reg [CYCLE_DURATION_BITS-1:0] reg_cycle_duration;
localparam MAX_CYCLE_DURATION = (1 << CYCLE_DURATION_BITS) - 1;

reg cycle_op;
localparam CYCLE_OP_READ = 1'b0;
localparam CYCLE_OP_WRITE = 1'b1;
wire cycle_op_is_read;
wire cycle_op_is_write;
assign cycle_op_is_read = (cycle_op == CYCLE_OP_READ);
assign cycle_op_is_write = (cycle_op == CYCLE_OP_WRITE);

reg [CYCLE_DURATION_BITS-1:0] cycle_counter;

// Output Buffer
reg [7:0] out_first;
reg [7:0] out_second;
reg [1:0] outcount;

// State Machine.
localparam STATE_IDLE     = 5'b00001;
localparam STATE_WAIT_ARG = 5'b00010;
localparam STATE_EXECUTE  = 5'b00100;
localparam STATE_CYCLE    = 5'b01000;
localparam STATE_OUTPUT   = 5'b10000;
reg [4:0] state;

always @(posedge clock)
	if (!reset) begin
		reg_error_bad_state <= 0;
		reg_error_bad_opcode <= 0;
		reg_va14 <= 0;
		reg_vaa <= 0;
		reg_vab <= 0;
		reg_vda <= 0;
		reg_vdb <= 0;
		reg_cycle_duration <= MAX_CYCLE_DURATION;
		state <= STATE_IDLE;
	end else case (state)
		STATE_IDLE: begin
			if (read_valid_i) begin
				opcode <= read_data_i;
				state <= STATE_WAIT_ARG;
			end
		end
		STATE_WAIT_ARG: begin
			if (read_valid_i) begin
				arg <= read_data_i;
				state <= STATE_EXECUTE;
			end
		end
		STATE_EXECUTE: begin
			case (opcode)
				OPCODE_NOOP: begin
					state <= STATE_IDLE;
				end
				OPCODE_ECHO: begin
					out_first <= arg;
					outcount <= 1;
					state <= STATE_OUTPUT;
				end
				OPCODE_ECHO2: begin
					out_first <= arg;
					out_second <= ~arg;
					outcount <= 2;
					state <= STATE_OUTPUT;
				end
				OPCODE_RESET: begin
					reg_error_bad_state <= 0;
					reg_error_bad_opcode <= 0;
					reg_va14 <= 0;
					reg_vaa <= 0;
					reg_vab <= 0;
					reg_vda <= 0;
					reg_vdb <= 0;
					reg_cycle_duration <= MAX_CYCLE_DURATION;
					state <= STATE_IDLE;
				end
				OPCODE_SET_VA_LOW: begin
					reg_vaa <= {reg_vaa[13:8], arg};
					reg_vab <= {reg_vab[13:8], arg};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VA_HIGH: begin
					reg_va14 <= arg[6];
					reg_vaa <= {arg[5:0], reg_vaa[7:0]};
					reg_vab <= {arg[5:0], reg_vab[7:0]};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VAA_LOW: begin
					reg_vaa <= {reg_vaa[13:8], arg};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VAA_HIGH: begin
					reg_va14 <= arg[6];
					reg_vaa <= {arg[5:0], reg_vaa[7:0]};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VAB_LOW: begin
					reg_vab <= {reg_vab[13:8], arg};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VAB_HIGH: begin
					reg_va14 <= arg[6];
					reg_vab <= {arg[5:0], reg_vab[7:0]};
					state <= STATE_IDLE;
				end
				OPCODE_SET_VDA: begin
					reg_vda <= arg;
					state <= STATE_IDLE;
				end
				OPCODE_SET_VDB: begin
					reg_vdb <= arg;
					state <= STATE_IDLE;
				end
				OPCODE_SET_CYCLE_DURATION: begin
					reg_cycle_duration <= arg;
					state <= STATE_IDLE;
				end
				OPCODE_WRITE: begin
					cycle_op <= CYCLE_OP_WRITE;
					cycle_counter <= 0;
					state <= STATE_CYCLE;
				end
				OPCODE_READ: begin
					cycle_op <= CYCLE_OP_READ;
					cycle_counter <= 0;
					state <= STATE_CYCLE;
				end
				default: begin
					reg_error_bad_opcode <= 1;
					state <= STATE_IDLE;
				end
			endcase
		end
		STATE_CYCLE: begin
			if (cycle_counter == reg_cycle_duration) begin
				if (cycle_op_is_read) begin
					reg_vda <= vda_i;
					reg_vdb <= vdb_i;
					out_first <= vda_i;
					out_second <= vdb_i;
					outcount <= 2;
				end
				state <= STATE_OUTPUT;
			end else begin
				cycle_counter <= cycle_counter + 1;
			end
		end
		STATE_OUTPUT: begin
			if (outcount == 0) begin
				state <= STATE_IDLE;
			end else if (write_valid_o) begin
				out_first <= out_second;
				outcount <= outcount - 1;
			end
		end
		default: begin
			reg_error_bad_state <= 1;
			state <= STATE_IDLE;
		end
	endcase

// Cycle signals
assign vrd_n_o = (state == STATE_CYCLE ? ~cycle_op_is_read : 1);
assign vawr_n_o = (state == STATE_CYCLE ? ~cycle_op_is_write : 1);
assign vbwr_n_o = (state == STATE_CYCLE ? ~cycle_op_is_write : 1);
assign va14_o = (state == STATE_CYCLE ? reg_va14 : 0);
assign vaa_o = (state == STATE_CYCLE ? reg_vaa : 14'd0);
assign vab_o = (state == STATE_CYCLE ? reg_vab : 14'd0);
assign vd_dir_o = (
	state == STATE_CYCLE ?
		(cycle_op_is_write ? LVL_DIR_OUTPUT : LVL_DIR_INPUT)
		: LVL_DIR_INPUT);
assign vda_o = (state == STATE_CYCLE ? reg_vda : 8'd0);
assign vdb_o = (state == STATE_CYCLE ? reg_vdb : 8'd0);

// Output signals
assign write_data_o = out_first;
assign write_valid_o = (outcount != 0) && write_ready_i;

// Error signals
assign error_bad_state_o = reg_error_bad_state;
assign error_bad_opcode_o = reg_error_bad_opcode;

endmodule
