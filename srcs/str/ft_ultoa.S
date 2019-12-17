	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function ft_ultoa
LCPI0_0:
	.byte	15                      ## 0xf
	.byte	14                      ## 0xe
	.byte	13                      ## 0xd
	.byte	12                      ## 0xc
	.byte	11                      ## 0xb
	.byte	10                      ## 0xa
	.byte	9                       ## 0x9
	.byte	8                       ## 0x8
	.byte	7                       ## 0x7
	.byte	6                       ## 0x6
	.byte	5                       ## 0x5
	.byte	4                       ## 0x4
	.byte	3                       ## 0x3
	.byte	2                       ## 0x2
	.byte	1                       ## 0x1
	.byte	0                       ## 0x0
	.byte	15                      ## 0xf
	.byte	14                      ## 0xe
	.byte	13                      ## 0xd
	.byte	12                      ## 0xc
	.byte	11                      ## 0xb
	.byte	10                      ## 0xa
	.byte	9                       ## 0x9
	.byte	8                       ## 0x8
	.byte	7                       ## 0x7
	.byte	6                       ## 0x6
	.byte	5                       ## 0x5
	.byte	4                       ## 0x4
	.byte	3                       ## 0x3
	.byte	2                       ## 0x2
	.byte	1                       ## 0x1
	.byte	0                       ## 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ft_ultoa
	.p2align	4, 0x90
_ft_ultoa:                              ## @ft_ultoa
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rbx
	sub	rsp, 40
	.cfi_offset rbx, -24
	mov	r8d, edx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 16], rax
	movsxd	r10, edx
	mov	r9, -1
	xor	ebx, ebx
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	xor	edx, edx
	mov	eax, edi
	div	r8d
                                        ## kill: def $edx killed $edx def $rdx
                                        ## kill: def $eax killed $eax def $rax
	mov	cl, 48
	cmp	rdx, 10
	jge	LBB0_20
	jmp	LBB0_21
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, rdi
	or	rax, r10
	shr	rax, 32
	je	LBB0_2
## %bb.18:                              ##   in Loop: Header=BB0_1 Depth=1
	xor	edx, edx
	mov	rax, rdi
	div	r10
	mov	cl, 48
	cmp	rdx, 10
	jl	LBB0_21
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	cl, 55
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	add	cl, dl
	mov	byte ptr [rbp + rbx - 48], cl
	add	rbx, 1
	add	r9, 1
	cmp	rdi, r10
	mov	rdi, rax
	jae	LBB0_1
## %bb.3:
	mov	byte ptr [rsi], cl
	cmp	rbx, 1
	je	LBB0_8
## %bb.4:
	lea	r10, [rbx - 1]
	cmp	r10, 127
	ja	LBB0_10
## %bb.5:
	lea	r9, [rbx - 2]
	mov	eax, 1
	jmp	LBB0_6
LBB0_10:
	mov	rax, r10
	and	rax, -128
	lea	rdx, [rax - 128]
	mov	rdi, rdx
	shr	rdi, 7
	lea	r8, [rdi + 1]
	test	rdx, rdx
	je	LBB0_11
