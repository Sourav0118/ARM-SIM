strt: ldr r0, =d1
mov r3, #6
vmov s2, s1
vldr s1, [r0]

a: vldr s0, [r0]
add r0, r0, #4
vadd.F32 s2, s2, s1
subs r3, r3, #1
bne a

vstr s2, [r0]
vldr s3, [r0]
d1: .float 0.5, 0.5, 0.5, 0.5, 0.5, 0.5

 