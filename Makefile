CC=gcc
.PHONY=clean

build/tinywm-xcb: src/tinywm-xcb.c
	mkdir -p build
	$(CC) $< -lxcb -lxcb-util -o $@

build/tinywm-x11: src/tinywm-x11.c
	mkdir -p build
	$(CC) $< -lX11 -o $@

clean:
	rm -r build
