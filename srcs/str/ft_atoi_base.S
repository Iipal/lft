	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_atoi_base           ## -- Begin function ft_atoi_base
	.p2align	4, 0x90
_ft_atoi_base:                          ## @ft_atoi_base
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
	mov	r14d, esi
	mov	rbx, rdi
	call	_ft_skip_blanks
	lea	r11, [rbx + rax]
	mov	r9b, byte ptr [rbx + rax]
	cmp	r9b, 43
	lea	rax, [rbx + rax + 1]
	cmove	r11, rax
	cmp	r9b, 45
	cmove	r11, rax
	mov	r10d, r14d
	add	r10b, -1
	xor	r8d, r8d
	lea	rdi, [rip + _ft_atoi_base.valid_hex]
	xor	eax, eax
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	add	esi, eax
	mov	eax, esi
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movsx	esi, byte ptr [r11]
	mov	r15d, esi
	add	r15b, -65
	lea	ebx, [rsi + 32]
	cmp	r15b, 26
	cmovae	ebx, esi
	mov	edx, r10d
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dl, -1
	je	LBB0_10
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=2
	movsx	rcx, dl
	movsx	ecx, byte ptr [rcx + rdi]
	add	dl, -1
	cmp	ebx, ecx
	jne	LBB0_2
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	imul	eax, r14d
	add	r11, 1
	mov	ecx, esi
	add	cl, -48
	cmp	cl, 9
	ja	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	add	esi, -48
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	ecx, esi
	add	cl, -97
	cmp	cl, 25
	ja	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	add	esi, -87
	jmp	LBB0_6
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	add	esi, -55
	cmp	r15b, 26
	cmovae	esi, r8d
	jmp	LBB0_6
LBB0_10:
	xor	ecx, ecx
	cmp	r9b, 45
	setne	cl
	lea	ecx, [rcx + rcx]
	add	ecx, -1
	imul	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @ft_atoi_base.valid_hex
_ft_atoi_base.valid_hex:
	.asciz	"0123456789abcdef"


.subsections_via_symbols
