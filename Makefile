CC      ?= gcc
CFLAGS  ?= -g -O0 -Wall
LDFLAGS ?= 
LDLIBS  ?= -lusb-1.0

OBJS  = exynos-usbdl.o printdev.o
BIN   = exynos-usbdl

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $<

$(BIN): $(OBJS)
	gcc -g -O0 -Wall -o $(BIN) $(OBJS) -lusb-1.0

.PHONY: clean
clean:
	rm $(BIN) $(OBJS)