mov r0, #30
mov r1, #40
mov r3, #3

strt:
cmn r3, #0
ITTTT eq
addne r2, r0, r1
movne r0, r2
addne r3, r3, #1
bne strt