## %bb.12:
	lea	rdx, [rbx + rbp]
	add	rdx, -81
	mov	ecx, edi
	add	cl, 1
	movzx	r11d, cl
	and	r11d, 1
	add	r11, -1
	sub	r11, rdi
	xor	edi, edi
	vmovdqa	ymm0, ymmword ptr [rip + LCPI0_0] ## ymm0 = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
	.p2align	4, 0x90
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	vmovdqu	ymm1, ymmword ptr [rdx - 96]
	vmovdqu	ymm2, ymmword ptr [rdx - 64]
	vmovdqu	ymm3, ymmword ptr [rdx - 32]
	vmovdqu	ymm4, ymmword ptr [rdx]
	vpshufb	ymm4, ymm4, ymm0
	vpermq	ymm4, ymm4, 78          ## ymm4 = ymm4[2,3,0,1]
	vpshufb	ymm3, ymm3, ymm0
	vpermq	ymm3, ymm3, 78          ## ymm3 = ymm3[2,3,0,1]
	vpshufb	ymm2, ymm2, ymm0
	vpermq	ymm2, ymm2, 78          ## ymm2 = ymm2[2,3,0,1]
	vpshufb	ymm1, ymm1, ymm0
	vpermq	ymm1, ymm1, 78          ## ymm1 = ymm1[2,3,0,1]
	vmovdqu	ymmword ptr [rsi + rdi + 1], ymm4
	vmovdqu	ymmword ptr [rsi + rdi + 33], ymm3
	vmovdqu	ymmword ptr [rsi + rdi + 65], ymm2
	vmovdqu	ymmword ptr [rsi + rdi + 97], ymm1
	vmovdqu	ymm1, ymmword ptr [rdx - 224]
	vmovdqu	ymm2, ymmword ptr [rdx - 192]
	vmovdqu	ymm3, ymmword ptr [rdx - 160]
	vmovdqu	ymm4, ymmword ptr [rdx - 128]
	vpshufb	ymm4, ymm4, ymm0
	vpermq	ymm4, ymm4, 78          ## ymm4 = ymm4[2,3,0,1]
	vpshufb	ymm3, ymm3, ymm0
	vpermq	ymm3, ymm3, 78          ## ymm3 = ymm3[2,3,0,1]
	vpshufb	ymm2, ymm2, ymm0
	vpermq	ymm2, ymm2, 78          ## ymm2 = ymm2[2,3,0,1]
	vpshufb	ymm1, ymm1, ymm0
	vmovdqu	ymmword ptr [rsi + rdi + 129], ymm4
	vmovdqu	ymmword ptr [rsi + rdi + 161], ymm3
	vmovdqu	ymmword ptr [rsi + rdi + 193], ymm2
	vpermq	ymm1, ymm1, 78          ## ymm1 = ymm1[2,3,0,1]
	vmovdqu	ymmword ptr [rsi + rdi + 225], ymm1
	add	rdi, 256
	add	rdx, -256
	add	r11, 2
	jne	LBB0_13
## %bb.14:
	test	r8b, 1
	je	LBB0_16
LBB0_15:
	lea	rcx, [rbp - 48]
	sub	rcx, rdi
	or	rdi, 1
	vmovdqu	ymm0, ymmword ptr [rcx + rbx - 129]
	vmovdqu	ymm1, ymmword ptr [rcx + rbx - 97]
	vmovdqu	ymm2, ymmword ptr [rcx + rbx - 65]
	vmovdqu	ymm3, ymmword ptr [rcx + rbx - 33]
	vmovdqa	ymm4, ymmword ptr [rip + LCPI0_0] ## ymm4 = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
	vpshufb	ymm3, ymm3, ymm4
	vpermq	ymm3, ymm3, 78          ## ymm3 = ymm3[2,3,0,1]
	vpshufb	ymm2, ymm2, ymm4
	vpermq	ymm2, ymm2, 78          ## ymm2 = ymm2[2,3,0,1]
	vpshufb	ymm1, ymm1, ymm4
	vpermq	ymm1, ymm1, 78          ## ymm1 = ymm1[2,3,0,1]
	vpshufb	ymm0, ymm0, ymm4
	vpermq	ymm0, ymm0, 78          ## ymm0 = ymm0[2,3,0,1]
	vmovdqu	ymmword ptr [rsi + rdi], ymm3
	vmovdqu	ymmword ptr [rsi + rdi + 32], ymm2
	vmovdqu	ymmword ptr [rsi + rdi + 64], ymm1
	vmovdqu	ymmword ptr [rsi + rdi + 96], ymm0
LBB0_16:
	cmp	r10, rax
	je	LBB0_8
## %bb.17:
	and	r9, -128
	xor	r9, -2
	add	r9, rbx
	or	rax, 1
LBB0_6:
	lea	rcx, [r9 + rbp]
	add	rcx, -48
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [rsi + rax], dl
	add	rax, 1
	add	rcx, -1
	cmp	rbx, rax
	jne	LBB0_7
LBB0_8:
	mov	byte ptr [rsi + rbx], 0
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 16]
	jne	LBB0_9
## %bb.22:
	mov	rax, rsi
	add	rsp, 40
	pop	rbx
	pop	rbp
	vzeroupper
	ret
LBB0_11:
	xor	edi, edi
	test	r8b, 1
	jne	LBB0_15
	jmp	LBB0_16
LBB0_9:
	vzeroupper
	call	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
