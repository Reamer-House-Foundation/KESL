#TODO: I would like to get rid of this vpath..
STD_PERIPH_DIR = STM32F0xx_StdPeriph_Driver/src
vpath %.c $(STD_PERIPH_DIR)

CFLAGS += -g -O2 -Wall
CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m0 -march=armv6s-m
CFLAGS += -ffreestanding -nostdlib

INCLUDE += -ISTM32F0xx_StdPeriph_Driver/include -includestm32f0xx_conf.h

SRCS = stm32f0xx_adc.c stm32f0xx_cec.c stm32f0xx_comp.c stm32f0xx_crc.c \
	stm32f0xx_dac.c stm32f0xx_dbgmcu.c stm32f0xx_dma.c stm32f0xx_exti.c \
	stm32f0xx_flash.c stm32f0xx_gpio.c stm32f0xx_i2c.c stm32f0xx_iwdg.c \
	stm32f0xx_misc.c stm32f0xx_pwr.c stm32f0xx_rcc.c stm32f0xx_rtc.c \
	stm32f0xx_spi.c stm32f0xx_syscfg.c stm32f0xx_tim.c \
	stm32f0xx_usart.c stm32f0xx_wwdg.c


OBJECT_DIR := objs
OBJS = $(patsubst %.c,$(OBJECT_DIR)/%.o,$(SRCS))

.PHONY: libstm32f0.a

all: libstm32f0.a

$(OBJECT_DIR)/%.o: %.c objs
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $^

$(OBJECT_DIR):
	@mkdir $@

libstm32f0.a: $(OBJS)
	@$(AR) -r $@ $(OBJS)

clean:
	@rm -f $(OBJS) libstm32f0.a
	@rm -r $(OBJECT_DIR)
