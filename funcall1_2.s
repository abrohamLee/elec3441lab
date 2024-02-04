	.file	"funcall1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__adddf3
	.globl	__fixdfsi
	.align	2
	.globl	funcall1
	.type	funcall1, @function
funcall1:
	addi	sp,sp,-16
	sw	ra,12(sp)
	call	__adddf3
	call	__fixdfsi
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	funcall1, .-funcall1
	.align	2
	.globl	fun
	.type	fun, @function
fun:
	addi	sp,sp,-16
	sw	ra,12(sp)
	call	__adddf3
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	fun, .-fun
	.ident	"GCC: (g2ee5e430018) 12.2.0"
