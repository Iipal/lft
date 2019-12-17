	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcmp              ## -- Begin function ft_strcmp
	.p2align	4, 0x90
_ft_strcmp:                             ## @ft_strcmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, byte ptr [rdi]
	test	al, al
	je	LBB0_4
## %bb.1:
	add	rdi, 1
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	cmp	al, byte ptr [rsi]
	jne	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	add	rsi, 1
	movzx	eax, byte ptr [rdi]
	add	rdi, 1
	test	al, al
	jne	LBB0_2
LBB0_4:
	xor	eax, eax
LBB0_5:
	movzx	eax, al
	movzx	ecx, byte ptr [rsi]
	sub	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
