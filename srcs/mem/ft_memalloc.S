	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memalloc            ## -- Begin function ft_memalloc
	.p2align	4, 0x90
_ft_memalloc:                           ## @ft_memalloc
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
	test	rdi, rdi
	je	LBB0_4
## %bb.1:
	mov	rbx, rdi
	call	_malloc
	test	rax, rax
	je	LBB0_4
## %bb.2:
	mov	r14, rax
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbx
	call	_ft_memset
	jmp	LBB0_5
LBB0_4:
	xor	r14d, r14d
LBB0_5:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
