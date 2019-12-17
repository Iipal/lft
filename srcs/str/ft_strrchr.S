	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strrchr             ## -- Begin function ft_strrchr
	.p2align	4, 0x90
_ft_strrchr:                            ## @ft_strrchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	r14d, esi
	mov	rbx, rdi
	call	_ft_strlen
	test	rax, rax
	je	LBB0_3
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsx	ecx, byte ptr [rbx + rax]
	cmp	ecx, r14d
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	add	rax, -1
	jne	LBB0_1
LBB0_3:
	xor	eax, eax
LBB0_4:
	lea	rcx, [rbx + rax]
	movsx	edx, byte ptr [rbx + rax]
	xor	eax, eax
	cmp	edx, r14d
	cmove	rax, rcx
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
