// vim: set ts=4:sts=4:sw=4:noet
`default_nettype none

module bringup_boundary(
	// Clock input
	input  clock,

	// Driver pin
	output tp9,

	// UART output
	output uart_tx,

	// All pins, in standard order, omitting FIFO pins (which collide with
	// RS232 UART).
	output led7,
	output led8,
	input  usb_pwren_n,
	input  usb_suspend_n,
	input  xin,
	input  ppu1_reset_n,
	input  ppu2_reset_n,
	input  ppu2_resout0_n,
	input  ppu2_resout1_n,
	input  burst_n,
	input  csync_n,
	input  ppu2_hblank,
	input  ppu2_vblank,
	input  pard_n,
	input  pawr_n,
	input  lvl_pa_dir,
	input  [7:0] pa,
	input  lvl_pd_dir,
	input  [7:0] pd,
	input  lvl_va_dir,
	input  vrd_n,
	input  vawr_n,
	input  vbwr_n,
	input  va14,
	input  [13:0] vaa,
	input  [13:0] vab,
	input  lvl_vd_dir,
	input  [7:0] vda,
	input  [7:0] vdb,
	input  field,
	input  over_n,
	input  ppu_5m,
	input  hcld_n,
	input  vcld_n,
	input  [2:0] color,
	input  [1:0] prio,
	input  [3:0] chr,
	input  ppu2_tst15,
	input  lvl_tst_dir,
	input  lvl_tst_oe,
	input  [14:0] ppu2_tst,
	input  ppu1_extsync_n,
	input  ppu1_hvcmode,
	input  ppu1_master_n,
	input  ppu1_palmode,
	input  ppu2_3p58m,
	input  ppu2_ped_n,
	input  ppu2_5mout_n,
	input  ppu2_toumei_n,
	input  ppu2_extlatch,
	input  ppu2_hvcmode,
	input  ppu2_palmode,
	input  extra1,
	input  extra2,
	input  bodge1,
	input  bodge2,
	input  bodge3,
	input  analog_clock,
	input  analog_r_oe,
	input  [7:0] analog_r,
	input  analog_g_oe,
	input  [7:0] analog_g,
	input  analog_b_oe,
	input  [7:0] analog_b);

bringup_driver bringup_driver0(.clock(clock), .pin_o(tp9));

wire [PINDEFMAX:PINDEFMIN] sensor_state;

assign sensor_state[PINDEF_CLK_12MHZ] = 0; // clock, used above.
bringup_sensor sensor_led7(.clock(clock), .pin_i(led7), .sensed_o(sensor_state[PINDEF_LED7]));
bringup_sensor sensor_led8(.clock(clock), .pin_i(led8), .sensed_o(sensor_state[PINDEF_LED8]));
assign sensor_state[PINDEF_FIFO_D_0] = 0; // FIFO conflicts with RS232 mode.
assign sensor_state[PINDEF_FIFO_D_1] = 0;
assign sensor_state[PINDEF_FIFO_D_2] = 0;
assign sensor_state[PINDEF_FIFO_D_3] = 0;
assign sensor_state[PINDEF_FIFO_D_4] = 0;
assign sensor_state[PINDEF_FIFO_D_5] = 0;
assign sensor_state[PINDEF_FIFO_D_6] = 0;
assign sensor_state[PINDEF_FIFO_D_7] = 0;
assign sensor_state[PINDEF_FIFO_RXF_N] = 0;
assign sensor_state[PINDEF_FIFO_TXE_N] = 0;
assign sensor_state[PINDEF_FIFO_RD_N] = 0;
assign sensor_state[PINDEF_FIFO_WR_N] = 0;
assign sensor_state[PINDEF_FIFO_SIWU] = 0;
assign sensor_state[PINDEF_FIFO_CLKOUT] = 0;
assign sensor_state[PINDEF_FIFO_OE_N] = 0;
bringup_sensor sensor_usb_pwren_n(.clock(clock), .pin_i(usb_pwren_n), .sensed_o(sensor_state[PINDEF_USB_PWREN_N]));
bringup_sensor sensor_usb_suspend_n(.clock(clock), .pin_i(usb_suspend_n), .sensed_o(sensor_state[PINDEF_USB_SUSPEND_N]));
bringup_sensor sensor_xin(.clock(clock), .pin_i(xin), .sensed_o(sensor_state[PINDEF_XIN]));
bringup_sensor sensor_ppu1_reset_n(.clock(clock), .pin_i(ppu1_reset_n), .sensed_o(sensor_state[PINDEF_PPU1_RESET_N]));
bringup_sensor sensor_ppu2_reset_n(.clock(clock), .pin_i(ppu2_reset_n), .sensed_o(sensor_state[PINDEF_PPU2_RESET_N]));
bringup_sensor sensor_ppu2_resout0_n(.clock(clock), .pin_i(ppu2_resout0_n), .sensed_o(sensor_state[PINDEF_PPU2_RESOUT0_N]));
bringup_sensor sensor_ppu2_resout1_n(.clock(clock), .pin_i(ppu2_resout1_n), .sensed_o(sensor_state[PINDEF_PPU2_RESOUT1_N]));
bringup_sensor sensor_burst_n(.clock(clock), .pin_i(burst_n), .sensed_o(sensor_state[PINDEF_BURST_N]));
bringup_sensor sensor_csync_n(.clock(clock), .pin_i(csync_n), .sensed_o(sensor_state[PINDEF_CSYNC_N]));
bringup_sensor sensor_ppu2_hblank(.clock(clock), .pin_i(ppu2_hblank), .sensed_o(sensor_state[PINDEF_PPU2_HBLANK]));
bringup_sensor sensor_ppu2_vblank(.clock(clock), .pin_i(ppu2_vblank), .sensed_o(sensor_state[PINDEF_PPU2_VBLANK]));
bringup_sensor sensor_pard_n(.clock(clock), .pin_i(pard_n), .sensed_o(sensor_state[PINDEF_PARD_N]));
bringup_sensor sensor_pawr_n(.clock(clock), .pin_i(pawr_n), .sensed_o(sensor_state[PINDEF_PAWR_N]));
bringup_sensor sensor_lvl_pa_dir(.clock(clock), .pin_i(lvl_pa_dir), .sensed_o(sensor_state[PINDEF_LVL_PA_DIR]));
bringup_sensor sensor_pa_0(.clock(clock), .pin_i(pa[0]), .sensed_o(sensor_state[PINDEF_PA_0]));
bringup_sensor sensor_pa_1(.clock(clock), .pin_i(pa[1]), .sensed_o(sensor_state[PINDEF_PA_1]));
bringup_sensor sensor_pa_2(.clock(clock), .pin_i(pa[2]), .sensed_o(sensor_state[PINDEF_PA_2]));
bringup_sensor sensor_pa_3(.clock(clock), .pin_i(pa[3]), .sensed_o(sensor_state[PINDEF_PA_3]));
bringup_sensor sensor_pa_4(.clock(clock), .pin_i(pa[4]), .sensed_o(sensor_state[PINDEF_PA_4]));
bringup_sensor sensor_pa_5(.clock(clock), .pin_i(pa[5]), .sensed_o(sensor_state[PINDEF_PA_5]));
bringup_sensor sensor_pa_6(.clock(clock), .pin_i(pa[6]), .sensed_o(sensor_state[PINDEF_PA_6]));
bringup_sensor sensor_pa_7(.clock(clock), .pin_i(pa[7]), .sensed_o(sensor_state[PINDEF_PA_7]));
bringup_sensor sensor_lvl_pd_dir(.clock(clock), .pin_i(lvl_pd_dir), .sensed_o(sensor_state[PINDEF_LVL_PD_DIR]));
bringup_sensor sensor_pd_0(.clock(clock), .pin_i(pd[0]), .sensed_o(sensor_state[PINDEF_PD_0]));
bringup_sensor sensor_pd_1(.clock(clock), .pin_i(pd[1]), .sensed_o(sensor_state[PINDEF_PD_1]));
bringup_sensor sensor_pd_2(.clock(clock), .pin_i(pd[2]), .sensed_o(sensor_state[PINDEF_PD_2]));
bringup_sensor sensor_pd_3(.clock(clock), .pin_i(pd[3]), .sensed_o(sensor_state[PINDEF_PD_3]));
bringup_sensor sensor_pd_4(.clock(clock), .pin_i(pd[4]), .sensed_o(sensor_state[PINDEF_PD_4]));
bringup_sensor sensor_pd_5(.clock(clock), .pin_i(pd[5]), .sensed_o(sensor_state[PINDEF_PD_5]));
bringup_sensor sensor_pd_6(.clock(clock), .pin_i(pd[6]), .sensed_o(sensor_state[PINDEF_PD_6]));
bringup_sensor sensor_pd_7(.clock(clock), .pin_i(pd[7]), .sensed_o(sensor_state[PINDEF_PD_7]));
bringup_sensor sensor_lvl_va_dir(.clock(clock), .pin_i(lvl_va_dir), .sensed_o(sensor_state[PINDEF_LVL_VA_DIR]));
bringup_sensor sensor_vrd_n(.clock(clock), .pin_i(vrd_n), .sensed_o(sensor_state[PINDEF_VRD_N]));
bringup_sensor sensor_vawr_n(.clock(clock), .pin_i(vawr_n), .sensed_o(sensor_state[PINDEF_VAWR_N]));
bringup_sensor sensor_vbwr_n(.clock(clock), .pin_i(vbwr_n), .sensed_o(sensor_state[PINDEF_VBWR_N]));
bringup_sensor sensor_va14(.clock(clock), .pin_i(va14), .sensed_o(sensor_state[PINDEF_VA14]));
bringup_sensor sensor_vaa_0(.clock(clock), .pin_i(vaa[0]), .sensed_o(sensor_state[PINDEF_VAA_0]));
bringup_sensor sensor_vaa_1(.clock(clock), .pin_i(vaa[1]), .sensed_o(sensor_state[PINDEF_VAA_1]));
bringup_sensor sensor_vaa_2(.clock(clock), .pin_i(vaa[2]), .sensed_o(sensor_state[PINDEF_VAA_2]));
bringup_sensor sensor_vaa_3(.clock(clock), .pin_i(vaa[3]), .sensed_o(sensor_state[PINDEF_VAA_3]));
bringup_sensor sensor_vaa_4(.clock(clock), .pin_i(vaa[4]), .sensed_o(sensor_state[PINDEF_VAA_4]));
bringup_sensor sensor_vaa_5(.clock(clock), .pin_i(vaa[5]), .sensed_o(sensor_state[PINDEF_VAA_5]));
bringup_sensor sensor_vaa_6(.clock(clock), .pin_i(vaa[6]), .sensed_o(sensor_state[PINDEF_VAA_6]));
bringup_sensor sensor_vaa_7(.clock(clock), .pin_i(vaa[7]), .sensed_o(sensor_state[PINDEF_VAA_7]));
bringup_sensor sensor_vaa_8(.clock(clock), .pin_i(vaa[8]), .sensed_o(sensor_state[PINDEF_VAA_8]));
bringup_sensor sensor_vaa_9(.clock(clock), .pin_i(vaa[9]), .sensed_o(sensor_state[PINDEF_VAA_9]));
bringup_sensor sensor_vaa_10(.clock(clock), .pin_i(vaa[10]), .sensed_o(sensor_state[PINDEF_VAA_10]));
bringup_sensor sensor_vaa_11(.clock(clock), .pin_i(vaa[11]), .sensed_o(sensor_state[PINDEF_VAA_11]));
bringup_sensor sensor_vaa_12(.clock(clock), .pin_i(vaa[12]), .sensed_o(sensor_state[PINDEF_VAA_12]));
bringup_sensor sensor_vaa_13(.clock(clock), .pin_i(vaa[13]), .sensed_o(sensor_state[PINDEF_VAA_13]));
bringup_sensor sensor_vab_0(.clock(clock), .pin_i(vab[0]), .sensed_o(sensor_state[PINDEF_VAB_0]));
bringup_sensor sensor_vab_1(.clock(clock), .pin_i(vab[1]), .sensed_o(sensor_state[PINDEF_VAB_1]));
bringup_sensor sensor_vab_2(.clock(clock), .pin_i(vab[2]), .sensed_o(sensor_state[PINDEF_VAB_2]));
bringup_sensor sensor_vab_3(.clock(clock), .pin_i(vab[3]), .sensed_o(sensor_state[PINDEF_VAB_3]));
bringup_sensor sensor_vab_4(.clock(clock), .pin_i(vab[4]), .sensed_o(sensor_state[PINDEF_VAB_4]));
bringup_sensor sensor_vab_5(.clock(clock), .pin_i(vab[5]), .sensed_o(sensor_state[PINDEF_VAB_5]));
bringup_sensor sensor_vab_6(.clock(clock), .pin_i(vab[6]), .sensed_o(sensor_state[PINDEF_VAB_6]));
bringup_sensor sensor_vab_7(.clock(clock), .pin_i(vab[7]), .sensed_o(sensor_state[PINDEF_VAB_7]));
bringup_sensor sensor_vab_8(.clock(clock), .pin_i(vab[8]), .sensed_o(sensor_state[PINDEF_VAB_8]));
bringup_sensor sensor_vab_9(.clock(clock), .pin_i(vab[9]), .sensed_o(sensor_state[PINDEF_VAB_9]));
bringup_sensor sensor_vab_10(.clock(clock), .pin_i(vab[10]), .sensed_o(sensor_state[PINDEF_VAB_10]));
bringup_sensor sensor_vab_11(.clock(clock), .pin_i(vab[11]), .sensed_o(sensor_state[PINDEF_VAB_11]));
bringup_sensor sensor_vab_12(.clock(clock), .pin_i(vab[12]), .sensed_o(sensor_state[PINDEF_VAB_12]));
bringup_sensor sensor_vab_13(.clock(clock), .pin_i(vab[13]), .sensed_o(sensor_state[PINDEF_VAB_13]));
bringup_sensor sensor_lvl_vd_dir(.clock(clock), .pin_i(lvl_vd_dir), .sensed_o(sensor_state[PINDEF_LVL_VD_DIR]));
bringup_sensor sensor_vda_0(.clock(clock), .pin_i(vda[0]), .sensed_o(sensor_state[PINDEF_VDA_0]));
bringup_sensor sensor_vda_1(.clock(clock), .pin_i(vda[1]), .sensed_o(sensor_state[PINDEF_VDA_1]));
bringup_sensor sensor_vda_2(.clock(clock), .pin_i(vda[2]), .sensed_o(sensor_state[PINDEF_VDA_2]));
bringup_sensor sensor_vda_3(.clock(clock), .pin_i(vda[3]), .sensed_o(sensor_state[PINDEF_VDA_3]));
bringup_sensor sensor_vda_4(.clock(clock), .pin_i(vda[4]), .sensed_o(sensor_state[PINDEF_VDA_4]));
bringup_sensor sensor_vda_5(.clock(clock), .pin_i(vda[5]), .sensed_o(sensor_state[PINDEF_VDA_5]));
bringup_sensor sensor_vda_6(.clock(clock), .pin_i(vda[6]), .sensed_o(sensor_state[PINDEF_VDA_6]));
bringup_sensor sensor_vda_7(.clock(clock), .pin_i(vda[7]), .sensed_o(sensor_state[PINDEF_VDA_7]));
bringup_sensor sensor_vdb_0(.clock(clock), .pin_i(vdb[0]), .sensed_o(sensor_state[PINDEF_VDB_0]));
bringup_sensor sensor_vdb_1(.clock(clock), .pin_i(vdb[1]), .sensed_o(sensor_state[PINDEF_VDB_1]));
bringup_sensor sensor_vdb_2(.clock(clock), .pin_i(vdb[2]), .sensed_o(sensor_state[PINDEF_VDB_2]));
bringup_sensor sensor_vdb_3(.clock(clock), .pin_i(vdb[3]), .sensed_o(sensor_state[PINDEF_VDB_3]));
bringup_sensor sensor_vdb_4(.clock(clock), .pin_i(vdb[4]), .sensed_o(sensor_state[PINDEF_VDB_4]));
bringup_sensor sensor_vdb_5(.clock(clock), .pin_i(vdb[5]), .sensed_o(sensor_state[PINDEF_VDB_5]));
bringup_sensor sensor_vdb_6(.clock(clock), .pin_i(vdb[6]), .sensed_o(sensor_state[PINDEF_VDB_6]));
bringup_sensor sensor_vdb_7(.clock(clock), .pin_i(vdb[7]), .sensed_o(sensor_state[PINDEF_VDB_7]));
bringup_sensor sensor_field(.clock(clock), .pin_i(field), .sensed_o(sensor_state[PINDEF_FIELD]));
bringup_sensor sensor_over_n(.clock(clock), .pin_i(over_n), .sensed_o(sensor_state[PINDEF_OVER_N]));
bringup_sensor sensor_ppu_5m(.clock(clock), .pin_i(ppu_5m), .sensed_o(sensor_state[PINDEF_PPU_5M]));
bringup_sensor sensor_hcld_n(.clock(clock), .pin_i(hcld_n), .sensed_o(sensor_state[PINDEF_HCLD_N]));
bringup_sensor sensor_vcld_n(.clock(clock), .pin_i(vcld_n), .sensed_o(sensor_state[PINDEF_VCLD_N]));
bringup_sensor sensor_color_0(.clock(clock), .pin_i(color[0]), .sensed_o(sensor_state[PINDEF_COLOR_0]));
bringup_sensor sensor_color_1(.clock(clock), .pin_i(color[1]), .sensed_o(sensor_state[PINDEF_COLOR_1]));
bringup_sensor sensor_color_2(.clock(clock), .pin_i(color[2]), .sensed_o(sensor_state[PINDEF_COLOR_2]));
bringup_sensor sensor_prio_0(.clock(clock), .pin_i(prio[0]), .sensed_o(sensor_state[PINDEF_PRIO_0]));
bringup_sensor sensor_prio_1(.clock(clock), .pin_i(prio[1]), .sensed_o(sensor_state[PINDEF_PRIO_1]));
bringup_sensor sensor_chr_0(.clock(clock), .pin_i(chr[0]), .sensed_o(sensor_state[PINDEF_CHR_0]));
bringup_sensor sensor_chr_1(.clock(clock), .pin_i(chr[1]), .sensed_o(sensor_state[PINDEF_CHR_1]));
bringup_sensor sensor_chr_2(.clock(clock), .pin_i(chr[2]), .sensed_o(sensor_state[PINDEF_CHR_2]));
bringup_sensor sensor_chr_3(.clock(clock), .pin_i(chr[3]), .sensed_o(sensor_state[PINDEF_CHR_3]));
bringup_sensor sensor_ppu2_tst15(.clock(clock), .pin_i(ppu2_tst15), .sensed_o(sensor_state[PINDEF_PPU2_TST15]));
bringup_sensor sensor_lvl_tst_dir(.clock(clock), .pin_i(lvl_tst_dir), .sensed_o(sensor_state[PINDEF_LVL_TST_DIR]));
bringup_sensor sensor_lvl_tst_oe(.clock(clock), .pin_i(lvl_tst_oe), .sensed_o(sensor_state[PINDEF_LVL_TST_OE]));
bringup_sensor sensor_ppu2_tst_0(.clock(clock), .pin_i(ppu2_tst[0]), .sensed_o(sensor_state[PINDEF_PPU2_TST_0]));
bringup_sensor sensor_ppu2_tst_1(.clock(clock), .pin_i(ppu2_tst[1]), .sensed_o(sensor_state[PINDEF_PPU2_TST_1]));
bringup_sensor sensor_ppu2_tst_2(.clock(clock), .pin_i(ppu2_tst[2]), .sensed_o(sensor_state[PINDEF_PPU2_TST_2]));
bringup_sensor sensor_ppu2_tst_3(.clock(clock), .pin_i(ppu2_tst[3]), .sensed_o(sensor_state[PINDEF_PPU2_TST_3]));
bringup_sensor sensor_ppu2_tst_4(.clock(clock), .pin_i(ppu2_tst[4]), .sensed_o(sensor_state[PINDEF_PPU2_TST_4]));
bringup_sensor sensor_ppu2_tst_5(.clock(clock), .pin_i(ppu2_tst[5]), .sensed_o(sensor_state[PINDEF_PPU2_TST_5]));
bringup_sensor sensor_ppu2_tst_6(.clock(clock), .pin_i(ppu2_tst[6]), .sensed_o(sensor_state[PINDEF_PPU2_TST_6]));
bringup_sensor sensor_ppu2_tst_7(.clock(clock), .pin_i(ppu2_tst[7]), .sensed_o(sensor_state[PINDEF_PPU2_TST_7]));
bringup_sensor sensor_ppu2_tst_8(.clock(clock), .pin_i(ppu2_tst[8]), .sensed_o(sensor_state[PINDEF_PPU2_TST_8]));
bringup_sensor sensor_ppu2_tst_9(.clock(clock), .pin_i(ppu2_tst[9]), .sensed_o(sensor_state[PINDEF_PPU2_TST_9]));
bringup_sensor sensor_ppu2_tst_10(.clock(clock), .pin_i(ppu2_tst[10]), .sensed_o(sensor_state[PINDEF_PPU2_TST_10]));
bringup_sensor sensor_ppu2_tst_11(.clock(clock), .pin_i(ppu2_tst[11]), .sensed_o(sensor_state[PINDEF_PPU2_TST_11]));
bringup_sensor sensor_ppu2_tst_12(.clock(clock), .pin_i(ppu2_tst[12]), .sensed_o(sensor_state[PINDEF_PPU2_TST_12]));
bringup_sensor sensor_ppu2_tst_13(.clock(clock), .pin_i(ppu2_tst[13]), .sensed_o(sensor_state[PINDEF_PPU2_TST_13]));
bringup_sensor sensor_ppu2_tst_14(.clock(clock), .pin_i(ppu2_tst[14]), .sensed_o(sensor_state[PINDEF_PPU2_TST_14]));
bringup_sensor sensor_ppu1_extsync_n(.clock(clock), .pin_i(ppu1_extsync_n), .sensed_o(sensor_state[PINDEF_PPU1_EXTSYNC_N]));
bringup_sensor sensor_ppu1_hvcmode(.clock(clock), .pin_i(ppu1_hvcmode), .sensed_o(sensor_state[PINDEF_PPU1_HVCMODE]));
bringup_sensor sensor_ppu1_master_n(.clock(clock), .pin_i(ppu1_master_n), .sensed_o(sensor_state[PINDEF_PPU1_MASTER_N]));
bringup_sensor sensor_ppu1_palmode(.clock(clock), .pin_i(ppu1_palmode), .sensed_o(sensor_state[PINDEF_PPU1_PALMODE]));
bringup_sensor sensor_ppu2_3p58m(.clock(clock), .pin_i(ppu2_3p58m), .sensed_o(sensor_state[PINDEF_PPU2_3P58M]));
bringup_sensor sensor_ppu2_ped_n(.clock(clock), .pin_i(ppu2_ped_n), .sensed_o(sensor_state[PINDEF_PPU2_PED_N]));
bringup_sensor sensor_ppu2_5mout_n(.clock(clock), .pin_i(ppu2_5mout_n), .sensed_o(sensor_state[PINDEF_PPU2_5MOUT_N]));
bringup_sensor sensor_ppu2_toumei_n(.clock(clock), .pin_i(ppu2_toumei_n), .sensed_o(sensor_state[PINDEF_PPU2_TOUMEI_N]));
bringup_sensor sensor_ppu2_extlatch(.clock(clock), .pin_i(ppu2_extlatch), .sensed_o(sensor_state[PINDEF_PPU2_EXTLATCH]));
bringup_sensor sensor_ppu2_hvcmode(.clock(clock), .pin_i(ppu2_hvcmode), .sensed_o(sensor_state[PINDEF_PPU2_HVCMODE]));
bringup_sensor sensor_ppu2_palmode(.clock(clock), .pin_i(ppu2_palmode), .sensed_o(sensor_state[PINDEF_PPU2_PALMODE]));
bringup_sensor sensor_extra1(.clock(clock), .pin_i(extra1), .sensed_o(sensor_state[PINDEF_EXTRA1]));
bringup_sensor sensor_extra2(.clock(clock), .pin_i(extra2), .sensed_o(sensor_state[PINDEF_EXTRA2]));
assign sensor_state[PINDEF_EXTRA3] = 0; // tp9, used above as bringup_driver.
bringup_sensor sensor_bodge1(.clock(clock), .pin_i(bodge1), .sensed_o(sensor_state[PINDEF_BODGE1]));
bringup_sensor sensor_bodge2(.clock(clock), .pin_i(bodge2), .sensed_o(sensor_state[PINDEF_BODGE2]));
bringup_sensor sensor_bodge3(.clock(clock), .pin_i(bodge3), .sensed_o(sensor_state[PINDEF_BODGE3]));
bringup_sensor sensor_analog_clock(.clock(clock), .pin_i(analog_clock), .sensed_o(sensor_state[PINDEF_ANALOG_CLOCK]));
bringup_sensor sensor_analog_r_oe(.clock(clock), .pin_i(analog_r_oe), .sensed_o(sensor_state[PINDEF_ANALOG_R_OE]));
bringup_sensor sensor_analog_r_0(.clock(clock), .pin_i(analog_r[0]), .sensed_o(sensor_state[PINDEF_ANALOG_R_0]));
bringup_sensor sensor_analog_r_1(.clock(clock), .pin_i(analog_r[1]), .sensed_o(sensor_state[PINDEF_ANALOG_R_1]));
bringup_sensor sensor_analog_r_2(.clock(clock), .pin_i(analog_r[2]), .sensed_o(sensor_state[PINDEF_ANALOG_R_2]));
bringup_sensor sensor_analog_r_3(.clock(clock), .pin_i(analog_r[3]), .sensed_o(sensor_state[PINDEF_ANALOG_R_3]));
bringup_sensor sensor_analog_r_4(.clock(clock), .pin_i(analog_r[4]), .sensed_o(sensor_state[PINDEF_ANALOG_R_4]));
bringup_sensor sensor_analog_r_5(.clock(clock), .pin_i(analog_r[5]), .sensed_o(sensor_state[PINDEF_ANALOG_R_5]));
bringup_sensor sensor_analog_r_6(.clock(clock), .pin_i(analog_r[6]), .sensed_o(sensor_state[PINDEF_ANALOG_R_6]));
bringup_sensor sensor_analog_r_7(.clock(clock), .pin_i(analog_r[7]), .sensed_o(sensor_state[PINDEF_ANALOG_R_7]));
bringup_sensor sensor_analog_g_oe(.clock(clock), .pin_i(analog_g_oe), .sensed_o(sensor_state[PINDEF_ANALOG_G_OE]));
bringup_sensor sensor_analog_g_0(.clock(clock), .pin_i(analog_g[0]), .sensed_o(sensor_state[PINDEF_ANALOG_G_0]));
bringup_sensor sensor_analog_g_1(.clock(clock), .pin_i(analog_g[1]), .sensed_o(sensor_state[PINDEF_ANALOG_G_1]));
bringup_sensor sensor_analog_g_2(.clock(clock), .pin_i(analog_g[2]), .sensed_o(sensor_state[PINDEF_ANALOG_G_2]));
bringup_sensor sensor_analog_g_3(.clock(clock), .pin_i(analog_g[3]), .sensed_o(sensor_state[PINDEF_ANALOG_G_3]));
bringup_sensor sensor_analog_g_4(.clock(clock), .pin_i(analog_g[4]), .sensed_o(sensor_state[PINDEF_ANALOG_G_4]));
bringup_sensor sensor_analog_g_5(.clock(clock), .pin_i(analog_g[5]), .sensed_o(sensor_state[PINDEF_ANALOG_G_5]));
bringup_sensor sensor_analog_g_6(.clock(clock), .pin_i(analog_g[6]), .sensed_o(sensor_state[PINDEF_ANALOG_G_6]));
bringup_sensor sensor_analog_g_7(.clock(clock), .pin_i(analog_g[7]), .sensed_o(sensor_state[PINDEF_ANALOG_G_7]));
bringup_sensor sensor_analog_b_oe(.clock(clock), .pin_i(analog_b_oe), .sensed_o(sensor_state[PINDEF_ANALOG_B_OE]));
bringup_sensor sensor_analog_b_0(.clock(clock), .pin_i(analog_b[0]), .sensed_o(sensor_state[PINDEF_ANALOG_B_0]));
bringup_sensor sensor_analog_b_1(.clock(clock), .pin_i(analog_b[1]), .sensed_o(sensor_state[PINDEF_ANALOG_B_1]));
bringup_sensor sensor_analog_b_2(.clock(clock), .pin_i(analog_b[2]), .sensed_o(sensor_state[PINDEF_ANALOG_B_2]));
bringup_sensor sensor_analog_b_3(.clock(clock), .pin_i(analog_b[3]), .sensed_o(sensor_state[PINDEF_ANALOG_B_3]));
bringup_sensor sensor_analog_b_4(.clock(clock), .pin_i(analog_b[4]), .sensed_o(sensor_state[PINDEF_ANALOG_B_4]));
bringup_sensor sensor_analog_b_5(.clock(clock), .pin_i(analog_b[5]), .sensed_o(sensor_state[PINDEF_ANALOG_B_5]));
bringup_sensor sensor_analog_b_6(.clock(clock), .pin_i(analog_b[6]), .sensed_o(sensor_state[PINDEF_ANALOG_B_6]));
bringup_sensor sensor_analog_b_7(.clock(clock), .pin_i(analog_b[7]), .sensed_o(sensor_state[PINDEF_ANALOG_B_7]));

wire uart_write;
wire [7:0] uart_data;
wire uart_busy;

uart_tx
	#(.CLOCKS_PER_BAUD(104)) // 115200 baud
	uart_tx0(
		.clock_i(clock),
		.write_i(uart_write),
		.data_i(uart_data),
		.busy_o(uart_busy),
		.tx_o(uart_tx));

wire scan_pulse;

pulse
	#(.CLOCKS_PER_PULSE(1200000)) // 10 Hz
	pulse0(.clock(clock), .pulse_o(scan_pulse));

bringup_scanner bringup_scanner0(
	.clock(clock),
	.pulse_i(scan_pulse),
	.state_i(sensor_state),
	.write_o(uart_write),
	.data_o(uart_data),
	.hold_i(uart_busy));

endmodule