	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z14ft_is_one_of_ncmz  ## -- Begin function _Z14ft_is_one_of_ncmz
	.p2align	4, 0x90
__Z14ft_is_one_of_ncmz:                 ## @_Z14ft_is_one_of_ncmz
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 208
	test	al, al
	je	LBB0_2
## %bb.1:
	vmovaps	xmmword ptr [rbp - 160], xmm0
	vmovaps	xmmword ptr [rbp - 144], xmm1
	vmovaps	xmmword ptr [rbp - 128], xmm2
	vmovaps	xmmword ptr [rbp - 112], xmm3
	vmovaps	xmmword ptr [rbp - 96], xmm4
	vmovaps	xmmword ptr [rbp - 80], xmm5
	vmovaps	xmmword ptr [rbp - 64], xmm6
	vmovaps	xmmword ptr [rbp - 48], xmm7
LBB0_2:
	mov	qword ptr [rbp - 168], r9
	mov	qword ptr [rbp - 176], r8
	mov	qword ptr [rbp - 184], rcx
	mov	qword ptr [rbp - 192], rdx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rax, [rbp - 208]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rbp + 16]
	mov	qword ptr [rbp - 24], rax
	movabs	rax, 206158430224
	mov	qword ptr [rbp - 32], rax
	neg	rsi
	xor	eax, eax
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	rsi, rax
	je	LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmp	rax, 1
	je	LBB0_10
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movsxd	rdx, dword ptr [rbp - 32]
	cmp	rdx, 40
	ja	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rcx, rdx
	add	rcx, qword ptr [rbp - 16]
	lea	edx, [rdx + 8]
	mov	dword ptr [rbp - 32], edx
	add	rax, -1
	cmp	dword ptr [rcx], edi
	jne	LBB0_3
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	rcx, qword ptr [rbp - 24]
	lea	rdx, [rcx + 8]
	mov	qword ptr [rbp - 24], rdx
	add	rax, -1
	cmp	dword ptr [rcx], edi
	jne	LBB0_3
LBB0_9:
	neg	rax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	je	LBB0_12
	jmp	LBB0_13
LBB0_10:
	xor	eax, eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	jne	LBB0_13
LBB0_12:
	add	rsp, 208
	pop	rbp
	ret
LBB0_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14ft_is_one_of_nimz  ## -- Begin function _Z14ft_is_one_of_nimz
	.p2align	4, 0x90
__Z14ft_is_one_of_nimz:                 ## @_Z14ft_is_one_of_nimz
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 208
	test	al, al
	je	LBB1_2
## %bb.1:
	vmovaps	xmmword ptr [rbp - 160], xmm0
	vmovaps	xmmword ptr [rbp - 144], xmm1
	vmovaps	xmmword ptr [rbp - 128], xmm2
	vmovaps	xmmword ptr [rbp - 112], xmm3
	vmovaps	xmmword ptr [rbp - 96], xmm4
	vmovaps	xmmword ptr [rbp - 80], xmm5
	vmovaps	xmmword ptr [rbp - 64], xmm6
	vmovaps	xmmword ptr [rbp - 48], xmm7
LBB1_2:
	mov	qword ptr [rbp - 168], r9
	mov	qword ptr [rbp - 176], r8
	mov	qword ptr [rbp - 184], rcx
	mov	qword ptr [rbp - 192], rdx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rax, [rbp - 208]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rbp + 16]
	mov	qword ptr [rbp - 24], rax
	movabs	rax, 206158430224
	mov	qword ptr [rbp - 32], rax
	neg	rsi
	xor	eax, eax
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	rsi, rax
	je	LBB1_10
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	cmp	rax, 1
	je	LBB1_10
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	movsxd	rdx, dword ptr [rbp - 32]
	cmp	rdx, 40
	ja	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	rcx, rdx
	add	rcx, qword ptr [rbp - 16]
	lea	edx, [rdx + 8]
	mov	dword ptr [rbp - 32], edx
	add	rax, -1
	cmp	dword ptr [rcx], edi
	jne	LBB1_3
	jmp	LBB1_9
	.p2align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=1
	mov	rcx, qword ptr [rbp - 24]
	lea	rdx, [rcx + 8]
	mov	qword ptr [rbp - 24], rdx
	add	rax, -1
	cmp	dword ptr [rcx], edi
	jne	LBB1_3
