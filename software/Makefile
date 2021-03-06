include Makefile.toolchain

# Disable implicit rules
.SUFFIXES:

.PHONY: all
all: splat

.PHONY: clean
clean:
	rm -rf build/ splat

.PHONY: format
format: $(sort $(wildcard *.[ch]))
	$(CCFORMAT) $(CCFORMATFLAGS) -i $^

HDRS := build/ftdi.h build/ftdi_i.h $(sort $(wildcard *.h))
SRCS := $(sort $(wildcard *.c))

# libusb
LIBUSB_CFLAGS := -I/usr/include/libusb-1.0
LIBUSB_LIBS := -L/usr/lib/x86_64-linux-gnu -lusb-1.0

nop:=$(shell mkdir -p build)

build/%.o: %.c $(HDRS)
	$(CC) $(CFLAGS) $(LIBUSB_CFLAGS) -Ibuild/ -c $< -o $@

build/command_table.o: build/command_table.c command.h $(SRCS)
	$(CC) $(CFLAGS) -I. -c $< -o $@

build/command_table.c: command_table.py $(SRCS)
	python3 $^ >$@

build/pindef.h: pindef.py ../rtl/lib/pindef.v
	python3 $^ >$@

build/bringup_boundary.o: build/pindef.h

build/vram_control.h: opcodes_from_rtl.py ../rtl/lib/vram_control.v
	python3 $^ >$@

build/bringup_vram.o: build/vram_control.h

build/lowspeed_core.h: opcodes_from_rtl.py ../rtl/lib/lowspeed_core.v
	python3 $^ >$@

build/lowspeed.o: build/lowspeed_core.h

OBJS := $(patsubst %.c,build/%.o,$(SRCS))
OBJS += build/ftdi.o
OBJS += build/command_table.o

splat: $(OBJS)
	$(LD) $(LDFLAGS) $^ -o $@ $(LIBUSB_LIBS) -lm

build/ftdi.o: build/ftdi.c build/ftdi.h build/ftdi_i.h build/ftdi_version_i.h
	$(CC) -c $< $(LIBUSB_CFLAGS) -o $@

FTDI_EXTRACT := tar xjf ../third_party/libftdi1-1.4.tar.bz2
FTDI_SRC := libftdi1-1.4/src

build/ftdi.h:
	$(FTDI_EXTRACT) $(FTDI_SRC)/ftdi.h -O >$@

build/ftdi_i.h:
	$(FTDI_EXTRACT) $(FTDI_SRC)/ftdi_i.h -O >$@

build/ftdi_version_i.h:
	$(FTDI_EXTRACT) $(FTDI_SRC)/ftdi_version_i.h.in -O | sed 's/@MAJOR_VERSION@/1/;s/@MINOR_VERSION@/4/;s/@VERSION_STRING@/1.4/;s/@SNAPSHOT_VERSION@//;' >$@

build/ftdi.c:
	$(FTDI_EXTRACT) $(FTDI_SRC)/ftdi.c -O >$@
