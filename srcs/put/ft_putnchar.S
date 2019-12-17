	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putnchar            ## -- Begin function ft_putnchar
	.p2align	4, 0x90
_ft_putnchar:                           ## @ft_putnchar
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
	mov	dword ptr [rbp - 20], edi
	test	rsi, rsi
	je	LBB0_3
## %bb.1:
	mov	rbx, rsi
	lea	r14, [rbp - 20]
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r14
	call	_write
	add	rbx, -1
	jne	LBB0_2
LBB0_3:
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
