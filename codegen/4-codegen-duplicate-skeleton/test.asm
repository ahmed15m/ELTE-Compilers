global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
mov eax, 20
mov [label0], eax
mov ebx,2
label4:
cmp ebx, 0
je label3
push ebx

mov eax, 1
mov ebx,eax
mov ecx,2
mov eax, [label0]
label2:
cmp ebx, 0
je label1
xor edx, edx
div ecx
sub ebx, 1
jmp label2
label1:

push eax
call write_unsigned
add esp,4
pop ebx
sub ebx, 1
jmp label4
label3:


mov eax, 2
mov ebx,eax
mov ecx,2
mov eax, [label0]
label6:
cmp ebx, 0
je label5
xor edx, edx
div ecx
sub ebx, 1
jmp label6
label5:

push eax
call write_unsigned
add esp,4

ret
