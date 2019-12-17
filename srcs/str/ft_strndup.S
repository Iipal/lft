	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strndup             ## -- Begin function ft_strndup
	.p2align	4, 0x90
_ft_strndup:                            ## @ft_strndup
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
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rsi
	call	_ft_strnew
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	_ft_strncpy             ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
