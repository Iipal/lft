	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memmove             ## -- Begin function ft_memmove
	.p2align	4, 0x90
_ft_memmove:                            ## @ft_memmove
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rbx
	push	rax
	.cfi_offset rbx, -24
	mov	rbx, rdi
	cmp	rsi, rdi
	jae	LBB0_1
## %bb.2:
	test	rdx, rdx
	jle	LBB0_4
LBB0_3:
	mov	rdi, rbx
	call	_memcpy
LBB0_4:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
LBB0_1:
	test	rdx, rdx
	jne	LBB0_3
	jmp	LBB0_4
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
