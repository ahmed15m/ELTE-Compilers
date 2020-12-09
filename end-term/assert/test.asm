global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resb 1

segment .text
main:
mov eax, 1
push eax
call write_unsigned
add esp,4
mov eax, 1
push eax
mov eax, 1
pop ebx
cmp eax, ebx
sete al
cmp al, 0
jne near label1
ret
label1:
mov eax, 2
push eax
call write_unsigned
add esp,4
call read_boolean
mov [label0], al
xor eax, eax
mov al, [label0]
push eax
call write_boolean
add esp,4
mov eax, 2
push eax
mov eax, 1
pop ebx
cmp eax, ebx
sete al
cmp al, 0
jne near label2
ret
label2:
mov eax, 3
push eax
call write_unsigned
add esp,4
mov eax, 3
push eax
call write_unsigned
add esp,4
mov eax, 3
push eax
call write_unsigned
add esp,4

ret
