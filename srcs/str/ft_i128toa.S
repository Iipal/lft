	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_i128toa             ## -- Begin function ft_i128toa
	.p2align	4, 0x90
_ft_i128toa:                            ## @ft_i128toa
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
	mov	rbx, rsi
	mov	r14, rdi
	call	_ft_digits
	mov	r15, rax
	mov	rax, rbx
	shr	rax, 63
	lea	rdi, [rax + r15]
	call	_ft_strnew
	test	rax, rax
	je	LBB0_17
## %bb.1:
	mov	qword ptr [rbp - 72], rbx ## 8-byte Spill
	xor	edx, edx
	mov	r13, r15
	add	r13, -1
	mov	rcx, -1
	adcx	rdx, rcx
	test	r15, r15
	mov	rbx, rax
	je	LBB0_13
## %bb.2:
	mov	rcx, rbx
	and	r15d, 3
	xor	r12d, r12d
	mov	rsi, qword ptr [rbp - 72] ## 8-byte Reload
	test	rsi, rsi
	mov	qword ptr [rbp - 48], rdx ## 8-byte Spill
	mov	qword ptr [rbp - 56], r13 ## 8-byte Spill
	mov	qword ptr [rbp - 64], rbx ## 8-byte Spill
	js	LBB0_8
## %bb.3:
	test	r15, r15
	je	LBB0_4
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	rbx, rdx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, r14
	call	___divti3
	mov	rsi, rdx
	mov	rdx, rbx
	mov	ecx, eax
	add	ecx, ecx
	lea	ecx, [rcx + 4*rcx]
	sub	r14d, ecx
	add	r14b, 48
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	mov	byte ptr [rcx + r13], r14b
	add	r13, -1
	mov	rcx, -1
	adcx	rdx, rcx
	add	r15, -1
	adcx	r12, rcx
	mov	rcx, r15
	or	rcx, r12
	mov	r14, rax
	jne	LBB0_5
## %bb.6:
	cmp	qword ptr [rbp - 56], 3 ## 8-byte Folded Reload
	sbb	qword ptr [rbp - 48], 0 ## 8-byte Folded Spill
	mov	rbx, qword ptr [rbp - 64] ## 8-byte Reload
	jae	LBB0_7
	jmp	LBB0_13
LBB0_8:
	test	r15, r15
	je	LBB0_9
	.p2align	4, 0x90
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	mov	rbx, rdx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, r14
	call	___divti3
	mov	rsi, rdx
	mov	rdx, rbx
	mov	ecx, eax
	add	ecx, ecx
	lea	ecx, [rcx + 4*rcx]
	sub	r14d, ecx
	mov	cl, 48
	sub	cl, r14b
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	byte ptr [rdi + r13], cl
	add	r13, -1
	mov	rcx, -1
	adcx	rdx, rcx
	add	r15, -1
	adcx	r12, rcx
	mov	rcx, r15
	or	rcx, r12
	mov	r14, rax
	jne	LBB0_10
## %bb.11:
	cmp	qword ptr [rbp - 56], 3 ## 8-byte Folded Reload
	sbb	qword ptr [rbp - 48], 0 ## 8-byte Folded Spill
	mov	rbx, qword ptr [rbp - 64] ## 8-byte Reload
	jae	LBB0_12
	jmp	LBB0_13
LBB0_4:
	mov	rax, r14
	cmp	qword ptr [rbp - 56], 3 ## 8-byte Folded Reload
	sbb	qword ptr [rbp - 48], 0 ## 8-byte Folded Spill
	mov	rbx, qword ptr [rbp - 64] ## 8-byte Reload
	jb	LBB0_13
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	qword ptr [rbp - 48], rdx ## 8-byte Spill
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	mov	r14, rsi
	mov	qword ptr [rbp - 56], rsi ## 8-byte Spill
	mov	r12, rax
	call	___divti3
	mov	rsi, rdx
	lea	ecx, [rax + rax]
	lea	ecx, [rcx + 4*rcx]
	mov	edx, r12d
	sub	edx, ecx
	add	dl, 48
	mov	byte ptr [rbx + r13], dl
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	add	al, 48
	mov	byte ptr [rbx + r13 - 1], al
	mov	edx, 100
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r14
	call	___divti3
	mov	rsi, rdx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	add	al, 48
	mov	byte ptr [rbx + r13 - 2], al
	mov	edx, 1000
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r14
	call	___divti3
	mov	rsi, rdx
	mov	r15, r13
	add	r15, -3
	mov	r14, rbx
	mov	rbx, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rcx, -1
	adcx	rbx, rcx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	add	al, 48
	mov	byte ptr [r14 + r15], al
	mov	edx, 10000
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 56] ## 8-byte Reload
	call	___divti3
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	add	r13, -4
	mov	rcx, -1
	adcx	rdx, rcx
	or	rbx, r15
	mov	rbx, r14
	jne	LBB0_7
	jmp	LBB0_13
LBB0_9:
	mov	rax, r14
	cmp	qword ptr [rbp - 56], 3 ## 8-byte Folded Reload
	sbb	qword ptr [rbp - 48], 0 ## 8-byte Folded Spill
	mov	rbx, qword ptr [rbp - 64] ## 8-byte Reload
	jb	LBB0_13
	.p2align	4, 0x90
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	mov	qword ptr [rbp - 48], rdx ## 8-byte Spill
	mov	edx, 10
	xor	ecx, ecx
	mov	r14, rax
	mov	rdi, rax
	mov	r15, rsi
	mov	qword ptr [rbp - 56], rsi ## 8-byte Spill
	call	___divti3
	mov	rsi, rdx
	lea	ecx, [rax + rax]
	lea	ecx, [rcx + 4*rcx]
	mov	edx, r14d
	sub	edx, ecx
	mov	cl, 48
	sub	cl, dl
	mov	byte ptr [rbx + r13], cl
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	mov	cl, 48
	sub	cl, al
	mov	byte ptr [rbx + r13 - 1], cl
	mov	edx, 100
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, r15
	call	___divti3
	mov	rsi, rdx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	mov	cl, 48
	sub	cl, al
	mov	byte ptr [rbx + r13 - 2], cl
	mov	edx, 1000
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, r15
	call	___divti3
	mov	rsi, rdx
	mov	r15, r13
	add	r15, -3
	mov	r12, rbx
	mov	rbx, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rcx, -1
	adcx	rbx, rcx
	mov	edx, 10
	xor	ecx, ecx
	mov	rdi, rax
	call	___modti3
	mov	cl, 48
	sub	cl, al
	mov	byte ptr [r12 + r15], cl
	mov	edx, 10000
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 56] ## 8-byte Reload
	call	___divti3
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	add	r13, -4
	mov	rcx, -1
	adcx	rdx, rcx
	or	rbx, r15
	mov	rbx, r12
	jne	LBB0_12
LBB0_13:
	mov	rax, rbx
	cmp	qword ptr [rbp - 72], 0 ## 8-byte Folded Reload
	js	LBB0_14
## %bb.15:
	mov	cl, byte ptr [rax]
	jmp	LBB0_16
LBB0_14:
	mov	cl, 45
LBB0_16:
	mov	byte ptr [rax], cl
LBB0_17:
	add	rsp, 40
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
