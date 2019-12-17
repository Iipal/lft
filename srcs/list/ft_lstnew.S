	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_lstnew              ## -- Begin function ft_lstnew
	.p2align	4, 0x90
_ft_lstnew:                             ## @ft_lstnew
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
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 24
	call	_ft_memalloc
	mov	rbx, rax
	test	rax, rax
	je	LBB0_7
## %bb.1:
	test	r15, r15
	je	LBB0_2
## %bb.3:
	mov	edi, 8
	call	_ft_memalloc
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	LBB0_4
## %bb.5:
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r14
	call	_ft_memcpy
	mov	qword ptr [rbx + 8], r14
	jmp	LBB0_6
LBB0_2:
	vxorps	xmm0, xmm0, xmm0
	vmovups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 16], 0
LBB0_6:
	mov	qword ptr [rbx + 16], 0
	jmp	LBB0_7
LBB0_4:
	mov	rdi, rbx
	call	_free
	xor	ebx, ebx
LBB0_7:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
