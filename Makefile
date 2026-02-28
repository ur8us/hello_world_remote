CC := gcc
CFLAGS := -Wall -Wextra
DEBUG_CFLAGS := -g -O0
RELEASE_CFLAGS := -O2

.PHONY: all debug release clean

all: debug release

debug: hello_debug

release: hello

hello_debug: hello.c
	$(CC) $(CFLAGS) $(DEBUG_CFLAGS) $< -o $@

hello: hello.c
	$(CC) $(CFLAGS) $(RELEASE_CFLAGS) $< -o $@

clean:
	rm -f hello hello_debug
