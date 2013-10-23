	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
_mbs2wcs:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$48, %rsp
Ltmp2:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_strlen
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	_bufSize.2699(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB1_5
	movq	_wcs.2698(%rip), %rax
	cmpq	$0, %rax
	je	LBB1_3
	movq	-40(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	_wcs.2698(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -32(%rbp)
	jmp	LBB1_4
LBB1_3:
	movq	-40(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
LBB1_4:
	movq	-32(%rbp), %rax
	movq	%rax, _wcs.2698(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, _bufSize.2699(%rip)
LBB1_5:
	movq	_bufSize.2699(%rip), %rax
	movq	_wcs.2698(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_mbstowcs
	movq	_wcs.2698(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.align	4, 0x90
_wcs2mbs:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	subq	$48, %rsp
Ltmp5:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_wcslen
	movl	%eax, %ecx
	imull	$6, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -40(%rbp)
	movq	_bufSize.2723(%rip), %rcx
	movq	-40(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	LBB2_5
	movq	_mbs.2722(%rip), %rax
	cmpq	$0, %rax
	je	LBB2_3
	movq	_mbs.2722(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_realloc
	movq	%rax, -32(%rbp)
	jmp	LBB2_4
LBB2_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
LBB2_4:
	movq	-32(%rbp), %rax
	movq	%rax, _mbs.2722(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, _bufSize.2723(%rip)
LBB2_5:
	movq	_bufSize.2723(%rip), %rax
	movq	_mbs.2722(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_wcstombs
	movq	_mbs.2722(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end2:

.zerofill __DATA,__bss,_bufSize.2699,8,3
.zerofill __DATA,__bss,_wcs.2698,8,3
.zerofill __DATA,__bss,_bufSize.2723,8,3
.zerofill __DATA,__bss,_mbs.2722,8,3
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
_mbs2wcs.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp6:
	.quad	Leh_func_begin1-Ltmp6
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

_wcs2mbs.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp7:
	.quad	Leh_func_begin2-Ltmp7
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp3-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp4-Ltmp3
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:


.subsections_via_symbols
