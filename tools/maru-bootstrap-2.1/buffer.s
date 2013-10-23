	.section	__TEXT,__text,regular,pure_instructions
	.globl	_buffer_reset
	.align	4, 0x90
_buffer_reset:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_buffer_append
	.align	4, 0x90
_buffer_append:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	subq	$32, %rsp
Ltmp4:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	LBB2_5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB2_3
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	imull	$2, %eax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -24(%rbp)
	jmp	LBB2_4
LBB2_3:
	movq	-8(%rbp), %rax
	movl	$32, 8(%rax)
	movabsq	$128, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
LBB2_4:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
LBB2_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %ecx
	movslq	%ecx, %rdx
	movl	-12(%rbp), %esi
	movl	%esi, (%rax,%rdx,4)
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_buffer_appendAll
	.align	4, 0x90
_buffer_appendAll:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	subq	$16, %rsp
Ltmp7:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB3_2
LBB3_1:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movabsq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
LBB3_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$0, %eax
	jne	LBB3_1
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.globl	_buffer_contents
	.align	4, 0x90
_buffer_contents:
Leh_func_begin4:
	pushq	%rbp
Ltmp8:
	movq	%rsp, %rbp
Ltmp9:
	subq	$32, %rsp
Ltmp10:
	movl	$0, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end4:

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
	.globl	_buffer_reset.eh
_buffer_reset.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp11:
	.quad	Leh_func_begin1-Ltmp11
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

	.globl	_buffer_append.eh
_buffer_append.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp12:
	.quad	Leh_func_begin2-Ltmp12
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_buffer_appendAll.eh
_buffer_appendAll.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp13:
	.quad	Leh_func_begin3-Ltmp13
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp5-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp6-Ltmp5
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	_buffer_contents.eh
_buffer_contents.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp14:
	.quad	Leh_func_begin4-Ltmp14
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp8-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp9-Ltmp8
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:


.subsections_via_symbols
