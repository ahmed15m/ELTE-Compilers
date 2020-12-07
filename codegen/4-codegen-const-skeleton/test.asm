global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label1: resd 1
label2: resb 1
label0: resd 1

segment .text
main:
mov eax, 5
mov [label0], eax
mov al, 1
mov [label2], al
mov eax, 6
mov [label0], eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4

ret
