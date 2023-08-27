.section .data
input: .word 5, 3, 4, 6
output: .word 0

.section .text
.global _start
ldr r0, =input
ldrb r1, [r0, #4]!
ldrb r2, [r0, #4]!
ldrb r3, [r0, #4]!
ldr r0, =input
ldrb r1, [r0, #4]
ldrb r2, [r0, #4]
ldrb r3, [r0, #4]
ldr r0, =input
ldrb r1, [r0], #4
ldrb r2, [r0], #4
ldrb r3, [r0], #4