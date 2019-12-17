	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strrepchr           ## -- Begin function ft_strrepchr
	.p2align	4, 0x90
_ft_strrepchr:                          ## @ft_strrepchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	test	rdi, rdi
	je	LBB0_1
## %bb.2:
	mov	r14d, edx
	mov	ebx, esi
	call	_ft_strchr
	mov	r15b, 1
	test	rax, rax
	je	LBB0_5
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	byte ptr [rax], r14b
	add	rax, 1
	mov	rdi, rax
	mov	esi, ebx
	call	_ft_strchr
	test	rax, rax
	jne	LBB0_3
	jmp	LBB0_5
LBB0_1:
	xor	r15d, r15d
LBB0_5:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
