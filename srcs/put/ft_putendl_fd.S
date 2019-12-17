	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_putendl_fd          ## -- Begin function ft_putendl_fd
	.p2align	4, 0x90
_ft_putendl_fd:                         ## @ft_putendl_fd
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
	mov	ebx, esi
	call	_ft_putstr_fd
	mov	edi, 10
	mov	esi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	_ft_putchar_fd          ## TAILCALL
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
