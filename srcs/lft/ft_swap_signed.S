	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z7ft_swapPcS_         ## -- Begin function _Z7ft_swapPcS_
	.p2align	4, 0x90
__Z7ft_swapPcS_:                        ## @_Z7ft_swapPcS_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, byte ptr [rdi]
	mov	cl, byte ptr [rsi]
	mov	byte ptr [rdi], cl
	mov	byte ptr [rsi], al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7ft_swapPsS_         ## -- Begin function _Z7ft_swapPsS_
	.p2align	4, 0x90
__Z7ft_swapPsS_:                        ## @_Z7ft_swapPsS_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movzx	eax, word ptr [rdi]
	movzx	ecx, word ptr [rsi]
	mov	word ptr [rdi], cx
	mov	word ptr [rsi], ax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7ft_swapPiS_         ## -- Begin function _Z7ft_swapPiS_
	.p2align	4, 0x90
__Z7ft_swapPiS_:                        ## @_Z7ft_swapPiS_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rdi]
	mov	ecx, dword ptr [rsi]
	mov	dword ptr [rdi], ecx
	mov	dword ptr [rsi], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7ft_swapPlS_         ## -- Begin function _Z7ft_swapPlS_
	.p2align	4, 0x90
__Z7ft_swapPlS_:                        ## @_Z7ft_swapPlS_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rsi], rax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
