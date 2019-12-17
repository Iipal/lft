	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_lstdelone           ## -- Begin function ft_lstdelone
	.p2align	4, 0x90
_ft_lstdelone:                          ## @ft_lstdelone
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
	mov	rax, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rcx + 8]
	call	rax
	mov	rdi, qword ptr [rbx]
	call	_free
	mov	qword ptr [rbx], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
