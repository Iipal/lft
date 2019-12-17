	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putstr              ## -- Begin function ft_putstr
	.p2align	4, 0x90
_ft_putstr:                             ## @ft_putstr
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
	cmp	byte ptr [rdi], 0
	je	LBB0_3
## %bb.1:
	mov	rbx, rdi
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	edi, 1
	mov	edx, 1
	mov	rsi, rbx
	call	_write
	cmp	byte ptr [rbx + 1], 0
	lea	rbx, [rbx + 1]
	jne	LBB0_2
LBB0_3:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
