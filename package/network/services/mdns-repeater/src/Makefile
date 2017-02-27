

SRC = mdns-repeater.c
OBJ = $(SRC:.c=.o)
DEP = $(SRC:.c=.d)

#LIBS=-lpcap

EXTRA_CFLAGS += -fPIC -O0 -g -Wall -Werror -I.

all: mdns-repeater

%.o: %.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) -c -o  $@ $^ 

mdns-repeater: $(OBJ)
	$(CC) -o $@ $^ $(LIBS)

clean:
	rm -f *.o mdns-repeater
