	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_ft_ltoa_base           ## -- Begin function ft_ltoa_base
	.p2align	4, 0x90
_ft_ltoa_base:                          ## @ft_ltoa_base
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r15d, esi
	mov	qword ptr [rbp - 32], 0
	mov	eax, r15d
	add	al, -2
	cmp	al, 14
	jbe	LBB0_2
## %bb.1:
	xor	ebx, ebx
	jmp	LBB0_6
LBB0_2:
	mov	r14, rdi
	mov	edi, 35
	call	_ft_memalloc
	mov	rbx, rax
	test	r14, r14
	jns	LBB0_5
## %bb.3:
	cmp	r15b, 10
	jne	LBB0_5
## %bb.4:
	mov	qword ptr [rbp - 32], 1
	mov	byte ptr [rbx], 45
LBB0_5:
	movzx	esi, r15b
	lea	rcx, [rbp - 32]
	mov	rdi, r14
	mov	rdx, rbx
	call	_add_aux
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rbx + rax], 0
LBB0_6:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function add_aux
_add_aux:                               ## @add_aux
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	rax, rsi
	neg	rax
	cmp	rax, rdi
	jge	LBB1_2
## %bb.1:
	cmp	rbx, r12
	jle	LBB1_2
## %bb.6:
	mov	rax, r12
	or	rax, rbx
	shr	rax, 32
	je	LBB1_7
LBB1_8:
	mov	rax, r12
	cqo
	idiv	rbx
	jmp	LBB1_9
LBB1_2:
	mov	rax, r12
	or	rax, rbx
	shr	rax, 32
	je	LBB1_3
## %bb.4:
	mov	rax, r12
	cqo
	idiv	rbx
	jmp	LBB1_5
LBB1_3:
	xor	edx, edx
	mov	eax, r12d
	div	ebx
                                        ## kill: def $eax killed $eax def $rax
LBB1_5:
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	_add_aux
	mov	rax, r12
	or	rax, rbx
	shr	rax, 32
	jne	LBB1_8
LBB1_7:
	xor	edx, edx
	mov	eax, r12d
	div	ebx
                                        ## kill: def $edx killed $edx def $rdx
LBB1_9:
	mov	rax, rdx
	neg	rax
	cmovl	rax, rdx
	lea	rcx, [rip + _add_aux.base]
	mov	al, byte ptr [rax + rcx]
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15], rdx
	mov	byte ptr [r14 + rcx], al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @add_aux.base
_add_aux.base:
	.asciz	"0123456789ABCDEF"


.subsections_via_symbols
