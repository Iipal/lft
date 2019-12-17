	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncmp             ## -- Begin function ft_strncmp
	.p2align	4, 0x90
_ft_strncmp:                            ## @ft_strncmp
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
	cmp	rdx, rcx
	je	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rdi + rcx]
	movsx	r8d, byte ptr [rsi + rcx]
	add	rcx, 1
	sub	eax, r8d
	je	LBB0_1
## %bb.4:
	pop	rbp
	ret
LBB0_2:
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
