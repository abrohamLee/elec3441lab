	.file	"branch.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	branch
	.type	branch, @function
branch:
	li	a4,10
	mv	a5,a0
	beq	a0,a4,.L3
	li	a4,20
	li	a0,40
	beq	a5,a4,.L1
	slli	a0,a5,1
	add	a0,a0,a5
	ret
.L3:
	li	a0,10
.L1:
	ret
	.size	branch, .-branch
	.ident	"GCC: (g2ee5e430018) 12.2.0"
