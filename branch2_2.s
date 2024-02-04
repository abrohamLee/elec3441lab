	.file	"branch2.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	branch2
	.type	branch2, @function
branch2:
	bgt	a1,a0,.L2
	sub	a0,a0,a1
	ret
.L2:
	add	a0,a1,a0
	ret
	.size	branch2, .-branch2
	.ident	"GCC: (g2ee5e430018) 12.2.0"
