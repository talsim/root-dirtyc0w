CC = gcc
CFLAGS = -pthread
SRC = root-dirtyc0w.c
OUT = root-dirtyc0w

all: $(SRC)
	$(CC) -o $(OUT) $(SRC) $(CFLAGS)

clean:
	rm -f $(OUT)
