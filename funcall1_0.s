	.file	"funcall1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__fixdfsi
	.align	2
	.globl	funcall1
	.type	funcall1, @function
funcall1:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	fun
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__fixdfsi
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	funcall1, .-funcall1
	.globl	__adddf3
	.align	2
	.globl	fun
	.type	fun, @function
fun:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	fun, .-fun
	.ident	"GCC: (g2ee5e430018) 12.2.0"
