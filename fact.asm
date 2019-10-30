 BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	out: db "factorial %d",10,0

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
        
	mov ebx,1
        mov edx,[ebp -0x4]

        loo:
          imul ebx,edx
          dec edx
          cmp edx,1
          jne loo
    push ebx
    push out
    call printf
leave
ret
