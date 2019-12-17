	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_isdigits_str        ## -- Begin function ft_isdigits_str
	.p2align	4, 0x90
_ft_isdigits_str:                       ## @ft_isdigits_str
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [rdi]
	test	al, al
	je	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	add	al, -48
	add	rdi, 1
	cmp	al, 10
	jb	LBB0_1
## %bb.4:
	xor	eax, eax
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
LBB0_2:
	mov	al, 1
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
