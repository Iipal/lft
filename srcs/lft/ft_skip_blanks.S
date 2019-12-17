	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_skip_blanks         ## -- Begin function ft_skip_blanks
	.p2align	4, 0x90
_ft_skip_blanks:                        ## @ft_skip_blanks
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzx	ecx, byte ptr [rdi + rax]
	mov	edx, ecx
	add	dl, -9
	cmp	dl, 5
	jb	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	cl, 32
	je	LBB0_3
## %bb.4:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
