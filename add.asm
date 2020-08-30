section .data
	digit db 0, 10

section .text
	global _start

	_start:

		mov rax, 6
		add rax, 2
		call _printRAXDigit

		mov rax, 0x3c
		syscall

	_printRAXDigit:

		add rax, 48
		mov [digit], al
		mov rax, 1
		mov rdi, 1
		mov rsi, digit
		mov rdx, 2
		syscall
		ret


