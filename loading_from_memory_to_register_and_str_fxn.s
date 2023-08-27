strt: ldr r0, =d1
mov r2, #0
mov r3, #8

a: ldr r1, [r0]
add r2, r2, r1
add r0, r0, #1
subs r3, r3, #1
bne a

strb r2, [r0]
ldrb r5, [r0]


d1: .word 1, -2, 3, 4, 5, 6, 7, 8
