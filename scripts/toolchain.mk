
TOOLCHAIN?=x86_64-linux-gnu-

QEMU:=qemu-system-x86_64

CC := $(TOOLCHAIN)gcc
export CC

AS := $(TOOLCHAIN)as
export AS

AR := $(TOOLCHAIN)ar
export AR

LD := $(TOOLCHAIN)ld
export LD

CFLAGS := -Wall \
		  -Wextra \
		  -O2 \
		  -g \
		  -finline \
		  -fno-common \
		  -fasynchronous-unwind-tables \
		  -gdwarf-2 \
		  -fno-pic \
		  -fno-stack-protector \
		  -mcmodel=kernel \
		  -mno-red-zone \
		  -MT -MP -MD \
		  -nostdlib

CFLAGS += -I$(ROOTDIR)/include \
		  -I$(ROOTDIR)/include/driver \
		  -I$(ROOTDIR)/libc/include

ARFLAGS := rcs

LDFLAGS := -z max-page-size=4096
