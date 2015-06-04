SECTION .data
	a DD 5
	b DD 5
	ergebnis DQ 0

SECTION .text
	global main

main:
	push ebp
	mov ebp, esp

	push edx

	mov eax, dword [a]
	imul dword [b]
	mov [ergebnis + 4], edx
	mov [ergebnis], eax

	pop edx

	; end of program
	mov esp, ebp
	pop ebp

	mov ebx, 0
	mov eax, 1
	int 0x80

	/*
	Speicherbild 1:
	-----------------------
	????????;(EBP) <- ESP
	-----------------------

	Speicherbild 2:
	-----------------------
	?????;(EBP) <- -0x04
	-----------------------
	?????;(EDX) <- ESP
	-----------------------

	*/