LBB1_9:
	neg	rax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	je	LBB1_12
	jmp	LBB1_13
LBB1_10:
	xor	eax, eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	jne	LBB1_13
LBB1_12:
	add	rsp, 208
	pop	rbp
	ret
LBB1_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14ft_is_one_of_nlmz  ## -- Begin function _Z14ft_is_one_of_nlmz
	.p2align	4, 0x90
__Z14ft_is_one_of_nlmz:                 ## @_Z14ft_is_one_of_nlmz
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 208
	test	al, al
	je	LBB2_2
## %bb.1:
	vmovaps	xmmword ptr [rbp - 160], xmm0
	vmovaps	xmmword ptr [rbp - 144], xmm1
	vmovaps	xmmword ptr [rbp - 128], xmm2
	vmovaps	xmmword ptr [rbp - 112], xmm3
	vmovaps	xmmword ptr [rbp - 96], xmm4
	vmovaps	xmmword ptr [rbp - 80], xmm5
	vmovaps	xmmword ptr [rbp - 64], xmm6
	vmovaps	xmmword ptr [rbp - 48], xmm7
LBB2_2:
	mov	qword ptr [rbp - 168], r9
	mov	qword ptr [rbp - 176], r8
	mov	qword ptr [rbp - 184], rcx
	mov	qword ptr [rbp - 192], rdx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rax, [rbp - 208]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rbp + 16]
	mov	qword ptr [rbp - 24], rax
	movabs	rax, 206158430224
	mov	qword ptr [rbp - 32], rax
	neg	rsi
	xor	eax, eax
	.p2align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	rsi, rax
	je	LBB2_10
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	cmp	rax, 1
	je	LBB2_10
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	movsxd	rdx, dword ptr [rbp - 32]
	cmp	rdx, 40
	ja	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_3 Depth=1
	mov	rcx, rdx
	add	rcx, qword ptr [rbp - 16]
	lea	edx, [rdx + 8]
	mov	dword ptr [rbp - 32], edx
	add	rax, -1
	cmp	qword ptr [rcx], rdi
	jne	LBB2_3
	jmp	LBB2_9
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=1
	mov	rcx, qword ptr [rbp - 24]
	lea	rdx, [rcx + 8]
	mov	qword ptr [rbp - 24], rdx
	add	rax, -1
	cmp	qword ptr [rcx], rdi
	jne	LBB2_3
LBB2_9:
	neg	rax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	je	LBB2_12
	jmp	LBB2_13
LBB2_10:
	xor	eax, eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 8]
	jne	LBB2_13
LBB2_12:
	add	rsp, 208
	pop	rbp
	ret
LBB2_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14ft_is_one_of_nPKcmz ## -- Begin function _Z14ft_is_one_of_nPKcmz
	.p2align	4, 0x90
__Z14ft_is_one_of_nPKcmz:               ## @_Z14ft_is_one_of_nPKcmz
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
	sub	rsp, 216
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r15, rsi
	mov	r14, rdi
	test	al, al
	je	LBB3_2
## %bb.1:
	vmovaps	xmmword ptr [rbp - 192], xmm0
	vmovaps	xmmword ptr [rbp - 176], xmm1
	vmovaps	xmmword ptr [rbp - 160], xmm2
	vmovaps	xmmword ptr [rbp - 144], xmm3
	vmovaps	xmmword ptr [rbp - 128], xmm4
	vmovaps	xmmword ptr [rbp - 112], xmm5
	vmovaps	xmmword ptr [rbp - 96], xmm6
	vmovaps	xmmword ptr [rbp - 80], xmm7
