	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strrev              ## -- Begin function ft_strrev
	.p2align	4, 0x90
_ft_strrev:                             ## @ft_strrev
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
	mov	r14, rdi
	call	_ft_strlen
	mov	r15, rax
	shr	r15
	je	LBB0_3
## %bb.1:
	lea	rbx, [r14 + rax]
	add	rbx, -1
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rdi, r14
	mov	rsi, rbx
	call	__Z7ft_swapPcS_
	add	r14, 1
	add	rbx, -1
	add	r15, -1
	jne	LBB0_2
LBB0_3:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
