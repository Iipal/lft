	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_isblank             ## -- Begin function ft_isblank
	.p2align	4, 0x90
_ft_isblank:                            ## @ft_isblank
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
                                        ## kill: def $edi killed $edi def $rdi
	lea	eax, [rdi - 9]
	cmp	eax, 5
	setb	cl
	cmp	edi, 32
	sete	al
	or	al, cl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
