	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_fdigits_str         ## -- Begin function ft_fdigits_str
	.p2align	4, 0x90
_ft_fdigits_str:                        ## @ft_fdigits_str
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
	mov	r14, rdi
	call	_ft_atol
	mov	r15, rax
	mov	r12b, byte ptr [r14]
	lea	rbx, [r14 + 1]
	cmp	r12b, 45
	cmovne	rbx, r14
	test	rax, rax
	cmovne	rbx, r14
	mov	rdi, rax
	call	_ft_digits
	cmp	byte ptr [rbx + rax], 46
	jne	LBB0_7
## %bb.1:
	lea	rdi, [rbx + rax]
	add	rdi, 1
	mov	rbx, -1
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [rdi + rbx + 1]
	add	rbx, 1
	add	al, -48
	cmp	al, 10
	jb	LBB0_2
## %bb.3:
	call	_ft_atol
	mov	r14, rax
	mov	rdi, rax
	call	_ft_digits
	cmp	rbx, rax
	jbe	LBB0_4
## %bb.5:
	mov	rdi, r14
	call	_ft_digits
	sub	rbx, rax
	jmp	LBB0_6
LBB0_7:
	test	r15, r15
	sete	r14b
	cmp	r12b, 45
	sete	bl
	mov	rdi, r15
	call	_ft_digits
	mov	rcx, rax
	and	bl, r14b
	movzx	eax, bl
	add	rax, rcx
	jmp	LBB0_8
LBB0_4:
	xor	ebx, ebx
LBB0_6:
	test	r15, r15
	sete	r13b
	cmp	r12b, 45
	sete	r12b
	mov	rdi, r15
	call	_ft_digits
	mov	r15, rax
	mov	rdi, r14
	call	_ft_digits
	and	r12b, r13b
	movzx	ecx, r12b
	add	rcx, rbx
	add	rcx, r15
	add	rax, rcx
	add	rax, 1
LBB0_8:
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
