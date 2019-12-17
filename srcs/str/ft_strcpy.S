	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcpy              ## -- Begin function ft_strcpy
	.p2align	4, 0x90
_ft_strcpy:                             ## @ft_strcpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, byte ptr [rsi]
	mov	rcx, rdi
	test	al, al
	je	LBB0_3
## %bb.1:
	add	rsi, 1
	mov	rcx, rdi
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	byte ptr [rcx], al
	movzx	eax, byte ptr [rsi]
	add	rcx, 1
	add	rsi, 1
	test	al, al
	jne	LBB0_2
LBB0_3:
	mov	byte ptr [rcx], 0
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
