	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_isfdigits_str       ## -- Begin function ft_isfdigits_str
	.p2align	4, 0x90
_ft_isfdigits_str:                      ## @ft_isfdigits_str
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, -1
	xor	esi, esi
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rdi + rax + 1]
	test	dl, dl
	je	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	test	sil, 1
	jne	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	cl, 1
	cmp	dl, 46
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	ecx, esi
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzx	edx, byte ptr [rdi + rax + 2]
	add	rax, 2
	mov	esi, ecx
	add	dl, -48
	cmp	dl, 10
	jb	LBB0_1
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	add	dl, -48
	cmp	dl, 10
	jb	LBB0_1
LBB0_9:
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
