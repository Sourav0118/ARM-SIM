.section .data
input: .word 6

.section .text
.global _start

fac:
stmfd sp!, {r0-r3, lr}
ldr r0, =input
ldr r1, [r0]
mov r3, r1
mov r2, r1
sub r2, r2, #1

mul:
sub r1, r1, #1
mul r3, r3, r1
subs r2, r2, #1
bne mul

str r3, [r0]

_start:
bl fac
ldr r0, =input
ldr r1, [r0]