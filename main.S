@mov r1,	#5
@mov r2, #5
@B SAUT_0
@.org 0x18
@mov r3, #5
@mov r4, #5
@add r0, r2, r3
@add r0, r0, r1
@SAUT_0:
@add r0, r0, r4
@and r3, r4
@and r2, r1

Debut_prog:
mov r0, #5
mov r1, #2
add r2, r0, r1
add r3, r2, #4
B SAUT_1
.org 0x40

SAUT_1:
mov r2, #6
sub r3, r2, #1

BEQ SAUT_2
.org 0x60

SAUT_2:
mov r0, #4
mov r1, #128
B Debut_prog
