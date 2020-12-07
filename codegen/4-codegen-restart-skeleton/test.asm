global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, 0
push eax
mov eax, [label0]
pop ebx
cmp eax, ebx
setl al
cmp al, 1
jne near label1
jmp near main
label1:
mov eax, [label0]
push eax
call write_unsigned
add esp,4

ret
