	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_strstr              ## -- Begin function ft_strstr
	.p2align	4, 0x90
_ft_strstr:                             ## @ft_strstr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	r8b, byte ptr [rsi]
	test	r8b, r8b
	je	LBB0_10
## %bb.1:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	jne	LBB0_3
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	cl, byte ptr [rdi + 1]
	add	rdi, 1
	test	cl, cl
	je	LBB0_9
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	mov	eax, 1
	mov	edx, r8d
	.p2align	4, 0x90
LBB0_4:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	test	dl, dl
	je	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	cmp	cl, dl
	jne	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=2
	movzx	ecx, byte ptr [rdi + rax]
	movzx	edx, byte ptr [rsi + rax]
	lea	rax, [rax + 1]
	test	cl, cl
	jne	LBB0_4
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	test	dl, dl
	jne	LBB0_8
LBB0_10:
	mov	rax, rdi
	pop	rbp
	ret
LBB0_9:
	xor	edi, edi
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