LBB3_2:
	mov	qword ptr [rbp - 200], r9
	mov	qword ptr [rbp - 208], r8
	mov	qword ptr [rbp - 216], rcx
	mov	qword ptr [rbp - 224], rdx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 32], rax
	lea	rax, [rbp - 240]
	mov	qword ptr [rbp - 48], rax
	lea	rax, [rbp + 16]
	mov	qword ptr [rbp - 56], rax
	movabs	rax, 206158430224
	mov	qword ptr [rbp - 64], rax
	neg	r15
	xor	ebx, ebx
	.p2align	4, 0x90
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	r15, rbx
	je	LBB3_10
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=1
	cmp	rbx, 1
	je	LBB3_10
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=1
	movsxd	rcx, dword ptr [rbp - 64]
	cmp	rcx, 40
	ja	LBB3_7
## %bb.6:                               ##   in Loop: Header=BB3_3 Depth=1
	mov	rax, rcx
	add	rax, qword ptr [rbp - 48]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rbp - 64], ecx
	jmp	LBB3_8
	.p2align	4, 0x90
LBB3_7:                                 ##   in Loop: Header=BB3_3 Depth=1
	mov	rax, qword ptr [rbp - 56]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbp - 56], rcx
LBB3_8:                                 ##   in Loop: Header=BB3_3 Depth=1
	mov	rsi, qword ptr [rax]
	mov	rdi, r14
	call	_ft_strcmp
	add	rbx, -1
	test	eax, eax
	jne	LBB3_3
## %bb.9:
	neg	rbx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 32]
	je	LBB3_12
	jmp	LBB3_13
LBB3_10:
	xor	ebx, ebx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 32]
	jne	LBB3_13
LBB3_12:
	mov	rax, rbx
	add	rsp, 216
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB3_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14ft_is_one_of_nPKcmmz ## -- Begin function _Z14ft_is_one_of_nPKcmmz
	.p2align	4, 0x90
__Z14ft_is_one_of_nPKcmmz:              ## @_Z14ft_is_one_of_nPKcmmz
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
	sub	rsp, 208
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	al, al
	je	LBB4_2
## %bb.1:
	vmovaps	xmmword ptr [rbp - 192], xmm0
	vmovaps	xmmword ptr [rbp - 176], xmm1
	vmovaps	xmmword ptr [rbp - 160], xmm2
	vmovaps	xmmword ptr [rbp - 144], xmm3
	vmovaps	xmmword ptr [rbp - 128], xmm4
	vmovaps	xmmword ptr [rbp - 112], xmm5
	vmovaps	xmmword ptr [rbp - 96], xmm6
	vmovaps	xmmword ptr [rbp - 80], xmm7
LBB4_2:
	mov	qword ptr [rbp - 200], r9
	mov	qword ptr [rbp - 208], r8
	mov	qword ptr [rbp - 216], rcx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 40], rax
	lea	rax, [rbp - 240]
	mov	qword ptr [rbp - 48], rax
	lea	rax, [rbp + 16]
	mov	qword ptr [rbp - 56], rax
	movabs	rax, 206158430232
	mov	qword ptr [rbp - 64], rax
	neg	r12
	xor	ebx, ebx
	.p2align	4, 0x90
LBB4_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	r12, rbx
	je	LBB4_10
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	cmp	rbx, 1
	je	LBB4_10
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsxd	rcx, dword ptr [rbp - 64]
	cmp	rcx, 40
	ja	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	mov	rax, rcx
	add	rax, qword ptr [rbp - 48]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rbp - 64], ecx
	jmp	LBB4_8
	.p2align	4, 0x90
LBB4_7:                                 ##   in Loop: Header=BB4_3 Depth=1
	mov	rax, qword ptr [rbp - 56]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbp - 56], rcx
LBB4_8:                                 ##   in Loop: Header=BB4_3 Depth=1
	mov	rsi, qword ptr [rax]
	mov	rdi, r15
	mov	rdx, r14
	call	_ft_strncmp
	add	rbx, -1
	test	eax, eax
	jne	LBB4_3
## %bb.9:
	neg	rbx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 40]
	je	LBB4_12
	jmp	LBB4_13
LBB4_10:
	xor	ebx, ebx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 40]
	jne	LBB4_13
LBB4_12:
	mov	rax, rbx
	add	rsp, 208
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB4_13:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
