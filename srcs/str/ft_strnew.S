	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strnew              ## -- Begin function ft_strnew
	.p2align	4, 0x90
_ft_strnew:                             ## @ft_strnew
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	add	rdi, 1
	pop	rbp
	jmp	_ft_memalloc            ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
