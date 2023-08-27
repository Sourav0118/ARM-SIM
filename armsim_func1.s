.section .data
twoInt: .word 0x01020304,0
result: .word 0

.section .text
.global _start
func1: 
stmfd sp!, {r0-r3,lr}
ldr r0, =twoInt
ldr r2,[r0]
add r0,#4
ldr r3,[r0]
add r4,r2,r3
ldr r0, =result
str r4,[r0]
ldmfd sp!, {r0-r3,pc}

_start:
ldr r1,=twoInt
swi 0x6c
str r0,[r1]
swi 0x6c
add r1,#4
str r0,[r1]
mov r0,#1
mov r1,#2
mov r2,#3
mov r3,#4
bl func1
mov r2,r0


