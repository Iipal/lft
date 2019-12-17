	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_atoi                ## -- Begin function ft_atoi
	.p2align	4, 0x90
_ft_atoi:                               ## @ft_atoi
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
	lea	esi, [rsi + rsi - 1]
	cmove	rcx, rax
	mov	bl, byte ptr [rcx]
	mov	edx, ebx
	add	dl, -48
	xor	eax, eax
	cmp	dl, 9
	ja	LBB0_3
## %bb.1:
	add	rcx, 1
	xor	eax, eax
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	lea	eax, [rax + 4*rax]
	movsx	edx, bl
	lea	eax, [rdx + 2*rax]
	add	eax, -48
	movzx	ebx, byte ptr [rcx]
	mov	edx, ebx
	add	dl, -48
	add	rcx, 1
	cmp	dl, 10
	jb	LBB0_2
LBB0_3:
	imul	eax, esi
                                        ## kill: def $eax killed $eax killed $rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
