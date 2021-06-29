CC=gcc
.PHONY=clean start

build/tinywm-xcb-ada: src/tinywm-xcb-ada.c
	mkdir -p build
	$(CC) $< -lxcb -o $@

build/tinywm-xcb: src/tinywm-xcb.c
	mkdir -p build
	$(CC) $< -lxcb -lxcb-util -o $@

build/tinywm-x11: src/tinywm-x11.c
	mkdir -p build
	$(CC) $< -lX11 -o $@

clean:
	rm -r build

start:
	./start.sh xcb-ada
