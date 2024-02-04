	.file	"ArrayAccu.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ArrayAccu
	.type	ArrayAccu, @function
ArrayAccu:
	ble	a1,zero,.L4
	mv	a5,a0
	slli	a1,a1,2
	add	a3,a0,a1
	li	a0,0
.L3:
	lw	a4,0(a5)
	add	a0,a0,a4
	addi	a5,a5,4
	bne	a5,a3,.L3
	ret
.L4:
	li	a0,0
	ret
	.size	ArrayAccu, .-ArrayAccu
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,12(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	li	a1,5
	addi	a0,sp,12
	call	ArrayAccu
	lw	ra,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.ident	"GCC: (g2ee5e430018) 12.2.0"
