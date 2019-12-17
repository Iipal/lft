	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_lstiter             ## -- Begin function ft_lstiter
	.p2align	4, 0x90
_ft_lstiter:                            ## @ft_lstiter
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
	test	rdi, rdi
	je	LBB0_3
## %bb.1:
	mov	r14, rsi
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rbx, qword ptr [rdi + 16]
	call	r14
	mov	rdi, rbx
	test	rbx, rbx
	jne	LBB0_2
LBB0_3:
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
