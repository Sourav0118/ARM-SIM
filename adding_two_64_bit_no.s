.section .data
input1: .word 0xAEC23907, 0xCDE63787, 0xDECAAA54, 0xAAAAAAA0
input2: .word 0xEEEEEEEE, 0xAAAAAAAA, 0xDDDDDDDD, 0XFFFFFFFF
output: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000


.section .text
.global _start

ldr r0, =input1
ldr r1, =input2
ldr r2, [r0, #12]
ldr r3, [r1, #12]
ldr r4, =output
adds r5, r2, r3
str r5, [r4, #16]
ldr r2, [r0, #8]
ldr r3, [r1, #8]
adcs r5, r2, r3
str r5, [r4, #12]
ldr r2, [r0, #4]
ldr r3, [r1, #4]
adcs r5, r2, r3
str r5, [r4, #8]
ldr r2, [r0]
ldr r3, [r1]
adcs r5, r2, r3
str r5, [r4, #4]
mov r2, #0
mov r3, #0
adcs r5, r2, r3
str r5, [r4]

