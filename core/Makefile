INCLUDE += -I$(CURDIR)/include

SRCS = kcb.c logger.c timer.c

OBJECT_DIR := objs
OBJS = $(patsubst %.c,$(OBJECT_DIR)/%.o,$(SRCS))

all: $(OBJS)

objs/%.o: %.c objs
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $^

$(OBJECT_DIR):
	@mkdir $@

clean:
	@rm -f $(OBJS)
	@rm -r $(OBJECT_DIR)
