	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_lstdel              ## -- Begin function ft_lstdel
	.p2align	4, 0x90
_ft_lstdel:                             ## @ft_lstdel
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
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rdi]
	cmp	qword ptr [rdi + 16], 0
	je	LBB0_2
## %bb.1:
	add	rdi, 16
	mov	rsi, r14
	call	_ft_lstdel
LBB0_2:
	mov	rdi, rbx
	mov	rsi, r14
	pop	rbx
	pop	r14
	pop	rbp
	jmp	_ft_lstdelone           ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
