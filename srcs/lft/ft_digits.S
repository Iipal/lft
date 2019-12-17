	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_digits              ## -- Begin function ft_digits
	.p2align	4, 0x90
_ft_digits:                             ## @ft_digits
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, rdi
	neg	rax
	cmovl	rax, rdi
	shr	rdi, 63
	add	rdi, 1
	lea	rcx, [rax + 9]
	cmp	rcx, 19
	jb	LBB0_3
## %bb.1:
	movabs	rcx, 7378697629483820647
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	imul	rcx
	mov	rsi, rdx
	shr	rsi, 63
	sar	rdx, 2
	lea	rax, [rdx + rsi]
	add	rdi, 1
	add	rdx, rsi
	add	rdx, 9
	cmp	rdx, 18
	ja	LBB0_2
LBB0_3:
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
