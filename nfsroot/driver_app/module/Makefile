
obj-m += module.o

KERNEL_DIR := /home/kevin/code/linux-3.5

CURRENT_DIR := $(shell pwd)

all:
	#make -C $(KERNEL_DIR) $(CURRENT_DIR) modules
	make -C $(KERNEL_DIR) M=`pwd` modules

clean:
	make -C $(KERNEL_DIR) $(CURRENT_DIR) clean
	rm *.mod* *.ko *.o *.order *.symvers -rf



