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
	ret
	.size	loop1, .-loop1
	.ident	"GCC: (g2ee5e430018) 12.2.0"
