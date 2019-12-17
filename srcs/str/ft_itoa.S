	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_itoa                ## -- Begin function ft_itoa
	.p2align	4, 0x90
_ft_itoa:                               ## @ft_itoa
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
	mov	r14d, edi
	movsxd	rdi, edi
	call	_ft_digits
	mov	r15, rax
	mov	rdi, rax
	call	_ft_strnew
	test	rax, rax
	je	LBB0_17
## %bb.1:
	test	r15, r15
	je	LBB0_13
## %bb.2:
	mov	rdx, r15
	add	r15, -1
	and	edx, 3
	test	r14d, r14d
	js	LBB0_8
## %bb.3:
	mov	rcx, r15
	mov	ebx, r14d
	test	rdx, rdx
	je	LBB0_6
## %bb.4:
	neg	rdx
	mov	rcx, r15
	mov	ebx, r14d
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rsi, ebx
	imul	rbx, rsi, 1717986919
	mov	rdi, rbx
	shr	rdi, 63
	sar	rbx, 34
	add	ebx, edi
	lea	edi, [rbx + rbx]
	lea	edi, [rdi + 4*rdi]
	sub	esi, edi
	add	sil, 48
	mov	byte ptr [rax + rcx], sil
	add	rcx, -1
	add	rdx, 1
	jne	LBB0_5
LBB0_6:
	cmp	r15, 3
	jb	LBB0_13
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	r9, ebx
	imul	r10, r9, 1717986919
	mov	rsi, r10
	shr	rsi, 63
	sar	r10, 34
	add	r10d, esi
	lea	esi, [r10 + r10]
	lea	r8d, [rsi + 4*rsi]
	imul	r11, r9, 1374389535
	imul	r15, r9, 274877907
	imul	rbx, r9, 1759218605
	mov	edx, r9d
	sub	edx, r8d
	add	dl, 48
	mov	byte ptr [rax + rcx], dl
	movsxd	rdx, r10d
	imul	rdi, rdx, 1717986919
	mov	rsi, rdi
	shr	rsi, 63
	sar	rdi, 34
	add	edi, esi
	add	edi, edi
	lea	esi, [rdi + 4*rdi]
	sub	edx, esi
	add	dl, 48
	mov	byte ptr [rax + rcx - 1], dl
	mov	rdx, r11
	shr	rdx, 63
	sar	r11, 37
	add	r11d, edx
	movsxd	rdx, r11d
	imul	rsi, rdx, 1717986919
	mov	rdi, rsi
	shr	rdi, 63
	sar	rsi, 34
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + 4*rsi]
	sub	edx, esi
	add	dl, 48
	mov	byte ptr [rax + rcx - 2], dl
	mov	rdx, r15
	shr	rdx, 63
	sar	r15, 38
	add	r15d, edx
	movsxd	rdx, r15d
	imul	rsi, rdx, 1717986919
	mov	rdi, rsi
	shr	rdi, 63
	sar	rsi, 34
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + 4*rsi]
	sub	edx, esi
	add	dl, 48
	mov	byte ptr [rax + rcx - 3], dl
	mov	rdx, rbx
	shr	rdx, 63
	sar	rbx, 44
	add	ebx, edx
	add	rcx, -4
	cmp	rcx, -1
	jne	LBB0_7
	jmp	LBB0_13
LBB0_8:
	mov	r10, r15
	mov	ebx, r14d
	test	rdx, rdx
	je	LBB0_11
## %bb.9:
	neg	rdx
	mov	r10, r15
	mov	ebx, r14d
	.p2align	4, 0x90
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	movsxd	rsi, ebx
	imul	rbx, rsi, 1717986919
	mov	rdi, rbx
	shr	rdi, 63
	sar	rbx, 34
	add	ebx, edi
	lea	edi, [rbx + rbx]
	lea	edi, [rdi + 4*rdi]
	sub	esi, edi
	mov	cl, 48
	sub	cl, sil
	mov	byte ptr [rax + r10], cl
	add	r10, -1
	add	rdx, 1
	jne	LBB0_10
LBB0_11:
	cmp	r15, 3
	jb	LBB0_13
	.p2align	4, 0x90
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	movsxd	r9, ebx
	imul	r11, r9, 1717986919
	mov	rcx, r11
	shr	rcx, 63
	sar	r11, 34
	add	r11d, ecx
	lea	ecx, [r11 + r11]
	lea	r8d, [rcx + 4*rcx]
	imul	r15, r9, 1374389535
	imul	r12, r9, 274877907
	imul	rbx, r9, 1759218605
	mov	ecx, r9d
	sub	ecx, r8d
	mov	dl, 48
	sub	dl, cl
	movsxd	rcx, r11d
	imul	rdi, rcx, 1717986919
	mov	rsi, rdi
	shr	rsi, 63
	sar	rdi, 34
	add	edi, esi
	mov	byte ptr [rax + r10], dl
	add	edi, edi
	lea	edx, [rdi + 4*rdi]
	sub	ecx, edx
	mov	dl, 48
	sub	dl, cl
	mov	rcx, r15
	shr	rcx, 63
	sar	r15, 37
	add	r15d, ecx
	movsxd	rcx, r15d
	imul	rsi, rcx, 1717986919
	mov	rdi, rsi
	shr	rdi, 63
	sar	rsi, 34
	add	esi, edi
	mov	byte ptr [rax + r10 - 1], dl
	add	esi, esi
	lea	edx, [rsi + 4*rsi]
	sub	ecx, edx
	mov	dl, 48
	sub	dl, cl
	mov	byte ptr [rax + r10 - 2], dl
	mov	rcx, r12
	shr	rcx, 63
	sar	r12, 38
	add	r12d, ecx
	movsxd	rcx, r12d
	imul	rdx, rcx, 1717986919
	mov	rsi, rdx
	shr	rsi, 63
	sar	rdx, 34
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + 4*rdx]
	sub	ecx, edx
	mov	dl, 48
	sub	dl, cl
	mov	byte ptr [rax + r10 - 3], dl
	mov	rcx, rbx
	shr	rcx, 63
	sar	rbx, 44
	add	ebx, ecx
	add	r10, -4
	cmp	r10, -1
	jne	LBB0_12
LBB0_13:
	test	r14d, r14d
	js	LBB0_14
## %bb.15:
	mov	cl, byte ptr [rax]
	jmp	LBB0_16
LBB0_14:
	mov	cl, 45
LBB0_16:
	mov	byte ptr [rax], cl
LBB0_17:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
