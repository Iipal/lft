	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strnlen             ## -- Begin function ft_strnlen
	.p2align	4, 0x90
_ft_strnlen:                            ## @ft_strnlen
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	ecx, ecx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, rcx
	cmp	rcx, rsi
	jae	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rcx, [rax + 1]
	cmp	byte ptr [rdi + rax], 0
	jne	LBB0_1
LBB0_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
