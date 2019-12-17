	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strtrim             ## -- Begin function ft_strtrim
	.p2align	4, 0x90
_ft_strtrim:                            ## @ft_strtrim
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
	mov	r15, rdi
	call	_ft_skip_blanks
	mov	r14, rax
	cmp	byte ptr [r15 + rax], 0
	je	LBB0_6
## %bb.1:
	mov	rdi, r15
	call	_ft_strlen
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rcx, rax
	lea	rax, [rax - 1]
	movzx	ebx, byte ptr [r15 + rcx - 1]
	mov	edx, ebx
	add	dl, -9
	cmp	dl, 5
	jb	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	cmp	bl, 32
	jne	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmp	rcx, 1
	jne	LBB0_2
LBB0_5:
	mov	eax, 1
	sub	rax, r14
	lea	rdx, [rax + rcx]
	add	rdx, -1
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ft_strsub              ## TAILCALL
LBB0_6:
	add	r15, r14
	mov	rdi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ft_strdup              ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
