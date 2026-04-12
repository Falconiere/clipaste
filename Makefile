PREFIX ?= /usr/local

SWIFT_FLAGS = -O -framework AppKit
SOURCE = Sources/clipaste.swift
BINARY = clipaste

.PHONY: build install uninstall clean

build:
	swiftc $(SWIFT_FLAGS) -o $(BINARY) $(SOURCE)

install: build
	install -d $(PREFIX)/bin
	install -m 755 $(BINARY) $(PREFIX)/bin/$(BINARY)

uninstall:
	rm -f $(PREFIX)/bin/$(BINARY)

clean:
	rm -f $(BINARY)
