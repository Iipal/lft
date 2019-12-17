	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_memchr              ## -- Begin function ft_memchr
	.p2align	4, 0x90
_ft_memchr:                             ## @ft_memchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	add	rdi, -1
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	test	rdx, rdx
	je	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	add	rdx, -1
	movsx	eax, byte ptr [rdi + 1]
	add	rdi, 1
	cmp	eax, esi
	jne	LBB0_1
## %bb.4:
	mov	rax, rdi
	pop	rbp
	ret
LBB0_2:
	xor	edi, edi
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
