	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_skip_to_blank       ## -- Begin function ft_skip_to_blank
	.p2align	4, 0x90
_ft_skip_to_blank:                      ## @ft_skip_to_blank
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, -1
	movabs	rcx, 4294983169
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rdi + rax + 1]
	add	rax, 1
	cmp	rdx, 32
	ja	LBB0_1
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	bt	rcx, rdx
	jae	LBB0_1
## %bb.3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
