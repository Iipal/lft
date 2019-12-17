	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncpy             ## -- Begin function ft_strncpy
	.p2align	4, 0x90
_ft_strncpy:                            ## @ft_strncpy
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
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, rsi
	mov	rsi, rdx
	call	_ft_strnlen
	mov	r12, rax
	cmp	rax, rbx
	je	LBB0_2
## %bb.1:
	lea	rdi, [r14 + r12]
	sub	rbx, r12
	xor	esi, esi
	mov	rdx, rbx
	call	_ft_memset
LBB0_2:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ft_memcpy              ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
