CC=gcc

all:
	$(CC) -c -S sum.c -o sum64.s
	$(CC) -g  sum.c -o sum64
	$(CC) -c -m32 -S sum.c -o sum32.s
	$(CC) -g -m32 sum.c -o sum32

clean:
	rm -rf *.s
	rm -rf sum64
	rm -rf sum32
