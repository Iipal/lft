	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_lstmap              ## -- Begin function ft_lstmap
	.p2align	4, 0x90
_ft_lstmap:                             ## @ft_lstmap
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
	test	rdi, rdi
	je	LBB0_4
## %bb.1:
	mov	r15, rsi
	mov	rbx, rdi
	call	rsi
	mov	r14, rax
	mov	r12, rax
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rbx, qword ptr [rbx + 16]
	test	rbx, rbx
	je	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	rdi, rbx
	call	r15
	mov	qword ptr [r12 + 16], rax
	mov	r12, rax
	test	rax, rax
	jne	LBB0_2
LBB0_4:
	xor	r14d, r14d
LBB0_5:
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
