BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	out: db "fibonacci %d",10,0

section .text
	global main

	main:
	push ebp
	mov ebp, esp
	sub esp, 0x10

	lea eax, [ebp-0x4]
	push eax
	push fmt
	call scanf

	mov ebx,0
	mov ecx,1
	mov esi,0
	mov edi,1

	

	loo:
	  add edi,1
	  add ebx,ecx
	  mov edx,[ebp -0x4]
	  mov esi,ebx
	  mov ebx,ecx
	  mov ecx,esi
	  cmp edi,edx
	  jl loo
    push ebx
    push out
	call printf
leave
ret
