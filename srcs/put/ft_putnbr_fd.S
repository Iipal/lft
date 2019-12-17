	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putnbr_fd           ## -- Begin function ft_putnbr_fd
	.p2align	4, 0x90
_ft_putnbr_fd:                          ## @ft_putnbr_fd
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
	sub	rsp, 40
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r14d, esi
	mov	rbx, rdi
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 48], rax
	call	_ft_digits
	mov	r15, rax
	lea	rdi, [rbp - 80]
	mov	esi, 24
	call	_ft_bzero
	test	rbx, rbx
	js	LBB0_2
## %bb.1:
	xor	r8d, r8d
	cmp	r15, r8
	jne	LBB0_4
	jmp	LBB0_11
LBB0_2:
	mov	byte ptr [rbp - 80], 45
	neg	rbx
	mov	r8d, 1
	cmp	r15, r8
	je	LBB0_11
LBB0_4:
	mov	edi, r15d
	sub	edi, r8d
	mov	r9, r8
	not	r9
	add	r9, r15
	and	rdi, 3
	je	LBB0_5
## %bb.6:
	neg	rdi
	movabs	rsi, 7378697629483820647
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, rbx
	imul	rsi
	mov	rcx, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rcx, 2
	lea	edx, [rcx + rax]
	add	edx, edx
	lea	edx, [rdx + 4*rdx]
	sub	ebx, edx
	add	bl, 48
	mov	byte ptr [rbp + r15 - 81], bl
	lea	r15, [r15 - 1]
	add	rcx, rax
	mov	rbx, rcx
	add	rdi, 1
	jne	LBB0_7
## %bb.8:
	cmp	r9, 3
	jae	LBB0_9
	jmp	LBB0_11
LBB0_5:
	mov	rcx, rbx
	cmp	r9, 3
	jb	LBB0_11
LBB0_9:
	movabs	r9, 7378697629483820647
	movabs	r10, -6640827866535438581
	movabs	r11, 2361183241434822607
	movabs	r12, 3777893186295716171
	.p2align	4, 0x90
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	mov	rax, rcx
	imul	r9
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 2
	lea	r13d, [rsi + rax]
	add	r13d, r13d
	add	rsi, rax
	mov	rax, rsi
	imul	r9
	mov	rdi, rdx
	mov	rax, rcx
	imul	r10
	mov	rbx, rdx
	lea	eax, [r13 + 4*r13]
	add	rbx, rcx
	mov	edx, ecx
	sub	edx, eax
	add	dl, 48
	mov	byte ptr [rbp + r15 - 81], dl
	mov	rax, rdi
	shr	rax, 63
	shr	edi, 2
	add	edi, eax
	add	edi, edi
	lea	eax, [rdi + 4*rdi]
	sub	esi, eax
	add	sil, 48
	mov	byte ptr [rbp + r15 - 82], sil
	mov	rax, rbx
	shr	rax, 63
	sar	rbx, 6
	add	rbx, rax
	mov	rax, rbx
	imul	r9
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	ebx, eax
	add	bl, 48
	mov	byte ptr [rbp + r15 - 83], bl
	mov	rax, rcx
	imul	r11
	mov	rsi, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rsi, 7
	add	rsi, rax
	mov	rax, rsi
	imul	r9
	mov	rax, rdx
	shr	rax, 63
	shr	edx, 2
	add	edx, eax
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	sub	esi, eax
	add	sil, 48
	mov	byte ptr [rbp + r15 - 84], sil
	lea	r15, [r15 - 4]
	mov	rax, rcx
	imul	r12
	mov	rcx, rdx
	mov	rax, rdx
	shr	rax, 63
	sar	rcx, 11
	add	rcx, rax
	cmp	r8, r15
	jne	LBB0_10
LBB0_11:
	lea	rdi, [rbp - 80]
	mov	esi, r14d
	call	_ft_putstr_fd
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 48]
	jne	LBB0_13
## %bb.12:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB0_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
