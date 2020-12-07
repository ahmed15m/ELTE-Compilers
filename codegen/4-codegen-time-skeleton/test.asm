global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
mov eax, 3082
mov [label0], eax
mov eax, 10
mov bl,al
mov eax, 13
mov ah,bl
mov [label0], eax
mov eax, [label0]
mov al,ah
xor ah,ah
push eax
call write_unsigned
add esp,4
mov eax, [label0]
xor ah,ah
push eax
call write_unsigned
add esp,4
mov eax, 10
mov ebx ,eax
mov eax, 3082
add eax, ebx
mov [label0], eax
mov eax, [label0]
mov al,ah
xor ah,ah
push eax
call write_unsigned
add esp,4
mov eax, [label0]
xor ah,ah
push eax
call write_unsigned
add esp,4

ret
