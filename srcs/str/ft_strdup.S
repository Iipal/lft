	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strdup              ## -- Begin function ft_strdup
	.p2align	4, 0x90
_ft_strdup:                             ## @ft_strdup
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rbx
	push	rax
	.cfi_offset rbx, -24
	mov	rbx, rdi
	call	_ft_strlen
	mov	rdi, rax
	call	_ft_strnew
	mov	rdi, rax
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	_ft_strcpy              ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
