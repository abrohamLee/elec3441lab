	.file	"branch1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	branch1
	.type	branch1, @function
branch1:
	ble	a0,a1,.L2
	add	a0,a0,a1
	ret
.L2:
	sub	a0,a0,a1
	ret
	.size	branch1, .-branch1
	.ident	"GCC: (g2ee5e430018) 12.2.0"
