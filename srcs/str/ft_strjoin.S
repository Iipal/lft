	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strjoin             ## -- Begin function ft_strjoin
	.p2align	4, 0x90
_ft_strjoin:                            ## @ft_strjoin
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r14, rsi
	mov	r15, rdi
	call	_ft_strlen
	mov	r13, rax
	mov	rdi, r14
	call	_ft_strlen
	mov	r12, rax
	lea	rdi, [rax + r13]
	call	_ft_strnew
	mov	rbx, rax
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	call	_ft_strncpy
	lea	rdi, [rbx + r13]
	mov	rsi, r14
	mov	rdx, r12
	call	_ft_strncpy
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
