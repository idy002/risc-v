	.file	"test.c"
	.option nopic
	.text
	.align	1
	.globl	a
	.type	a, @function
a:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	li	a5,3
	sw	a5,-20(s0)
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	a, .-a
	.ident	"GCC: (GNU) 7.2.0"
