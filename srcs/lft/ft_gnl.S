	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_gnl                 ## -- Begin function ft_gnl
	.p2align	4, 0x90
_ft_gnl:                                ## @ft_gnl
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
	sub	rsp, 2088
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 48], rax
	mov	eax, -1
	test	edi, edi
	js	LBB0_12
## %bb.1:
	mov	r12d, edi
	mov	qword ptr [rbp - 2120], rsi ## 8-byte Spill
	movsxd	rax, edi
	lea	rcx, [rip + _ft_gnl.data]
	lea	rbx, [rcx + 8*rax]
	lea	r13, [rbp - 2112]
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	edx, 2048
	mov	edi, r12d
	mov	rsi, r13
	call	_read
	test	rax, rax
	jle	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	r14, rax
	mov	byte ptr [rbp + rax - 2112], 0
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	xor	edi, edi
	call	_ft_strnew
	mov	rdi, rax
	mov	qword ptr [rbx], rax
LBB0_5:                                 ##   in Loop: Header=BB0_2 Depth=1
	mov	rsi, r13
	call	_ft_strjoin
	mov	r15, rax
	mov	rdi, rbx
	call	_ft_strdel
	mov	qword ptr [rbx], r15
	mov	esi, 10
	mov	rdi, r13
	call	_ft_strchr
	test	rax, rax
	je	LBB0_2
## %bb.6:
	mov	edi, r12d
	mov	rsi, r14
	jmp	LBB0_11
LBB0_7:
	mov	eax, -1
	js	LBB0_12
## %bb.8:
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	LBB0_12
## %bb.9:
	cmp	byte ptr [rcx], 0
	je	LBB0_12
## %bb.10:
	xor	esi, esi
	mov	edi, r12d
LBB0_11:
	mov	rdx, qword ptr [rbp - 2120] ## 8-byte Reload
	call	_catline_recursive
	mov	eax, 1
LBB0_12:
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	cmp	rcx, qword ptr [rbp - 48]
	jne	LBB0_14
## %bb.13:
	add	rsp, 2088
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function catline_recursive
_catline_recursive:                     ## @catline_recursive
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
	sub	rsp, 24
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	qword ptr [rbp - 56], rdx ## 8-byte Spill
	mov	r13, rsi
	mov	r12d, edi
	movsxd	r14, edi
	lea	r15, [rip + _ft_gnl.data]
	lea	rax, [r15 + 8*r14]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	mov	rdi, qword ptr [r15 + 8*r14]
	call	_ft_skip_to_blank
	mov	rbx, rax
	mov	rdi, qword ptr [r15 + 8*r14]
	mov	al, byte ptr [rdi + rax]
	test	al, al
	je	LBB1_4
## %bb.1:
	cmp	al, 10
	jne	LBB1_7
## %bb.2:
	mov	rsi, rbx
	call	_ft_strndup
	mov	rcx, qword ptr [rbp - 56] ## 8-byte Reload
	mov	qword ptr [rcx], rax
	mov	r14, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rax, qword ptr [r14]
	lea	rdi, [rax + rbx]
	add	rdi, 1
	call	_ft_strdup
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	_free
	mov	qword ptr [r14], rbx
	cmp	byte ptr [rbx], 0
	je	LBB1_3
LBB1_7:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB1_4:
	cmp	r13, 2048
	mov	rbx, qword ptr [rbp - 56] ## 8-byte Reload
	jne	LBB1_6
## %bb.5:
	mov	edi, r12d
	mov	rsi, rbx
	call	_ft_gnl
	mov	rax, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rdi, qword ptr [rax]
LBB1_6:
	call	_ft_strdup
	mov	qword ptr [rbx], rax
LBB1_3:
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ft_strdel              ## TAILCALL
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_ft_gnl.data,2040,4 ## @ft_gnl.data

.subsections_via_symbols
