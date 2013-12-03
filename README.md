MIPS-Processor
==============

## Instruction Set Reference
0     5     10    15    20    25      31

ADD	ARITHMETIC ADDITION
000 000 SSSSS TTTTT DDDDD ----- 100 000
$D <= $S + $T

AND	BITWISE AND
000 000 SSSSS TTTTT DDDDD ----- 100 100
$D <= $S & $T

JR 	JUMP REGISTER
000 000 SSSSS ----- ----- ----- 001 000
PC <= $S

OR	BITWISE OR
000 000 SSSSS TTTTT DDDDD ----- 100 101
$D <= $S & $T

SLL	SHIFT LEFT LOGICAL
000 000 ----- SSSSS DDDDD IIIII 000 000 
$D <= $S << I

SLLV	SHIFT LEFT LOGICAL VARIABLE
000 000 TTTTT SSSSS DDDDD ----- 000 100
$D <= $S << $T

SRL	SHIFT RIGHT LOGICAL
000 000 ----- SSSSS DDDDD IIIII 000 010 
$D <= $S >> I

SRLV	SHIFT RIGHT LOGICAL VARIABLE
000 000 TTTTT SSSSS DDDDD ----- 000 110
$D <= $S >> $T

SUB	ARITHMETIC SUBTRACTION
000 000 SSSSS TTTTT DDDDD ----- 100 010
$D <= $S - $T

XOR	BITWISE XOR
000 000 SSSSS TTTTT DDDDD ----- 100 110
$D <= $S ^ $T

ADDI	ADD IMMEDIATE
001 000 SSSSS DDDDD IIII IIII IIII IIII
$D = $S + I

ANDI	AND IMMEDIATE
001 100 SSSSS DDDDD IIII IIII IIII IIII
$D = $S & I

BEQ	BRANCH ON EQUAL
000 100 SSSSS TTTTT IIII IIII IIII IIII
$S == $T ? $PC <= $PC + I

BGTZ	BRANCH ON GREATER THAN ZERO
000 001 SSSSS TTTTT IIII IIII IIII IIII
$S > 0 ? $PC <= $PC + I

BLTZ	BRANCH ON LESS THAN ZERO
000 110 SSSSS TTTTT IIII IIII IIII IIII
$S < 0 ? $PC <= $PC + I

BNE	BRANCH ON NOT EQUAL
000 101 SSSSS TTTTT IIII IIII IIII IIII
$S != $T ? $PC <= $PC + I


J	JUMP RELATIVE TO PC
000 010 IIIIII IIII IIII IIII IIII IIII
$PC <= $PC + I

JB	JUMP BACK RELATIVE TO PC
001 111 IIIIII IIII IIII IIII IIII IIII
$PC <= $PC - I

JAL	JUMP RELATIVE TO PC AND LINK
000 011 ----- DDDDD IIII IIII IIII IIII
$PC <= ($PC + I), $D <= $PC + 1

LW	LOAD WORD
100 011 SSSSS DDDDD IIII IIII IIII IIII
$D <= MEM[$S + I]

ORI	OR IMMEDIATE
001 101 SSSSS DDDDD IIII IIII IIII IIII
$D <= $S | I

SUBI	SUBTRACTION IMMEDIATE
001 001 SSSSS DDDDD IIII IIII IIII IIII
$D <= $S - $I

SW	STORE WORD
001 011 SSSSS DDDDD IIII IIII IIII IIII
MEM[$S + I] <= $D

XORI	XOR IMMEDIATE
001 110 SSSSS DDDDD IIII IIII IIII IIII
$D <= $S ^ I

## ALU Opcodes
### NO OPERATION
0000	NO OP
0001	NO OP
0010	NO OP
0011	NO OP

### ARITHMETIC OPERATIONS
0100	ADD
0101	SUB
0110	SL
0111	SR

### BITWISE OPERATIONS
1000	AND
1001	OR
1010	NOR
1011	XOR

### COMPARISONS
1100	EQ
1101	SLT
1110	SGT
1111	NEQ

## Write Back / Result Management Opcodes
000	NO OP
001	STORE ALU OUTPUT IN RD
010	LOAD PC WITH ADDRESS OUT
011	LOAD PC WITH $RD
100	LOAD MEMORY INTO $RD
101	STORE $RD INTO MEMORY
110	LOAD PC WITH ADDRESS OUT & LOAD PC IN $R3
111	LOAD PC WITH ADDRESS IF ALU == 1

