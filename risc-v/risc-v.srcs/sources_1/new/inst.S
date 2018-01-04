.org 0x0
	.global _start
_start:
	addi x1, x0, 0
	T1:
	addi x1, x1, 1
	jal x0, T1
