	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_rand                ## -- Begin function ft_rand
	.p2align	4, 0x90
_ft_rand:                               ## @ft_rand
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	sub	rsp, 16
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	r14, rdi
	lea	rdi, [rip + L_.str]
	xor	esi, esi
	xor	eax, eax
	call	_open
	mov	ebx, eax
	lea	rsi, [rbp - 24]
	mov	edx, 8
	mov	edi, eax
	call	_read
	mov	edi, ebx
	call	_close
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	or	rcx, r14
	shr	rcx, 32
	je	LBB0_1
## %bb.2:
	xor	edx, edx
	div	r14
	jmp	LBB0_3
LBB0_1:
	xor	edx, edx
                                        ## kill: def $eax killed $eax killed $rax
	div	r14d
                                        ## kill: def $edx killed $edx def $rdx
LBB0_3:
	mov	rax, rdx
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"/dev/urandom"


.subsections_via_symbols
