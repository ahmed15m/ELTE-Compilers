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
mov [label1], eax

mov eax, 3
push eax
mov eax, [label1]
pop ebx
mov ecx, eax
cmp ebx, 0
je label6
label5:
cmp ebx, 1
je label4
mul ecx
sub ebx, 1
jmp label5
label6:
mov eax, 1
label4:

mov [label1], eax
mov eax, [label1]
push eax
call write_unsigned
add esp,4
mov eax, 3
mov [label1], eax

mov eax, 0
push eax
mov eax, [label1]
pop ebx
mov ecx, eax
cmp ebx, 0
je label9
label8:
cmp ebx, 1
je label7
mul ecx
sub ebx, 1
jmp label8
label9:
mov eax, 1
label7:

mov [label1], eax
mov eax, [label1]
push eax
call write_unsigned
add esp,4

ret
