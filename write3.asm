section .text
global _start

_start:

    xor eax, eax
    push eax
    push word 'xt'
    push dword 'ar.t'
    push dword 'foob'
    mov ebx, esp
;create the file
    mov  dx, $0666
    mov  cx, $0101
    ;mov  ebx, file_name
    mov  al, 8
    int  0x80           ;call kernel

; write into the file
   mov  ebx, eax
   xor edx, edx
   mov  dl, 9

   xor eax, eax
   push eax
   push dword 'n ag'
   push dword 'I wi '
   mov ecx, esp
   ;mov  ecx, msg
   mov  al, 4
	 xor eax, eax
	 push eax
	 push dword 'ain!'
	 mov ecx, esp
	 mov al, 4:
   int  0x80           ;call kernel

 ; close the file
   xor ebx, ebx
   xor eax, eax
   mov al, 6
   int  0x80

   xor ebx, ebx
   xor eax, eax
   mov al, 1
   int 0x80
