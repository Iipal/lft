	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putstr_fd           ## -- Begin function ft_putstr_fd
	.p2align	4, 0x90
_ft_putstr_fd:                          ## @ft_putstr_fd
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
	cmp	byte ptr [rdi], 0
	je	LBB0_3
## %bb.1:
	mov	r14d, esi
	mov	rbx, rdi
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	edx, 1
	mov	edi, r14d
	mov	rsi, rbx
	call	_write
	cmp	byte ptr [rbx + 1], 0
	lea	rbx, [rbx + 1]
	jne	LBB0_2
LBB0_3:
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
