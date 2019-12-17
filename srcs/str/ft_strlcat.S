	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strlcat             ## -- Begin function ft_strlcat
	.p2align	4, 0x90
_ft_strlcat:                            ## @ft_strlcat
	.cfi_startproc
## %bb.0:
	xor	ecx, ecx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	rdx, rcx
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	byte ptr [rdi + rcx], 0
	lea	rcx, [rcx + 1]
	jne	LBB0_1
LBB0_3:
	add	rcx, rdi
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	r14, rcx
	sub	r14, rdi
	sub	rdx, r14
	je	LBB0_12
## %bb.4:
	mov	bl, byte ptr [rsi]
	mov	rax, rsi
	test	bl, bl
	jne	LBB0_6
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	movzx	ebx, byte ptr [rax + 1]
	add	rax, 1
	test	bl, bl
	je	LBB0_10
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	cmp	rdx, 1
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	edx, 1
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	byte ptr [rcx], bl
	add	rcx, 1
	add	rdx, -1
	jmp	LBB0_9
LBB0_10:
	mov	byte ptr [rcx], 0
	sub	rax, rsi
	jmp	LBB0_11
LBB0_12:
	mov	rdi, rsi
	call	_ft_strlen
LBB0_11:
	add	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
