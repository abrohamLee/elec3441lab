	.file	"loop2.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	loop2
	.type	loop2, @function
loop2:
	ret
	.size	loop2, .-loop2
	.ident	"GCC: (g2ee5e430018) 12.2.0"
