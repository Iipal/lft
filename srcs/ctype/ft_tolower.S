	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_tolower             ## -- Begin function ft_tolower
	.p2align	4, 0x90
_ft_tolower:                            ## @ft_tolower
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
                                        ## kill: def $edi killed $edi def $rdi
	lea	ecx, [rdi - 65]
	lea	eax, [rdi + 32]
	cmp	ecx, 26
	cmovae	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
