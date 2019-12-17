	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_ltoa                ## -- Begin function ft_ltoa
	.p2align	4, 0x90
_ft_ltoa:                               ## @ft_ltoa
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
	call	_ft_digits
	mov	r15, rax
	mov	rdi, rax
	call	_ft_strnew
	mov	r8, rax
	test	rax, rax
	je	LBB0_19
## %bb.1:
	test	r15, r15
	je	LBB0_15
## %bb.2:
	mov	rcx, r15
	add	r15, -1
	and	ecx, 3
	mov	r9, r15
	mov	rsi, r14
	test	r14, r14
	js	LBB0_9
## %bb.3:
	test	rcx, rcx
	je	LBB0_6
## %bb.4:
	neg	rcx
	movabs	rbx, 7378697629483820647
	mov	r9, r15
	mov	rdi, r14
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, rdi
	imul	rbx
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 2
	lea	edx, [rsi + rax]
	add	edx, edx
	lea	edx, [rdx + 4*rdx]
	sub	edi, edx
	add	dil, 48
	mov	byte ptr [r8 + r9], dil
	add	rsi, rax
	add	r9, -1
	mov	rdi, rsi
	add	rcx, 1
	jne	LBB0_5
LBB0_6:
	cmp	r15, 3
	jb	LBB0_15
## %bb.7:
	movabs	r10, 7378697629483820647
	movabs	r11, -6640827866535438581
	movabs	r15, 2361183241434822607
	movabs	r12, 3777893186295716171
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, rsi
	imul	r10
	mov	rdi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rdi, 2
	lea	r13d, [rdi + rax]
	add	r13d, r13d
	add	rdi, rax
	mov	rax, rdi
	imul	r10
	mov	rcx, rdx
	mov	rax, rsi
	imul	r11
	mov	rbx, rdx
	lea	eax, [r13 + 4*r13]
	add	rbx, rsi
	mov	edx, esi
	sub	edx, eax
	add	dl, 48
	mov	byte ptr [r8 + r9], dl
	mov	rax, rcx
	shr	rax, 63
	shr	ecx, 2
	add	ecx, eax
	add	ecx, ecx
	lea	eax, [rcx + 4*rcx]
	sub	edi, eax
	add	dil, 48
	mov	byte ptr [r8 + r9 - 1], dil
	mov	rax, rbx
	shr	rax, 63
	sar	rbx, 6
	add	rbx, rax
	mov	rax, rbx
	imul	r10
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	ebx, eax
	add	bl, 48
	mov	byte ptr [r8 + r9 - 2], bl
	mov	rax, rsi
	imul	r15
	mov	rcx, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rcx, 7
	add	rcx, rax
	mov	rax, rcx
	imul	r10
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	ecx, eax
	add	cl, 48
	mov	rax, rsi
	imul	r12
	mov	byte ptr [r8 + r9 - 3], cl
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 11
	add	rsi, rax
	add	r9, -4
	cmp	r9, -1
	jne	LBB0_8
	jmp	LBB0_15
LBB0_9:
	test	rcx, rcx
	je	LBB0_12
## %bb.10:
	neg	rcx
	movabs	r10, 7378697629483820647
	mov	r9, r15
	mov	rdi, r14
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	mov	rax, rdi
	imul	r10
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 2
	lea	edx, [rsi + rax]
	add	edx, edx
	lea	edx, [rdx + 4*rdx]
	sub	edi, edx
	mov	dl, 48
	sub	dl, dil
	mov	byte ptr [r8 + r9], dl
	add	rsi, rax
	add	r9, -1
	mov	rdi, rsi
	add	rcx, 1
	jne	LBB0_11
LBB0_12:
	cmp	r15, 3
	jb	LBB0_15
## %bb.13:
	movabs	r10, 7378697629483820647
	movabs	r11, -6640827866535438581
	movabs	r15, 2361183241434822607
	movabs	r12, 3777893186295716171
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	mov	rax, rsi
	imul	r10
	mov	rdi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rdi, 2
	lea	ecx, [rdi + rax]
	add	ecx, ecx
	add	rdi, rax
	mov	rax, rdi
	imul	r10
	mov	rbx, rdx
	lea	r13d, [rcx + 4*rcx]
	mov	rax, rsi
	imul	r11
	mov	rcx, rdx
	add	rcx, rsi
	mov	eax, esi
	sub	eax, r13d
	mov	dl, 48
	sub	dl, al
	mov	byte ptr [r8 + r9], dl
	mov	rax, rbx
	shr	rax, 63
	shr	ebx, 2
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + 4*rbx]
	sub	edi, eax
	mov	al, 48
	sub	al, dil
	mov	byte ptr [r8 + r9 - 1], al
	mov	rax, rcx
	shr	rax, 63
	sar	rcx, 6
	add	rcx, rax
	mov	rax, rcx
	imul	r10
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	ecx, eax
	mov	al, 48
	sub	al, cl
	mov	byte ptr [r8 + r9 - 2], al
	mov	rax, rsi
	imul	r15
	mov	rcx, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rcx, 7
	add	rcx, rax
	mov	rax, rcx
	imul	r10
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	ecx, eax
	mov	bl, 48
	sub	bl, cl
	mov	rax, rsi
	imul	r12
	mov	byte ptr [r8 + r9 - 3], bl
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 11
	add	rsi, rax
	add	r9, -4
	cmp	r9, -1
	jne	LBB0_14
LBB0_15:
	test	r14, r14
	js	LBB0_16
## %bb.17:
	mov	al, byte ptr [r8]
	jmp	LBB0_18
LBB0_16:
	mov	al, 45
LBB0_18:
	mov	byte ptr [r8], al
LBB0_19:
	mov	rax, r8
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
