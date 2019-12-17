	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memrealloc          ## -- Begin function ft_memrealloc
	.p2align	4, 0x90
_ft_memrealloc:                         ## @ft_memrealloc
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
	mov	rbx, rdi
	test	rdx, rdx
	je	LBB0_5
## %bb.1:
	test	rbx, rbx
	je	LBB0_8
## %bb.2:
	mov	r14, rsi
	cmp	rdx, rsi
	jbe	LBB0_7
## %bb.3:
	mov	rdi, rdx
	call	_ft_memalloc
	test	rax, rax
	je	LBB0_6
## %bb.4:
	mov	r15, rax
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, r14
	call	_ft_memcpy
	mov	rdi, rbx
	call	_free
	mov	rbx, r15
	jmp	LBB0_7
LBB0_5:
	mov	rdi, rbx
	call	_free
LBB0_6:
	xor	ebx, ebx
LBB0_7:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB0_8:
	mov	rdi, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ft_memalloc            ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
