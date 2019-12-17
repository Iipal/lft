	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strnstr             ## -- Begin function ft_strnstr
	.p2align	4, 0x90
_ft_strnstr:                            ## @ft_strnstr
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
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, rsi
	call	_ft_strlen
	cmp	byte ptr [r15], 0
	je	LBB0_7
## %bb.1:
	cmp	byte ptr [rbx], 0
	je	LBB0_6
## %bb.2:
	mov	r12, rax
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	r14, r12
	jb	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	_ft_strncmp
	test	eax, eax
	je	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	add	r14, -1
	cmp	byte ptr [rbx + 1], 0
	lea	rbx, [rbx + 1]
	jne	LBB0_3
LBB0_6:
	xor	ebx, ebx
LBB0_7:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
