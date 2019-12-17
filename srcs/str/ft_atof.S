	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal16,16byte_literals
	.p2align	3               ## -- Begin function ft_atof
LCPI0_0:
	.quad	4607182418800017408     ## double 1
	.quad	-4616189618054758400    ## double -1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_1:
	.quad	4607182418800017408     ## double 1
LCPI0_2:
	.quad	4726483295884279808     ## double 1.0E+8
LCPI0_3:
	.quad	4621819117588971520     ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ft_atof
	.p2align	4, 0x90
_ft_atof:                               ## @ft_atof
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r13, rdi
	call	_ft_atol
	mov	r14, rax
	xor	r15d, r15d
	cmp	byte ptr [r13], 45
	lea	rbx, [r13 + 1]
	sete	r15b
	lea	r12, [rip + LCPI0_0]
	cmovne	rbx, r13
	test	rax, rax
	cmovne	rbx, r13
	mov	rdi, rax
	call	_ft_digits
	cmp	byte ptr [rbx + rax], 46
	jne	LBB0_1
## %bb.2:
	lea	rdi, [rbx + rax]
	add	rdi, 1
	mov	rbx, -1
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [rdi + rbx + 1]
	add	rbx, 1
	add	al, -48
	cmp	al, 10
	jb	LBB0_3
## %bb.4:
	call	_ft_atol
	mov	r13, rax
	mov	rdi, rax
	call	_ft_digits
	cmp	rax, rbx
	jbe	LBB0_6
## %bb.5:
	xor	ebx, ebx
	jmp	LBB0_7
LBB0_1:
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	LBB0_7
LBB0_6:
	mov	rdi, r13
	call	_ft_digits
	sub	rbx, rax
LBB0_7:
	vmovsd	xmm0, qword ptr [r12 + 8*r15] ## xmm0 = mem[0],zero
	vmovsd	qword ptr [rbp - 64], xmm0 ## 8-byte Spill
	vcvtsi2sd	xmm0, xmm1, r14
	vmovsd	qword ptr [rbp - 56], xmm0 ## 8-byte Spill
	vcvtsi2sd	xmm0, xmm1, r13
	vmovsd	qword ptr [rbp - 48], xmm0 ## 8-byte Spill
	mov	rdi, r13
	call	_ft_digits
	add	rax, rbx
	je	LBB0_8
## %bb.9:
	cmp	rax, 16
	jae	LBB0_11
## %bb.10:
	vmovsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	jmp	LBB0_20
LBB0_8:
	vmovsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	jmp	LBB0_22
LBB0_11:
	mov	rcx, rax
	and	rcx, -16
	lea	rdi, [rcx - 16]
	mov	rsi, rdi
	shr	rsi, 4
	add	rsi, 1
	mov	edx, esi
	and	edx, 7
	cmp	rdi, 112
	jae	LBB0_13
## %bb.12:
	vbroadcastsd	ymm0, qword ptr [rip + LCPI0_1] ## ymm0 = [1,1,1,1]
	vmovapd	ymm1, ymm0
	vmovapd	ymm2, ymm0
	vmovapd	ymm3, ymm0
	test	rdx, rdx
	jne	LBB0_16
	jmp	LBB0_18
LBB0_13:
	mov	edi, 1
	sub	rdi, rsi
	lea	rsi, [rdx + rdi]
	add	rsi, -1
	vbroadcastsd	ymm0, qword ptr [rip + LCPI0_1] ## ymm0 = [1,1,1,1]
	vbroadcastsd	ymm4, qword ptr [rip + LCPI0_2] ## ymm4 = [1.0E+8,1.0E+8,1.0E+8,1.0E+8]
	vmovapd	ymm1, ymm0
	vmovapd	ymm2, ymm0
	vmovapd	ymm3, ymm0
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	vmulpd	ymm0, ymm0, ymm4
	vmulpd	ymm1, ymm1, ymm4
	vmulpd	ymm2, ymm2, ymm4
	vmulpd	ymm3, ymm3, ymm4
	add	rsi, 8
	jne	LBB0_14
## %bb.15:
	test	rdx, rdx
	je	LBB0_18
LBB0_16:
	neg	rdx
	vbroadcastsd	ymm4, qword ptr [rip + LCPI0_3] ## ymm4 = [10,10,10,10]
	.p2align	4, 0x90
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	vmulpd	ymm0, ymm0, ymm4
	vmulpd	ymm1, ymm1, ymm4
	vmulpd	ymm2, ymm2, ymm4
	vmulpd	ymm3, ymm3, ymm4
	add	rdx, 1
	jne	LBB0_17
LBB0_18:
	vmulpd	ymm1, ymm1, ymm3
	vmulpd	ymm0, ymm0, ymm2
	vmulpd	ymm0, ymm0, ymm1
	vextractf128	xmm1, ymm0, 1
	vmulpd	ymm0, ymm0, ymm1
	vpermilpd	xmm1, xmm0, 1   ## xmm1 = xmm0[1,0]
	vmulpd	ymm0, ymm0, ymm1
	cmp	rax, rcx
	je	LBB0_22
## %bb.19:
	sub	rax, rcx
LBB0_20:
	vmovsd	xmm1, qword ptr [rip + LCPI0_3] ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB0_21:                                ## =>This Inner Loop Header: Depth=1
	vmulsd	xmm0, xmm0, xmm1
	add	rax, -1
	jne	LBB0_21
LBB0_22:
	vmovsd	xmm1, qword ptr [rbp - 48] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vdivsd	xmm1, xmm1, xmm0
	vmovsd	xmm0, qword ptr [rbp - 64] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vfmadd213sd	xmm0, xmm1, qword ptr [rbp - 56] ## 8-byte Folded Reload
                                        ## xmm0 = (xmm1 * xmm0) + mem
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	vzeroupper
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
