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
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a4,-36(s0)
	li	a5,10
	bne	a4,a5,.L2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L3
.L2:
	lw	a4,-36(s0)
	li	a5,20
	bne	a4,a5,.L4
	lw	a5,-36(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
	j	.L3
.L4:
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	branch, .-branch
	.ident	"GCC: (g2ee5e430018) 12.2.0"
