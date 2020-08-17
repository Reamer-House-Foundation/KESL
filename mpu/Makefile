export CC=arm-none-eabi-gcc
export AR=arm-none-eabi-ar

MPU := stm32f0

.PHONY: all $(MPU)
all: $(MPU)

$(MPU):
	$(MAKE) --directory $@

clean:
	for dir in $(MPU);\
	do\
	 $(MAKE) --directory $${dir} clean;\
	done
