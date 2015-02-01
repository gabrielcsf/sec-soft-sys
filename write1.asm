section .data

file_name db 'foo.txt', 0
msg db 'You lose!', 0
len equ  $-msg

section .text
global _start

_start:
;create the file
    mov  edx, $0666
    mov  ecx, $0101
    mov  ebx, file_name
    mov  eax, 8
    int  0x80           ;call kernel

; write into the file
   mov  ebx, eax
   mov  edx, len
   mov  ecx, msg
   mov  eax, 4
   int  0x80           ;call kernel

 ; close the file
   mov ebx, $0
   mov eax, 6
   int  0x80

   mov eax, 1
   mov ebx, $0
   int 0x80