	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memswap             ## -- Begin function ft_memswap
	.p2align	4, 0x90
_ft_memswap:                            ## @ft_memswap
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
	sub	rsp, 16
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, rdx
	call	_ft_memdup
	mov	r12, rax
	mov	qword ptr [rbp - 40], rax
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	_ft_memmove
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	call	_ft_memmove
	lea	rdi, [rbp - 40]
	call	_ft_memdel
	add	rsp, 16
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
