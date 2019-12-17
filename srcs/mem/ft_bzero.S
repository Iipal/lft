	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_bzero               ## -- Begin function ft_bzero
	.p2align	4, 0x90
_ft_bzero:                              ## @ft_bzero
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	pop	rbp
	jmp	_ft_memset              ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
