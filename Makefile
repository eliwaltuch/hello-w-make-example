CC = gcc
CFLAGS = -Wall -Wextra -O2

INSTALL_DIR = /usr/local/bin

TARGET = hello-gnumake
SRC = hello.c

all: hello.c
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

install:
	@mkdir -p $(INSTALL_DIR)
	install -m 755 $(TARGET) $(INSTALL_DIR)

clean:
	rm -f $(TARGET)

.PHONY: all install clean
