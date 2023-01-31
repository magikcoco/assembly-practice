target: hello.asm
	nasm -f elf64 -o hello.o hello.asm
	ld -s -o hello hello.o

clean:
	rm hello hello.o
