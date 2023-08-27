.section .data
input: .word 45

.section .text
.global _start

_start:
ldr r0, =input
ldr r1, [r0]
swp r3, r0, [r2]