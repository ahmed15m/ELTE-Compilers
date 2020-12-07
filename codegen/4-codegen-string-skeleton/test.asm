global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label1: resd 1
label0: resd 1

segment .text
main:
mov eax, 3
mov [label0], eax
mov eax, 1
mov [label1], eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
mov eax, 2
push eax
mov eax, 5
pop ebx
mul ebx
push eax
mov eax, [label0]
pop ebx
add eax, ebx
push eax
call write_unsigned
add esp,4

ret
