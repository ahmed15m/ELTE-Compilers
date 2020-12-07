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
mov al, 1
mov [label3], al
mov eax, 1
mov [label0], eax
label4:
mov eax, 1
push eax
mov eax, [label0]
pop ebx
cmp eax, ebx
sete al
cmp al, 1
jne near label5
mov eax, 2
mov [label0], eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
jmp near label4
label5:
xor eax, eax
mov al, [label3]
push eax
call write_boolean
add esp,4

ret
