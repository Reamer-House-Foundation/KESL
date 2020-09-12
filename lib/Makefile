export CC=arm-none-eabi-gcc
export AR=arm-none-eabi-ar

LIB := stm32f0

.PHONY: all $(LIB)
all: $(LIB)

$(LIB):
	@$(MAKE) --directory $@

clean:
	@for dir in $(LIB);\
	do\
	 $(MAKE) --directory $${dir} clean;\
	done
