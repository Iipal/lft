	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncat             ## -- Begin function ft_strncat
	.p2align	4, 0x90
_ft_strncat:                            ## @ft_strncat
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
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	call	_ft_strlen
	mov	cl, byte ptr [rbx]
	add	rax, r14
	test	cl, cl
	je	LBB0_5
## %bb.1:
	test	r15, r15
	je	LBB0_5
## %bb.2:
	mov	edx, 1
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [rbx + rdx]
	add	rax, 1
	test	cl, cl
	je	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmp	rdx, r15
	lea	rdx, [rdx + 1]
	jb	LBB0_3
LBB0_5:
	mov	byte ptr [rax], 0
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
