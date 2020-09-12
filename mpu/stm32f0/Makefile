SRC_DIR := src

CFLAGS += -g -O2 -Wall
CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m0 -march=armv6s-m
CFLAGS += -ffreestanding -nostdlib

INCLUDE += -I$(CURDIR)/include

CSRCS := syscalls.c system_stm32f0xx.c
SSRCS := startup_stm32f0xx.s
SRCS :=  $(SSRCS) $(CSRCS)

OBJECT_DIR := objs
COBJS = $(patsubst %.c,$(OBJECT_DIR)/%.o,$(CSRCS))
SOBJS += $(patsubst %.s,$(OBJECT_DIR)/%.o,$(SSRCS))

all: $(OBJECT_DIR) $(COBJS) $(SOBJS)

$(OBJECT_DIR)/%.o: $(SRC_DIR)/%.s
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $^

$(OBJECT_DIR)/%.o: $(SRC_DIR)/%.c
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $^

$(OBJECT_DIR):
	@mkdir $@

clean:
	@rm -f $(COBJS) $(SOBJS)
	@rm -r $(OBJECT_DIR)
