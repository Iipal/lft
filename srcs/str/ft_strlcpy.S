	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strlcpy             ## -- Begin function ft_strlcpy
	.p2align	4, 0x90
_ft_strlcpy:                            ## @ft_strlcpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, rsi
	call	_ft_strlen
	mov	rbx, rax
	cmp	rax, r12
	jae	LBB0_2
## %bb.1:
	mov	rdx, rbx
	add	rdx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	_ft_strncpy
	jmp	LBB0_4
LBB0_2:
	test	r12, r12
	je	LBB0_4
## %bb.3:
	lea	rdx, [r12 - 1]
	mov	rdi, r14
	mov	rsi, r15
	call	_ft_strncpy
	mov	byte ptr [r14 + r12 - 1], 0
LBB0_4:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
