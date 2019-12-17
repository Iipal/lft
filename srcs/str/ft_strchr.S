	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strchr              ## -- Begin function ft_strchr
	.p2align	4, 0x90
_ft_strchr:                             ## @ft_strchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	test	rdi, rdi
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	add	rdi, 1
	test	al, al
	jne	LBB0_1
LBB0_4:
	xor	edi, edi
LBB0_5:
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
