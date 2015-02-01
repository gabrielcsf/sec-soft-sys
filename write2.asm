section .text
global _start

_start:

    xor eax, eax
    push eax
    push byte 't'
    push word 'tx'
    push dword 'bar.'
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

   xor ecx, ecx
   add cl, 70
   add cl, 3
   xor eax, eax
   push eax
   push byte '!'
   push dword ' win'
   push ecx
   mov ecx, esp
   ;mov  ecx, msg
   xor eax, eax
   mov  al, 4
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