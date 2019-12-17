	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z12ft_ishex_strPKc    ## -- Begin function _Z12ft_ishex_strPKc
	.p2align	4, 0x90
__Z12ft_ishex_strPKc:                   ## @_Z12ft_ishex_strPKc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, 1
	test	rdi, rdi
	je	LBB0_9
## %bb.1:
	mov	dl, byte ptr [rdi]
	test	dl, dl
	je	LBB0_9
## %bb.2:
	lea	r8, [rip + __Z12ft_ishex_strPKcm.valid_hex]
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movsx	esi, dl
	mov	ecx, esi
	add	cl, -65
	lea	edx, [rsi + 32]
	cmp	cl, 26
	cmovae	edx, esi
	xor	esi, esi
	.p2align	4, 0x90
LBB0_5:                                 ##   Parent Loop BB0_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsx	ecx, byte ptr [rsi + r8]
	cmp	rsi, 16
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	add	rsi, 1
	cmp	edx, ecx
	jne	LBB0_5
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	cmp	edx, ecx
	jne	LBB0_8
## %bb.3:                               ##   in Loop: Header=BB0_4 Depth=1
	add	rdi, 1
	mov	dl, byte ptr [rdi]
	test	dl, dl
	jne	LBB0_4
LBB0_9:
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
LBB0_8:
	xor	eax, eax
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z12ft_ishex_strPKcm   ## -- Begin function _Z12ft_ishex_strPKcm
	.p2align	4, 0x90
__Z12ft_ishex_strPKcm:                  ## @_Z12ft_ishex_strPKcm
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	r8, [rip + __Z12ft_ishex_strPKcm.valid_hex]
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	test	rsi, rsi
	je	LBB1_2
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	add	rsi, -1
	movsx	r9d, byte ptr [rdi]
	mov	ecx, r9d
	add	cl, -65
	lea	r10d, [r9 + 32]
	cmp	cl, 26
	cmovae	r10d, r9d
	xor	ecx, ecx
	.p2align	4, 0x90
LBB1_4:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rdx, rcx
	cmp	rcx, 16
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=2
	movsx	eax, byte ptr [rdx + r8]
	lea	rcx, [rdx + 1]
	cmp	r10d, eax
	jne	LBB1_4
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmp	r9b, 65
	jl	LBB1_7
## %bb.8:                               ##   in Loop: Header=BB1_1 Depth=1
	cmp	byte ptr [rdi + 1], 90
	jg	LBB1_9
## %bb.14:                              ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rdi + 2]
	add	rdi, 3
	add	eax, 32
	movsx	ecx, byte ptr [rdx + r8]
	cmp	eax, ecx
	je	LBB1_1
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	add	rdi, 1
	jmp	LBB1_10
	.p2align	4, 0x90
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	add	rdi, 2
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rdi]
	add	rdi, 1
	movsx	ecx, byte ptr [rdx + r8]
	cmp	eax, ecx
	je	LBB1_1
LBB1_12:
	xor	eax, eax
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
LBB1_2:
	mov	al, 1
                                        ## kill: def $al killed $al killed $eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @_Z12ft_ishex_strPKcm.valid_hex
__Z12ft_ishex_strPKcm.valid_hex:
	.asciz	"0123456789abcdef"


.subsections_via_symbols
