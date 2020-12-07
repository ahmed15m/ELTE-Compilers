global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1
label2: resd 1
label3: resb 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, 1
mov [label1], eax
label4:
mov eax, [label0]
cmp eax, [label1]
jb near label5
mov eax, [label1]
push eax
call write_unsigned
add esp,4
mov al, 1
mov [label3], al
mov eax, [label1]
add eax, 1
mov [label1], eax
jmp label4
label5:
xor eax, eax
mov al, [label3]
push eax
call write_boolean
add esp,4

ret
