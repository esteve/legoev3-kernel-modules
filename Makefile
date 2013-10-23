obj-m += d_analog.o
obj-m += d_bt.o
obj-m += d_iic.o
obj-m += d_power.o
obj-m += d_pwm.o
obj-m += d_sound.o
obj-m += d_uart_mod.o
obj-m += d_ui.o
#obj-m += d_usbdev.o
obj-m += d_usbhost.o

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
	rm -f Module.markers Module.symvers modules.order
	rm -rf .tmp_versions Modules.symvers
