	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memcmp              ## -- Begin function ft_memcmp
	.p2align	4, 0x90
_ft_memcmp:                             ## @ft_memcmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	cmp	rdi, rsi
	je	LBB0_7
## %bb.1:
	test	rdx, rdx
	je	LBB0_7
## %bb.2:
	xor	ecx, ecx
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [rdi + rcx]
	movzx	r8d, byte ptr [rsi + rcx]
	cmp	al, r8b
	jne	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	add	rcx, 1
	cmp	rdx, rcx
	jne	LBB0_3
## %bb.6:
	xor	eax, eax
LBB0_7:
	pop	rbp
	ret
LBB0_4:
	sub	eax, r8d
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
