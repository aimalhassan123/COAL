[org 0x0100]
jmp start
multiplicend: dd 2100
multiplier: dw 500
result: dd 0
start: mov cl, 16
mov dx, [multiplier]
checkbit: shr dx, 1
jnc skip
mov ax, [multiplicend]
add [result], ax
mov ax, [multiplicend+2]
adc [result+2], ax
skip: shl word [multiplicend], 1
rcl word [multiplicend+2], 1
dec cl
jnz checkbit
mov ax, 0x4c00
int 0x21[org 0x0100]
jmp start
multiplicend: dd 2100
multiplier: dw 500
result: dd 0
start: mov cl, 16
mov dx, [multiplier]
checkbit: shr dx, 1
jnc skip
mov ax, [multiplicend]
add [result], ax
mov ax, [multiplicend+2]
adc [result+2], ax
skip: shl word [multiplicend], 1
rcl word [multiplicend+2], 1
dec cl
jnz checkbit
mov ax, 0x4c00
int 0x21