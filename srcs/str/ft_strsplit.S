	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strsplit            ## -- Begin function ft_strsplit
	.p2align	4, 0x90
_ft_strsplit:                           ## @ft_strsplit
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r14d, esi
	mov	rbx, rdi
	test	rdi, rdi
	je	LBB0_5
## %bb.1:
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	LBB0_5
## %bb.2:
	lea	rax, [rbx + 1]
	xor	r12d, r12d
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movsx	ecx, cl
	xor	edx, edx
	cmp	ecx, r14d
	setne	dl
	add	r12, rdx
	movzx	ecx, byte ptr [rax]
	add	rax, 1
	test	cl, cl
	jne	LBB0_3
	jmp	LBB0_6
LBB0_5:
	xor	r12d, r12d
LBB0_6:
	lea	rdi, [8*r12 + 8]
	call	_ft_memalloc
	mov	r15, rax
	test	r12, r12
	je	LBB0_15
## %bb.7:
	neg	r12
	mov	r13, -1
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	mov	rdi, rbx
	mov	esi, r14d
	call	_ft_strchr
	mov	rbx, rax
	mov	rdi, rax
	mov	esi, r14d
	call	_ft_strchr
	test	rax, rax
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=1
	sub	rax, rbx
	jmp	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_8 Depth=1
	mov	rdi, rbx
	call	_ft_strlen
LBB0_11:                                ##   in Loop: Header=BB0_8 Depth=1
	mov	rdi, rbx
	mov	rsi, rax
	call	_ft_strndup
	mov	qword ptr [r15 + 8*r13 + 8], rax
	test	rax, rax
	je	LBB0_17
## %bb.12:                              ##   in Loop: Header=BB0_8 Depth=1
	add	r13, 1
	mov	rdi, rbx
	mov	esi, r14d
	call	_ft_strchr
	test	rax, rax
	je	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_8 Depth=1
	sub	rax, rbx
	add	rbx, rax
	lea	rax, [r12 + r13]
	cmp	rax, -1
	jne	LBB0_8
	jmp	LBB0_16
	.p2align	4, 0x90
LBB0_14:                                ##   in Loop: Header=BB0_8 Depth=1
	mov	rdi, rbx
	call	_ft_strlen
	add	rbx, rax
	lea	rax, [r12 + r13]
	cmp	rax, -1
	jne	LBB0_8
	jmp	LBB0_16
LBB0_15:
	mov	r13, -1
LBB0_16:
	mov	qword ptr [r15 + 8*r13], 0
	jmp	LBB0_18
LBB0_17:
	xor	r15d, r15d
LBB0_18:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