## Sample Code: 1 to n Factorials
```
001 001 00000 00111 0000 0000 0000 0001		24070001	 	0	# $R7 <= $R0 - 1
001 000 00000 00010 0000 0000 0000 0001		20020001		1	# $R2 <= $R0 + 1
001 000 00000 00011 0000 0000 0000 0001		20030001		2	# $R3 <= $R0 + 1
000 000 00001 00011 00101 00000 100 010		00232822		3	# $R5 <= $R1 - $R3
000 110 00101 00000 0000 0000 0000 1100		18A0000C		4	# BLTZ $R5 +12
001 000 00000 00100 0000 0000 0000 0001		20040001		5	# $R4 <= $R0 + 1
001 000 00010 00110 0000 0000 0000 0000		20460000		6	# $R6 <= $R2 + 0
000 000 00011 00100 00101 00000 100 010		00642822		7	# $R5 <= $R3 - $R4
000 110 00101 00000 0000 0000 0000 0100		18A00004		8	# BLTZ $R5 +4
000 000 00010 00110 00010 00000 100 000		00461020		9	# $R2 <= $R2 + $R6
001 000 00100 00100 0000 0000 0000 0001		20840001		10	# $R4 <= $R4 + 1
001 111 000000 0000 0000 0000 0000 0101		3C000005		11	# J -4
001 000 00011 00011 0000 0000 0000 0001		20630001		12	# $R3 <= $R3 + 1
001 011 00111 00010 0000 0000 0000 0000		2CE20000		13	# MEM[$R7 + 0] <= $R3
001 001 00111 00111 0000 0000 0000 0001		24E70001		14	# $R7 <= $R7 - 1
001 111 000000 0000 0000 0000 0000 1100		3C00000C		15	# J -12
000 000 000000 0000 0000 0000 0000 0000		00000000		16	# NO OP
FFF FFF FFFFF FFFFF FFFF FFFF FFFF FFFF		FFFFFFFF		17	# END PROG
```

load & jump
```
001 000 00000 00001 0000 0000 0000 xxxx		2001000x (X = input number)
000 010 000000 0000 xxxx xxxx xxxx xxxx		0800XXXX (XXXX = address of program in MM)
```

## Sample Code: Fibonnaci Sequence
```
$r1: number to calculate
$r2: result
$r3: count
$r4: previous_1
$r5: previous_2
$r6: compare
$r7: mem_add

$r1 <= $r0 + N		001 000 00000 00001 0000 0000 0000 000N		2001000N
$r2 <= $r0 + 1		001 000 00000 00010 0000 0000 0000 0001		20020001
$r3 <= $r0 + 1		001 000 00000 00011 0000 0000 0000 0001		20030001
$r4 <= $r0 + 1		001 000 00000 00100 0000 0000 0000 0001		20040001
$r5 <= $r0 + 0		001 000 00000 00101 0000 0000 0000 0001		20050000
$r7 <= $r0 - 1		001 001 00000 00111 0000 0000 0000 0001		24070001
$r6 <= $r1 - $r3	000 000 00001 00011 00110 00000 100 010		00233022
bltz $r6 +9			  000 110 00110 00000 0000 0000 0000 1001		18C00009
$r2 <= $r2 + $r4	000 000 00010 00100 00010 00000 100 000		00441020
$r2 <= $r2 + $r5	000 000 00010 00101 00010 00000 100 000		00451020
$r5 <= $r4 + 0		001 000 00100 00101 0000 0000 0000 0000		20850000
$r4 <= $r2 + 0		001 000 00010 00100 0000 0000 0000 0000		20440000
MEM[$r7] <= $r2		001 011 00111 00011 0000 0000 0000 0000		2CE30000
$r7 <= $r7 - 1		001 001 00111 00111	0000 0000 0000 0001		24E70001
$r3 <= $r3 + 1 		001 000 00011 00011 0000 0000 0000 0001 	20630001
jump -9				    001 111 000000 0000 0000 0000 0000 1001		3C000009
noop				      000 000 000000 0000 0000 0000 0000 0000		00000000
end					      111 111 111111 1111 1111 1111 1111 1111		FFFFFFFF
```