.PHONY: all clean 

all: main1

main1: main1.o
	gcc -m32 -o main1 main1.o
	
main1.o: main1.asm
	nasm -f elf32 -g -F dwarf -l main1.lst main1.asm

clean:
	rm -f main1 *.o *.lst
