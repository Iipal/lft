	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcat              ## -- Begin function ft_strcat
	.p2align	4, 0x90
_ft_strcat:                             ## @ft_strcat
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	rbx, rsi
	mov	r14, rdi
	call	_ft_strlen
	mov	cl, byte ptr [rbx]
	add	rax, r14
	test	cl, cl
	je	LBB0_3
## %bb.1:
	add	rbx, 1
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [rbx]
	add	rax, 1
	add	rbx, 1
	test	cl, cl
	jne	LBB0_2
LBB0_3:
	mov	byte ptr [rax], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
