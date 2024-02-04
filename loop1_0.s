	.file	"loop1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	loop1
	.type	loop1, @function
loop1:
	addi	sp,sp,-80
	sw	s0,76(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a3,-72(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	add	a4,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-24(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L3
	sw	zero,-20(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a3,-72(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-44(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L5
	nop
	mv	a0,a5
	lw	s0,76(sp)
	addi	sp,sp,80
	jr	ra
	.size	loop1, .-loop1
	.ident	"GCC: (g2ee5e430018) 12.2.0"
