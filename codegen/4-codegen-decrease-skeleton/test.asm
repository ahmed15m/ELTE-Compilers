global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
label1:
mov eax, [label0]
cmp eax, 0
je near label2
push eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
pop eax
sub eax, 1
mov [label0], eax
jmp label1
label2:

ret
