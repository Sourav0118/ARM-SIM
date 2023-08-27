.section .data
frst: .word 5, 10
check: .word 5

.global _start
fun:
stmfd sp!, {r0-r2, lr}
ldr r0, =frst
ldr r1, [r0]
add r0, #4
ldr r2, [r0]
mul r2, r1, r2
str r2, [r0]
ldr r0, =check
ldr r2, [r0]
sub r2, r2, #1
str r2, [r0]
ldmfd sp!, {r0-r2, pc}

_start:
ldr r0, =check
ldr r3, [r0]
subs r3, r3, #1
bne fun
ldr r0, =frst
add r0, #4
ldr r1, [r0]
