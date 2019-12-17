	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strlwr              ## -- Begin function ft_strlwr
	.p2align	4, 0x90
_ft_strlwr:                             ## @ft_strlwr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, byte ptr [rdi]
	test	al, al
	je	LBB0_5
## %bb.1:
	lea	rcx, [rdi + 1]
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	edx, eax
	add	dl, -65
	cmp	dl, 26
	jae	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	add	al, 32
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	add	rcx, 1
	test	al, al
	jne	LBB0_2
LBB0_5:
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
