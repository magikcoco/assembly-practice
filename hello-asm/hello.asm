section .data
	msg db "Hello World",10,0

section .text
	global _start

_start:
; write a message to the standard output (file descriptor 1)
mov eax, 4		; system call number for sys_write
mov ebx, 1 		; file descriptor for stdout
mov ecx, msg	; address of the message to write
mov edx, 12		; length of the message
int 0x80		; make the system call


; exit with return code of zero
mov eax, 1 		; system call number for sys_exit
xor ebx, ebx	; exit code of 0
int 0x80		; make the system call
