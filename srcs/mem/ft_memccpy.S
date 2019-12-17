	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memccpy             ## -- Begin function ft_memccpy
	.p2align	4, 0x90
_ft_memccpy:                            ## @ft_memccpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	xor	r8d, r8d
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	r8, rcx
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movzx	r9d, byte ptr [rsi + r8]
	mov	byte ptr [rdi + r8], r9b
	add	r8, 1
	cmp	r9b, dl
	jne	LBB0_1
## %bb.3:
	add	rdi, r8
	mov	rax, rdi
LBB0_4:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
