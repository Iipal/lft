	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putfile             ## -- Begin function ft_putfile
	.p2align	4, 0x90
_ft_putfile:                            ## @ft_putfile
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	sub	rsp, 16
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	xor	ebx, ebx
	xor	esi, esi
	xor	eax, eax
	call	_open
	test	eax, eax
	js	LBB0_5
## %bb.1:
	mov	r14d, eax
	mov	qword ptr [rbp - 24], 0
	lea	rsi, [rbp - 24]
	mov	edi, eax
	call	_ft_gnl
	test	eax, eax
	jle	LBB0_4
## %bb.2:
	lea	rbx, [rbp - 24]
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbp - 24]
	call	_ft_putendl
	mov	rdi, rbx
	call	_ft_strdel
	mov	edi, r14d
	mov	rsi, rbx
	call	_ft_gnl
	test	eax, eax
	jg	LBB0_3
LBB0_4:
	mov	edi, r14d
	call	_close
	mov	bl, 1
LBB0_5:
	mov	eax, ebx
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
