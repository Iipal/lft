	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_atol                ## -- Begin function ft_atol
	.p2align	4, 0x90
_ft_atol:                               ## @ft_atol
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
	mov	rbx, rdi
	call	_ft_skip_blanks
	lea	rcx, [rbx + rax]
	mov	dl, byte ptr [rbx + rax]
	cmp	dl, 43
	lea	rax, [rbx + rax + 1]
	cmove	rcx, rax
	xor	esi, esi
	cmp	dl, 45
	setne	sil
	lea	rdi, [rsi + rsi - 1]
	cmove	rcx, rax
	mov	dl, byte ptr [rcx]
	mov	eax, edx
	add	al, -48
	cmp	al, 9
	ja	LBB0_1
## %bb.2:
	add	rcx, 1
	xor	eax, eax
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	lea	rax, [rax + 4*rax]
	movsx	rsi, dl
	lea	rax, [rsi + 2*rax]
	add	rax, -48
	movzx	edx, byte ptr [rcx]
	mov	ebx, edx
	add	bl, -48
	add	rcx, 1
	cmp	bl, 10
	jb	LBB0_3
	jmp	LBB0_4
LBB0_1:
	xor	eax, eax
LBB0_4:
	imul	rax, rdi
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
