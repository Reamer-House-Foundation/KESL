# Files for MPU specific functionality.  Things like linker scripts, startup
# code, interrupt vectors, etc
mpu_stm32f0 := mpu/stm32f0
mpus := $(mpu_stm32f0)

mpu_includes := $(patsubst %,-I$(CURDIR)/%/include,$(mpus))

export INCLUDE += -I$(CURDIR)/cpu $(mpu_includes)

# Libraries for particular MPUs.  Things like GPIO, DMA, UART, etc
#lib_stm32f0 := lib/stm32f0
#libraries := $(lib_stm32f0)
libraries := lib
mpu := mpu

# Core functions.  Things provided by kesl, such as buffers, logging, etc
core := core

.PHONY: all $(core) $(mpu) $(libraries)
all: $(core) $(libraries) $(mpu)

$(core) $(libraries) $(mpu):
	@echo $(INCLUDE)
	$(MAKE) --directory=$@

clean:
	for dir in $(core) $(libraries) $(mpu);\
	do\
	 $(MAKE) --directory=$${dir} clean;\
	done

