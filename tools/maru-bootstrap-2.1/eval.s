	.section	__TEXT,__text,regular,pure_instructions
	.globl	_GC_stamp
	.align	4, 0x90
_GC_stamp:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$64, %rsp
Ltmp2:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.align	4, 0x90
_ptr2hdr:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-56, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_GC_file
	.align	4, 0x90
_GC_file:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	subq	$32, %rsp
Ltmp7:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.globl	_GC_line
	.align	4, 0x90
_GC_line:
Leh_func_begin4:
	pushq	%rbp
Ltmp8:
	movq	%rsp, %rbp
Ltmp9:
	subq	$32, %rsp
Ltmp10:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_GC_function
	.align	4, 0x90
_GC_function:
Leh_func_begin5:
	pushq	%rbp
Ltmp11:
	movq	%rsp, %rbp
Ltmp12:
	subq	$32, %rsp
Ltmp13:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_GC_malloc
	.align	4, 0x90
_GC_malloc:
Leh_func_begin6:
	pushq	%rbp
Ltmp14:
	movq	%rsp, %rbp
Ltmp15:
	subq	$112, %rsp
Ltmp16:
	movq	%rdi, -8(%rbp)
	movl	_gcAllocs(%rip), %eax
	subl	$1, %eax
	movl	%eax, _gcAllocs(%rip)
	movl	_gcAllocs(%rip), %eax
	cmpl	$0, %eax
	je	LBB6_2
	movq	_gcMemory(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB6_3
LBB6_2:
	movl	_gcCount(%rip), %eax
	movl	%eax, _gcAllocs(%rip)
	callq	_GC_gcollect
	movq	_gcMemory(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	LBB6_25
LBB6_3:
	movq	_gcnext(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$7, %rcx
	addq	%rcx, %rax
	movabsq	$-8, %rcx
	andq	%rcx, %rax
	movq	%rax, -8(%rbp)
LBB6_4:
	movq	-8(%rbp), %rax
	movabsq	$64, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
LBB6_5:
	movq	-40(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB6_18
	jmp	LBB6_8
LBB6_7:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rsi
	movq	(%rsi), %rsi
	leaq	56(%rax,%rsi), %rax
	movabsq	$-72057594037927936, %rsi
	andq	%rsi, %rdx
	movabsq	$72057594037927935, %rsi
	andq	%rsi, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
LBB6_8:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB6_10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rcx
	leaq	(%rax,%rcx), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	je	LBB6_7
LBB6_10:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-56(%rbp), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jae	LBB6_12
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-8(%rbp), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jne	LBB6_18
LBB6_12:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-56(%rbp), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	LBB6_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	-8(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movb	7(%rax), %cl
	andb	$248, %cl
	movb	%cl, 7(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdx
	movabsq	$72057594037927935, %rsi
	movabsq	$-72057594037927936, %rdi
	andq	%rdi, %rdx
	leaq	-56(%rax), %rax
	andq	%rsi, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	andq	%rdi, %rdx
	andq	%rsi, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, (%rcx)
LBB6_14:
	movq	-40(%rbp), %rax
	movb	7(%rax), %cl
	andb	$254, %cl
	orb	$1, %cl
	movb	%cl, 7(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, _gcnext(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB6_16
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movq	-64(%rbp), %rdx
	xorl	%esi, %esi
	movabsq	$72057594037927935, %rdi
	andq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memset_chk
	movq	%rax, -32(%rbp)
	jmp	LBB6_17
LBB6_16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movabsq	$72057594037927935, %rsi
	andq	%rsi, %rax
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	___inline_memset_chk
	movq	%rax, -32(%rbp)
LBB6_17:
	movq	_gcMemory(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, _gcMemory(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	jmp	LBB6_26
LBB6_18:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB6_5
	movq	_gcQuantum(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$56, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	jmp	LBB6_21
LBB6_20:
	movq	-80(%rbp), %rax
	movabsq	$2, %rcx
	imulq	%rcx, %rax
	movq	%rax, -80(%rbp)
LBB6_21:
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	LBB6_20
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movabsq	$-1, %rcx
	cmpq	%rcx, %rax
	je	LBB6_24
	movq	-40(%rbp), %rax
	movb	7(%rax), %cl
	andb	$248, %cl
	movb	%cl, 7(%rax)
	movq	_gcbase+8(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, _gcbase+8(%rip)
	movq	-80(%rbp), %rax
	movabsq	$56, %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movabsq	$-72057594037927936, %rsi
	andq	%rsi, %rdx
	movabsq	$72057594037927935, %rsi
	andq	%rsi, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, (%rcx)
	jmp	LBB6_4
LBB6_24:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$16, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -96(%rbp)
	movq	%rdx, %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
LBB6_25:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str1(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$18, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -104(%rbp)
	movq	%rdx, %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	callq	_abort
LBB6_26:
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end6:

	.align	4, 0x90
_hdr2ptr:
Leh_func_begin7:
	pushq	%rbp
Ltmp17:
	movq	%rsp, %rbp
Ltmp18:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$56, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end7:

	.align	4, 0x90
___inline_memset_chk:
Leh_func_begin8:
	pushq	%rbp
Ltmp19:
	movq	%rsp, %rbp
Ltmp20:
	subq	$48, %rsp
Ltmp21:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)
	movl	%edx, %esi
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	callq	___memset_chk
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end8:

	.globl	_GC_malloc_atomic
	.align	4, 0x90
_GC_malloc_atomic:
Leh_func_begin9:
	pushq	%rbp
Ltmp22:
	movq	%rsp, %rbp
Ltmp23:
	subq	$32, %rsp
Ltmp24:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movb	7(%rax), %cl
	andb	$253, %cl
	orb	$2, %cl
	movb	%cl, 7(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end9:

	.globl	_GC_realloc
	.align	4, 0x90
_GC_realloc:
Leh_func_begin10:
	pushq	%rbp
Ltmp25:
	movq	%rsp, %rbp
Ltmp26:
	subq	$64, %rsp
Ltmp27:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-16(%rbp), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	LBB10_2
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB10_6
LBB10_2:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB10_4
	movq	-56(%rbp), %rax
	movabsq	$-1, %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movabsq	$72057594037927935, %rdi
	andq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -32(%rbp)
	jmp	LBB10_5
LBB10_4:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movabsq	$72057594037927935, %rsi
	andq	%rsi, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___inline_memcpy_chk
	movq	%rax, -32(%rbp)
LBB10_5:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	-48(%rbp), %rcx
	movb	7(%rcx), %cl
	shlb	$6, %cl
	shrb	$7, %cl
	movb	7(%rax), %dl
	andb	$1, %cl
	addb	%cl, %cl
	andb	$-3, %dl
	orb	%cl, %dl
	movb	%dl, 7(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_free
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB10_6:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end10:

	.align	4, 0x90
___inline_memcpy_chk:
Leh_func_begin11:
	pushq	%rbp
Ltmp28:
	movq	%rsp, %rbp
Ltmp29:
	subq	$48, %rsp
Ltmp30:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end11:

	.align	4, 0x90
_GC_freeHeader:
Leh_func_begin12:
	pushq	%rbp
Ltmp31:
	movq	%rsp, %rbp
Ltmp32:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	7(%rax), %cl
	andb	$248, %cl
	movb	%cl, 7(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	_gcMemory(%rip), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rcx), %rax
	movq	%rax, _gcMemory(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end12:

	.globl	_GC_free
	.align	4, 0x90
_GC_free:
Leh_func_begin13:
	pushq	%rbp
Ltmp33:
	movq	%rsp, %rbp
Ltmp34:
	subq	$16, %rsp
Ltmp35:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, %rdi
	callq	_GC_freeHeader
	movq	%rax, _gcnext(%rip)
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end13:

	.globl	_GC_size
	.align	4, 0x90
_GC_size:
Leh_func_begin14:
	pushq	%rbp
Ltmp36:
	movq	%rsp, %rbp
Ltmp37:
	subq	$32, %rsp
Ltmp38:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movabsq	$72057594037927935, %rcx
	andq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end14:

	.globl	_GC_default_pre_mark_function
	.align	4, 0x90
_GC_default_pre_mark_function:
Leh_func_begin15:
	pushq	%rbp
Ltmp39:
	movq	%rsp, %rbp
Ltmp40:
	popq	%rbp
	ret
Leh_func_end15:

	.globl	_GC_default_mark_function
	.align	4, 0x90
_GC_default_mark_function:
Leh_func_begin16:
	pushq	%rbp
Ltmp41:
	movq	%rsp, %rbp
Ltmp42:
	subq	$48, %rsp
Ltmp43:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rcx
	leaq	-8(%rax,%rcx), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB16_5
LBB16_1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB16_4
	movq	-40(%rbp), %rax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	LBB16_4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_mark
LBB16_4:
	movq	-24(%rbp), %rax
	movabsq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
LBB16_5:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	LBB16_1
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end16:

	.globl	_GC_mark
	.align	4, 0x90
_GC_mark:
Leh_func_begin17:
	pushq	%rbp
Ltmp44:
	movq	%rsp, %rbp
Ltmp45:
	subq	$16, %rsp
Ltmp46:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	cmpb	$0, %al
	jne	LBB17_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	7(%rax), %al
	shlb	$5, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB17_4
	movq	-16(%rbp), %rax
	movb	7(%rax), %cl
	andb	$251, %cl
	orb	$4, %cl
	movb	%cl, 7(%rax)
	movq	-16(%rbp), %rax
	movb	7(%rax), %al
	shlb	$6, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB17_4
	movq	_GC_mark_function(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	*%rax
LBB17_4:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end17:

	.globl	_GC_mark_leaf
	.align	4, 0x90
_GC_mark_leaf:
Leh_func_begin18:
	pushq	%rbp
Ltmp47:
	movq	%rsp, %rbp
Ltmp48:
	subq	$16, %rsp
Ltmp49:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movb	7(%rax), %cl
	andb	$251, %cl
	orb	$4, %cl
	movb	%cl, 7(%rax)
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end18:

	.globl	_GC_sweep
	.align	4, 0x90
_GC_sweep:
Leh_func_begin19:
	pushq	%rbp
Ltmp50:
	movq	%rsp, %rbp
Ltmp51:
	subq	$32, %rsp
Ltmp52:
	movq	_gcbase+8(%rip), %rax
	movq	%rax, -8(%rbp)
LBB19_1:
	movq	-8(%rbp), %rax
	movb	7(%rax), %al
	shlb	$5, %al
	shrb	$5, %al
	testb	$7, %al
	je	LBB19_12
	movq	-8(%rbp), %rax
	movb	7(%rax), %al
	shlb	$5, %al
	shrb	$7, %al
	testb	$1, %al
	je	LBB19_4
	movq	-8(%rbp), %rax
	movb	7(%rax), %cl
	andb	$251, %cl
	movb	%cl, 7(%rax)
	jmp	LBB19_12
LBB19_4:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, %rax
	je	LBB19_9
	jmp	LBB19_7
LBB19_6:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	_finalisable(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, _finalisable(%rip)
LBB19_7:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, %rax
	jne	LBB19_6
	jmp	LBB19_12
LBB19_9:
	movq	_GC_free_function(%rip), %rax
	cmpq	$0, %rax
	je	LBB19_11
	movq	_GC_free_function(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)
	callq	_hdr2ptr
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	callq	*%rax
LBB19_11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_freeHeader
	movq	%rax, -8(%rbp)
LBB19_12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB19_1
	movq	_gcbase+8(%rip), %rax
	movq	%rax, _gcnext(%rip)
	jmp	LBB19_15
LBB19_14:
	movq	_finalisable(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, _finalisable(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB19_15:
	movq	_finalisable(%rip), %rax
	cmpq	$0, %rax
	jne	LBB19_14
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end19:

	.globl	_GC_add_root
	.align	4, 0x90
_GC_add_root:
Leh_func_begin20:
	pushq	%rbp
Ltmp53:
	movq	%rsp, %rbp
Ltmp54:
	subq	$32, %rsp
Ltmp55:
	movq	%rdi, -8(%rbp)
	movq	_numRoots(%rip), %rax
	movq	_maxRoots(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB20_5
	movq	_maxRoots(%rip), %rax
	cmpq	$0, %rax
	je	LBB20_3
	movq	_maxRoots(%rip), %rax
	movabsq	$2, %rcx
	imulq	%rcx, %rax
	movq	%rax, _maxRoots(%rip)
	movq	_maxRoots(%rip), %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	_roots(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -16(%rbp)
	jmp	LBB20_4
LBB20_3:
	movq	$128, _maxRoots(%rip)
	movabsq	$1024, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -16(%rbp)
LBB20_4:
	movq	-16(%rbp), %rax
	movq	%rax, _roots(%rip)
LBB20_5:
	movq	_roots(%rip), %rax
	movq	_numRoots(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movabsq	$1, %rax
	addq	%rax, %rcx
	movq	%rcx, _numRoots(%rip)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	je	LBB20_7
	leaq	___func__.4790(%rip), %rax
	leaq	L_.str2(%rip), %rcx
	movl	$334, %edx
	leaq	L_.str3(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx
	callq	___assert_rtn
LBB20_7:
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end20:

	.globl	_GC_delete_root
	.align	4, 0x90
_GC_delete_root:
Leh_func_begin21:
	pushq	%rbp
Ltmp56:
	movq	%rsp, %rbp
Ltmp57:
	subq	$32, %rsp
Ltmp58:
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	LBB21_3
LBB21_1:
	movq	_roots(%rip), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB21_4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB21_3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rax
	movq	_numRoots(%rip), %rcx
	cmpq	%rcx, %rax
	jb	LBB21_1
LBB21_4:
	movl	-20(%rbp), %eax
	movslq	%eax, %rax
	movq	_numRoots(%rip), %rcx
	cmpq	%rcx, %rax
	jae	LBB21_9
	movq	_roots(%rip), %rax
	movl	-20(%rbp), %eax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB21_7
	movq	_roots(%rip), %rax
	movl	-20(%rbp), %eax
	movabsq	$-1, %rax
	movq	_numRoots(%rip), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	_roots(%rip), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	movabsq	$8, %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movabsq	$8, %rsi
	addq	%rsi, %rdx
	movq	_roots(%rip), %rsi
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	movabsq	$8, %r8
	imulq	%r8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memmove_chk
	movq	%rax, -16(%rbp)
	jmp	LBB21_8
LBB21_7:
	movq	_numRoots(%rip), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	_roots(%rip), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rdx
	addq	%rdx, %rcx
	movabsq	$8, %rdx
	addq	%rdx, %rcx
	movq	_roots(%rip), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	movabsq	$8, %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	___inline_memmove_chk
	movq	%rax, -16(%rbp)
LBB21_8:
	movq	_numRoots(%rip), %rax
	movabsq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, _numRoots(%rip)
LBB21_9:
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end21:

	.align	4, 0x90
___inline_memmove_chk:
Leh_func_begin22:
	pushq	%rbp
Ltmp59:
	movq	%rsp, %rbp
Ltmp60:
	subq	$48, %rsp
Ltmp61:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	callq	___memmove_chk
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end22:

	.globl	_GC_gcollect
	.align	4, 0x90
_GC_gcollect:
Leh_func_begin23:
	pushq	%rbp
Ltmp62:
	movq	%rsp, %rbp
Ltmp63:
	subq	$48, %rsp
Ltmp64:
	movq	_GC_collections(%rip), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, _GC_collections(%rip)
	movq	_GC_collections(%rip), %rax
	movabsq	$2361183241434822607, %rcx
	movq	%rax, -24(%rbp)
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	leaq	(%rdx,%rax), %rax
	imulq	$1000, %rax, %rax
	movq	-24(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jne	LBB23_4
	movq	_cursors.4871(%rip), %rax
	movl	_cursor.4872(%rip), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	cmpb	$0, %al
	jne	LBB23_3
	movl	$0, _cursor.4872(%rip)
LBB23_3:
	movq	_cursors.4871(%rip), %rax
	movl	_cursor.4872(%rip), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movsbl	%al, %eax
	movq	___stderrp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	xorb	%dl, %dl
	leaq	L_.str5(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -33(%rbp)
	movl	%eax, %edx
	movb	-33(%rbp), %al
	callq	_fprintf
	movl	_cursor.4872(%rip), %eax
	addl	$1, %eax
	movl	%eax, _cursor.4872(%rip)
LBB23_4:
	movq	_GC_pre_mark_function(%rip), %rax
	callq	*%rax
	movl	$0, -4(%rbp)
	jmp	LBB23_8
LBB23_5:
	movq	_roots(%rip), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB23_7
	movq	_roots(%rip), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_GC_mark
LBB23_7:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
LBB23_8:
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	movq	_numRoots(%rip), %rcx
	cmpq	%rcx, %rax
	jb	LBB23_5
	movq	_GC_stack_roots(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB23_13
LBB23_10:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB23_12
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_GC_mark
LBB23_12:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
LBB23_13:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB23_10
	callq	_GC_sweep
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end23:

	.globl	_GC_count_objects
	.align	4, 0x90
_GC_count_objects:
Leh_func_begin24:
	pushq	%rbp
Ltmp65:
	movq	%rsp, %rbp
Ltmp66:
	movq	_gcbase+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
LBB24_1:
	movq	-24(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	je	LBB24_3
	movq	-32(%rbp), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
LBB24_3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB24_1
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end24:

	.globl	_GC_count_bytes
	.align	4, 0x90
_GC_count_bytes:
Leh_func_begin25:
	pushq	%rbp
Ltmp67:
	movq	%rsp, %rbp
Ltmp68:
	movq	_gcbase+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
LBB25_1:
	movq	-24(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	je	LBB25_3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-32(%rbp), %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rcx), %rax
	movq	%rax, -32(%rbp)
LBB25_3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB25_1
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end25:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI26_0:
	.quad	4985484787500187648
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_GC_count_fragments
	.align	4, 0x90
_GC_count_fragments:
Leh_func_begin26:
	pushq	%rbp
Ltmp69:
	movq	%rsp, %rbp
Ltmp70:
	subq	$48, %rsp
Ltmp71:
	movq	_gcbase+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
LBB26_1:
	movq	-24(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	je	LBB26_3
	movq	-32(%rbp), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB26_8
LBB26_3:
	jmp	LBB26_5
LBB26_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$8, %rax
	shrq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rsi
	movq	(%rsi), %rsi
	leaq	56(%rax,%rsi), %rax
	movabsq	$-72057594037927936, %rsi
	andq	%rsi, %rdx
	movabsq	$72057594037927935, %rsi
	andq	%rsi, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
LBB26_5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB26_7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rcx
	shrq	$8, %rcx
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rcx
	leaq	(%rax,%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	je	LBB26_4
LBB26_7:
	movq	-40(%rbp), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
LBB26_8:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB26_1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movabsq	$4985484787499139072, %rsi
	leaq	(%rdx,%rsi), %rdx
	movd	%rdx, %xmm0
	movsd	LCPI26_0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movl	%ecx, %ecx
	movabsq	$4841369599423283200, %rdx
	leaq	(%rcx,%rdx), %rcx
	movd	%rcx, %xmm2
	addsd	%xmm0, %xmm2
	movq	%rax, %rcx
	shrq	$32, %rcx
	leaq	(%rcx,%rsi), %rcx
	movd	%rcx, %xmm0
	subsd	%xmm1, %xmm0
	movl	%eax, %eax
	leaq	(%rax,%rdx), %rax
	movd	%rax, %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end26:

	.globl	_GC_first_object
	.align	4, 0x90
_GC_first_object:
Leh_func_begin27:
	pushq	%rbp
Ltmp72:
	movq	%rsp, %rbp
Ltmp73:
	subq	$32, %rsp
Ltmp74:
	movq	_gcbase+8(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB27_2
LBB27_1:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
LBB27_2:
	movq	-24(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB27_4
	movq	-24(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB27_1
LBB27_4:
	movq	-24(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB27_6
	movq	$0, -16(%rbp)
	jmp	LBB27_7
LBB27_6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	%rax, -16(%rbp)
LBB27_7:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end27:

	.globl	_GC_next_object
	.align	4, 0x90
_GC_next_object:
Leh_func_begin28:
	pushq	%rbp
Ltmp75:
	movq	%rsp, %rbp
Ltmp76:
	subq	$32, %rsp
Ltmp77:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB28_2
	movq	$0, -24(%rbp)
	jmp	LBB28_9
LBB28_2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB28_4
LBB28_3:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
LBB28_4:
	movq	-32(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB28_6
	movq	-32(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB28_3
LBB28_6:
	movq	-32(%rbp), %rax
	leaq	_gcbase(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB28_8
	movq	$0, -24(%rbp)
	jmp	LBB28_9
LBB28_8:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_hdr2ptr
	movq	%rax, -24(%rbp)
LBB28_9:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end28:

	.globl	_GC_atomic
	.align	4, 0x90
_GC_atomic:
Leh_func_begin29:
	pushq	%rbp
Ltmp78:
	movq	%rsp, %rbp
Ltmp79:
	subq	$16, %rsp
Ltmp80:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movb	7(%rax), %al
	shlb	$6, %al
	shrb	$7, %al
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end29:

	.globl	_GC_check
	.align	4, 0x90
_GC_check:
Leh_func_begin30:
	pushq	%rbp
Ltmp81:
	movq	%rsp, %rbp
Ltmp82:
	subq	$48, %rsp
Ltmp83:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	7(%rax), %al
	shlb	$7, %al
	shrb	$7, %al
	testb	$1, %al
	jne	LBB30_2
	movq	-32(%rbp), %rax
	movb	7(%rax), %cl
	andb	$254, %cl
	orb	$1, %cl
	movb	%cl, 7(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str6(%rip), %r8
	movb	%dil, -33(%rbp)
	movq	%r8, %rdi
	movq	%rax, %r8
	movb	-33(%rbp), %al
	callq	_printf
LBB30_2:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end30:

	.globl	_GC_register_finaliser
	.align	4, 0x90
_GC_register_finaliser:
Leh_func_begin31:
	pushq	%rbp
Ltmp84:
	movq	%rsp, %rbp
Ltmp85:
	subq	$48, %rsp
Ltmp86:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movq	%rax, -32(%rbp)
	movabsq	$32, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end31:

	.align	4, 0x90
_mbs2wcs:
Leh_func_begin32:
	pushq	%rbp
Ltmp87:
	movq	%rsp, %rbp
Ltmp88:
	subq	$48, %rsp
Ltmp89:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_strlen
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	_bufSize.5707(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB32_5
	movq	_wcs.5706(%rip), %rax
	cmpq	$0, %rax
	je	LBB32_3
	movq	-40(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	_wcs.5706(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -32(%rbp)
	jmp	LBB32_4
LBB32_3:
	movq	-40(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
LBB32_4:
	movq	-32(%rbp), %rax
	movq	%rax, _wcs.5706(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, _bufSize.5707(%rip)
LBB32_5:
	movq	_bufSize.5707(%rip), %rax
	movq	_wcs.5706(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_mbstowcs
	movq	_wcs.5706(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end32:

	.align	4, 0x90
_wcs2mbs:
Leh_func_begin33:
	pushq	%rbp
Ltmp90:
	movq	%rsp, %rbp
Ltmp91:
	subq	$48, %rsp
Ltmp92:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcslen
	movabsq	$6, %rcx
	imulq	%rcx, %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	_bufSize.5731(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB33_5
	movq	_mbs.5730(%rip), %rax
	cmpq	$0, %rax
	je	LBB33_3
	movq	_mbs.5730(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_realloc
	movq	%rax, -32(%rbp)
	jmp	LBB33_4
LBB33_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
LBB33_4:
	movq	-32(%rbp), %rax
	movq	%rax, _mbs.5730(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, _bufSize.5731(%rip)
LBB33_5:
	movq	_bufSize.5731(%rip), %rax
	movq	_mbs.5730(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_wcstombs
	movq	_mbs.5730(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end33:

	.align	4, 0x90
_car:
Leh_func_begin34:
	pushq	%rbp
Ltmp93:
	movq	%rsp, %rbp
Ltmp94:
	subq	$32, %rsp
Ltmp95:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB34_3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB34_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB34_4
LBB34_3:
	movq	$0, -24(%rbp)
LBB34_4:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end34:

	.align	4, 0x90
_getType:
Leh_func_begin35:
	pushq	%rbp
Ltmp96:
	movq	%rsp, %rbp
Ltmp97:
	subq	$32, %rsp
Ltmp98:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB35_5
	movq	-8(%rbp), %rax
	andl	$1, %eax
	cmpb	$0, %al
	je	LBB35_3
	movl	$2, -16(%rbp)
	jmp	LBB35_4
LBB35_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movl	48(%rax), %eax
	movl	%eax, -16(%rbp)
LBB35_4:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	LBB35_6
LBB35_5:
	movl	$0, -20(%rbp)
LBB35_6:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end35:

	.align	4, 0x90
_cdr:
Leh_func_begin36:
	pushq	%rbp
Ltmp99:
	movq	%rsp, %rbp
Ltmp100:
	subq	$32, %rsp
Ltmp101:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB36_3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB36_3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB36_4
LBB36_3:
	movq	$0, -24(%rbp)
LBB36_4:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end36:

	.align	4, 0x90
_caar:
Leh_func_begin37:
	pushq	%rbp
Ltmp102:
	movq	%rsp, %rbp
Ltmp103:
	subq	$32, %rsp
Ltmp104:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end37:

	.align	4, 0x90
_cadr:
Leh_func_begin38:
	pushq	%rbp
Ltmp105:
	movq	%rsp, %rbp
Ltmp106:
	subq	$32, %rsp
Ltmp107:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end38:

	.align	4, 0x90
_cddr:
Leh_func_begin39:
	pushq	%rbp
Ltmp108:
	movq	%rsp, %rbp
Ltmp109:
	subq	$32, %rsp
Ltmp110:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end39:

	.align	4, 0x90
__newBits:
Leh_func_begin40:
	pushq	%rbp
Ltmp111:
	movq	%rsp, %rbp
Ltmp112:
	subq	$48, %rsp
Ltmp113:
	movl	%edi, %eax
	movl	%eax, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_malloc_atomic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movl	-4(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end40:

	.align	4, 0x90
__newOops:
Leh_func_begin41:
	pushq	%rbp
Ltmp114:
	movq	%rsp, %rbp
Ltmp115:
	subq	$48, %rsp
Ltmp116:
	movl	%edi, %eax
	movl	%eax, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_ptr2hdr
	movl	-4(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end41:

	.align	4, 0x90
_newData:
Leh_func_begin42:
	pushq	%rbp
Ltmp117:
	movq	%rsp, %rbp
Ltmp118:
	subq	$32, %rsp
Ltmp119:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	__newBits
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end42:

	.align	4, 0x90
_setDouble:
Leh_func_begin43:
	pushq	%rbp
Ltmp120:
	movq	%rsp, %rbp
Ltmp121:
	subq	$32, %rsp
Ltmp122:
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB43_2
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	movq	-8(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movabsq	$8, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -24(%rbp)
	jmp	LBB43_3
LBB43_2:
	movq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movabsq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___inline_memcpy_chk
	movq	%rax, -24(%rbp)
LBB43_3:
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end43:

	.align	4, 0x90
_getDouble:
Leh_func_begin44:
	pushq	%rbp
Ltmp123:
	movq	%rsp, %rbp
Ltmp124:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rcx, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	popq	%rbp
	ret
Leh_func_end44:

	.align	4, 0x90
_newDouble:
Leh_func_begin45:
	pushq	%rbp
Ltmp125:
	movq	%rsp, %rbp
Ltmp126:
	subq	$32, %rsp
Ltmp127:
	movsd	%xmm0, -8(%rbp)
	movl	$3, %eax
	movabsq	$8, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newBits
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	-8(%rbp), %xmm0
	movq	%rax, %rdi
	callq	_setDouble
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end45:

	.align	4, 0x90
__newString:
Leh_func_begin46:
	pushq	%rbp
Ltmp128:
	movq	%rsp, %rbp
Ltmp129:
	subq	$208, %rsp
Ltmp130:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movl	$4294967295, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	__newBits
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rax, -80(%rbp)
	leaq	L_.str7(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$219, %edi
	movl	%edi, -140(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -152(%rbp)
	movq	%rax, %rsi
	movq	-152(%rbp), %r8
	movq	%rdx, -160(%rbp)
	movq	%r8, %rdx
	movl	-140(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -168(%rbp)
	callq	_GC_push_root
	movl	$4, %eax
	movabsq	$16, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rax
	leaq	-136(%rbp), %rdx
	movq	%rax, -136(%rbp)
	leaq	L_.str9(%rip), %rax
	movl	$220, %esi
	movq	%rdx, %rdi
	movl	%esi, -172(%rbp)
	movq	%rax, %rsi
	movq	-152(%rbp), %r8
	movq	%rdx, -184(%rbp)
	movq	%r8, %rdx
	movl	-172(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -192(%rbp)
	callq	_GC_push_root
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)
	callq	_newLong
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$221, %eax
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$222, %eax
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end46:

	.align	4, 0x90
_GC_push_root:
Leh_func_begin47:
	pushq	%rbp
Ltmp131:
	movq	%rsp, %rbp
Ltmp132:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	_GC_stack_roots(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, _GC_stack_roots(%rip)
	popq	%rbp
	ret
Leh_func_end47:

	.align	4, 0x90
_newLong:
Leh_func_begin48:
	pushq	%rbp
Ltmp133:
	movq	%rsp, %rbp
Ltmp134:
	subq	$32, %rsp
Ltmp135:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	(,%rax,2), %rax
	movq	-8(%rbp), %rcx
	xorq	%rcx, %rax
	cmpq	$0, %rax
	jge	LBB48_2
	movl	$2, %eax
	movabsq	$8, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newBits
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB48_3
LBB48_2:
	movq	-8(%rbp), %rax
	movabsq	$1, %rcx
	leaq	(,%rax,2), %rax
	orq	%rcx, %rax
	movq	%rax, -24(%rbp)
LBB48_3:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end48:

	.align	4, 0x90
_GC_pop_root:
Leh_func_begin49:
	pushq	%rbp
Ltmp136:
	movq	%rsp, %rbp
Ltmp137:
	subq	$224, %rsp
Ltmp138:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	_GC_stack_roots(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$0, %eax
	jne	LBB49_2
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str10(%rip), %r8
	movb	%dil, -77(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)
	movq	%r8, %rsi
	movl	%edx, -92(%rbp)
	movq	%rcx, %rdx
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %r8
	movb	-77(%rbp), %al
	callq	_fprintf
	jmp	LBB49_10
LBB49_2:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_GC_roots_include
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB49_4
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str11(%rip), %r8
	movb	%dil, -93(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)
	movq	%r8, %rsi
	movl	%edx, -108(%rbp)
	movq	%rcx, %rdx
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %r8
	movb	-93(%rbp), %al
	callq	_fprintf
	jmp	LBB49_10
LBB49_4:
	movl	$0, -76(%rbp)
	jmp	LBB49_8
LBB49_5:
	movl	-76(%rbp), %eax
	cmpl	$10, %eax
	setg	%al
	andb	$1, %al
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -76(%rbp)
	cmpb	$0, %al
	je	LBB49_7
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str12(%rip), %r8
	movb	%dil, -109(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)
	movq	%r8, %rsi
	movl	%edx, -124(%rbp)
	movq	%rcx, %rdx
	movl	-124(%rbp), %ecx
	movq	-120(%rbp), %r8
	movb	-109(%rbp), %al
	callq	_fprintf
	jmp	LBB49_10
LBB49_7:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
LBB49_8:
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB49_5
	movq	-72(%rbp), %rax
	movq	%rax, _GC_stack_roots(%rip)
	jmp	LBB49_23
LBB49_10:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movq	-72(%rbp), %r8
	xorb	%r9b, %r9b
	leaq	L_.str13(%rip), %r10
	movq	%rsi, -136(%rbp)
	movq	%r10, %rsi
	movq	%rdx, -144(%rbp)
	movq	%r8, %rdx
	movq	-144(%rbp), %r8
	movq	%rcx, -152(%rbp)
	movq	%r8, %rcx
	movq	-152(%rbp), %r8
	movb	%r9b, -153(%rbp)
	movq	%rax, %r9
	movb	-153(%rbp), %al
	callq	_fprintf
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-136(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r8
	xorb	%r9b, %r9b
	leaq	L_.str14(%rip), %r10
	movq	%rsi, -168(%rbp)
	movq	%r10, %rsi
	movq	%rdx, -176(%rbp)
	movq	%r8, %rdx
	movq	-168(%rbp), %r8
	movq	%rcx, -184(%rbp)
	movq	%r8, %rcx
	movq	-176(%rbp), %r8
	movq	-184(%rbp), %r10
	movb	%r9b, -185(%rbp)
	movq	%r10, %r9
	movb	-185(%rbp), %r10b
	movb	%r10b, %al
	callq	_fprintf
	jmp	LBB49_21
LBB49_11:
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	je	LBB49_13
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB49_14
LBB49_13:
	movq	$0, -56(%rbp)
LBB49_14:
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	je	LBB49_16
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB49_17
LBB49_16:
	movq	$0, -48(%rbp)
LBB49_17:
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	je	LBB49_19
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB49_20
LBB49_19:
	movq	$0, -40(%rbp)
LBB49_20:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	xorb	%r8b, %r8b
	leaq	L_.str15(%rip), %r9
	movq	%rdi, -200(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)
	movq	%r9, %rsi
	movq	%rdx, -216(%rbp)
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx
	movq	-208(%rbp), %rax
	movb	%r8b, -217(%rbp)
	movq	%rax, %r8
	movq	-200(%rbp), %r9
	movb	-217(%rbp), %al
	callq	_fprintf
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
LBB49_21:
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB49_11
	callq	_abort
LBB49_23:
	addq	$224, %rsp
	popq	%rbp
	ret
Leh_func_end49:

	.align	4, 0x90
_GC_roots_include:
Leh_func_begin50:
	pushq	%rbp
Ltmp139:
	movq	%rsp, %rbp
Ltmp140:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB50_4
LBB50_1:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB50_3
	movl	$1, -24(%rbp)
	jmp	LBB50_6
LBB50_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB50_4:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB50_1
	movl	$0, -24(%rbp)
LBB50_6:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end50:

	.align	4, 0x90
_newString:
Leh_func_begin51:
	pushq	%rbp
Ltmp141:
	movq	%rsp, %rbp
Ltmp142:
	subq	$48, %rsp
Ltmp143:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcslen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__newString
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB51_2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-1, %rax
	movq	-40(%rbp), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -32(%rbp)
	jmp	LBB51_3
LBB51_2:
	movq	-40(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___inline_memcpy_chk
	movq	%rax, -32(%rbp)
LBB51_3:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end51:

	.align	4, 0x90
_stringLength:
Leh_func_begin52:
	pushq	%rbp
Ltmp144:
	movq	%rsp, %rbp
Ltmp145:
	subq	$16, %rsp
Ltmp146:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end52:

	.align	4, 0x90
_getLong:
Leh_func_begin53:
	pushq	%rbp
Ltmp147:
	movq	%rsp, %rbp
Ltmp148:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	cmpb	$0, %al
	je	LBB53_2
	movq	-8(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB53_3
LBB53_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB53_3:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end53:

	.align	4, 0x90
_concatString:
Leh_func_begin54:
	pushq	%rbp
Ltmp149:
	movq	%rsp, %rbp
Ltmp150:
	subq	$144, %rsp
Ltmp151:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_stringLength
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_stringLength
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	__newString
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	leaq	-120(%rbp), %rdx
	movq	%rax, -120(%rbp)
	leaq	L_.str16(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$246, %edi
	movl	%edi, -124(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -136(%rbp)
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB54_2
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-1, %rax
	movq	-56(%rbp), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -48(%rbp)
	jmp	LBB54_3
LBB54_2:
	movq	-56(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	___inline_memcpy_chk
	movq	%rax, -48(%rbp)
LBB54_3:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB54_5
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rax
	movabsq	$4, %rax
	movabsq	$-1, %rcx
	movq	-64(%rbp), %rdx
	imulq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-56(%rbp), %r8
	imulq	%rax, %r8
	movabsq	$4, %rax
	imulq	%rax, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movq	%rax, -40(%rbp)
	jmp	LBB54_6
LBB54_5:
	movq	-64(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-56(%rbp), %rdi
	imulq	%rcx, %rdi
	movabsq	$4, %rcx
	imulq	%rcx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___inline_memcpy_chk
	movq	%rax, -40(%rbp)
LBB54_6:
	leaq	-120(%rbp), %rax
	leaq	L_.str16(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$250, %esi
	movq	%rax, %rdi
	movl	%esi, -140(%rbp)
	movq	%rcx, %rsi
	movl	-140(%rbp), %ecx
	callq	_GC_pop_root
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	ret
Leh_func_end54:

	.align	4, 0x90
_newSymbol:
Leh_func_begin55:
	pushq	%rbp
Ltmp152:
	movq	%rsp, %rbp
Ltmp153:
	subq	$32, %rsp
Ltmp154:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	$5, %eax
	movabsq	$8, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newBits
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcsdup
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end55:

	.align	4, 0x90
_newPair:
Leh_func_begin56:
	pushq	%rbp
Ltmp155:
	movq	%rsp, %rbp
Ltmp156:
	subq	$48, %rsp
Ltmp157:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$6, %eax
	movabsq	$24, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end56:

	.align	4, 0x90
_newPairFrom:
Leh_func_begin57:
	pushq	%rbp
Ltmp158:
	movq	%rsp, %rbp
Ltmp159:
	subq	$48, %rsp
Ltmp160:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$6, %eax
	movabsq	$24, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end57:

	.align	4, 0x90
_newArray:
Leh_func_begin58:
	pushq	%rbp
Ltmp161:
	movq	%rsp, %rbp
Ltmp162:
	subq	$224, %rsp
Ltmp163:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	LBB58_2
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	LBB58_3
LBB58_2:
	movl	$1, -28(%rbp)
LBB58_3:
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movl	$7, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	__newOops
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str17(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$277, %edi
	movl	%edi, -148(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -168(%rbp)
	movq	%r8, %rdx
	movl	-148(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -176(%rbp)
	callq	_GC_push_root
	movl	$8, %eax
	movabsq	$16, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str9(%rip), %rax
	movl	$278, %esi
	movq	%rdx, %rdi
	movl	%esi, -180(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -192(%rbp)
	movq	%r8, %rdx
	movl	-180(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -200(%rbp)
	callq	_GC_push_root
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	movq	%rax, -208(%rbp)
	callq	_newLong
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$280, %eax
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -212(%rbp)
	callq	_GC_pop_root
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	ret
Leh_func_end58:

	.align	4, 0x90
_arrayLength:
Leh_func_begin59:
	pushq	%rbp
Ltmp164:
	movq	%rsp, %rbp
Ltmp165:
	subq	$32, %rsp
Ltmp166:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB59_3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	jne	LBB59_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -16(%rbp)
	jmp	LBB59_4
LBB59_3:
	movl	$0, -16(%rbp)
LBB59_4:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end59:

	.align	4, 0x90
_arrayAt:
Leh_func_begin60:
	pushq	%rbp
Ltmp167:
	movq	%rsp, %rbp
Ltmp168:
	subq	$48, %rsp
Ltmp169:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB60_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	jne	LBB60_4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-12(%rbp), %ecx
	movl	-44(%rbp), %edx
	cmpl	%edx, %ecx
	jae	LBB60_4
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB60_5
LBB60_4:
	movq	$0, -32(%rbp)
LBB60_5:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end60:

	.align	4, 0x90
_arrayAtPut:
Leh_func_begin61:
	pushq	%rbp
Ltmp170:
	movq	%rsp, %rbp
Ltmp171:
	subq	$160, %rsp
Ltmp172:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB61_13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	jne	LBB61_13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	-52(%rbp), %edx
	cmpl	%edx, %ecx
	jb	LBB61_12
	leaq	-8(%rbp), %rax
	leaq	-112(%rbp), %rcx
	movq	%rax, -112(%rbp)
	leaq	L_.str18(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$306, %esi
	movq	%rcx, %rdi
	movl	%esi, -132(%rbp)
	movq	%rax, %rsi
	movl	-132(%rbp), %ecx
	callq	_GC_push_root
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_size
	shrq	$3, %rax
	movl	%eax, -116(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	%eax, %ecx
	jl	LBB61_11
	jmp	LBB61_6
LBB61_5:
	movl	-116(%rbp), %eax
	imull	$2, %eax, %eax
	movl	%eax, -116(%rbp)
LBB61_6:
	movl	-116(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	LBB61_5
	movl	-116(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movl	$7, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	__newOops
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB61_9
	movq	-128(%rbp), %rax
	movabsq	$-1, %rax
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rdx
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memcpy_chk
	movq	%rax, -48(%rbp)
	jmp	LBB61_10
LBB61_9:
	movl	-52(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	-128(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___inline_memcpy_chk
	movq	%rax, -48(%rbp)
LBB61_10:
	movq	-8(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
LBB61_11:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)
	callq	_newLong
	movq	-144(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-112(%rbp), %rax
	leaq	L_.str18(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$315, %edi
	movl	%edi, -148(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rdx, %rsi
	movq	-160(%rbp), %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB61_12:
	movq	-64(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB61_14
LBB61_13:
	movq	$0, -40(%rbp)
LBB61_14:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	ret
Leh_func_end61:

	.align	4, 0x90
_arrayAppend:
Leh_func_begin62:
	pushq	%rbp
Ltmp173:
	movq	%rsp, %rbp
Ltmp174:
	subq	$48, %rsp
Ltmp175:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx
	callq	_arrayAtPut
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end62:

	.align	4, 0x90
_arrayInsert:
Leh_func_begin63:
	pushq	%rbp
Ltmp176:
	movq	%rsp, %rbp
Ltmp177:
	subq	$80, %rsp
Ltmp178:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	_arrayAppend
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB63_4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB63_3
	movq	-72(%rbp), %rax
	movabsq	$-1, %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	movabsq	$8, %rsi
	addq	%rsi, %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	___memmove_chk
	movq	%rax, -48(%rbp)
	jmp	LBB63_4
LBB63_3:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movabsq	$8, %rdx
	addq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___inline_memmove_chk
	movq	%rax, -48(%rbp)
LBB63_4:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end63:

	.align	4, 0x90
_oopAt:
Leh_func_begin64:
	pushq	%rbp
Ltmp179:
	movq	%rsp, %rbp
Ltmp180:
	subq	$48, %rsp
Ltmp181:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB64_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB64_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_atomic
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB64_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_size
	shrq	$3, %rax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	%eax, %ecx
	jae	LBB64_5
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB64_6
LBB64_5:
	movq	$0, -32(%rbp)
LBB64_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end64:

	.align	4, 0x90
_isLong:
Leh_func_begin65:
	pushq	%rbp
Ltmp182:
	movq	%rsp, %rbp
Ltmp183:
	subq	$32, %rsp
Ltmp184:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	cmpb	$0, %al
	jne	LBB65_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB65_3
LBB65_2:
	movl	$1, -16(%rbp)
	jmp	LBB65_4
LBB65_3:
	movl	$0, -16(%rbp)
LBB65_4:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end65:

	.align	4, 0x90
_oopAtPut:
Leh_func_begin66:
	pushq	%rbp
Ltmp185:
	movq	%rsp, %rbp
Ltmp186:
	subq	$48, %rsp
Ltmp187:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB66_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB66_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_atomic
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB66_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_size
	shrq	$3, %rax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	%eax, %ecx
	jae	LBB66_5
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB66_6
LBB66_5:
	movq	$0, -40(%rbp)
LBB66_6:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end66:

	.align	4, 0x90
_newExpr:
Leh_func_begin67:
	pushq	%rbp
Ltmp188:
	movq	%rsp, %rbp
Ltmp189:
	subq	$128, %rsp
Ltmp190:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$9, %eax
	movabsq	$32, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$368, %edi
	movl	%edi, -92(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -104(%rbp)
	movq	%rax, %rsi
	movq	-104(%rbp), %r8
	movq	%rdx, -112(%rbp)
	movq	%r8, %rdx
	movl	-92(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -120(%rbp)
	callq	_GC_push_root
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)
	callq	_newLong
	movq	-128(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	$371, %eax
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	ret
Leh_func_end67:

	.align	4, 0x90
_newForm:
Leh_func_begin68:
	pushq	%rbp
Ltmp191:
	movq	%rsp, %rbp
Ltmp192:
	subq	$48, %rsp
Ltmp193:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10, %eax
	movabsq	$16, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end68:

	.align	4, 0x90
_newFixed:
Leh_func_begin69:
	pushq	%rbp
Ltmp194:
	movq	%rsp, %rbp
Ltmp195:
	subq	$32, %rsp
Ltmp196:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	$11, %eax
	movabsq	$8, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end69:

	.align	4, 0x90
_newSubr:
Leh_func_begin70:
	pushq	%rbp
Ltmp197:
	movq	%rsp, %rbp
Ltmp198:
	subq	$48, %rsp
Ltmp199:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$12, %eax
	movabsq	$24, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newBits
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end70:

	.align	4, 0x90
_newVariable:
Leh_func_begin71:
	pushq	%rbp
Ltmp200:
	movq	%rsp, %rbp
Ltmp201:
	subq	$144, %rsp
Ltmp202:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$13, %eax
	movabsq	$32, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movq	%rax, -104(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$396, %edi
	movl	%edi, -108(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -120(%rbp)
	movq	%rax, %rsi
	movq	-120(%rbp), %r8
	movq	%rdx, -128(%rbp)
	movq	%r8, %rdx
	movl	-108(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -136(%rbp)
	callq	_GC_push_root
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)
	callq	_newLong
	movq	-144(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	$400, %eax
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	ret
Leh_func_end71:

	.align	4, 0x90
_newEnv:
Leh_func_begin72:
	pushq	%rbp
Ltmp203:
	movq	%rsp, %rbp
Ltmp204:
	subq	$160, %rsp
Ltmp205:
	movl	%edx, %eax
	movl	%esi, %ecx
	movq	%rdi, %r8
	movq	%r8, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%eax, -16(%rbp)
	movl	$14, %eax
	movabsq	$40, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	__newOops
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rax, -96(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$406, %edi
	movl	%edi, -100(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, %rcx
	movq	%rax, -120(%rbp)
	je	LBB72_2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB72_3
LBB72_2:
	movq	$0, -40(%rbp)
LBB72_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rdi
	movq	%rax, -128(%rbp)
	callq	_newLong
	movq	-128(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	%ecx, %edi
	movq	%rax, -136(%rbp)
	callq	_newArray
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	leaq	-96(%rbp), %rax
	leaq	L_.str9(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$410, %edi
	movl	%edi, -140(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)
	movq	%rdx, %rsi
	movq	-152(%rbp), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	ret
Leh_func_end72:

	.align	4, 0x90
_newBaseContext:
Leh_func_begin73:
	pushq	%rbp
Ltmp206:
	movq	%rsp, %rbp
Ltmp207:
	subq	$144, %rsp
Ltmp208:
	movq	%rdi, %rax
	movl	$0, %ecx
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$15, %eax
	movabsq	$40, %rdx
	movl	%eax, %edi
	movq	%rdx, %rsi
	movl	%ecx, -100(%rbp)
	callq	__newOops
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rax, -96(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$416, %edi
	movl	%edi, -104(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)
	movq	%rax, %rsi
	movq	-112(%rbp), %r8
	movq	%rdx, -120(%rbp)
	movq	%r8, %rdx
	movl	-104(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -128(%rbp)
	callq	_GC_push_root
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, %edi
	movq	%rax, -136(%rbp)
	callq	_newArray
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movl	$419, %eax
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	ret
Leh_func_end73:

	.align	4, 0x90
_newContext:
Leh_func_begin74:
	pushq	%rbp
Ltmp209:
	movq	%rsp, %rbp
Ltmp210:
	subq	$48, %rsp
Ltmp211:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB74_3
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB74_3
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB74_6
LBB74_3:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newBaseContext
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB74_5
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 24(%rax)
LBB74_5:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB74_6:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end74:

	.align	4, 0x90
_findVariable:
Leh_func_begin75:
	pushq	%rbp
Ltmp212:
	movq	%rsp, %rbp
Ltmp213:
	subq	$64, %rsp
Ltmp214:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB75_6
LBB75_1:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	jmp	LBB75_4
LBB75_2:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB75_4
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB75_8
LBB75_4:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB75_2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
LBB75_6:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB75_1
	movq	$0, -32(%rbp)
LBB75_8:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end75:

	.align	4, 0x90
_lookup:
Leh_func_begin76:
	pushq	%rbp
Ltmp215:
	movq	%rsp, %rbp
Ltmp216:
	subq	$48, %rsp
Ltmp217:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_findVariable
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB76_2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	L_.str19(%rip), %rcx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	%dl, %al
	callq	_fatal
LBB76_2:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end76:

	.align	4, 0x90
_define:
Leh_func_begin77:
	pushq	%rbp
Ltmp218:
	movq	%rsp, %rbp
Ltmp219:
	subq	$176, %rsp
Ltmp220:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)
	jmp	LBB77_3
LBB77_1:
	movq	-48(%rbp), %rax
	movl	-116(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB77_3
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB77_9
LBB77_3:
	movl	-116(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB77_1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	-52(%rbp), %edi
	movl	%edi, -132(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)
	movq	%rdx, %rsi
	movq	-144(%rbp), %rdx
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	callq	_newVariable
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	leaq	-112(%rbp), %rdx
	movq	%rax, -112(%rbp)
	leaq	L_.str20(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$481, %edi
	movl	%edi, -148(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -168(%rbp)
	movq	%r8, %rdx
	movl	-148(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -176(%rbp)
	callq	_GC_push_root
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_arrayAppend
	movl	$482, %eax
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, %rax
	je	LBB77_8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$9, %ecx
	jne	LBB77_8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	jne	LBB77_8
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
LBB77_8:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB77_9:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	ret
Leh_func_end77:

	.align	4, 0x90
_isGlobal:
Leh_func_begin78:
	pushq	%rbp
Ltmp221:
	movq	%rsp, %rbp
Ltmp222:
	subq	$32, %rsp
Ltmp223:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	je	LBB78_3
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	cmpq	$0, %rax
	jne	LBB78_3
	movl	$1, -16(%rbp)
	jmp	LBB78_4
LBB78_3:
	movl	$0, -16(%rbp)
LBB78_4:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end78:

	.align	4, 0x90
_newBool:
Leh_func_begin79:
	pushq	%rbp
Ltmp224:
	movq	%rsp, %rbp
Ltmp225:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	LBB79_2
	movq	_s_t(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB79_3
LBB79_2:
	movq	$0, -24(%rbp)
LBB79_3:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end79:

	.align	4, 0x90
_intern:
Leh_func_begin80:
	pushq	%rbp
Ltmp226:
	movq	%rsp, %rbp
Ltmp227:
	subq	$144, %rsp
Ltmp228:
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	_symbols(%rip), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	jmp	LBB80_6
LBB80_1:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %rax
	sarq	%rax
	movq	%rax, -112(%rbp)
	movq	_symbols(%rip), %rax
	movl	-112(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -56(%rbp)
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -48(%rbp)
	testq	%rcx, %rcx
	jns	LBB80_3
	movq	-112(%rbp), %rax
	movabsq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB80_6
LBB80_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	jle	LBB80_5
	movq	-112(%rbp), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB80_6
LBB80_5:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB80_8
LBB80_6:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	LBB80_1
	leaq	-56(%rbp), %rax
	leaq	-104(%rbp), %rcx
	movq	%rax, -104(%rbp)
	leaq	L_.str21(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$509, %esi
	movq	%rcx, %rdi
	movl	%esi, -116(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)
	movl	-116(%rbp), %r8d
	movq	%rcx, -136(%rbp)
	movl	%r8d, %ecx
	movq	%rax, -144(%rbp)
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_newSymbol
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	_symbols(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_arrayInsert
	movl	$512, %eax
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
LBB80_8:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	ret
Leh_func_end80:

	.align	4, 0x90
_isPrint:
Leh_func_begin81:
	pushq	%rbp
Ltmp229:
	movq	%rsp, %rbp
Ltmp230:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB81_3
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jg	LBB81_3
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	leaq	_chartab(%rip), %rcx
	addq	%rax, %rcx
	movb	(%rcx), %al
	movsbl	%al, %eax
	andl	$1, %eax
	cmpb	$0, %al
	jne	LBB81_4
LBB81_3:
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jle	LBB81_5
LBB81_4:
	movl	$1, -12(%rbp)
	jmp	LBB81_6
LBB81_5:
	movl	$0, -12(%rbp)
LBB81_6:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end81:

	.align	4, 0x90
_isAlpha:
Leh_func_begin82:
	pushq	%rbp
Ltmp231:
	movq	%rsp, %rbp
Ltmp232:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB82_3
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jg	LBB82_3
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	leaq	_chartab(%rip), %rcx
	addq	%rax, %rcx
	movb	(%rcx), %al
	movsbl	%al, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	LBB82_4
LBB82_3:
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jle	LBB82_5
LBB82_4:
	movl	$1, -12(%rbp)
	jmp	LBB82_6
LBB82_5:
	movl	$0, -12(%rbp)
LBB82_6:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end82:

	.align	4, 0x90
_isDigit10:
Leh_func_begin83:
	pushq	%rbp
Ltmp233:
	movq	%rsp, %rbp
Ltmp234:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB83_4
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jg	LBB83_4
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	leaq	_chartab(%rip), %rcx
	addq	%rax, %rcx
	movb	(%rcx), %al
	movsbl	%al, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB83_4
	movl	$1, -12(%rbp)
	jmp	LBB83_5
LBB83_4:
	movl	$0, -12(%rbp)
LBB83_5:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end83:

	.align	4, 0x90
_isDigit16:
Leh_func_begin84:
	pushq	%rbp
Ltmp235:
	movq	%rsp, %rbp
Ltmp236:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB84_4
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jg	LBB84_4
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	leaq	_chartab(%rip), %rcx
	addq	%rax, %rcx
	movb	(%rcx), %al
	movsbl	%al, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	LBB84_4
	movl	$1, -12(%rbp)
	jmp	LBB84_5
LBB84_4:
	movl	$0, -12(%rbp)
LBB84_5:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end84:

	.align	4, 0x90
_isLetter:
Leh_func_begin85:
	pushq	%rbp
Ltmp237:
	movq	%rsp, %rbp
Ltmp238:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB85_3
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jg	LBB85_3
	movl	-4(%rbp), %eax
	movslq	%eax, %rax
	leaq	_chartab(%rip), %rcx
	addq	%rax, %rcx
	movb	(%rcx), %al
	movsbl	%al, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	LBB85_4
LBB85_3:
	movl	-4(%rbp), %eax
	cmpl	$127, %eax
	jle	LBB85_5
LBB85_4:
	movl	$1, -12(%rbp)
	jmp	LBB85_6
LBB85_5:
	movl	$0, -12(%rbp)
LBB85_6:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end85:

	.align	4, 0x90
_beginSource:
Leh_func_begin86:
	pushq	%rbp
Ltmp239:
	movq	%rsp, %rbp
Ltmp240:
	subq	$16, %rsp
Ltmp241:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, _currentPath(%rip)
	movabsq	$1, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, _currentLine(%rip)
	movq	_currentSource(%rip), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newPair
	movq	%rax, _currentSource(%rip)
	movq	_currentSource(%rip), %rax
	movq	_currentLine(%rip), %rcx
	movq	_currentPath(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -16(%rbp)
	callq	_newPair
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end86:

	.align	4, 0x90
_advanceSource:
Leh_func_begin87:
	pushq	%rbp
Ltmp242:
	movq	%rsp, %rbp
Ltmp243:
	subq	$16, %rsp
Ltmp244:
	movq	_currentLine(%rip), %rax
	movq	%rax, %rdi
	callq	_getLong
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, _currentLine(%rip)
	movq	_currentSource(%rip), %rax
	movq	_currentLine(%rip), %rcx
	movq	_currentPath(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -8(%rbp)
	callq	_newPair
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end87:

	.align	4, 0x90
_endSource:
Leh_func_begin88:
	pushq	%rbp
Ltmp245:
	movq	%rsp, %rbp
Ltmp246:
	subq	$16, %rsp
Ltmp247:
	movq	_currentSource(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _currentSource(%rip)
	movq	_currentSource(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, _currentPath(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, _currentLine(%rip)
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end88:

	.align	4, 0x90
_readList:
Leh_func_begin89:
	pushq	%rbp
Ltmp248:
	movq	%rsp, %rbp
Ltmp249:
	subq	$208, %rsp
Ltmp250:
	movl	%esi, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, -12(%rbp)
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movb	$0, -57(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-112(%rbp), %rcx
	movq	%rax, -112(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$578, %edi
	movl	%edi, -168(%rbp)
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)
	movl	-168(%rbp), %ecx
	callq	_GC_push_root
	leaq	-56(%rbp), %rax
	leaq	-160(%rbp), %rdx
	movq	%rax, -160(%rbp)
	leaq	L_.str9(%rip), %rax
	movl	$579, %esi
	movq	%rdx, %rdi
	movl	%esi, -180(%rbp)
	movq	%rax, %rsi
	movq	-176(%rbp), %rdx
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
LBB89_1:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	je	LBB89_15
	movq	-56(%rbp), %rax
	movq	_s_dot(%rip), %rcx
	cmpq	%rcx, %rax
	jne	LBB89_8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	LBB89_5
	leaq	L_.str23(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB89_5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	je	LBB89_7
	leaq	L_.str24(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB89_7:
	movb	$1, -57(%rbp)
LBB89_8:
	movb	-57(%rbp), %al
	cmpb	$0, %al
	setne	%al
	xorb	$1, %al
	andb	$1, %al
	cmpb	$0, %al
	je	LBB89_10
	movq	_currentSource(%rip), %rax
	movq	-56(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -56(%rbp)
LBB89_10:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB89_12
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB89_13
LBB89_12:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB89_13:
	movb	-57(%rbp), %al
	cmpb	$0, %al
	jne	LBB89_15
	jmp	LBB89_1
LBB89_15:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	movl	-164(%rbp), %ecx
	movl	-12(%rbp), %edx
	cmpl	%edx, %ecx
	je	LBB89_19
	movl	-164(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB89_18
	leaq	L_.str25(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB89_18:
	movl	-12(%rbp), %eax
	movl	-164(%rbp), %ecx
	leaq	L_.str26(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, -181(%rbp)
	movl	%eax, %esi
	movl	%ecx, %edx
	movb	-181(%rbp), %al
	callq	_fatal
LBB89_19:
	leaq	-160(%rbp), %rax
	leaq	L_.str9(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$641, %esi
	movq	%rax, %rdi
	movl	%esi, -188(%rbp)
	movq	%rcx, %rsi
	movq	%rdx, -200(%rbp)
	movl	-188(%rbp), %ecx
	callq	_GC_pop_root
	leaq	-112(%rbp), %rax
	leaq	L_.str22(%rip), %rdx
	movl	$642, %esi
	movq	%rax, %rdi
	movl	%esi, -204(%rbp)
	movq	%rdx, %rsi
	movq	-200(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end89:

	.align	4, 0x90
_digitValue:
Leh_func_begin90:
	pushq	%rbp
Ltmp251:
	movq	%rsp, %rbp
Ltmp252:
	subq	$16, %rsp
Ltmp253:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	-97(%rax), %ecx
	cmpl	$26, %ecx
	movl	%eax, -16(%rbp)
	jb	LBB90_3
	movl	-16(%rbp), %eax
	leal	-65(%rax), %ecx
	cmpl	$26, %ecx
	jb	LBB90_2
	movl	-16(%rbp), %eax
	leal	-48(%rax), %ecx
	cmpl	$9, %ecx
	ja	LBB90_4
	movl	-4(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB90_5
LBB90_2:
	movl	-4(%rbp), %eax
	subl	$55, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB90_5
LBB90_3:
	movl	-4(%rbp), %eax
	subl	$87, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB90_5
LBB90_4:
	leaq	L_.str27(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movl	$0, -12(%rbp)
LBB90_5:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end90:

	.align	4, 0x90
_isHexadecimal:
Leh_func_begin91:
	pushq	%rbp
Ltmp254:
	movq	%rsp, %rbp
Ltmp255:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	-48(%rax), %eax
	cmpl	$54, %eax
	movq	%rax, -24(%rbp)
	ja	LBB91_2
	movabsq	$35465847073801215, %rax
	movq	-24(%rbp), %rcx
	btq	%rcx, %rax
	jb	LBB91_1
	jmp	LBB91_2
LBB91_1:
	movl	$1, -12(%rbp)
	jmp	LBB91_3
LBB91_2:
	movl	$0, -12(%rbp)
LBB91_3:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end91:

	.align	4, 0x90
_isOctal:
Leh_func_begin92:
	pushq	%rbp
Ltmp256:
	movq	%rsp, %rbp
Ltmp257:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$47, %eax
	jle	LBB92_3
	movl	-4(%rbp), %eax
	cmpl	$55, %eax
	jg	LBB92_3
	movl	$1, -12(%rbp)
	jmp	LBB92_4
LBB92_3:
	movl	$0, -12(%rbp)
LBB92_4:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end92:

	.align	4, 0x90
_readChar:
Leh_func_begin93:
	pushq	%rbp
Ltmp258:
	movq	%rsp, %rbp
Ltmp259:
	subq	$96, %rsp
Ltmp260:
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$92, %eax
	jne	LBB93_22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	cmpl	$96, %ecx
	movl	%ecx, -52(%rbp)
	jg	LBB93_26
	movl	-52(%rbp), %eax
	leal	-48(%rax), %ecx
	cmpl	$8, %ecx
	jb	LBB93_14
	jmp	LBB93_18
LBB93_26:
	movl	-52(%rbp), %eax
	cmpl	$109, %eax
	jg	LBB93_28
	movl	-52(%rbp), %eax
	cmpl	$97, %eax
	je	LBB93_2
	movl	-52(%rbp), %eax
	cmpl	$98, %eax
	je	LBB93_3
	movl	-52(%rbp), %eax
	cmpl	$102, %eax
	je	LBB93_4
	jmp	LBB93_18
LBB93_28:
	movl	-52(%rbp), %eax
	leal	-110(%rax), %ecx
	cmpl	$10, %ecx
	movq	%rcx, -64(%rbp)
	ja	LBB93_18
	leaq	LJTI93_0(%rip), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB93_2:
	movl	$7, -24(%rbp)
	jmp	LBB93_23
LBB93_3:
	movl	$8, -24(%rbp)
	jmp	LBB93_23
LBB93_4:
	movl	$12, -24(%rbp)
	jmp	LBB93_23
LBB93_5:
	movl	$10, -24(%rbp)
	jmp	LBB93_23
LBB93_6:
	movl	$13, -24(%rbp)
	jmp	LBB93_23
LBB93_7:
	movl	$9, -24(%rbp)
	jmp	LBB93_23
LBB93_8:
	movl	$11, -24(%rbp)
	jmp	LBB93_23
LBB93_9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %edi
	callq	_digitValue
	movl	%eax, %ecx
	shll	$12, %ecx
	movl	-32(%rbp), %edx
	movl	%edx, %edi
	movl	%ecx, -68(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	shll	$8, %ecx
	movl	-68(%rbp), %edx
	addl	%ecx, %edx
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	movl	%edx, -72(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	shll	$4, %ecx
	movl	-72(%rbp), %edx
	addl	%ecx, %edx
	movl	-40(%rbp), %ecx
	movl	%ecx, %edi
	movl	%edx, -76(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	movl	-76(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -24(%rbp)
	jmp	LBB93_23
LBB93_10:
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isHexadecimal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB93_13
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	_digitValue
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isHexadecimal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB93_13
	movl	-44(%rbp), %eax
	imull	$16, %eax, %eax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	movl	%eax, -80(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	movl	-80(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB93_13:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB93_23
LBB93_14:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	_digitValue
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isOctal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB93_17
	movl	-48(%rbp), %eax
	imull	$8, %eax, %eax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	movl	%eax, -84(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	movl	-84(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isOctal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB93_17
	movl	-48(%rbp), %eax
	imull	$8, %eax, %eax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edi
	movl	%eax, -88(%rbp)
	callq	_digitValue
	movl	%eax, %ecx
	movl	-88(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB93_17:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	movl	-48(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB93_23
LBB93_18:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	_isAlpha
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB93_20
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB93_21
LBB93_20:
	movl	-4(%rbp), %eax
	leaq	L_.str28(%rip), %rcx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movl	%eax, %esi
	movb	%dl, %al
	callq	_fatal
LBB93_21:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB93_23
LBB93_22:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
LBB93_23:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end93:
	.align	2, 0x90
L93_0_set_5 = LBB93_5-LJTI93_0
L93_0_set_18 = LBB93_18-LJTI93_0
L93_0_set_6 = LBB93_6-LJTI93_0
L93_0_set_7 = LBB93_7-LJTI93_0
L93_0_set_9 = LBB93_9-LJTI93_0
L93_0_set_8 = LBB93_8-LJTI93_0
L93_0_set_10 = LBB93_10-LJTI93_0
LJTI93_0:
	.long	L93_0_set_5
	.long	L93_0_set_18
	.long	L93_0_set_18
	.long	L93_0_set_18
	.long	L93_0_set_6
	.long	L93_0_set_18
	.long	L93_0_set_7
	.long	L93_0_set_9
	.long	L93_0_set_8
	.long	L93_0_set_18
	.long	L93_0_set_10

	.align	4, 0x90
_oop_read:
Leh_func_begin94:
	pushq	%rbp
Ltmp261:
	movq	%rsp, %rbp
Ltmp262:
	subq	$448, %rsp
Ltmp263:
	movq	%rdi, -8(%rbp)
LBB94_1:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$122, %ecx
	movl	%ecx, -308(%rbp)
	jg	LBB94_76
	movl	-308(%rbp), %eax
	cmpl	$8, %eax
	jg	LBB94_79
	movl	-308(%rbp), %eax
	cmpl	$-1, %eax
	je	LBB94_2
	jmp	LBB94_62
LBB94_79:
	movl	-308(%rbp), %eax
	cmpl	$31, %eax
	jg	LBB94_81
	movl	-308(%rbp), %eax
	cmpl	$9, %eax
	je	LBB94_9
	movl	-308(%rbp), %eax
	cmpl	$10, %eax
	je	LBB94_3
	movl	-308(%rbp), %eax
	cmpl	$13, %eax
	je	LBB94_7
	jmp	LBB94_62
LBB94_81:
	movl	-308(%rbp), %eax
	cmpl	$90, %eax
	jg	LBB94_83
	movl	-308(%rbp), %eax
	leal	-32(%rax), %ecx
	cmpl	$31, %ecx
	movq	%rcx, -320(%rbp)
	ja	LBB94_62
	leaq	LJTI94_0(%rip), %rax
	movq	-320(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB94_83:
	movl	-308(%rbp), %eax
	cmpl	$91, %eax
	je	LBB94_57
	movl	-308(%rbp), %eax
	cmpl	$93, %eax
	je	LBB94_58
	movl	-308(%rbp), %eax
	cmpl	$96, %eax
	je	LBB94_27
	jmp	LBB94_62
LBB94_76:
	movl	-308(%rbp), %eax
	cmpl	$123, %eax
	je	LBB94_59
	movl	-308(%rbp), %eax
	cmpl	$125, %eax
	je	LBB94_60
	jmp	LBB94_62
LBB94_2:
	movabsq	$-4, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$13, %ecx
	je	LBB94_3
	movl	-36(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB94_6
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
LBB94_6:
	callq	_advanceSource
	jmp	LBB94_72
LBB94_7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$10, %ecx
	je	LBB94_7
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	callq	_advanceSource
	jmp	LBB94_72
LBB94_9:
	jmp	LBB94_72
LBB94_10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$-1, %ecx
	je	LBB94_15
	movl	-36(%rbp), %eax
	cmpl	$10, %eax
	je	LBB94_13
	movl	-36(%rbp), %eax
	cmpl	$13, %eax
	jne	LBB94_14
LBB94_13:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	jmp	LBB94_15
LBB94_14:
	jmp	LBB94_10
LBB94_15:
	jmp	LBB94_72
LBB94_16:
	leaq	_buf.6900(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_reset
LBB94_17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$34, %ecx
	je	LBB94_21
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_readChar
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$-1, %ecx
	jne	LBB94_20
	leaq	L_.str29(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB94_20:
	movl	-36(%rbp), %eax
	leaq	_buf.6900(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	jmp	LBB94_17
LBB94_21:
	leaq	_buf.6900(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_contents
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rdx, %rsi
	callq	_readChar
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_23:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	LBB94_25
	movq	_s_quote(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB94_26
LBB94_25:
	leaq	-56(%rbp), %rax
	leaq	-104(%rbp), %rcx
	movq	%rax, -104(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$777, %esi
	movq	%rcx, %rdi
	movl	%esi, -324(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -336(%rbp)
	movl	-324(%rbp), %r8d
	movq	%rcx, -344(%rbp)
	movl	%r8d, %ecx
	movq	%rax, -352(%rbp)
	callq	_GC_push_root
	movq	_currentSource(%rip), %rax
	movq	-56(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -56(%rbp)
	movq	_currentSource(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	_s_quote(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -56(%rbp)
	movl	$780, %eax
	movq	-344(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movq	-336(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB94_26:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_27:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	LBB94_29
	movq	_s_quasiquote(%rip), %rax
	movq	%rax, -112(%rbp)
	jmp	LBB94_30
LBB94_29:
	leaq	-112(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	%rax, -160(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$789, %esi
	movq	%rcx, %rdi
	movl	%esi, -356(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -368(%rbp)
	movl	-356(%rbp), %r8d
	movq	%rcx, -376(%rbp)
	movl	%r8d, %ecx
	movq	%rax, -384(%rbp)
	callq	_GC_push_root
	movq	_currentSource(%rip), %rax
	movq	-112(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -112(%rbp)
	movq	_currentSource(%rip), %rax
	movq	-112(%rbp), %rcx
	movq	_s_quasiquote(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -112(%rbp)
	movl	$792, %eax
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %rsi
	movq	-368(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB94_30:
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_31:
	movq	_s_unquote(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$64, %ecx
	jne	LBB94_33
	movq	_s_unquote_splicing(%rip), %rax
	movq	%rax, -168(%rbp)
	jmp	LBB94_34
LBB94_33:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
LBB94_34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	LBB94_36
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	LBB94_37
LBB94_36:
	leaq	-176(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	%rax, -224(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$805, %esi
	movq	%rcx, %rdi
	movl	%esi, -388(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -400(%rbp)
	movl	-388(%rbp), %r8d
	movq	%rcx, -408(%rbp)
	movl	%r8d, %ecx
	movq	%rax, -416(%rbp)
	callq	_GC_push_root
	movq	_currentSource(%rip), %rax
	movq	-176(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -176(%rbp)
	movq	_currentSource(%rip), %rax
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -176(%rbp)
	movl	$808, %eax
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	movq	-400(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB94_37:
	movq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_38:
	leaq	_buf.6917(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_reset
LBB94_39:
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_39
	movl	-36(%rbp), %eax
	cmpl	$46, %eax
	je	LBB94_42
	movl	-36(%rbp), %eax
	cmpl	$101, %eax
	jne	LBB94_51
LBB94_42:
	movl	-36(%rbp), %eax
	cmpl	$46, %eax
	jne	LBB94_44
LBB94_43:
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_43
LBB94_44:
	movl	-36(%rbp), %eax
	cmpl	$101, %eax
	jne	LBB94_50
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	$45, %ecx
	jne	LBB94_47
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
LBB94_47:
	jmp	LBB94_49
LBB94_48:
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
LBB94_49:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_48
LBB94_50:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	leaq	_buf.6917(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_contents
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcstod
	callq	_newDouble
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_51:
	movl	-36(%rbp), %eax
	cmpl	$120, %eax
	jne	LBB94_54
	movl	_buf.6917+12(%rip), %eax
	cmpl	$1, %eax
	jne	LBB94_54
LBB94_53:
	movl	-36(%rbp), %eax
	leaq	_buf.6917(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	callq	_isDigit16
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_53
LBB94_54:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	leaq	_buf.6917(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_contents
	movabsq	$0, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	%esi, -420(%rbp)
	movq	%rcx, %rsi
	movl	-420(%rbp), %eax
	movl	%eax, %edx
	callq	_wcstoul
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_55:
	movq	-8(%rbp), %rax
	movl	$41, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_readList
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_56:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	movabsq	$-4, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_57:
	movq	-8(%rbp), %rax
	movl	$93, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_readList
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_58:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	movabsq	$-4, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_59:
	movq	-8(%rbp), %rax
	movl	$125, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_readList
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_60:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	movabsq	$-4, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_61:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -244(%rbp)
	movl	-244(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rdx, %rsi
	callq	_ungetwc
	movl	-244(%rbp), %eax
	movl	%eax, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_38
LBB94_62:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	_isLetter
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB94_68
	movq	$0, -256(%rbp)
	leaq	-256(%rbp), %rax
	leaq	-304(%rbp), %rcx
	movq	%rax, -304(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$864, %esi
	movq	%rcx, %rdi
	movl	%esi, -424(%rbp)
	movq	%rax, %rsi
	movl	-424(%rbp), %ecx
	callq	_GC_push_root
	leaq	_buf.6938(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_reset
	jmp	LBB94_65
LBB94_64:
	movl	-36(%rbp), %eax
	leaq	_buf.6938(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_buffer_append
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
LBB94_65:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	_isLetter
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_64
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	_isDigit10
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB94_64
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_ungetwc
	leaq	_buf.6938(%rip), %rax
	movq	%rax, %rdi
	callq	_buffer_contents
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, -256(%rbp)
	leaq	-304(%rbp), %rax
	leaq	L_.str9(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$892, %edi
	movl	%edi, -428(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -440(%rbp)
	movq	%rdx, %rsi
	movq	-440(%rbp), %rdx
	movl	-428(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-256(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB94_73
LBB94_68:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	_isPrint
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB94_70
	leaq	L_.str30(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB94_71
LBB94_70:
	leaq	L_.str31(%rip), %rax
	movq	%rax, -24(%rbp)
LBB94_71:
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	-36(%rbp), %edx
	xorb	%sil, %sil
	movq	%rax, %rdi
	movb	%sil, -441(%rbp)
	movl	%ecx, %esi
	movb	-441(%rbp), %al
	callq	_fatal
LBB94_72:
	jmp	LBB94_1
LBB94_73:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$448, %rsp
	popq	%rbp
	ret
Leh_func_end94:
	.align	2, 0x90
L94_0_set_9 = LBB94_9-LJTI94_0
L94_0_set_62 = LBB94_62-LJTI94_0
L94_0_set_16 = LBB94_16-LJTI94_0
L94_0_set_23 = LBB94_23-LJTI94_0
L94_0_set_55 = LBB94_55-LJTI94_0
L94_0_set_56 = LBB94_56-LJTI94_0
L94_0_set_31 = LBB94_31-LJTI94_0
L94_0_set_61 = LBB94_61-LJTI94_0
L94_0_set_38 = LBB94_38-LJTI94_0
L94_0_set_10 = LBB94_10-LJTI94_0
L94_0_set_22 = LBB94_22-LJTI94_0
LJTI94_0:
	.long	L94_0_set_9
	.long	L94_0_set_62
	.long	L94_0_set_16
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_23
	.long	L94_0_set_55
	.long	L94_0_set_56
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_31
	.long	L94_0_set_61
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_38
	.long	L94_0_set_62
	.long	L94_0_set_10
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_62
	.long	L94_0_set_22

	.align	4, 0x90
_doprint:
Leh_func_begin95:
	pushq	%rbp
Ltmp264:
	movq	%rsp, %rbp
Ltmp265:
	subq	$368, %rsp
Ltmp266:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB95_2
	movq	-8(%rbp), %rax
	leaq	L_.str32(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$2, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	jmp	LBB95_93
LBB95_2:
	movq	_globals(%rip), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB95_4
	movq	-8(%rbp), %rax
	leaq	L_.str33(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$9, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -136(%rbp)
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	jmp	LBB95_93
LBB95_4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$15, %ecx
	movl	%ecx, %ecx
	movq	%rcx, -144(%rbp)
	ja	LBB95_87
	leaq	LJTI95_0(%rip), %rax
	movq	-144(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB95_5:
	movq	-8(%rbp), %rax
	leaq	L_.str34(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$9, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -152(%rbp)
	movq	%rdx, %rsi
	movq	-152(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	jmp	LBB95_93
LBB95_6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_size
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_size
	movq	%rax, %rcx
	movq	-8(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str35(%rip), %r8
	movb	%dil, -153(%rbp)
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movl	%ecx, %edx
	movb	-153(%rbp), %cl
	movb	%cl, %al
	callq	_fprintf
	movl	$0, -64(%rbp)
	jmp	LBB95_8
LBB95_7:
	movq	-16(%rbp), %rax
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str36(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -154(%rbp)
	movl	%eax, %edx
	movb	-154(%rbp), %al
	callq	_fprintf
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
LBB95_8:
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB95_7
	movq	-8(%rbp), %rax
	movl	$62, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_10:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	xorb	%sil, %sil
	leaq	L_.str37(%rip), %rdi
	movq	%rdi, -168(%rbp)
	movq	%rdx, %rdi
	movq	-168(%rbp), %rdx
	movb	%sil, -169(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movb	-169(%rbp), %cl
	movb	%cl, %al
	callq	_fprintf
	jmp	LBB95_93
LBB95_11:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-8(%rbp), %rcx
	movb	$1, %dl
	leaq	L_.str38(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fprintf
	jmp	LBB95_93
LBB95_12:
	movl	-20(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB95_14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str39(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -170(%rbp)
	movq	%rax, %rdx
	movb	-170(%rbp), %al
	callq	_fprintf
	jmp	LBB95_25
LBB95_14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	$34, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_putc
	jmp	LBB95_23
LBB95_15:
	movl	-84(%rbp), %eax
	cmpl	$31, %eax
	jle	LBB95_22
	movl	-84(%rbp), %eax
	cmpl	$126, %eax
	jg	LBB95_22
	movl	-84(%rbp), %eax
	cmpl	$92, %eax
	movl	%eax, -176(%rbp)
	je	LBB95_19
	movl	-176(%rbp), %eax
	cmpl	$34, %eax
	jne	LBB95_20
	xorb	%al, %al
	leaq	L_.str40(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB95_21
LBB95_19:
	xorb	%al, %al
	leaq	L_.str41(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB95_21
LBB95_20:
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_putc
LBB95_21:
	jmp	LBB95_23
LBB95_22:
	movq	-8(%rbp), %rax
	movl	-84(%rbp), %ecx
	xorb	%dl, %dl
	leaq	L_.str42(%rip), %rsi
	movq	%rax, %rdi
	movb	%dl, -177(%rbp)
	movl	%ecx, %edx
	movb	-177(%rbp), %al
	callq	_fprintf
LBB95_23:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	$0, %eax
	setne	%al
	andb	$1, %al
	movq	-80(%rbp), %rcx
	movabsq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	cmpb	$0, %al
	jne	LBB95_15
	movq	-8(%rbp), %rax
	movl	$34, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_putc
LBB95_25:
	jmp	LBB95_93
LBB95_26:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str39(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -178(%rbp)
	movq	%rax, %rdx
	movb	-178(%rbp), %al
	callq	_fprintf
	jmp	LBB95_93
LBB95_27:
	movq	-8(%rbp), %rax
	movl	$40, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
LBB95_28:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_30
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB95_31
LBB95_30:
	movl	$1, -60(%rbp)
	jmp	LBB95_32
LBB95_31:
	movl	$0, -60(%rbp)
LBB95_32:
	movl	-60(%rbp), %eax
	movslq	%eax, %rax
	cmpq	$0, %rax
	je	LBB95_34
	leaq	___func__.7091(%rip), %rax
	leaq	L_.str8(%rip), %rcx
	movl	$954, %edx
	leaq	L_.str43(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)
	movq	%rcx, %rsi
	movq	-192(%rbp), %rcx
	callq	___assert_rtn
LBB95_34:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB95_39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$14, %ecx
	jne	LBB95_39
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_43
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB95_43
	jmp	LBB95_42
LBB95_39:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_doprint
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_43
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB95_43
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
LBB95_42:
	jmp	LBB95_28
LBB95_43:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_45
	movq	-8(%rbp), %rax
	leaq	L_.str44(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -200(%rbp)
	movq	%rdx, %rsi
	movq	-200(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -204(%rbp)
	movq	%rcx, %rsi
	movl	-204(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
LBB95_45:
	movq	-8(%rbp), %rax
	movl	$41, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str45(%rip), %r8
	movb	%dil, -205(%rbp)
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movl	%ecx, %edx
	movb	-205(%rbp), %cl
	movb	%cl, %al
	callq	_fprintf
	movl	$0, -88(%rbp)
	jmp	LBB95_50
LBB95_47:
	movl	-88(%rbp), %eax
	cmpl	$0, %eax
	je	LBB95_49
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
LBB95_49:
	movq	-16(%rbp), %rax
	movl	-88(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -212(%rbp)
	movq	%rax, %rsi
	movl	-212(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
LBB95_50:
	movl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB95_47
	movq	-8(%rbp), %rax
	movl	$41, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_52:
	movq	-8(%rbp), %rax
	leaq	L_.str46(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$4, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -224(%rbp)
	movq	%rdx, %rsi
	movq	-224(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB95_54
	movq	-8(%rbp), %rax
	movl	$46, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -228(%rbp)
	movq	%rax, %rsi
	movl	-228(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
LBB95_54:
	movq	-8(%rbp), %rax
	movl	$61, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -232(%rbp)
	movq	%rax, %rsi
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	jmp	LBB95_93
LBB95_55:
	movq	-8(%rbp), %rax
	leaq	L_.str47(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$5, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -240(%rbp)
	movq	%rdx, %rsi
	movq	-240(%rbp), %rcx
	movq	%rdx, -248(%rbp)
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -252(%rbp)
	movq	%rax, %rsi
	movl	-252(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	leaq	L_.str48(%rip), %rcx
	movabsq	$2, %rdx
	movq	%rcx, %rdi
	movq	-248(%rbp), %rsi
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -256(%rbp)
	movq	%rax, %rsi
	movl	-256(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	movl	$41, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_56:
	movl	$1, %eax
	movl	%eax, %edi
	callq	_isatty
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB95_58
	movq	-8(%rbp), %rax
	leaq	L_.str49(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$4, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -264(%rbp)
	movq	%rdx, %rsi
	movq	-264(%rbp), %rcx
	movq	%rdx, -272(%rbp)
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -276(%rbp)
	movq	%rax, %rsi
	movl	-276(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	leaq	L_.str50(%rip), %rcx
	movabsq	$3, %rdx
	movq	%rcx, %rdi
	movq	-272(%rbp), %rsi
	movq	%rax, %rcx
	callq	_fwrite
	jmp	LBB95_59
LBB95_58:
	movq	-8(%rbp), %rax
	leaq	L_.str51(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$6, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -288(%rbp)
	movq	%rdx, %rsi
	movq	-288(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -292(%rbp)
	movq	%rax, %rsi
	movl	-292(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	movl	$62, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
LBB95_59:
	jmp	LBB95_93
LBB95_60:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB95_62
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str39(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -293(%rbp)
	movq	%rax, %rdx
	movb	-293(%rbp), %al
	callq	_fprintf
	jmp	LBB95_63
LBB95_62:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str52(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -294(%rbp)
	movq	%rax, %rdx
	movb	-294(%rbp), %al
	callq	_fprintf
LBB95_63:
	jmp	LBB95_93
LBB95_64:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_isGlobal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB95_67
	movl	$1, %eax
	movl	%eax, %edi
	callq	_isatty
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB95_67
	movq	-8(%rbp), %rax
	leaq	L_.str53(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$4, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -304(%rbp)
	movq	%rdx, %rsi
	movq	-304(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
LBB95_67:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_doprint
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_isGlobal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB95_70
	movl	$1, %eax
	movl	%eax, %edi
	callq	_isatty
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB95_70
	movq	-8(%rbp), %rax
	leaq	L_.str50(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -312(%rbp)
	movq	%rdx, %rsi
	movq	-312(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
LBB95_70:
	jmp	LBB95_93
LBB95_71:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_74
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB95_74
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -56(%rbp)
	jmp	LBB95_75
LBB95_74:
	movq	$-1, -56(%rbp)
LBB95_75:
	movq	-104(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_78
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB95_78
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -48(%rbp)
	jmp	LBB95_79
LBB95_78:
	movq	$-1, -48(%rbp)
LBB95_79:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, %rax
	jne	LBB95_81
	leaq	L_.str54(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB95_82
LBB95_81:
	leaq	L_.str55(%rip), %rax
	movq	%rax, -40(%rbp)
LBB95_82:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	jne	LBB95_84
	leaq	L_.str56(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB95_85
LBB95_84:
	leaq	L_.str55(%rip), %rax
	movq	%rax, -32(%rbp)
LBB95_85:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	xorb	%r8b, %r8b
	leaq	L_.str57(%rip), %r9
	movq	%rdi, -320(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -328(%rbp)
	movq	%r9, %rsi
	movq	%rdx, -336(%rbp)
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx
	movq	-328(%rbp), %rax
	movb	%r8b, -337(%rbp)
	movq	%rax, %r8
	movq	-320(%rbp), %r9
	movb	-337(%rbp), %al
	callq	_fprintf
	movq	-8(%rbp), %rax
	movl	$62, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_86:
	movq	-8(%rbp), %rax
	leaq	L_.str58(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$8, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -352(%rbp)
	movq	%rdx, %rsi
	movq	-352(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -356(%rbp)
	movq	%rax, %rsi
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	movl	$61, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -360(%rbp)
	movq	%rax, %rsi
	movl	-360(%rbp), %eax
	movl	%eax, %edx
	callq	_doprint
	movq	-8(%rbp), %rax
	movl	$62, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	jmp	LBB95_93
LBB95_87:
	leaq	L_.str59(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_92
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	jne	LBB95_92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	je	LBB95_92
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB95_92
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str60(%rip), %rsi
	movq	%rcx, %rdi
	movb	%dl, -361(%rbp)
	movq	%rax, %rdx
	movb	-361(%rbp), %al
	callq	_fprintf
	jmp	LBB95_93
LBB95_92:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	xorb	%dil, %dil
	leaq	L_.str61(%rip), %r8
	movb	%dil, -362(%rbp)
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movl	%ecx, %edx
	movb	-362(%rbp), %cl
	movb	%cl, %al
	callq	_fprintf
LBB95_93:
	addq	$368, %rsp
	popq	%rbp
	ret
Leh_func_end95:
	.align	2, 0x90
L95_0_set_5 = LBB95_5-LJTI95_0
L95_0_set_6 = LBB95_6-LJTI95_0
L95_0_set_10 = LBB95_10-LJTI95_0
L95_0_set_11 = LBB95_11-LJTI95_0
L95_0_set_12 = LBB95_12-LJTI95_0
L95_0_set_26 = LBB95_26-LJTI95_0
L95_0_set_27 = LBB95_27-LJTI95_0
L95_0_set_87 = LBB95_87-LJTI95_0
L95_0_set_46 = LBB95_46-LJTI95_0
L95_0_set_52 = LBB95_52-LJTI95_0
L95_0_set_55 = LBB95_55-LJTI95_0
L95_0_set_56 = LBB95_56-LJTI95_0
L95_0_set_60 = LBB95_60-LJTI95_0
L95_0_set_64 = LBB95_64-LJTI95_0
L95_0_set_71 = LBB95_71-LJTI95_0
L95_0_set_86 = LBB95_86-LJTI95_0
LJTI95_0:
	.long	L95_0_set_5
	.long	L95_0_set_6
	.long	L95_0_set_10
	.long	L95_0_set_11
	.long	L95_0_set_12
	.long	L95_0_set_26
	.long	L95_0_set_27
	.long	L95_0_set_87
	.long	L95_0_set_46
	.long	L95_0_set_52
	.long	L95_0_set_55
	.long	L95_0_set_56
	.long	L95_0_set_60
	.long	L95_0_set_64
	.long	L95_0_set_71
	.long	L95_0_set_86

	.align	4, 0x90
_print:
Leh_func_begin96:
	pushq	%rbp
Ltmp267:
	movq	%rsp, %rbp
Ltmp268:
	subq	$16, %rsp
Ltmp269:
	movl	$0, %eax
	movq	%rdi, -8(%rbp)
	movq	___stdoutp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movl	%eax, %edx
	movq	%rcx, -16(%rbp)
	callq	_doprint
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_fflush
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end96:

	.align	4, 0x90
_fdump:
Leh_func_begin97:
	pushq	%rbp
Ltmp270:
	movq	%rsp, %rbp
Ltmp271:
	subq	$16, %rsp
Ltmp272:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_doprint
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_fflush
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end97:

	.align	4, 0x90
_dump:
Leh_func_begin98:
	pushq	%rbp
Ltmp273:
	movq	%rsp, %rbp
Ltmp274:
	subq	$16, %rsp
Ltmp275:
	movq	%rdi, -8(%rbp)
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdump
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end98:

	.align	4, 0x90
_fdumpln:
Leh_func_begin99:
	pushq	%rbp
Ltmp276:
	movq	%rsp, %rbp
Ltmp277:
	subq	$16, %rsp
Ltmp278:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdump
	movq	-8(%rbp), %rax
	movl	$10, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_fflush
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end99:

	.align	4, 0x90
_dumpln:
Leh_func_begin100:
	pushq	%rbp
Ltmp279:
	movq	%rsp, %rbp
Ltmp280:
	subq	$16, %rsp
Ltmp281:
	movq	%rdi, -8(%rbp)
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end100:

	.align	4, 0x90
_concat:
Leh_func_begin101:
	pushq	%rbp
Ltmp282:
	movq	%rsp, %rbp
Ltmp283:
	subq	$112, %rsp
Ltmp284:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB101_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB101_3
LBB101_2:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB101_4
LBB101_3:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_concat
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rax, -80(%rbp)
	leaq	L_.str62(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1088, %edi
	movl	%edi, -84(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -96(%rbp)
	movq	%rax, %rsi
	movq	-96(%rbp), %r8
	movq	%rdx, -104(%rbp)
	movq	%r8, %rdx
	movl	-84(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -112(%rbp)
	callq	_GC_push_root
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -8(%rbp)
	movl	$1089, %eax
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB101_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end101:

	.align	4, 0x90
_setSource:
Leh_func_begin102:
	pushq	%rbp
Ltmp285:
	movq	%rsp, %rbp
Ltmp286:
	subq	$16, %rsp
Ltmp287:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB102_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB102_3
LBB102_2:
	jmp	LBB102_6
LBB102_3:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, %rax
	jne	LBB102_5
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
LBB102_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_setSource
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_setSource
LBB102_6:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end102:

	.align	4, 0x90
_expand:
Leh_func_begin103:
	pushq	%rbp
Ltmp288:
	movq	%rsp, %rbp
Ltmp289:
	subq	$512, %rsp
Ltmp290:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	_opt_v(%rip), %eax
	cmpl	$1, %eax
	jle	LBB103_2
	xorb	%al, %al
	leaq	L_.str63(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB103_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_24
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB103_24
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1111, %edi
	movl	%edi, -348(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -360(%rbp)
	movq	%rax, %rsi
	movq	-360(%rbp), %rdx
	movl	-348(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB103_15
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_findVariable
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_9
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	jne	LBB103_9
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
LBB103_9:
	movq	-152(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_15
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$10, %ecx
	jne	LBB103_15
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB103_15
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -168(%rbp)
	leaq	-168(%rbp), %rax
	leaq	-216(%rbp), %rdx
	movq	%rax, -216(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1120, %edi
	movl	%edi, -364(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -376(%rbp)
	movq	%rax, %rsi
	movq	-376(%rbp), %r8
	movq	%rdx, -384(%rbp)
	movq	%r8, %rdx
	movl	-364(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -392(%rbp)
	callq	_GC_push_root
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_apply
	movq	%rax, -40(%rbp)
	movl	$1121, %eax
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -40(%rbp)
	leaq	-88(%rbp), %rax
	leaq	L_.str22(%rip), %rdx
	movl	$1122, %esi
	movq	%rax, %rdi
	movl	%esi, -396(%rbp)
	movq	%rdx, %rsi
	movq	-376(%rbp), %rdx
	movl	-396(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movl	_opt_v(%rip), %eax
	cmpl	$1, %eax
	jle	LBB103_14
	xorb	%al, %al
	leaq	L_.str65(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB103_14:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_setSource
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB103_39
LBB103_15:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	%rax, -144(%rbp)
	leaq	L_.str62(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$1132, %esi
	movq	%rcx, %rdi
	movl	%esi, -400(%rbp)
	movq	%rax, %rsi
	movl	-400(%rbp), %ecx
	callq	_GC_push_root
	movq	_s_quote(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB103_17
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_exlist
	movq	%rax, -96(%rbp)
LBB103_17:
	movq	_s_set(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB103_23
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	cmpq	$0, %rax
	je	LBB103_23
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB103_23
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_caar
	cmpq	$0, %rax
	je	LBB103_23
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_caar
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB103_23
	leaq	_buf.7319(%rip), %rax
	movq	%rax, %rdi
	movq	%rax, -408(%rbp)
	callq	_buffer_reset
	leaq	L_.str66(%rip), %rax
	movq	-408(%rbp), %rdi
	movq	%rax, %rsi
	callq	_buffer_appendAll
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-408(%rbp), %rdi
	movq	%rax, %rsi
	callq	_buffer_appendAll
	movq	-408(%rbp), %rdi
	callq	_buffer_contents
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_concat
	movq	%rax, -96(%rbp)
LBB103_23:
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -8(%rbp)
	leaq	-144(%rbp), %rax
	leaq	L_.str62(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1145, %edi
	movl	%edi, -412(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -424(%rbp)
	movq	%rdx, %rsi
	movq	-424(%rbp), %rdx
	movl	-412(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	leaq	-88(%rbp), %rax
	leaq	L_.str22(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-424(%rbp), %rdx
	movl	-412(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	jmp	LBB103_36
LBB103_24:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB103_34
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_findVariable
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_29
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	jne	LBB103_29
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
LBB103_29:
	movq	-224(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_33
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$10, %ecx
	jne	LBB103_33
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB103_33
	movq	-8(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -432(%rbp)
	callq	_newPair
	movq	%rax, -232(%rbp)
	leaq	-232(%rbp), %rax
	leaq	-280(%rbp), %rdx
	movq	%rax, -280(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1152, %edi
	movl	%edi, -436(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -448(%rbp)
	movq	%rax, %rsi
	movq	-448(%rbp), %r8
	movq	%rdx, -456(%rbp)
	movq	%r8, %rdx
	movl	-436(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -464(%rbp)
	callq	_GC_push_root
	movq	-232(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-432(%rbp), %rdx
	callq	_apply
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -232(%rbp)
	movl	$1155, %eax
	movq	-456(%rbp), %rdi
	movq	-464(%rbp), %rsi
	movq	-448(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-232(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_setSource
	movq	-232(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB103_39
LBB103_33:
	jmp	LBB103_36
LBB103_34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	_expanders(%rip), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	je	LBB103_36
	movq	-8(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -472(%rbp)
	callq	_newPair
	movq	%rax, -296(%rbp)
	leaq	-296(%rbp), %rax
	leaq	-344(%rbp), %rdx
	movq	%rax, -344(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1164, %edi
	movl	%edi, -476(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -488(%rbp)
	movq	%rax, %rsi
	movq	-488(%rbp), %r8
	movq	%rdx, -496(%rbp)
	movq	%r8, %rdx
	movl	-476(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -504(%rbp)
	callq	_GC_push_root
	movq	-296(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-472(%rbp), %rdx
	callq	_apply
	movq	%rax, -296(%rbp)
	movl	$1165, %eax
	movq	-496(%rbp), %rdi
	movq	-504(%rbp), %rsi
	movq	-488(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-296(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_setSource
	movq	-296(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB103_39
LBB103_36:
	movl	_opt_v(%rip), %eax
	cmpl	$1, %eax
	jle	LBB103_38
	xorb	%al, %al
	leaq	L_.str65(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB103_38:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB103_39:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$512, %rsp
	popq	%rbp
	ret
Leh_func_end103:

	.align	4, 0x90
_exlist:
Leh_func_begin104:
	pushq	%rbp
Ltmp291:
	movq	%rsp, %rbp
Ltmp292:
	subq	$208, %rsp
Ltmp293:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB104_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB104_3
LBB104_2:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -32(%rbp)
	jmp	LBB104_4
LBB104_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1184, %edi
	movl	%edi, -148(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -168(%rbp)
	movq	%r8, %rdx
	movl	-148(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -176(%rbp)
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_exlist
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str62(%rip), %rax
	movl	$1185, %esi
	movq	%rdx, %rdi
	movl	%esi, -180(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -192(%rbp)
	movq	%r8, %rdx
	movl	-180(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -200(%rbp)
	callq	_GC_push_root
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -40(%rbp)
	movl	$1187, %eax
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -204(%rbp)
	callq	_GC_pop_root
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB104_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end104:

	.align	4, 0x90
_encode:
Leh_func_begin105:
	pushq	%rbp
Ltmp294:
	movq	%rsp, %rbp
Ltmp295:
	subq	$576, %rsp
Ltmp296:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	_opt_v(%rip), %eax
	cmpl	$1, %eax
	jle	LBB105_2
	xorb	%al, %al
	leaq	L_.str67(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB105_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB105_36
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_encode
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1197, %edi
	movl	%edi, -364(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -376(%rbp)
	movq	%rax, %rsi
	movq	-376(%rbp), %rdx
	movl	-364(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str62(%rip), %rax
	movl	$1198, %esi
	movq	%rdx, %rdi
	movl	%esi, -380(%rbp)
	movq	%rax, %rsi
	movq	-376(%rbp), %rdx
	movl	-380(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	_f_let(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB105_13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-16(%rbp), %rcx
	movl	$0, %edi
	movl	%edi, -384(%rbp)
	movq	%rcx, %rdi
	movl	-384(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	_newEnv
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-200(%rbp), %rdx
	movq	%rax, -200(%rbp)
	leaq	L_.str68(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1201, %edi
	movl	%edi, -388(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -400(%rbp)
	movq	%rax, %rsi
	movq	-400(%rbp), %rdx
	movl	-388(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	jmp	LBB105_10
LBB105_6:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_9
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB105_9
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
LBB105_9:
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_define
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
LBB105_10:
	movq	-152(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_12
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB105_6
LBB105_12:
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -96(%rbp)
	leaq	-200(%rbp), %rax
	leaq	L_.str68(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1209, %edi
	movl	%edi, -404(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -416(%rbp)
	movq	%rdx, %rsi
	movq	-416(%rbp), %rdx
	movl	-404(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	jmp	LBB105_35
LBB105_13:
	movq	_f_lambda(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB105_27
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edi
	movl	%edi, -420(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	-420(%rbp), %eax
	movl	%eax, %edx
	callq	_newEnv
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-264(%rbp), %rdx
	movq	%rax, -264(%rbp)
	leaq	L_.str68(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1213, %edi
	movl	%edi, -424(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -432(%rbp)
	movq	%rax, %rsi
	movq	-432(%rbp), %rdx
	movl	-424(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	jmp	LBB105_19
LBB105_15:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB105_17
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	je	LBB105_18
LBB105_17:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str69(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$35, %rdi
	movq	%rdi, -440(%rbp)
	movq	%rdx, %rdi
	movq	-440(%rbp), %rdx
	movq	%rax, -448(%rbp)
	callq	_fwrite
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	-448(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB105_18:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_define
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
LBB105_19:
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_21
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB105_15
LBB105_21:
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_26
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_24
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	je	LBB105_25
LBB105_24:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str69(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$35, %rdi
	movq	%rdi, -456(%rbp)
	movq	%rdx, %rdi
	movq	-456(%rbp), %rdx
	movq	%rax, -464(%rbp)
	callq	_fwrite
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB105_25:
	movq	-16(%rbp), %rax
	movq	-216(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_define
LBB105_26:
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -96(%rbp)
	leaq	-264(%rbp), %rax
	leaq	L_.str68(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1232, %edi
	movl	%edi, -468(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -480(%rbp)
	movq	%rdx, %rsi
	movq	-480(%rbp), %rdx
	movl	-468(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	jmp	LBB105_35
LBB105_27:
	movq	_f_define(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB105_29
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_define
	movq	%rax, -272(%rbp)
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -488(%rbp)
	callq	_cdr
	movq	%rax, %rdi
	movq	-488(%rbp), %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -96(%rbp)
	jmp	LBB105_35
LBB105_29:
	movq	_f_set(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB105_33
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_findVariable
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB105_32
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, %rcx
	movq	(%rcx), %rcx
	leaq	L_.str70(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, -489(%rbp)
	movq	%rcx, %rsi
	movb	-489(%rbp), %cl
	movb	%cl, %al
	callq	_fatal
LBB105_32:
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -504(%rbp)
	callq	_cdr
	movq	%rax, %rdi
	movq	-504(%rbp), %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -96(%rbp)
	jmp	LBB105_35
LBB105_33:
	movq	_f_quote(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB105_35
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
LBB105_35:
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -8(%rbp)
	leaq	-144(%rbp), %rax
	leaq	L_.str62(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1247, %edi
	movl	%edi, -508(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -520(%rbp)
	movq	%rdx, %rsi
	movq	-520(%rbp), %rdx
	movl	-508(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	leaq	-88(%rbp), %rax
	leaq	L_.str22(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-520(%rbp), %rdx
	movl	-508(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	jmp	LBB105_52
LBB105_36:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_50
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB105_50
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_findVariable
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB105_40
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	L_.str19(%rip), %rcx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	%dl, %al
	callq	_fatal
LBB105_40:
	movq	-288(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_isGlobal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB105_47
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_43
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$10, %ecx
	je	LBB105_45
LBB105_43:
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_46
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$11, %ecx
	jne	LBB105_46
LBB105_45:
	movq	-288(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB105_46:
	jmp	LBB105_49
LBB105_47:
	movq	-288(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -528(%rbp)
	callq	_getLong
	movq	-528(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB105_49
	movq	_s_t(%rip), %rax
	movq	-296(%rbp), %rcx
	movq	%rax, 32(%rcx)
LBB105_49:
	jmp	LBB105_52
LBB105_50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	_encoders(%rip), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	cmpq	$0, %rax
	je	LBB105_52
	movq	-16(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -536(%rbp)
	callq	_newPair
	movq	%rax, -312(%rbp)
	leaq	-312(%rbp), %rax
	leaq	-360(%rbp), %rdx
	movq	%rax, -360(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1267, %edi
	movl	%edi, -540(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -552(%rbp)
	movq	%rax, %rsi
	movq	-552(%rbp), %r8
	movq	%rdx, -560(%rbp)
	movq	%r8, %rdx
	movl	-540(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -568(%rbp)
	callq	_GC_push_root
	movq	-312(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-536(%rbp), %rdx
	callq	_apply
	movq	%rax, -8(%rbp)
	movl	$1269, %eax
	movq	-560(%rbp), %rdi
	movq	-568(%rbp), %rsi
	movq	-552(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB105_52:
	movl	_opt_v(%rip), %eax
	cmpl	$1, %eax
	jle	LBB105_54
	xorb	%al, %al
	leaq	L_.str71(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB105_54:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$576, %rsp
	popq	%rbp
	ret
Leh_func_end105:

	.align	4, 0x90
_enlist:
Leh_func_begin106:
	pushq	%rbp
Ltmp297:
	movq	%rsp, %rbp
Ltmp298:
	subq	$208, %rsp
Ltmp299:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB106_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB106_3
LBB106_2:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_encode
	movq	%rax, -32(%rbp)
	jmp	LBB106_4
LBB106_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_encode
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1279, %edi
	movl	%edi, -148(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -168(%rbp)
	movq	%r8, %rdx
	movl	-148(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -176(%rbp)
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_enlist
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str62(%rip), %rax
	movl	$1280, %esi
	movq	%rdx, %rdi
	movl	%esi, -180(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -192(%rbp)
	movq	%r8, %rdx
	movl	-180(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -200(%rbp)
	callq	_GC_push_root
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPairFrom
	movq	%rax, -40(%rbp)
	movl	$1281, %eax
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -204(%rbp)
	callq	_GC_pop_root
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB106_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end106:

	.align	4, 0x90
_printSource:
Leh_func_begin107:
	pushq	%rbp
Ltmp300:
	movq	%rsp, %rbp
Ltmp301:
	subq	$48, %rsp
Ltmp302:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB107_8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB107_8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, %rax
	je	LBB107_8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	je	LBB107_8
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB107_8
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB107_8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB107_8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	xorb	%sil, %sil
	leaq	L_.str72(%rip), %rdi
	movb	%sil, -41(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movb	-41(%rbp), %cl
	movb	%cl, %al
	callq	_printf
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	jmp	LBB107_9
LBB107_8:
	movl	$0, -16(%rbp)
LBB107_9:
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end107:

	.align	4, 0x90
_fatal:
Leh_func_begin108:
	pushq	%rbp
Ltmp303:
	movq	%rsp, %rbp
Ltmp304:
	subq	$560, %rsp
Ltmp305:
	testb	%al, %al
	movq	%r8, -312(%rbp)
	movq	%r9, -320(%rbp)
	movq	%rcx, -328(%rbp)
	movq	%rdi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movaps	%xmm0, -368(%rbp)
	movaps	%xmm1, -384(%rbp)
	movaps	%xmm2, -400(%rbp)
	movaps	%xmm3, -416(%rbp)
	movaps	%xmm4, -432(%rbp)
	movaps	%xmm5, -448(%rbp)
	movaps	%xmm6, -464(%rbp)
	movaps	%xmm7, -480(%rbp)
	je	LBB108_18
	movaps	-368(%rbp), %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	-384(%rbp), %xmm1
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2
	movaps	%xmm2, -224(%rbp)
	movaps	-416(%rbp), %xmm3
	movaps	%xmm3, -208(%rbp)
	movaps	-432(%rbp), %xmm4
	movaps	%xmm4, -192(%rbp)
	movaps	-448(%rbp), %xmm5
	movaps	%xmm5, -176(%rbp)
	movaps	-464(%rbp), %xmm6
	movaps	%xmm6, -160(%rbp)
	movaps	-480(%rbp), %xmm7
	movaps	%xmm7, -144(%rbp)
LBB108_18:
	movq	-320(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-328(%rbp), %rdx
	movq	%rdx, -280(%rbp)
	movq	-344(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	movq	-352(%rbp), %rdi
	movq	%rdi, -296(%rbp)
	movq	-336(%rbp), %r8
	movq	%r8, %r9
	movq	%r9, -8(%rbp)
	movq	-8(%rbp), %r9
	cmpq	$0, %r9
	je	LBB108_2
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	leaq	-304(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movq	___stderrp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	leaq	L_.str73(%rip), %rsi
	movabsq	$1, %rdi
	movabsq	$8, %r8
	movq	%rdi, -488(%rbp)
	movq	%rsi, %rdi
	movq	-488(%rbp), %rsi
	movq	%rdx, -496(%rbp)
	movq	%r8, %rdx
	movq	-496(%rbp), %r8
	movq	%rcx, -504(%rbp)
	movq	%r8, %rcx
	movq	%rax, -512(%rbp)
	callq	_fwrite
	movq	-504(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -520(%rbp)
	movq	%rdx, %rsi
	movq	-520(%rbp), %rdx
	callq	_vfprintf
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movl	$10, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_fputc
LBB108_2:
	movq	_backtrace(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB108_4
	movl	_traceDepth(%rip), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rax, -96(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1319, %edi
	movl	%edi, -524(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -536(%rbp)
	movq	%rax, %rsi
	movq	-536(%rbp), %r8
	movq	%rdx, -544(%rbp)
	movq	%r8, %rdx
	movl	-524(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -552(%rbp)
	callq	_GC_push_root
	movq	-48(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -560(%rbp)
	callq	_newPair
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	_traceStack(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-560(%rbp), %rdx
	callq	_apply
	movl	$1322, %eax
	movq	-544(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-536(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	jmp	LBB108_16
LBB108_4:
	movl	_traceDepth(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	$12, -104(%rbp)
	jmp	LBB108_15
LBB108_5:
	movq	_traceStack(%rip), %rax
	movl	-100(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	xorb	%cl, %cl
	leaq	L_.str74(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	_printSource
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movl	-116(%rbp), %ecx
	movl	-104(%rbp), %edx
	cmpl	%edx, %ecx
	jl	LBB108_7
	movl	-116(%rbp), %eax
	movl	%eax, -104(%rbp)
LBB108_7:
	movl	-116(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB108_11
	jmp	LBB108_10
LBB108_9:
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	$46, %eax
	movl	%eax, %edi
	callq	_putchar
LBB108_10:
	movl	-116(%rbp), %eax
	cmpl	$2, %eax
	jle	LBB108_9
LBB108_11:
	jmp	LBB108_13
LBB108_12:
	movl	$32, %eax
	movl	%eax, %edi
	callq	_putchar
LBB108_13:
	movl	-116(%rbp), %eax
	movl	-104(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
	cmpb	$0, %al
	jne	LBB108_12
	xorb	%al, %al
	leaq	L_.str75(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	_traceStack(%rip), %rax
	movl	-100(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, %rdi
	callq	_dumpln
	xorb	%cl, %cl
	leaq	L_.str76(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
LBB108_15:
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	jne	LBB108_5
LBB108_16:
	movl	$1, %eax
	movl	%eax, %edi
	callq	_exit
Leh_func_end108:

	.align	4, 0x90
_eval:
Leh_func_begin109:
	pushq	%rbp
Ltmp306:
	movq	%rsp, %rbp
Ltmp307:
	subq	$320, %rsp
Ltmp308:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	_opt_v(%rip), %eax
	cmpl	$2, %eax
	jle	LBB109_2
	xorb	%al, %al
	leaq	L_.str77(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dump
	xorb	%cl, %cl
	leaq	L_.str78(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB109_2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	movl	%ecx, %ecx
	movq	%rcx, -232(%rbp)
	ja	LBB109_18
	leaq	LJTI109_0(%rip), %rax
	movq	-232(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB109_3:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB109_25
LBB109_4:
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1356, %edi
	movl	%edi, -236(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -248(%rbp)
	movq	%rax, %rsi
	movq	-248(%rbp), %rdx
	movl	-236(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB109_7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$11, %ecx
	jne	LBB109_7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_apply
	movq	%rax, -40(%rbp)
	jmp	LBB109_11
LBB109_7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_evlist
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1360, %edi
	movl	%edi, -252(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -264(%rbp)
	movq	%rax, %rsi
	movq	-264(%rbp), %rdx
	movl	-252(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB109_9
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movl	_traceDepth(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%rax, %rdx
	callq	_arrayAtPut
LBB109_9:
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_apply
	movq	%rax, -40(%rbp)
	leaq	-144(%rbp), %rax
	leaq	L_.str64(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1362, %edi
	movl	%edi, -268(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)
	movq	%rdx, %rsi
	movq	-280(%rbp), %rdx
	movl	-268(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB109_11
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
LBB109_11:
	leaq	-88(%rbp), %rax
	leaq	L_.str22(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$1364, %esi
	movq	%rax, %rdi
	movl	%esi, -284(%rbp)
	movq	%rcx, %rsi
	movl	-284(%rbp), %ecx
	callq	_GC_pop_root
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB109_25
LBB109_12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_isGlobal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB109_14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB109_25
LBB109_14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -288(%rbp)
	callq	_getLong
	movl	-288(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	LBB109_16
LBB109_15:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
LBB109_16:
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	cmpl	$-1, %eax
	jne	LBB109_15
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-160(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAt
	movq	%rax, -32(%rbp)
	jmp	LBB109_25
LBB109_18:
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB109_20
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
LBB109_20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	_evaluators(%rip), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, %rax
	je	LBB109_22
	movq	-8(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newPair
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movq	%rax, -224(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1380, %edi
	movl	%edi, -292(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -304(%rbp)
	movq	%rax, %rsi
	movq	-304(%rbp), %r8
	movq	%rdx, -312(%rbp)
	movq	%r8, %rdx
	movl	-292(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -320(%rbp)
	callq	_GC_push_root
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_apply
	movq	%rax, -8(%rbp)
	movl	$1381, %eax
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	movq	-304(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
LBB109_22:
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB109_24
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
LBB109_24:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB109_25:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$320, %rsp
	popq	%rbp
	ret
Leh_func_end109:
	.align	2, 0x90
L109_0_set_3 = LBB109_3-LJTI109_0
L109_0_set_18 = LBB109_18-LJTI109_0
L109_0_set_4 = LBB109_4-LJTI109_0
L109_0_set_12 = LBB109_12-LJTI109_0
LJTI109_0:
	.long	L109_0_set_3
	.long	L109_0_set_18
	.long	L109_0_set_3
	.long	L109_0_set_3
	.long	L109_0_set_3
	.long	L109_0_set_18
	.long	L109_0_set_4
	.long	L109_0_set_18
	.long	L109_0_set_18
	.long	L109_0_set_18
	.long	L109_0_set_18
	.long	L109_0_set_18
	.long	L109_0_set_18
	.long	L109_0_set_12

	.align	4, 0x90
_evlist:
Leh_func_begin110:
	pushq	%rbp
Ltmp309:
	movq	%rsp, %rbp
Ltmp310:
	subq	$208, %rsp
Ltmp311:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB110_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB110_3
LBB110_2:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB110_4
LBB110_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1395, %edi
	movl	%edi, -148(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -168(%rbp)
	movq	%r8, %rdx
	movl	-148(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -176(%rbp)
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_evlist
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rax, -144(%rbp)
	leaq	L_.str62(%rip), %rax
	movl	$1396, %esi
	movq	%rdx, %rdi
	movl	%esi, -180(%rbp)
	movq	%rax, %rsi
	movq	-160(%rbp), %r8
	movq	%rdx, -192(%rbp)
	movq	%r8, %rdx
	movl	-180(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -200(%rbp)
	callq	_GC_push_root
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -40(%rbp)
	movl	$1398, %eax
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -204(%rbp)
	callq	_GC_pop_root
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB110_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end110:

	.align	4, 0x90
_apply:
Leh_func_begin111:
	pushq	%rbp
Ltmp312:
	movq	%rsp, %rbp
Ltmp313:
	subq	$416, %rsp
Ltmp314:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	_opt_v(%rip), %eax
	cmpl	$2, %eax
	jle	LBB111_2
	xorb	%al, %al
	leaq	L_.str79(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_dump
	xorb	%cl, %cl
	leaq	L_.str80(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_dump
	xorb	%cl, %cl
	leaq	L_.str78(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
LBB111_2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$12, %ecx
	movl	%ecx, -268(%rbp)
	je	LBB111_32
	movl	-268(%rbp), %eax
	cmpl	$11, %eax
	je	LBB111_31
	movl	-268(%rbp), %eax
	cmpl	$9, %eax
	jne	LBB111_37
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_5
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
LBB111_5:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	leaq	-104(%rbp), %rcx
	movq	%rax, -104(%rbp)
	leaq	L_.str81(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$1409, %esi
	movq	%rcx, %rdi
	movl	%esi, -272(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -280(%rbp)
	movl	-272(%rbp), %ecx
	callq	_GC_push_root
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newContext
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	leaq	-168(%rbp), %rdx
	movq	%rax, -168(%rbp)
	leaq	L_.str82(%rip), %rax
	movl	$1412, %esi
	movq	%rdx, %rdi
	movl	%esi, -284(%rbp)
	movq	%rax, %rsi
	movq	-280(%rbp), %rdx
	movl	-284(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	LBB111_10
LBB111_6:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_8
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB111_9
LBB111_8:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str83(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$35, %rdi
	movq	%rdi, -296(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -304(%rbp)
	movq	-296(%rbp), %rdx
	movq	%rax, -312(%rbp)
	callq	_fwrite
	movq	-312(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	_fdump
	movq	-312(%rbp), %rax
	movq	(%rax), %rcx
	leaq	L_.str84(%rip), %rdx
	movabsq	$4, %rsi
	movq	%rdx, %rdi
	movq	-304(%rbp), %rdx
	movq	%rsi, -320(%rbp)
	movq	%rdx, %rsi
	movq	-320(%rbp), %rdx
	callq	_fwrite
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB111_9:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -328(%rbp)
	callq	_getLong
	movq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-328(%rbp), %rdx
	callq	_arrayAtPut
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB111_10:
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_12
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB111_6
LBB111_12:
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_15
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	jne	LBB111_15
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-176(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
	movq	$0, -48(%rbp)
LBB111_15:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_17
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str85(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$36, %rdi
	movq	%rdi, -336(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -344(%rbp)
	movq	-336(%rbp), %rdx
	movq	%rax, -352(%rbp)
	callq	_fwrite
	movq	-352(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	_fdump
	movq	-352(%rbp), %rax
	movq	(%rax), %rcx
	leaq	L_.str84(%rip), %rdx
	movabsq	$4, %rsi
	movq	%rdx, %rdi
	movq	-344(%rbp), %rdx
	movq	%rsi, -360(%rbp)
	movq	%rdx, %rsi
	movq	-360(%rbp), %rdx
	callq	_fwrite
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB111_17:
	movq	$0, -184(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_cddr
	movq	%rax, -192(%rbp)
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_19
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
LBB111_19:
	jmp	LBB111_23
LBB111_20:
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_22
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movl	_traceDepth(%rip), %ecx
	subl	$1, %ecx
	movq	_traceStack(%rip), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%rax, %rdx
	callq	_arrayAtPut
LBB111_22:
	movq	-24(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_eval
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
LBB111_23:
	movq	-192(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_25
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB111_20
LBB111_25:
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	jne	LBB111_27
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_28
LBB111_27:
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
LBB111_28:
	leaq	-168(%rbp), %rax
	leaq	L_.str82(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$1449, %esi
	movq	%rax, %rdi
	movl	%esi, -364(%rbp)
	movq	%rcx, %rsi
	movq	%rdx, -376(%rbp)
	movl	-364(%rbp), %ecx
	callq	_GC_pop_root
	leaq	-104(%rbp), %rax
	leaq	L_.str81(%rip), %rdx
	movl	$1450, %esi
	movq	%rax, %rdi
	movl	%esi, -380(%rbp)
	movq	%rdx, %rsi
	movq	-376(%rbp), %rdx
	movl	-380(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, %rax
	je	LBB111_30
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
LBB111_30:
	movq	-184(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB111_44
LBB111_31:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_apply
	movq	%rax, -40(%rbp)
	jmp	LBB111_44
LBB111_32:
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_34
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
LBB111_34:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	*%rax
	movq	%rax, -200(%rbp)
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_36
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
LBB111_36:
	movq	-200(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB111_44
LBB111_37:
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movq	_applicators(%rip), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	_arrayAt
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	je	LBB111_43
	leaq	-208(%rbp), %rax
	leaq	-264(%rbp), %rcx
	movq	%rax, -264(%rbp)
	leaq	L_.str64(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$1466, %esi
	movq	%rcx, %rdi
	movl	%esi, -384(%rbp)
	movq	%rax, %rsi
	movl	-384(%rbp), %ecx
	callq	_GC_push_root
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_40
	movl	_traceDepth(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _traceDepth(%rip)
	movq	_traceStack(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
LBB111_40:
	movq	-208(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_apply
	movq	%rax, -208(%rbp)
	leaq	-264(%rbp), %rax
	leaq	L_.str64(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1469, %edi
	movl	%edi, -388(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -400(%rbp)
	movq	%rdx, %rsi
	movq	-400(%rbp), %rdx
	movl	-388(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movl	_opt_g(%rip), %eax
	cmpl	$0, %eax
	je	LBB111_42
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movl	%eax, _traceDepth(%rip)
LBB111_42:
	movq	-208(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB111_44
LBB111_43:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str86(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$22, %rdi
	movq	%rdi, -408(%rbp)
	movq	%rdx, %rdi
	movq	-408(%rbp), %rdx
	movq	%rax, -416(%rbp)
	callq	_fwrite
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -40(%rbp)
LBB111_44:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$416, %rsp
	popq	%rbp
	ret
Leh_func_end111:

	.align	4, 0x90
_length:
Leh_func_begin112:
	pushq	%rbp
Ltmp315:
	movq	%rsp, %rbp
Ltmp316:
	subq	$16, %rsp
Ltmp317:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB112_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB112_3
LBB112_2:
	movl	$0, -16(%rbp)
	jmp	LBB112_4
LBB112_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_length
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -16(%rbp)
LBB112_4:
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end112:

	.align	4, 0x90
_arity:
Leh_func_begin113:
	pushq	%rbp
Ltmp318:
	movq	%rsp, %rbp
Ltmp319:
	subq	$16, %rsp
Ltmp320:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_length
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	leaq	L_.str87(%rip), %rdi
	xorb	%r8b, %r8b
	movl	%ecx, %esi
	movb	%r8b, %al
	callq	_fatal
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end113:

	.align	4, 0x90
_arity1:
Leh_func_begin114:
	pushq	%rbp
Ltmp321:
	movq	%rsp, %rbp
Ltmp322:
	subq	$16, %rsp
Ltmp323:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB114_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB114_4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB114_5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB114_5
LBB114_4:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB114_5:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end114:

	.align	4, 0x90
_arity2:
Leh_func_begin115:
	pushq	%rbp
Ltmp324:
	movq	%rsp, %rbp
Ltmp325:
	subq	$16, %rsp
Ltmp326:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB115_6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB115_6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB115_6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB115_6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB115_7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB115_7
LBB115_6:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB115_7:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end115:

	.align	4, 0x90
_arity3:
Leh_func_begin116:
	pushq	%rbp
Ltmp327:
	movq	%rsp, %rbp
Ltmp328:
	subq	$16, %rsp
Ltmp329:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB116_8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB116_8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB116_8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB116_8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB116_8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB116_8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB116_9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB116_9
LBB116_8:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB116_9:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end116:

	.align	4, 0x90
_subr_if:
Leh_func_begin117:
	pushq	%rbp
Ltmp330:
	movq	%rsp, %rbp
Ltmp331:
	subq	$48, %rsp
Ltmp332:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	cmpq	$0, %rax
	je	LBB117_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -32(%rbp)
	jmp	LBB117_7
LBB117_2:
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cddr
	movq	%rax, -8(%rbp)
	jmp	LBB117_4
LBB117_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
LBB117_4:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB117_6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB117_3
LBB117_6:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB117_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end117:

	.align	4, 0x90
_subr_and:
Leh_func_begin118:
	pushq	%rbp
Ltmp333:
	movq	%rsp, %rbp
Ltmp334:
	subq	$48, %rsp
Ltmp335:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	_s_t(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB118_3
LBB118_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB118_5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB118_3:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB118_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB118_1
LBB118_5:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end118:

	.align	4, 0x90
_subr_or:
Leh_func_begin119:
	pushq	%rbp
Ltmp336:
	movq	%rsp, %rbp
Ltmp337:
	subq	$48, %rsp
Ltmp338:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	jmp	LBB119_3
LBB119_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB119_5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB119_3:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB119_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB119_1
LBB119_5:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end119:

	.align	4, 0x90
_subr_set:
Leh_func_begin120:
	pushq	%rbp
Ltmp339:
	movq	%rsp, %rbp
Ltmp340:
	subq	$112, %rsp
Ltmp341:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB120_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	je	LBB120_3
LBB120_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str88(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$39, %rdi
	movq	%rdi, -88(%rbp)
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx
	movq	%rax, -96(%rbp)
	callq	_fwrite
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB120_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB120_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$9, %ecx
	jne	LBB120_7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	jne	LBB120_7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
LBB120_7:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isGlobal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB120_9
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB120_13
LBB120_9:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)
	callq	_getLong
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	LBB120_11
LBB120_10:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
LBB120_11:
	movq	-72(%rbp), %rax
	movabsq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$-1, %rax
	jne	LBB120_10
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
	movq	%rax, -32(%rbp)
LBB120_13:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end120:

	.align	4, 0x90
_subr_let:
Leh_func_begin121:
	pushq	%rbp
Ltmp342:
	movq	%rsp, %rbp
Ltmp343:
	subq	$176, %rsp
Ltmp344:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rcx
	movq	%rax, -88(%rbp)
	leaq	L_.str89(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$1578, %esi
	movq	%rcx, %rdi
	movl	%esi, -156(%rbp)
	movq	%rax, %rsi
	movl	-156(%rbp), %ecx
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cddr
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	LBB121_9
LBB121_1:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, %rax
	je	LBB121_8
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB121_8
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	LBB121_5
LBB121_4:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
LBB121_5:
	movq	-144(%rbp), %rax
	cmpq	$0, %rax
	je	LBB121_7
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB121_4
LBB121_7:
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)
	callq	_getLong
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-168(%rbp), %rdx
	callq	_arrayAtPut
LBB121_8:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
LBB121_9:
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	je	LBB121_11
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB121_1
LBB121_11:
	movq	$0, -120(%rbp)
	leaq	-88(%rbp), %rax
	leaq	L_.str89(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$1596, %esi
	movq	%rax, %rdi
	movl	%esi, -172(%rbp)
	movq	%rcx, %rsi
	movl	-172(%rbp), %ecx
	callq	_GC_pop_root
	jmp	LBB121_13
LBB121_12:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
LBB121_13:
	movq	-104(%rbp), %rax
	cmpq	$0, %rax
	je	LBB121_15
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB121_12
LBB121_15:
	movq	-120(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	ret
Leh_func_end121:

	.align	4, 0x90
_subr_while:
Leh_func_begin122:
	pushq	%rbp
Ltmp345:
	movq	%rsp, %rbp
Ltmp346:
	subq	$48, %rsp
Ltmp347:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	jmp	LBB122_5
LBB122_1:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -48(%rbp)
	jmp	LBB122_3
LBB122_2:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB122_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB122_5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB122_2
LBB122_5:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	cmpq	$0, %rax
	jne	LBB122_1
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end122:

	.align	4, 0x90
_subr_quote:
Leh_func_begin123:
	pushq	%rbp
Ltmp348:
	movq	%rsp, %rbp
Ltmp349:
	subq	$32, %rsp
Ltmp350:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end123:

	.align	4, 0x90
_subr_lambda:
Leh_func_begin124:
	pushq	%rbp
Ltmp351:
	movq	%rsp, %rbp
Ltmp352:
	subq	$32, %rsp
Ltmp353:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newExpr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end124:

	.align	4, 0x90
_subr_define:
Leh_func_begin125:
	pushq	%rbp
Ltmp354:
	movq	%rsp, %rbp
Ltmp355:
	subq	$80, %rsp
Ltmp356:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB125_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$13, %ecx
	je	LBB125_3
LBB125_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str90(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$32, %rdi
	movq	%rdi, -64(%rbp)
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, -72(%rbp)
	callq	_fwrite
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB125_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_eval
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	je	LBB125_6
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$10, %ecx
	jne	LBB125_6
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
LBB125_6:
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	je	LBB125_10
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$9, %ecx
	jne	LBB125_10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	jne	LBB125_10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
LBB125_10:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end125:

	.align	4, 0x90
_subr_definedP:
Leh_func_begin126:
	pushq	%rbp
Ltmp357:
	movq	%rsp, %rbp
Ltmp358:
	subq	$48, %rsp
Ltmp359:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB126_2
	movq	_globals(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB126_2:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_findVariable
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end126:

	.align	4, 0x90
_subr_com:
Leh_func_begin127:
	pushq	%rbp
Ltmp360:
	movq	%rsp, %rbp
Ltmp361:
	subq	$64, %rsp
Ltmp362:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str91(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB127_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movabsq	$-1, %rcx
	xorq	%rcx, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB127_3
LBB127_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	xorb	%dl, %dl
	leaq	L_.str92(%rip), %rsi
	leaq	L_.str91(%rip), %rdi
	movq	%rdi, -48(%rbp)
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx
	movb	%dl, -49(%rbp)
	movq	%rcx, %rdx
	movb	-49(%rbp), %cl
	movq	%rax, -64(%rbp)
	movb	%cl, %al
	callq	_fprintf
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB127_3:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end127:

	.align	4, 0x90
_subr_bitand:
Leh_func_begin128:
	pushq	%rbp
Ltmp363:
	movq	%rsp, %rbp
Ltmp364:
	subq	$64, %rsp
Ltmp365:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str93(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB128_3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB128_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	andq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB128_7
LBB128_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str92(%rip), %rdx
	leaq	L_.str93(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB128_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB128_6
LBB128_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB128_6:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB128_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end128:

	.align	4, 0x90
_subr_bitor:
Leh_func_begin129:
	pushq	%rbp
Ltmp366:
	movq	%rsp, %rbp
Ltmp367:
	subq	$64, %rsp
Ltmp368:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str94(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB129_3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB129_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	orq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB129_7
LBB129_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str92(%rip), %rdx
	leaq	L_.str94(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB129_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB129_6
LBB129_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB129_6:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB129_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end129:

	.align	4, 0x90
_subr_bitxor:
Leh_func_begin130:
	pushq	%rbp
Ltmp369:
	movq	%rsp, %rbp
Ltmp370:
	subq	$64, %rsp
Ltmp371:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str95(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB130_3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB130_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB130_7
LBB130_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str92(%rip), %rdx
	leaq	L_.str95(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB130_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB130_6
LBB130_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB130_6:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB130_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end130:

	.align	4, 0x90
_subr_shl:
Leh_func_begin131:
	pushq	%rbp
Ltmp372:
	movq	%rsp, %rbp
Ltmp373:
	subq	$64, %rsp
Ltmp374:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str96(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB131_3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB131_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movl	%eax, %eax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	shlq	%cl, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB131_7
LBB131_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str92(%rip), %rdx
	leaq	L_.str96(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB131_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB131_6
LBB131_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB131_6:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB131_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end131:

	.align	4, 0x90
_subr_shr:
Leh_func_begin132:
	pushq	%rbp
Ltmp375:
	movq	%rsp, %rbp
Ltmp376:
	subq	$64, %rsp
Ltmp377:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str97(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB132_3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB132_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movl	%eax, %eax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	sarq	%cl, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB132_7
LBB132_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str92(%rip), %rdx
	leaq	L_.str97(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB132_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB132_6
LBB132_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB132_6:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB132_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end132:

	.align	4, 0x90
_subr_add:
Leh_func_begin133:
	pushq	%rbp
Ltmp378:
	movq	%rsp, %rbp
Ltmp379:
	subq	$96, %rsp
Ltmp380:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str98(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB133_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB133_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB133_18
LBB133_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB133_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB133_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB133_18
LBB133_6:
	jmp	LBB133_14
LBB133_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB133_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB133_14
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB133_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB133_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB133_18
LBB133_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB133_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB133_18
LBB133_14:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str99(%rip), %rdx
	leaq	L_.str98(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)
	movq	%rdx, %rsi
	movq	-88(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isNumeric
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB133_16
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB133_17
LBB133_16:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB133_17:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB133_18:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end133:

	.align	4, 0x90
_isNumeric:
Leh_func_begin134:
	pushq	%rbp
Ltmp381:
	movq	%rsp, %rbp
Ltmp382:
	subq	$32, %rsp
Ltmp383:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB134_3
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB134_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB134_4
LBB134_3:
	movl	$1, -16(%rbp)
	jmp	LBB134_5
LBB134_4:
	movl	$0, -16(%rbp)
LBB134_5:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end134:

	.align	4, 0x90
_subr_mul:
Leh_func_begin135:
	pushq	%rbp
Ltmp384:
	movq	%rsp, %rbp
Ltmp385:
	subq	$96, %rsp
Ltmp386:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str56(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB135_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB135_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	imulq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB135_18
LBB135_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB135_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB135_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB135_18
LBB135_6:
	jmp	LBB135_14
LBB135_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB135_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB135_14
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB135_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB135_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB135_18
LBB135_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB135_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB135_18
LBB135_14:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str99(%rip), %rdx
	leaq	L_.str56(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)
	movq	%rdx, %rsi
	movq	-88(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isNumeric
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB135_16
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB135_17
LBB135_16:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB135_17:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB135_18:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end135:

	.align	4, 0x90
_subr_div:
Leh_func_begin136:
	pushq	%rbp
Ltmp387:
	movq	%rsp, %rbp
Ltmp388:
	subq	$96, %rsp
Ltmp389:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str100(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB136_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB136_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	%rcx, %rax
	cqto
	movq	-64(%rbp), %rcx
	idivq	%rcx
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB136_18
LBB136_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB136_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB136_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB136_18
LBB136_6:
	jmp	LBB136_14
LBB136_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB136_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB136_14
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB136_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB136_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getDouble
	movsd	-80(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB136_18
LBB136_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB136_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -88(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-88(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB136_18
LBB136_14:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str99(%rip), %rdx
	leaq	L_.str100(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)
	movq	%rdx, %rsi
	movq	-96(%rbp), %rdx
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isNumeric
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB136_16
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB136_17
LBB136_16:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB136_17:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB136_18:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end136:

	.align	4, 0x90
_subr_sub:
Leh_func_begin137:
	pushq	%rbp
Ltmp390:
	movq	%rsp, %rbp
Ltmp391:
	subq	$112, %rsp
Ltmp392:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB137_3
LBB137_2:
	movq	-8(%rbp), %rax
	leaq	L_.str101(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB137_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB137_11
LBB137_5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB137_7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movabsq	$0, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB137_10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_10:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str102(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$25, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB137_11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB137_14
	movq	-8(%rbp), %rax
	leaq	L_.str101(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB137_14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB137_20
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB137_17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)
	callq	_getLong
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_17:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_20
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB137_20
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getDouble
	movsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_20:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_28
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB137_28
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB137_25
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB137_25
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -88(%rbp)
	callq	_getDouble
	movsd	-88(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_25:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB137_27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-96(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB137_29
LBB137_27:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB137_28:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str102(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$25, %rdi
	movq	%rdi, -104(%rbp)
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx
	movq	%rax, -112(%rbp)
	callq	_fwrite
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB137_29:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end137:

	.align	4, 0x90
_subr_mod:
Leh_func_begin138:
	pushq	%rbp
Ltmp393:
	movq	%rsp, %rbp
Ltmp394:
	subq	$96, %rsp
Ltmp395:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB138_3
LBB138_2:
	movq	-8(%rbp), %rax
	leaq	L_.str103(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB138_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB138_6
LBB138_5:
	movq	-8(%rbp), %rax
	leaq	L_.str103(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB138_6:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB138_9
	movq	-8(%rbp), %rax
	leaq	L_.str103(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity
LBB138_9:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB138_16
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB138_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	%rcx, %rax
	cqto
	movq	-64(%rbp), %rcx
	idivq	%rcx
	movq	%rdx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB138_27
LBB138_12:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB138_15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-72(%rbp), %xmm1
	callq	_fmod
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB138_27
LBB138_15:
	jmp	LBB138_23
LBB138_16:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB138_23
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB138_21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB138_21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getDouble
	movsd	-80(%rbp), %xmm1
	callq	_fmod
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB138_27
LBB138_21:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB138_23
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -88(%rbp)
	callq	_getDouble
	movsd	-88(%rbp), %xmm1
	callq	_fmod
	callq	_newDouble
	movq	%rax, -32(%rbp)
	jmp	LBB138_27
LBB138_23:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	xorb	%cl, %cl
	leaq	L_.str104(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movb	%cl, %al
	callq	_fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isNumeric
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB138_25
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	jmp	LBB138_26
LBB138_25:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
LBB138_26:
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB138_27:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end138:

	.align	4, 0x90
_subr_lt:
Leh_func_begin139:
	pushq	%rbp
Ltmp396:
	movq	%rsp, %rbp
Ltmp397:
	subq	$112, %rsp
Ltmp398:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str105(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB139_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB139_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB139_16
LBB139_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB139_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB139_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB139_16
LBB139_6:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB139_15
LBB139_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB139_15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB139_15
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB139_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB139_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB139_16
LBB139_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB139_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB139_16
LBB139_14:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB139_15:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	xorb	%dl, %dl
	leaq	L_.str99(%rip), %rsi
	leaq	L_.str105(%rip), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx
	movb	%dl, -89(%rbp)
	movq	%rcx, %rdx
	movb	-89(%rbp), %cl
	movq	%rax, -104(%rbp)
	movb	%cl, %al
	callq	_fprintf
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB139_16:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end139:

	.align	4, 0x90
_subr_le:
Leh_func_begin140:
	pushq	%rbp
Ltmp399:
	movq	%rsp, %rbp
Ltmp400:
	subq	$112, %rsp
Ltmp401:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str106(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB140_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB140_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB140_16
LBB140_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB140_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB140_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB140_16
LBB140_6:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB140_15
LBB140_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB140_15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB140_15
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB140_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB140_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB140_16
LBB140_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB140_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB140_16
LBB140_14:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB140_15:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	xorb	%dl, %dl
	leaq	L_.str99(%rip), %rsi
	leaq	L_.str106(%rip), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx
	movb	%dl, -89(%rbp)
	movq	%rcx, %rdx
	movb	-89(%rbp), %cl
	movq	%rax, -104(%rbp)
	movb	%cl, %al
	callq	_fprintf
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB140_16:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end140:

	.align	4, 0x90
_subr_ge:
Leh_func_begin141:
	pushq	%rbp
Ltmp402:
	movq	%rsp, %rbp
Ltmp403:
	subq	$112, %rsp
Ltmp404:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str107(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB141_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB141_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB141_16
LBB141_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB141_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB141_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB141_16
LBB141_6:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB141_15
LBB141_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB141_15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB141_15
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB141_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB141_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB141_16
LBB141_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB141_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB141_16
LBB141_14:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB141_15:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	xorb	%dl, %dl
	leaq	L_.str99(%rip), %rsi
	leaq	L_.str107(%rip), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx
	movb	%dl, -89(%rbp)
	movq	%rcx, %rdx
	movb	-89(%rbp), %cl
	movq	%rax, -104(%rbp)
	movb	%cl, %al
	callq	_fprintf
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB141_16:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end141:

	.align	4, 0x90
_subr_gt:
Leh_func_begin142:
	pushq	%rbp
Ltmp405:
	movq	%rsp, %rbp
Ltmp406:
	subq	$112, %rsp
Ltmp407:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str108(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB142_7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB142_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB142_16
LBB142_3:
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB142_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB142_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)
	callq	_getDouble
	movsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB142_16
LBB142_6:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB142_15
LBB142_7:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB142_15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB142_15
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB142_12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB142_12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getDouble
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB142_16
LBB142_12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB142_14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	jmp	LBB142_16
LBB142_14:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB142_15:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	xorb	%dl, %dl
	leaq	L_.str99(%rip), %rsi
	leaq	L_.str108(%rip), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx
	movb	%dl, -89(%rbp)
	movq	%rcx, %rdx
	movb	-89(%rbp), %cl
	movq	%rax, -104(%rbp)
	movb	%cl, %al
	callq	_fprintf
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
LBB142_16:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end142:

	.align	4, 0x90
_equal:
Leh_func_begin143:
	pushq	%rbp
Ltmp408:
	movq	%rsp, %rbp
Ltmp409:
	subq	$80, %rsp
Ltmp410:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	movl	%ecx, -36(%rbp)
	je	LBB143_9
	movl	-36(%rbp), %eax
	cmpl	$3, %eax
	je	LBB143_5
	movl	-36(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB143_15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	movl	%ecx, -40(%rbp)
	je	LBB143_3
	movl	-40(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB143_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)
	callq	_getLong
	movq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB143_4
LBB143_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)
	callq	_getDouble
	movsd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
LBB143_4:
	jmp	LBB143_16
LBB143_5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	movl	%ecx, -60(%rbp)
	je	LBB143_7
	movl	-60(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB143_8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB143_8
LBB143_7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)
	callq	_getDouble
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
LBB143_8:
	jmp	LBB143_16
LBB143_9:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB143_13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB143_13
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB143_13
	movl	$1, -28(%rbp)
	jmp	LBB143_14
LBB143_13:
	movl	$0, -28(%rbp)
LBB143_14:
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	LBB143_16
LBB143_15:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
LBB143_16:
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end143:

	.align	4, 0x90
_subr_eq:
Leh_func_begin144:
	pushq	%rbp
Ltmp411:
	movq	%rsp, %rbp
Ltmp412:
	subq	$48, %rsp
Ltmp413:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str54(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_equal
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end144:

	.align	4, 0x90
_subr_ne:
Leh_func_begin145:
	pushq	%rbp
Ltmp414:
	movq	%rsp, %rbp
Ltmp415:
	subq	$48, %rsp
Ltmp416:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str109(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_equal
	movl	%eax, %ecx
	cmpl	$0, %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, %edi
	callq	_newBool
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end145:

	.align	4, 0x90
_subr_exit:
Leh_func_begin146:
	pushq	%rbp
Ltmp417:
	movq	%rsp, %rbp
Ltmp418:
	subq	$48, %rsp
Ltmp419:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB146_2
	movl	$1, %eax
	movl	%eax, %edi
	callq	_profilingDisable
LBB146_2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB146_4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -28(%rbp)
	jmp	LBB146_5
LBB146_4:
	movl	$0, -28(%rbp)
LBB146_5:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_exit
Leh_func_end146:

	.align	4, 0x90
_subr_abort:
Leh_func_begin147:
	pushq	%rbp
Ltmp420:
	movq	%rsp, %rbp
Ltmp421:
	subq	$32, %rsp
Ltmp422:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end147:

	.align	4, 0x90
_subr_popen:
Leh_func_begin148:
	pushq	%rbp
Ltmp423:
	movq	%rsp, %rbp
Ltmp424:
	subq	$64, %rsp
Ltmp425:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB148_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB148_3
LBB148_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str110(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB148_3:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	leaq	L_.str111(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_popen
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB148_5
	movq	$0, -32(%rbp)
	jmp	LBB148_6
LBB148_5:
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
LBB148_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end148:

	.align	4, 0x90
_subr_pclose:
Leh_func_begin149:
	pushq	%rbp
Ltmp426:
	movq	%rsp, %rbp
Ltmp427:
	subq	$64, %rsp
Ltmp428:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB149_2
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str112(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB149_2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, %rdi
	callq	_pclose
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end149:

	.align	4, 0x90
_subr_freadstr:
Leh_func_begin150:
	pushq	%rbp
Ltmp429:
	movq	%rsp, %rbp
Ltmp430:
	subq	$1296, %rsp
Ltmp431:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str113(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1925, %edi
	movl	%edi, -1212(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -1224(%rbp)
	movq	%rax, %rsi
	movq	-1224(%rbp), %rdx
	movl	-1212(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB150_2
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str114(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$31, %rdi
	movq	%rdi, -1232(%rbp)
	movq	%rdx, %rdi
	movq	-1232(%rbp), %rdx
	movq	%rax, -1240(%rbp)
	callq	_fwrite
	movq	-40(%rbp), %rax
	movq	-1240(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB150_2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -96(%rbp)
	leaq	-88(%rbp), %rax
	leaq	L_.str113(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$1928, %edi
	movl	%edi, -1244(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -1256(%rbp)
	movq	%rdx, %rsi
	movq	-1256(%rbp), %rdx
	movl	-1244(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	leaq	L_.str115(%rip), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -104(%rbp)
	jmp	LBB150_5
LBB150_3:
	leaq	-1128(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	callq	_fgetws
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	movq	%rax, %rcx
	xorb	%dl, %dl
	leaq	L_.str116(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, %al
	callq	_printf
	movq	-1136(%rbp), %rax
	cmpq	$0, %rax
	je	LBB150_5
	movq	-104(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-1128(%rbp), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -1152(%rbp)
	leaq	-1152(%rbp), %rax
	leaq	-1200(%rbp), %rdx
	movq	%rax, -1200(%rbp)
	leaq	L_.str16(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$1937, %edi
	movl	%edi, -1260(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -1272(%rbp)
	movq	%rax, %rsi
	movq	-1272(%rbp), %r8
	movq	%rdx, -1280(%rbp)
	movq	%r8, %rdx
	movl	-1260(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -1288(%rbp)
	callq	_GC_push_root
	movq	-1152(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movl	$1938, %eax
	movq	-1280(%rbp), %rdi
	movq	-1288(%rbp), %rsi
	movq	-1272(%rbp), %rdx
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-1208(%rbp), %rax
	movq	%rax, -104(%rbp)
LBB150_5:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_feof
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB150_3
	xorb	%al, %al
	leaq	L_.str117(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1296, %rsp
	popq	%rbp
	ret
Leh_func_end150:

	.align	4, 0x90
_subr_open:
Leh_func_begin151:
	pushq	%rbp
Ltmp432:
	movq	%rsp, %rbp
Ltmp433:
	subq	$80, %rsp
Ltmp434:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB151_2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB151_3
LBB151_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str110(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -64(%rbp)
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, -72(%rbp)
	callq	_fwrite
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB151_3:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	leaq	L_.str118(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fopen
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	je	LBB151_5
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
LBB151_5:
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	je	LBB151_7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB151_8
LBB151_7:
	movq	$0, -32(%rbp)
LBB151_8:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end151:

	.align	4, 0x90
_subr_close:
Leh_func_begin152:
	pushq	%rbp
Ltmp435:
	movq	%rsp, %rbp
Ltmp436:
	subq	$64, %rsp
Ltmp437:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB152_2
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str119(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$29, %rdi
	movq	%rdi, -48(%rbp)
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	callq	_fwrite
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB152_2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, %rdi
	callq	_fclose
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end152:

	.align	4, 0x90
_subr_getc:
Leh_func_begin153:
	pushq	%rbp
Ltmp438:
	movq	%rsp, %rbp
Ltmp439:
	subq	$80, %rsp
Ltmp440:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB153_2
	movq	_input(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB153_2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB153_4
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str120(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$28, %rdi
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx
	movq	%rax, -80(%rbp)
	callq	_fwrite
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB153_4:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	$-1, %ecx
	je	LBB153_6
	movl	-60(%rbp), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB153_7
LBB153_6:
	movq	$0, -32(%rbp)
LBB153_7:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end153:

	.align	4, 0x90
_subr_read:
Leh_func_begin154:
	pushq	%rbp
Ltmp441:
	movq	%rsp, %rbp
Ltmp442:
	subq	$240, %rsp
Ltmp443:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB154_4
	leaq	L_.str121(%rip), %rax
	movq	%rax, %rdi
	callq	_beginSource
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -184(%rbp)
	callq	_endSource
	movq	-184(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	LBB154_3
	movq	$0, -184(%rbp)
LBB154_3:
	movq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB154_14
LBB154_4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB154_6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB154_7
LBB154_6:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str122(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -192(%rbp)
	movq	%rdx, %rdi
	movq	-192(%rbp), %rdx
	movq	%rax, -200(%rbp)
	callq	_fwrite
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB154_7:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	leaq	L_.str111(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fopen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB154_9
	movq	$0, -32(%rbp)
	jmp	LBB154_14
LBB154_9:
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_beginSource
	movq	_currentSource(%rip), %rax
	movabsq	$0, %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	leaq	-120(%rbp), %rdx
	movq	%rax, -120(%rbp)
	leaq	L_.str22(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2014, %edi
	movl	%edi, -204(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -216(%rbp)
	movq	%rax, %rsi
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rax, -176(%rbp)
	leaq	L_.str9(%rip), %rax
	movl	$2015, %esi
	movq	%rdx, %rdi
	movl	%esi, -220(%rbp)
	movq	%rax, %rsi
	movq	-216(%rbp), %rdx
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
LBB154_10:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	je	LBB154_13
	movq	_currentSource(%rip), %rax
	movq	-128(%rbp), %rcx
	movabsq	$0, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	_newPairFrom
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB154_13
	jmp	LBB154_10
LBB154_13:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-176(%rbp), %rax
	leaq	L_.str9(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$2022, %esi
	movq	%rax, %rdi
	movl	%esi, -224(%rbp)
	movq	%rcx, %rsi
	movq	%rdx, -232(%rbp)
	movl	-224(%rbp), %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_fclose
	leaq	-120(%rbp), %rax
	leaq	L_.str22(%rip), %rdx
	movl	$2023, %esi
	movq	%rax, %rdi
	movl	%esi, -236(%rbp)
	movq	%rdx, %rsi
	movq	-232(%rbp), %rdx
	movl	-236(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	callq	_endSource
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB154_14:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	ret
Leh_func_end154:

	.align	4, 0x90
_subr_expand:
Leh_func_begin155:
	pushq	%rbp
Ltmp444:
	movq	%rsp, %rbp
Ltmp445:
	subq	$128, %rsp
Ltmp446:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str123(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2030, %edi
	movl	%edi, -100(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB155_2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
LBB155_2:
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_expand
	movq	%rax, -40(%rbp)
	leaq	-88(%rbp), %rax
	leaq	L_.str123(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$2033, %edi
	movl	%edi, -116(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	ret
Leh_func_end155:

	.align	4, 0x90
_subr_encode:
Leh_func_begin156:
	pushq	%rbp
Ltmp447:
	movq	%rsp, %rbp
Ltmp448:
	subq	$128, %rsp
Ltmp449:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str123(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2039, %edi
	movl	%edi, -100(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB156_2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
LBB156_2:
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_encode
	movq	%rax, -40(%rbp)
	leaq	-88(%rbp), %rax
	leaq	L_.str123(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$2042, %edi
	movl	%edi, -116(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	ret
Leh_func_end156:

	.align	4, 0x90
_subr_eval:
Leh_func_begin157:
	pushq	%rbp
Ltmp450:
	movq	%rsp, %rbp
Ltmp451:
	subq	$288, %rsp
Ltmp452:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, -88(%rbp)
	leaq	L_.str123(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2048, %edi
	movl	%edi, -204(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -216(%rbp)
	movq	%rax, %rsi
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB157_2
	movq	_globals(%rip), %rax
	movq	8(%rax), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_newEnv
	movq	%rax, -96(%rbp)
LBB157_2:
	leaq	-96(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	%rax, -144(%rbp)
	leaq	L_.str124(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$2050, %esi
	movq	%rcx, %rdi
	movl	%esi, -220(%rbp)
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)
	movl	-220(%rbp), %r8d
	movq	%rcx, -240(%rbp)
	movl	%r8d, %ecx
	movq	%rax, -248(%rbp)
	callq	_GC_push_root
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_expand
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_encode
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newBaseContext
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rax
	leaq	-200(%rbp), %rdx
	movq	%rax, -200(%rbp)
	leaq	L_.str125(%rip), %rax
	movl	$2053, %esi
	movq	%rdx, %rdi
	movl	%esi, -252(%rbp)
	movq	%rax, %rsi
	movq	-232(%rbp), %r8
	movq	%rdx, -264(%rbp)
	movq	%r8, %rdx
	movl	-252(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -272(%rbp)
	callq	_GC_push_root
	movq	-152(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_eval
	movq	%rax, -40(%rbp)
	movl	$2054, %eax
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-232(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -276(%rbp)
	callq	_GC_pop_root
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movq	-232(%rbp), %rdx
	movl	-276(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	leaq	-88(%rbp), %rax
	leaq	L_.str123(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-232(%rbp), %rdx
	movl	-276(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$288, %rsp
	popq	%rbp
	ret
Leh_func_end157:

	.align	4, 0x90
_subr_apply:
Leh_func_begin158:
	pushq	%rbp
Ltmp453:
	movq	%rsp, %rbp
Ltmp454:
	subq	$48, %rsp
Ltmp455:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_apply
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end158:

	.align	4, 0x90
_subr_type_of:
Leh_func_begin159:
	pushq	%rbp
Ltmp456:
	movq	%rsp, %rbp
Ltmp457:
	subq	$32, %rsp
Ltmp458:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str126(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	movl	%ecx, %ecx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end159:

	.align	4, 0x90
_subr_warn:
Leh_func_begin160:
	pushq	%rbp
Ltmp459:
	movq	%rsp, %rbp
Ltmp460:
	subq	$32, %rsp
Ltmp461:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB160_2
LBB160_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	___stderrp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movl	$0, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_doprint
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB160_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB160_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB160_1
LBB160_4:
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end160:

	.align	4, 0x90
_subr_print:
Leh_func_begin161:
	pushq	%rbp
Ltmp462:
	movq	%rsp, %rbp
Ltmp463:
	subq	$32, %rsp
Ltmp464:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB161_2
LBB161_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_print
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB161_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB161_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB161_1
LBB161_4:
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end161:

	.align	4, 0x90
_subr_dump:
Leh_func_begin162:
	pushq	%rbp
Ltmp465:
	movq	%rsp, %rbp
Ltmp466:
	subq	$32, %rsp
Ltmp467:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB162_2
LBB162_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_dump
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB162_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB162_4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB162_1
LBB162_4:
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end162:

	.align	4, 0x90
_subr_format:
Leh_func_begin163:
	pushq	%rbp
Ltmp468:
	movq	%rsp, %rbp
Ltmp469:
	subq	$128, %rsp
Ltmp470:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str127(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB163_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB163_3
LBB163_2:
	leaq	L_.str128(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB163_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	movl	%ecx, %ecx
	movq	%rcx, -112(%rbp)
	ja	LBB163_8
	leaq	LJTI163_0(%rip), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB163_4:
	jmp	LBB163_9
LBB163_5:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -64(%rbp)
	jmp	LBB163_9
LBB163_6:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	LBB163_9
LBB163_7:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	LBB163_9
LBB163_8:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
LBB163_9:
	movq	$100, -72(%rbp)
	movq	$0, -96(%rbp)
	movq	-72(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB163_11
	movq	$0, -32(%rbp)
	jmp	LBB163_24
LBB163_11:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	xorb	%dil, %dil
	movb	%dil, -113(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rcx, %rsi
	movq	-128(%rbp), %rcx
	movb	-113(%rbp), %al
	callq	_swprintf
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	-100(%rbp), %ecx
	cmpl	$0, %ecx
	jl	LBB163_14
	movl	-100(%rbp), %eax
	movslq	%eax, %rax
	movq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB163_14
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB163_23
LBB163_14:
	movl	-100(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB163_17
	callq	___error
	movl	(%rax), %eax
	cmpl	$92, %eax
	jne	LBB163_17
	movq	$0, -32(%rbp)
	jmp	LBB163_24
LBB163_17:
	movl	-100(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB163_19
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rax
	movq	%rax, -72(%rbp)
	jmp	LBB163_20
LBB163_19:
	movq	-72(%rbp), %rax
	movabsq	$2, %rcx
	imulq	%rcx, %rax
	movq	%rax, -72(%rbp)
LBB163_20:
	movq	-72(%rbp), %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB163_22
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB163_23
LBB163_22:
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	LBB163_11
LBB163_23:
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB163_24:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	ret
Leh_func_end163:
	.align	2, 0x90
L163_0_set_4 = LBB163_4-LJTI163_0
L163_0_set_8 = LBB163_8-LJTI163_0
L163_0_set_5 = LBB163_5-LJTI163_0
L163_0_set_6 = LBB163_6-LJTI163_0
L163_0_set_7 = LBB163_7-LJTI163_0
LJTI163_0:
	.long	L163_0_set_4
	.long	L163_0_set_8
	.long	L163_0_set_5
	.long	L163_0_set_8
	.long	L163_0_set_6
	.long	L163_0_set_7

	.align	4, 0x90
_subr_form:
Leh_func_begin164:
	pushq	%rbp
Ltmp471:
	movq	%rsp, %rbp
Ltmp472:
	subq	$48, %rsp
Ltmp473:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)
	callq	_car
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	callq	_newForm
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end164:

	.align	4, 0x90
_subr_fixedP:
Leh_func_begin165:
	pushq	%rbp
Ltmp474:
	movq	%rsp, %rbp
Ltmp475:
	subq	$48, %rsp
Ltmp476:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str129(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB165_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$11, %ecx
	jne	LBB165_3
	movl	$1, -28(%rbp)
	jmp	LBB165_4
LBB165_3:
	movl	$0, -28(%rbp)
LBB165_4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end165:

	.align	4, 0x90
_subr_cons:
Leh_func_begin166:
	pushq	%rbp
Ltmp477:
	movq	%rsp, %rbp
Ltmp478:
	subq	$48, %rsp
Ltmp479:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cadr
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newPair
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end166:

	.align	4, 0x90
_subr_pairP:
Leh_func_begin167:
	pushq	%rbp
Ltmp480:
	movq	%rsp, %rbp
Ltmp481:
	subq	$48, %rsp
Ltmp482:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str130(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB167_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB167_3
	movl	$1, -28(%rbp)
	jmp	LBB167_4
LBB167_3:
	movl	$0, -28(%rbp)
LBB167_4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end167:

	.align	4, 0x90
_subr_car:
Leh_func_begin168:
	pushq	%rbp
Ltmp483:
	movq	%rsp, %rbp
Ltmp484:
	subq	$32, %rsp
Ltmp485:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str131(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end168:

	.align	4, 0x90
_subr_set_car:
Leh_func_begin169:
	pushq	%rbp
Ltmp486:
	movq	%rsp, %rbp
Ltmp487:
	subq	$48, %rsp
Ltmp488:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str132(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB169_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB169_3
LBB169_2:
	movq	$0, -32(%rbp)
	jmp	LBB169_4
LBB169_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
LBB169_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end169:

	.align	4, 0x90
_subr_cdr:
Leh_func_begin170:
	pushq	%rbp
Ltmp489:
	movq	%rsp, %rbp
Ltmp490:
	subq	$32, %rsp
Ltmp491:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str133(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end170:

	.align	4, 0x90
_subr_set_cdr:
Leh_func_begin171:
	pushq	%rbp
Ltmp492:
	movq	%rsp, %rbp
Ltmp493:
	subq	$48, %rsp
Ltmp494:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str134(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB171_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB171_3
LBB171_2:
	movq	$0, -32(%rbp)
	jmp	LBB171_4
LBB171_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
LBB171_4:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end171:

	.align	4, 0x90
_subr_formP:
Leh_func_begin172:
	pushq	%rbp
Ltmp495:
	movq	%rsp, %rbp
Ltmp496:
	subq	$48, %rsp
Ltmp497:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str135(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB172_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$10, %ecx
	jne	LBB172_3
	movl	$1, -28(%rbp)
	jmp	LBB172_4
LBB172_3:
	movl	$0, -28(%rbp)
LBB172_4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end172:

	.align	4, 0x90
_subr_symbolP:
Leh_func_begin173:
	pushq	%rbp
Ltmp498:
	movq	%rsp, %rbp
Ltmp499:
	subq	$48, %rsp
Ltmp500:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str136(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB173_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB173_3
	movl	$1, -28(%rbp)
	jmp	LBB173_4
LBB173_3:
	movl	$0, -28(%rbp)
LBB173_4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end173:

	.align	4, 0x90
_subr_stringP:
Leh_func_begin174:
	pushq	%rbp
Ltmp501:
	movq	%rsp, %rbp
Ltmp502:
	subq	$48, %rsp
Ltmp503:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str137(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	je	LBB174_3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB174_3
	movl	$1, -28(%rbp)
	jmp	LBB174_4
LBB174_3:
	movl	$0, -28(%rbp)
LBB174_4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	_newBool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end174:

	.align	4, 0x90
_subr_string:
Leh_func_begin175:
	pushq	%rbp
Ltmp504:
	movq	%rsp, %rbp
Ltmp505:
	subq	$64, %rsp
Ltmp506:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB175_2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -36(%rbp)
	jmp	LBB175_3
LBB175_2:
	movl	$0, -36(%rbp)
LBB175_3:
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	__newString
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end175:

	.align	4, 0x90
_subr_string_length:
Leh_func_begin176:
	pushq	%rbp
Ltmp507:
	movq	%rsp, %rbp
Ltmp508:
	subq	$64, %rsp
Ltmp509:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str138(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB176_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB176_3
LBB176_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str139(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$36, %rdi
	movq	%rdi, -48(%rbp)
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	callq	_fwrite
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB176_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_stringLength
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end176:

	.align	4, 0x90
_subr_string_at:
Leh_func_begin177:
	pushq	%rbp
Ltmp510:
	movq	%rsp, %rbp
Ltmp511:
	subq	$80, %rsp
Ltmp512:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str140(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB177_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB177_3
LBB177_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str141(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$32, %rdi
	movq	%rdi, -64(%rbp)
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, -72(%rbp)
	callq	_fwrite
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB177_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB177_5
	movq	$0, -32(%rbp)
	jmp	LBB177_9
LBB177_5:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB177_8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_stringLength
	movl	%eax, %ecx
	movl	-52(%rbp), %edx
	cmpl	%edx, %ecx
	jle	LBB177_8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB177_9
LBB177_8:
	movq	$0, -32(%rbp)
LBB177_9:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end177:

	.align	4, 0x90
_subr_set_string_at:
Leh_func_begin178:
	pushq	%rbp
Ltmp513:
	movq	%rsp, %rbp
Ltmp514:
	subq	$128, %rsp
Ltmp515:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str142(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB178_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB178_3
LBB178_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str143(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$36, %rdi
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx
	movq	%rax, -80(%rbp)
	callq	_fwrite
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB178_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB178_5
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str144(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$34, %rdi
	movq	%rdi, -88(%rbp)
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx
	movq	%rax, -96(%rbp)
	callq	_fwrite
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB178_5:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB178_7
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str145(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$34, %rdi
	movq	%rdi, -104(%rbp)
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx
	movq	%rax, -112(%rbp)
	callq	_fwrite
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB178_7:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB178_9
	movq	$0, -32(%rbp)
	jmp	LBB178_17
LBB178_9:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_stringLength
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	cmpl	%edx, %ecx
	jg	LBB178_16
	movl	-64(%rbp), %eax
	cmpl	$1, %eax
	jg	LBB178_12
	movl	$2, -64(%rbp)
LBB178_12:
	jmp	LBB178_14
LBB178_13:
	movl	-64(%rbp), %eax
	imull	$2, %eax, %eax
	movl	%eax, -64(%rbp)
LBB178_14:
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	LBB178_13
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rax
	movabsq	$4, %rcx
	imulq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_GC_realloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-64(%rbp), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
LBB178_16:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)
	callq	_getLong
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-120(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB178_17:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	ret
Leh_func_end178:

	.align	4, 0x90
_subr_string_compare:
Leh_func_begin179:
	pushq	%rbp
Ltmp516:
	movq	%rsp, %rbp
Ltmp517:
	subq	$80, %rsp
Ltmp518:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str146(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB179_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB179_3
LBB179_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str147(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$37, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB179_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB179_5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB179_6
LBB179_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str147(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$37, %rdi
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx
	movq	%rax, -80(%rbp)
	callq	_fwrite
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB179_6:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end179:

	.align	4, 0x90
_subr_symbol_compare:
Leh_func_begin180:
	pushq	%rbp
Ltmp519:
	movq	%rsp, %rbp
Ltmp520:
	subq	$80, %rsp
Ltmp521:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str148(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB180_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	je	LBB180_3
LBB180_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str149(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$37, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB180_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	je	LBB180_5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	je	LBB180_6
LBB180_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str149(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$37, %rdi
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx
	movq	%rax, -80(%rbp)
	callq	_fwrite
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB180_6:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end180:

	.align	4, 0x90
_subr_string_symbol:
Leh_func_begin181:
	pushq	%rbp
Ltmp522:
	movq	%rsp, %rbp
Ltmp523:
	subq	$48, %rsp
Ltmp524:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB181_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	LBB181_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB181_7
LBB181_3:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB181_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB181_6
LBB181_5:
	movq	$0, -32(%rbp)
	jmp	LBB181_7
LBB181_6:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, -32(%rbp)
LBB181_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end181:

	.align	4, 0x90
_subr_symbol_string:
Leh_func_begin182:
	pushq	%rbp
Ltmp525:
	movq	%rsp, %rbp
Ltmp526:
	subq	$48, %rsp
Ltmp527:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB182_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB182_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB182_7
LBB182_3:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB182_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	je	LBB182_6
LBB182_5:
	movq	$0, -32(%rbp)
	jmp	LBB182_7
LBB182_6:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -32(%rbp)
LBB182_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end182:

	.align	4, 0x90
_subr_long_double:
Leh_func_begin183:
	pushq	%rbp
Ltmp528:
	movq	%rsp, %rbp
Ltmp529:
	subq	$48, %rsp
Ltmp530:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB183_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB183_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB183_6
LBB183_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB183_5
	movq	$0, -32(%rbp)
	jmp	LBB183_6
LBB183_5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	callq	_newDouble
	movq	%rax, -32(%rbp)
LBB183_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end183:

	.align	4, 0x90
_subr_long_string:
Leh_func_begin184:
	pushq	%rbp
Ltmp531:
	movq	%rsp, %rbp
Ltmp532:
	subq	$192, %rsp
Ltmp533:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB184_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB184_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB184_6
LBB184_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB184_5
	movq	$0, -32(%rbp)
	jmp	LBB184_6
LBB184_5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, %rcx
	leaq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movl	$32, %edi
	xorb	%r8b, %r8b
	leaq	L_.str150(%rip), %r9
	movq	%rdi, -176(%rbp)
	movq	%rsi, %rdi
	movq	-176(%rbp), %rsi
	movq	%rdx, -184(%rbp)
	movq	%r9, %rdx
	movb	%r8b, %al
	callq	_swprintf
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -32(%rbp)
LBB184_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	ret
Leh_func_end184:

	.align	4, 0x90
_subr_string_long:
Leh_func_begin185:
	pushq	%rbp
Ltmp534:
	movq	%rsp, %rbp
Ltmp535:
	subq	$48, %rsp
Ltmp536:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB185_2
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB185_6
LBB185_2:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB185_4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB185_5
LBB185_4:
	movq	$0, -32(%rbp)
	jmp	LBB185_6
LBB185_5:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$0, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcstol
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
LBB185_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end185:

	.align	4, 0x90
_subr_double_long:
Leh_func_begin186:
	pushq	%rbp
Ltmp537:
	movq	%rsp, %rbp
Ltmp538:
	subq	$48, %rsp
Ltmp539:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB186_2
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB186_6
LBB186_2:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB186_4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	LBB186_5
LBB186_4:
	movq	$0, -32(%rbp)
	jmp	LBB186_6
LBB186_5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	cvttsd2siq	%xmm0, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
LBB186_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end186:

	.align	4, 0x90
_subr_double_string:
Leh_func_begin187:
	pushq	%rbp
Ltmp540:
	movq	%rsp, %rbp
Ltmp541:
	subq	$192, %rsp
Ltmp542:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB187_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	jne	LBB187_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB187_7
LBB187_3:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB187_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	LBB187_6
LBB187_5:
	movq	$0, -32(%rbp)
	jmp	LBB187_7
LBB187_6:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	leaq	-168(%rbp), %rcx
	movq	%rcx, %rdx
	movl	$32, %esi
	movb	$1, %dil
	leaq	L_.str151(%rip), %r8
	movb	%dil, -169(%rbp)
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movb	-169(%rbp), %r8b
	movb	%r8b, %al
	movq	%rcx, -184(%rbp)
	callq	_swprintf
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	_newString
	movq	%rax, -32(%rbp)
LBB187_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	ret
Leh_func_end187:

	.align	4, 0x90
_subr_string_double:
Leh_func_begin188:
	pushq	%rbp
Ltmp543:
	movq	%rsp, %rbp
Ltmp544:
	subq	$48, %rsp
Ltmp545:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB188_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB188_3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB188_7
LBB188_3:
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB188_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$4, %ecx
	je	LBB188_6
LBB188_5:
	movq	$0, -32(%rbp)
	jmp	LBB188_7
LBB188_6:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcstod
	callq	_newDouble
	movq	%rax, -32(%rbp)
LBB188_7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end188:

	.align	4, 0x90
_subr_array:
Leh_func_begin189:
	pushq	%rbp
Ltmp546:
	movq	%rsp, %rbp
Ltmp547:
	subq	$64, %rsp
Ltmp548:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB189_2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -36(%rbp)
	jmp	LBB189_3
LBB189_2:
	movl	$0, -36(%rbp)
LBB189_3:
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	callq	_newArray
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end189:

	.align	4, 0x90
_subr_arrayP:
Leh_func_begin190:
	pushq	%rbp
Ltmp549:
	movq	%rsp, %rbp
Ltmp550:
	subq	$48, %rsp
Ltmp551:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	cmpq	$0, %rax
	je	LBB190_3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	jne	LBB190_3
	movq	_s_t(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB190_4
LBB190_3:
	movq	$0, -32(%rbp)
LBB190_4:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end190:

	.align	4, 0x90
_subr_array_length:
Leh_func_begin191:
	pushq	%rbp
Ltmp552:
	movq	%rsp, %rbp
Ltmp553:
	subq	$64, %rsp
Ltmp554:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str152(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB191_2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$8, %ecx
	je	LBB191_3
LBB191_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str153(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$34, %rdi
	movq	%rdi, -48(%rbp)
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	callq	_fwrite
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB191_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_arrayLength
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end191:

	.align	4, 0x90
_subr_array_at:
Leh_func_begin192:
	pushq	%rbp
Ltmp555:
	movq	%rsp, %rbp
Ltmp556:
	subq	$48, %rsp
Ltmp557:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str154(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB192_2
	movq	$0, -32(%rbp)
	jmp	LBB192_3
LBB192_2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAt
	movq	%rax, -32(%rbp)
LBB192_3:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end192:

	.align	4, 0x90
_subr_set_array_at:
Leh_func_begin193:
	pushq	%rbp
Ltmp558:
	movq	%rsp, %rbp
Ltmp559:
	subq	$64, %rsp
Ltmp560:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str155(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB193_2
	movq	$0, -32(%rbp)
	jmp	LBB193_3
LBB193_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAtPut
	movq	%rax, -32(%rbp)
LBB193_3:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end193:

	.align	4, 0x90
_subr_data:
Leh_func_begin194:
	pushq	%rbp
Ltmp561:
	movq	%rsp, %rbp
Ltmp562:
	subq	$64, %rsp
Ltmp563:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB194_2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -36(%rbp)
	jmp	LBB194_3
LBB194_2:
	movl	$0, -36(%rbp)
LBB194_3:
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newData
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end194:

	.align	4, 0x90
_subr_byte_at:
Leh_func_begin195:
	pushq	%rbp
Ltmp564:
	movq	%rsp, %rbp
Ltmp565:
	subq	$64, %rsp
Ltmp566:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str156(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB195_2
	movq	$0, -32(%rbp)
	jmp	LBB195_8
LBB195_2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB195_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB195_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movzbl	%al, %eax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB195_8
LBB195_5:
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -56(%rbp)
	callq	_GC_size
	movl	-56(%rbp), %ecx
	cmpl	%eax, %ecx
	jb	LBB195_7
	movq	$0, -32(%rbp)
	jmp	LBB195_8
LBB195_7:
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movzbl	%al, %eax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
LBB195_8:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end195:

	.align	4, 0x90
_subr_set_byte_at:
Leh_func_begin196:
	pushq	%rbp
Ltmp567:
	movq	%rsp, %rbp
Ltmp568:
	subq	$96, %rsp
Ltmp569:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str157(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB196_2
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB196_3
LBB196_2:
	movq	$0, -32(%rbp)
	jmp	LBB196_10
LBB196_3:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB196_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB196_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)
	callq	_getLong
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-72(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	jmp	LBB196_9
LBB196_6:
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -76(%rbp)
	callq	_GC_size
	movl	-76(%rbp), %ecx
	cmpl	%eax, %ecx
	jb	LBB196_8
	movq	$0, -32(%rbp)
	jmp	LBB196_10
LBB196_8:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)
	callq	_getLong
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-88(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
LBB196_9:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB196_10:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end196:

	.align	4, 0x90
_subr_long_at:
Leh_func_begin197:
	pushq	%rbp
Ltmp570:
	movq	%rsp, %rbp
Ltmp571:
	subq	$64, %rsp
Ltmp572:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str158(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB197_2
	movq	$0, -32(%rbp)
	jmp	LBB197_8
LBB197_2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB197_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB197_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB197_8
LBB197_5:
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -56(%rbp)
	callq	_GC_size
	shrl	$3, %eax
	movl	-56(%rbp), %ecx
	cmpl	%eax, %ecx
	jb	LBB197_7
	movq	$0, -32(%rbp)
	jmp	LBB197_8
LBB197_7:
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
LBB197_8:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end197:

	.align	4, 0x90
_subr_set_long_at:
Leh_func_begin198:
	pushq	%rbp
Ltmp573:
	movq	%rsp, %rbp
Ltmp574:
	subq	$96, %rsp
Ltmp575:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str159(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB198_2
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB198_3
LBB198_2:
	movq	$0, -32(%rbp)
	jmp	LBB198_10
LBB198_3:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB198_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB198_6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)
	callq	_getLong
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	LBB198_9
LBB198_6:
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -76(%rbp)
	callq	_GC_size
	shrl	$3, %eax
	movl	-76(%rbp), %ecx
	cmpl	%eax, %ecx
	jb	LBB198_8
	movq	$0, -32(%rbp)
	jmp	LBB198_10
LBB198_8:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)
	callq	_getLong
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
LBB198_9:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB198_10:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end198:

	.align	4, 0x90
_subr_call:
Leh_func_begin199:
	pushq	%rbp
Ltmp576:
	movq	%rsp, %rbp
Ltmp577:
	subq	$656, %rsp
Ltmp578:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movl	$0, -316(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_cdr
	movq	%rax, -8(%rbp)
	jmp	LBB199_9
LBB199_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$11, %ecx
	movl	%ecx, -340(%rbp)
	jg	LBB199_20
	movl	-340(%rbp), %eax
	cmpl	$4, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)
	ja	LBB199_7
	leaq	LJTI199_0(%rip), %rax
	movq	-352(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB199_20:
	movl	-340(%rbp), %eax
	cmpl	$12, %eax
	je	LBB199_6
	jmp	LBB199_7
LBB199_2:
	movl	-316(%rbp), %eax
	movslq	%eax, %rax
	movq	$0, -312(%rbp,%rax,8)
	jmp	LBB199_8
LBB199_3:
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -356(%rbp)
	callq	_getLong
	movl	-356(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rax, -312(%rbp,%rcx,8)
	jmp	LBB199_8
LBB199_4:
	movl	-316(%rbp), %eax
	addl	$1, %eax
	andl	$4294967294, %eax
	movl	%eax, -316(%rbp)
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	%eax, %rax
	movq	%rcx, -312(%rbp,%rax,8)
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	%eax, %rax
	movq	%rcx, -312(%rbp,%rax,8)
	jmp	LBB199_8
LBB199_5:
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -360(%rbp)
	callq	_wcs2mbs
	movl	-360(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rax, -312(%rbp,%rcx,8)
	jmp	LBB199_8
LBB199_6:
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	%eax, %rax
	movq	%rcx, -312(%rbp,%rax,8)
	jmp	LBB199_8
LBB199_7:
	movl	-316(%rbp), %eax
	movq	-336(%rbp), %rcx
	movslq	%eax, %rax
	movq	%rcx, -312(%rbp,%rax,8)
LBB199_8:
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
LBB199_9:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	LBB199_12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	jne	LBB199_12
	movl	-316(%rbp), %eax
	cmpl	$31, %eax
	jle	LBB199_1
LBB199_12:
	movq	$0, -328(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$12, %ecx
	movl	%ecx, -364(%rbp)
	je	LBB199_15
	movl	-364(%rbp), %eax
	cmpl	$2, %eax
	je	LBB199_14
	movl	-364(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB199_16
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)
	jmp	LBB199_17
LBB199_14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	%rax, -328(%rbp)
	jmp	LBB199_17
LBB199_15:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	jmp	LBB199_17
LBB199_16:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	leaq	L_.str160(%rip), %rdx
	xorb	%dil, %dil
	movb	%dil, -365(%rbp)
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movb	-365(%rbp), %cl
	movb	%cl, %al
	callq	_fatal
LBB199_17:
	movq	-328(%rbp), %rax
	movl	$34, %ecx
	leaq	-312(%rbp), %rdx
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	rep;movsq
	xorb	%cl, %cl
	movq	%rax, -376(%rbp)
	movb	%cl, %al
	movq	-376(%rbp), %rcx
	callq	*%rcx
	movl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$656, %rsp
	popq	%rbp
	ret
Leh_func_end199:
	.align	2, 0x90
L199_0_set_2 = LBB199_2-LJTI199_0
L199_0_set_7 = LBB199_7-LJTI199_0
L199_0_set_3 = LBB199_3-LJTI199_0
L199_0_set_4 = LBB199_4-LJTI199_0
L199_0_set_5 = LBB199_5-LJTI199_0
LJTI199_0:
	.long	L199_0_set_2
	.long	L199_0_set_7
	.long	L199_0_set_3
	.long	L199_0_set_4
	.long	L199_0_set_5

	.align	4, 0x90
_subr_subr:
Leh_func_begin200:
	pushq	%rbp
Ltmp579:
	movq	%rsp, %rbp
Ltmp580:
	subq	$80, %rsp
Ltmp581:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$5, %ecx
	movl	%ecx, -68(%rbp)
	je	LBB200_2
	movl	-68(%rbp), %eax
	cmpl	$4, %eax
	jne	LBB200_3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB200_4
LBB200_2:
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB200_4
LBB200_3:
	leaq	L_.str161(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
LBB200_4:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movabsq	$-2, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_dlsym
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB200_6
	movq	-56(%rbp), %rax
	leaq	L_.str162(%rip), %rcx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	%dl, %al
	callq	_fatal
LBB200_6:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end200:

	.align	4, 0x90
_subr_allocate:
Leh_func_begin201:
	pushq	%rbp
Ltmp582:
	movq	%rsp, %rbp
Ltmp583:
	subq	$64, %rsp
Ltmp584:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str163(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB201_2
	movq	$0, -32(%rbp)
	jmp	LBB201_5
LBB201_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB201_4
	movq	$0, -32(%rbp)
	jmp	LBB201_5
LBB201_4:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)
	callq	_getLong
	movl	%eax, %edi
	movq	-56(%rbp), %rsi
	callq	__newOops
	movq	%rax, -32(%rbp)
LBB201_5:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end201:

	.align	4, 0x90
_subr_oop_at:
Leh_func_begin202:
	pushq	%rbp
Ltmp585:
	movq	%rsp, %rbp
Ltmp586:
	subq	$48, %rsp
Ltmp587:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str164(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB202_2
	movq	$0, -32(%rbp)
	jmp	LBB202_3
LBB202_2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_oopAt
	movq	%rax, -32(%rbp)
LBB202_3:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end202:

	.align	4, 0x90
_subr_set_oop_at:
Leh_func_begin203:
	pushq	%rbp
Ltmp588:
	movq	%rsp, %rbp
Ltmp589:
	subq	$64, %rsp
Ltmp590:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str165(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB203_2
	movq	$0, -32(%rbp)
	jmp	LBB203_3
LBB203_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_oopAtPut
	movq	%rax, -32(%rbp)
LBB203_3:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end203:

	.align	4, 0x90
_subr_not:
Leh_func_begin204:
	pushq	%rbp
Ltmp591:
	movq	%rsp, %rbp
Ltmp592:
	subq	$48, %rsp
Ltmp593:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	L_.str166(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_arity1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB204_2
	movq	_s_t(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB204_3
LBB204_2:
	movq	$0, -32(%rbp)
LBB204_3:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end204:

	.align	4, 0x90
_subr_verbose:
Leh_func_begin205:
	pushq	%rbp
Ltmp594:
	movq	%rsp, %rbp
Ltmp595:
	subq	$48, %rsp
Ltmp596:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB205_2
	movl	_opt_v(%rip), %eax
	movslq	%eax, %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	jmp	LBB205_5
LBB205_2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB205_4
	movq	$0, -32(%rbp)
	jmp	LBB205_5
LBB205_4:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, _opt_v(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB205_5:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end205:

	.align	4, 0x90
_subr_sin:
Leh_func_begin206:
	pushq	%rbp
Ltmp597:
	movq	%rsp, %rbp
Ltmp598:
	subq	$64, %rsp
Ltmp599:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movabsq	$0, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB206_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB206_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movsd	%xmm0, -48(%rbp)
	jmp	LBB206_6
LBB206_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB206_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	LBB206_6
LBB206_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str167(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB206_6:
	movsd	-48(%rbp), %xmm0
	callq	_sin
	callq	_newDouble
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end206:

	.align	4, 0x90
_subr_cos:
Leh_func_begin207:
	pushq	%rbp
Ltmp600:
	movq	%rsp, %rbp
Ltmp601:
	subq	$64, %rsp
Ltmp602:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movabsq	$0, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB207_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB207_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movsd	%xmm0, -48(%rbp)
	jmp	LBB207_6
LBB207_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB207_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	LBB207_6
LBB207_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str168(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB207_6:
	movsd	-48(%rbp), %xmm0
	callq	_cos
	callq	_newDouble
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end207:

	.align	4, 0x90
_subr_log:
Leh_func_begin208:
	pushq	%rbp
Ltmp603:
	movq	%rsp, %rbp
Ltmp604:
	subq	$64, %rsp
Ltmp605:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movabsq	$0, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	je	LBB208_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	LBB208_3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getDouble
	movsd	%xmm0, -48(%rbp)
	jmp	LBB208_6
LBB208_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB208_5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_getLong
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	LBB208_6
LBB208_5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str169(%rip), %rdx
	movabsq	$1, %rsi
	movabsq	$27, %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	callq	_fwrite
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fdumpln
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB208_6:
	movsd	-48(%rbp), %xmm0
	callq	_log
	callq	_newDouble
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end208:

	.align	4, 0x90
_subr_address_of:
Leh_func_begin209:
	pushq	%rbp
Ltmp606:
	movq	%rsp, %rbp
Ltmp607:
	subq	$48, %rsp
Ltmp608:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_car
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_newLong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end209:

	.align	4, 0x90
_replFile:
Leh_func_begin210:
	pushq	%rbp
Ltmp609:
	movq	%rsp, %rbp
Ltmp610:
	subq	$304, %rsp
Ltmp611:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	_input(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)
	callq	_newLong
	movq	-200(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_beginSource
LBB210_1:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, %rcx
	jne	LBB210_3
	movl	$46, %eax
	movl	%eax, %edi
	callq	_putchar
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_fflush
LBB210_3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_oop_read
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$-4, %rcx
	cmpq	%rcx, %rax
	je	LBB210_12
	leaq	-32(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	%rax, -80(%rbp)
	leaq	L_.str9(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$2551, %esi
	movq	%rcx, %rdi
	movl	%esi, -204(%rbp)
	movq	%rax, %rsi
	movl	-204(%rbp), %ecx
	callq	_GC_push_root
	movl	_opt_v(%rip), %eax
	cmpl	$0, %eax
	je	LBB210_6
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_fflush
LBB210_6:
	movq	_globals(%rip), %rax
	movq	8(%rax), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_newEnv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rax
	leaq	-136(%rbp), %rdx
	movq	%rax, -136(%rbp)
	leaq	L_.str68(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2557, %edi
	movl	%edi, -208(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -216(%rbp)
	movq	%rax, %rsi
	movq	-216(%rbp), %r8
	movq	%rdx, -224(%rbp)
	movq	%r8, %rdx
	movl	-208(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -232(%rbp)
	callq	_GC_push_root
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_expand
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_encode
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_newBaseContext
	movq	%rax, -144(%rbp)
	leaq	-144(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rax, -192(%rbp)
	leaq	L_.str82(%rip), %rax
	movl	$2567, %esi
	movq	%rdx, %rdi
	movl	%esi, -236(%rbp)
	movq	%rax, %rsi
	movq	-216(%rbp), %r8
	movq	%rdx, -248(%rbp)
	movq	%r8, %rdx
	movl	-236(%rbp), %r9d
	movl	%r9d, %ecx
	movq	%rax, -256(%rbp)
	callq	_GC_push_root
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_eval
	movq	%rax, -32(%rbp)
	movl	$2568, %eax
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, -260(%rbp)
	callq	_GC_pop_root
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movl	-260(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB210_8
	movl	_opt_v(%rip), %eax
	cmpl	$0, %eax
	jle	LBB210_9
LBB210_8:
	xorb	%al, %al
	leaq	L_.str170(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdi
	movq	%rax, -272(%rbp)
	callq	_fflush
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_dumpln
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_fflush
LBB210_9:
	leaq	-80(%rbp), %rax
	leaq	L_.str9(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$2575, %esi
	movq	%rax, %rdi
	movl	%esi, -276(%rbp)
	movq	%rcx, %rsi
	movl	-276(%rbp), %ecx
	callq	_GC_pop_root
	movl	_opt_v(%rip), %eax
	cmpl	$0, %eax
	je	LBB210_11
	callq	_GC_gcollect
	callq	_GC_count_fragments
	movabsq	$100, %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	callq	_GC_count_bytes
	movq	%rax, -296(%rbp)
	callq	_GC_count_objects
	movq	%rax, %rcx
	movq	_GC_collections(%rip), %rdx
	movb	$1, %sil
	leaq	L_.str171(%rip), %rdi
	movb	%sil, -297(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx
	movsd	-288(%rbp), %xmm0
	movb	-297(%rbp), %r8b
	movb	%r8b, %al
	callq	_printf
LBB210_11:
	jmp	LBB210_1
LBB210_12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_getwc
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	$-1, %ecx
	je	LBB210_14
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	leaq	L_.str172(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, -298(%rbp)
	movl	%eax, %esi
	movl	%ecx, %edx
	movb	-298(%rbp), %al
	callq	_fatal
LBB210_14:
	callq	_endSource
	addq	$304, %rsp
	popq	%rbp
	ret
Leh_func_end210:

	.align	4, 0x90
_replPath:
Leh_func_begin211:
	pushq	%rbp
Ltmp612:
	movq	%rsp, %rbp
Ltmp613:
	subq	$48, %rsp
Ltmp614:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	movq	%rax, %rcx
	movq	___stderrp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	xorb	%sil, %sil
	leaq	L_.str173(%rip), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx
	movb	%sil, -33(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movb	-33(%rbp), %cl
	movb	%cl, %al
	callq	_fprintf
	movq	-8(%rbp), %rax
	leaq	L_.str174(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB211_2
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB211_3
LBB211_2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	leaq	L_.str111(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_fopen
	movq	%rax, -16(%rbp)
LBB211_3:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB211_5
	callq	___error
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str73(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$8, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	callq	___error
	movl	-20(%rbp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_wcs2mbs
	movq	%rax, %rdi
	callq	_perror
	xorl	%ecx, %ecx
	xorb	%dl, %dl
	movq	%rcx, %rdi
	movb	%dl, %al
	callq	_fatal
LBB211_5:
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_replFile
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_fclose
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end211:

	.align	4, 0x90
_sigint:
Leh_func_begin212:
	pushq	%rbp
Ltmp615:
	movq	%rsp, %rbp
Ltmp616:
	subq	$16, %rsp
Ltmp617:
	movl	%edi, %eax
	movl	%eax, -4(%rbp)
	leaq	L_.str175(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	_fatal
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end212:

	.align	4, 0x90
_sigvtalrm:
Leh_func_begin213:
	pushq	%rbp
Ltmp618:
	movq	%rsp, %rbp
Ltmp619:
	subq	$32, %rsp
Ltmp620:
	movl	%edi, -4(%rbp)
	movl	_traceDepth(%rip), %eax
	cmpl	$0, %eax
	jle	LBB213_7
	movl	_profilerCount(%rip), %eax
	addl	$1, %eax
	movl	%eax, _profilerCount(%rip)
	movl	_traceDepth(%rip), %eax
	subl	$1, %eax
	movq	_traceStack(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_arrayAt
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$12, %ecx
	movl	%ecx, -28(%rbp)
	je	LBB213_6
	movl	-28(%rbp), %eax
	cmpl	$9, %eax
	jne	LBB213_7
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$1, %eax
	cmpb	$0, %al
	je	LBB213_4
	movq	-24(%rbp), %rax
	movabsq	$2, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	LBB213_5
LBB213_4:
	movq	-16(%rbp), %rax
	xorb	%cl, %cl
	leaq	L_.str176(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movb	%cl, %al
	callq	_printf
LBB213_5:
	jmp	LBB213_7
LBB213_6:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
LBB213_7:
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end213:

	.align	4, 0x90
_profilingEnable:
Leh_func_begin214:
	pushq	%rbp
Ltmp621:
	movq	%rsp, %rbp
Ltmp622:
	subq	$32, %rsp
Ltmp623:
	movl	_opt_p(%rip), %eax
	imull	$1000, %eax, %eax
	movl	_opt_p(%rip), %ecx
	imull	$1000, %ecx, %ecx
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	%ecx, -8(%rbp)
	movl	$1, %eax
	movabsq	$0, %rcx
	movl	%eax, %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	_setitimer
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end214:

	.align	4, 0x90
_profilingDisable:
Leh_func_begin215:
	pushq	%rbp
Ltmp624:
	movq	%rsp, %rbp
Ltmp625:
	subq	$1680, %rsp
Ltmp626:
	movl	%edi, -4(%rbp)
	leaq	-64(%rbp), %rax
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$1, %ecx
	movabsq	$0, %rdx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_setitimer
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	LBB215_25
	movl	$0, -1604(%rbp)
	movl	_profilerCount(%rip), %eax
	xorb	%cl, %cl
	leaq	L_.str177(%rip), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movb	%cl, %al
	callq	_printf
	callq	_GC_gcollect
	callq	_GC_first_object
	movq	%rax, -1616(%rbp)
	jmp	LBB215_19
LBB215_2:
	movl	$0, -1624(%rbp)
	movq	$0, -1632(%rbp)
	movq	-1616(%rbp), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$12, %ecx
	movl	%ecx, -1656(%rbp)
	je	LBB215_6
	movl	-1656(%rbp), %eax
	cmpl	$9, %eax
	jne	LBB215_7
	movq	-1616(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1640(%rbp)
	movq	-1640(%rbp), %rax
	movq	%rax, %rdi
	callq	_isLong
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB215_5
	movq	-1616(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	_getLong
	movl	%eax, -1624(%rbp)
	movq	-1616(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_cddr
	movq	%rax, -1632(%rbp)
LBB215_5:
	jmp	LBB215_7
LBB215_6:
	movq	-1616(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -1624(%rbp)
LBB215_7:
	movl	-1624(%rbp), %eax
	cmpl	$0, %eax
	je	LBB215_18
	movl	$0, -1644(%rbp)
	jmp	LBB215_10
LBB215_9:
	movl	-1644(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1644(%rbp)
LBB215_10:
	movl	-1644(%rbp), %eax
	movl	-1604(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB215_12
	movl	-1644(%rbp), %eax
	movslq	%eax, %rax
	leaq	-1600(%rbp), %rcx
	movabsq	$24, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movl	(%rcx), %eax
	movl	-1624(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB215_9
LBB215_12:
	movl	-1604(%rbp), %eax
	cmpl	$63, %eax
	jg	LBB215_14
	movl	-1604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1604(%rbp)
LBB215_14:
	movl	-1604(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1648(%rbp)
	jmp	LBB215_16
LBB215_15:
	movl	-1648(%rbp), %eax
	movl	-1648(%rbp), %ecx
	subl	$1, %ecx
	movslq	%eax, %rax
	leaq	-1600(%rbp), %rdx
	movabsq	$24, %rsi
	imulq	%rsi, %rax
	movq	%rdx, %rsi
	addq	%rax, %rsi
	movslq	%ecx, %rax
	movabsq	$24, %rcx
	imulq	%rcx, %rax
	addq	%rax, %rdx
	movl	(%rdx), %eax
	movl	%eax, (%rsi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsi)
	movl	-1648(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1648(%rbp)
LBB215_16:
	movl	-1648(%rbp), %eax
	movl	-1644(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	LBB215_15
	movl	-1644(%rbp), %eax
	movl	-1624(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	-1616(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-1632(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movslq	%eax, %rax
	leaq	-1600(%rbp), %rcx
	movabsq	$24, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
LBB215_18:
	movq	-1616(%rbp), %rax
	movq	%rax, %rdi
	callq	_GC_next_object
	movq	%rax, -1616(%rbp)
LBB215_19:
	movq	-1616(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB215_2
	movl	$0, -1620(%rbp)
	jmp	LBB215_24
LBB215_21:
	movl	-1620(%rbp), %eax
	movslq	%eax, %rax
	leaq	-1600(%rbp), %rcx
	movabsq	$24, %rdx
	imulq	%rdx, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movl	(%rdx), %eax
	xorb	%dl, %dl
	leaq	L_.str178(%rip), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	%dl, %al
	movq	%rcx, -1664(%rbp)
	callq	_printf
	movl	-1620(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$24, %rcx
	imulq	%rcx, %rax
	movq	-1664(%rbp), %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, %rdi
	callq	_printSource
	movl	%eax, %ecx
	movl	%ecx, -1652(%rbp)
	movl	-1652(%rbp), %ecx
	cmpl	$19, %ecx
	jg	LBB215_23
	movl	-1652(%rbp), %eax
	movl	$20, %ecx
	subl	%eax, %ecx
	xorb	%al, %al
	leaq	L_.str179(%rip), %rdx
	leaq	L_.str55(%rip), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -1672(%rbp)
	movl	%ecx, %esi
	movq	-1672(%rbp), %rdx
	callq	_printf
LBB215_23:
	movl	$32, %eax
	movl	%eax, %edi
	callq	_putchar
	movl	-1620(%rbp), %eax
	movslq	%eax, %rax
	leaq	-1600(%rbp), %rcx
	movabsq	$24, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movq	8(%rcx), %rax
	movq	%rax, %rdi
	callq	_dumpln
	movl	-1620(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1620(%rbp)
LBB215_24:
	movl	-1620(%rbp), %eax
	movl	-1604(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB215_21
LBB215_25:
	addq	$1680, %rsp
	popq	%rbp
	ret
Leh_func_end215:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin216:
	pushq	%rbp
Ltmp627:
	movq	%rsp, %rbp
Ltmp628:
	subq	$1824, %rsp
Ltmp629:
	movq	%rsi, %rax
	movl	%edi, %ecx
	movl	%ecx, -4(%rbp)
	movq	%rax, -16(%rbp)
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jle	LBB216_3
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$4294967295, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	LBB216_3
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$4294967295, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_fwide
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	LBB216_4
LBB216_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str180(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$26, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -1408(%rbp)
	movq	%rdx, %rsi
	movq	-1408(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movl	$1, -24(%rbp)
	jmp	LBB216_46
LBB216_4:
	movl	$2, %eax
	leaq	L_.str55(%rip), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_setlocale
	cmpq	$0, %rax
	jne	LBB216_6
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str181(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$60, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -1416(%rbp)
	movq	%rdx, %rsi
	movq	-1416(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movl	$1, -24(%rbp)
	jmp	LBB216_46
LBB216_6:
	leaq	_symbols(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_globals(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_expanders(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_encoders(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_evaluators(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_applicators(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_backtrace(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movl	$0, %eax
	movl	%eax, %edi
	movl	%eax, -1420(%rbp)
	callq	_newArray
	movq	%rax, _symbols(%rip)
	leaq	L_.str182(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_set(%rip)
	leaq	L_.str183(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_define(%rip)
	leaq	L_.str184(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_let(%rip)
	leaq	L_.str185(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_lambda(%rip)
	leaq	L_.str186(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_quote(%rip)
	leaq	L_.str187(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_quasiquote(%rip)
	leaq	L_.str188(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_unquote(%rip)
	leaq	L_.str189(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_unquote_splicing(%rip)
	leaq	L_.str190(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_t(%rip)
	leaq	L_.str191(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	%rax, _s_dot(%rip)
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rax, -80(%rbp)
	leaq	L_.str89(%rip), %rax
	leaq	L_.str8(%rip), %rsi
	movl	$2741, %edi
	movl	%edi, -1424(%rbp)
	movq	%rdx, %rdi
	movq	%rsi, -1432(%rbp)
	movq	%rax, %rsi
	movq	-1432(%rbp), %rdx
	movl	-1424(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_push_root
	movabsq	$0, %rax
	movq	%rax, %rdi
	movl	-1420(%rbp), %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, -1440(%rbp)
	callq	_newEnv
	movq	%rax, _globals(%rip)
	movq	_globals(%rip), %rax
	leaq	L_.str192(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1448(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1448(%rbp), %rdx
	callq	_define
	movq	%rax, _globals(%rip)
	leaq	L_.str193(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _expanders(%rip)
	leaq	L_.str194(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _encoders(%rip)
	leaq	L_.str195(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _evaluators(%rip)
	leaq	L_.str196(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _applicators(%rip)
	movl	$32, %eax
	movl	%eax, %edi
	callq	_newArray
	movq	%rax, _traceStack(%rip)
	leaq	_traceStack(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	L_.str197(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _backtrace(%rip)
	leaq	L_.str198(%rip), %rax
	movq	%rax, %rdi
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1440(%rbp), %rdx
	callq	_define
	movq	%rax, _input(%rip)
	movq	$0, _currentPath(%rip)
	leaq	_currentPath(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movq	$0, _currentLine(%rip)
	leaq	_currentLine(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movq	-1440(%rbp), %rdi
	movq	-1440(%rbp), %rsi
	callq	_newPair
	movq	%rax, _currentSource(%rip)
	leaq	_currentSource(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	leaq	_subr_com(%rip), %rax
	leaq	L_.str199(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1456(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1456(%rbp), %rdi
	movq	%rax, -1464(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1464(%rbp), %rdx
	callq	_define
	leaq	_subr_bitand(%rip), %rax
	leaq	L_.str200(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1472(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1472(%rbp), %rdi
	movq	%rax, -1480(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1480(%rbp), %rdx
	callq	_define
	leaq	_subr_bitor(%rip), %rax
	leaq	L_.str201(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1488(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1488(%rbp), %rdi
	movq	%rax, -1496(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1496(%rbp), %rdx
	callq	_define
	leaq	_subr_bitxor(%rip), %rax
	leaq	L_.str202(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1504(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1504(%rbp), %rdi
	movq	%rax, -1512(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1512(%rbp), %rdx
	callq	_define
	leaq	_subr_shl(%rip), %rax
	leaq	L_.str203(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1520(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1520(%rbp), %rdi
	movq	%rax, -1528(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1528(%rbp), %rdx
	callq	_define
	leaq	_subr_shr(%rip), %rax
	leaq	L_.str204(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1536(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1536(%rbp), %rdi
	movq	%rax, -1544(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1544(%rbp), %rdx
	callq	_define
	leaq	_subr_add(%rip), %rax
	leaq	L_.str205(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1552(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1552(%rbp), %rdi
	movq	%rax, -1560(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1560(%rbp), %rdx
	callq	_define
	leaq	_subr_mul(%rip), %rax
	leaq	L_.str206(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1568(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1568(%rbp), %rdi
	movq	%rax, -1576(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1576(%rbp), %rdx
	callq	_define
	leaq	_subr_div(%rip), %rax
	leaq	L_.str207(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1584(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1584(%rbp), %rdi
	movq	%rax, -1592(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1592(%rbp), %rdx
	callq	_define
	leaq	_subr_sub(%rip), %rax
	leaq	L_.str174(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1600(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1600(%rbp), %rdi
	movq	%rax, -1608(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1608(%rbp), %rdx
	callq	_define
	leaq	_subr_mod(%rip), %rax
	leaq	L_.str208(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1616(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1616(%rbp), %rdi
	movq	%rax, -1624(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1624(%rbp), %rdx
	callq	_define
	leaq	_subr_lt(%rip), %rax
	leaq	L_.str209(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1632(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1632(%rbp), %rdi
	movq	%rax, -1640(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1640(%rbp), %rdx
	callq	_define
	leaq	_subr_le(%rip), %rax
	leaq	L_.str210(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1648(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1648(%rbp), %rdi
	movq	%rax, -1656(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1656(%rbp), %rdx
	callq	_define
	leaq	_subr_ge(%rip), %rax
	leaq	L_.str211(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1664(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1664(%rbp), %rdi
	movq	%rax, -1672(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1672(%rbp), %rdx
	callq	_define
	leaq	_subr_gt(%rip), %rax
	leaq	L_.str212(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1680(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1680(%rbp), %rdi
	movq	%rax, -1688(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1688(%rbp), %rdx
	callq	_define
	leaq	_subr_eq(%rip), %rax
	leaq	L_.str213(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1696(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1696(%rbp), %rdi
	movq	%rax, -1704(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1704(%rbp), %rdx
	callq	_define
	leaq	_subr_ne(%rip), %rax
	leaq	L_.str214(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -1712(%rbp)
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-1712(%rbp), %rdi
	movq	%rax, -1720(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1720(%rbp), %rdx
	callq	_define
	leaq	-1296(%rbp), %rax
	movq	%rax, %rcx
	leaq	_C.703.10903(%rip), %rdx
	movl	$1200, %esi
	movq	%rcx, %rdi
	movq	%rsi, -1728(%rbp)
	movq	%rdx, %rsi
	movq	-1728(%rbp), %rdx
	movq	%rax, -1736(%rbp)
	callq	_memcpy
	movq	-1736(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	LBB216_10
LBB216_7:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_mbs2wcs
	movq	%rax, %rdi
	callq	_wcsdup
	movq	%rax, -1304(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	-1304(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_newSubr
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %al
	cmpb	$46, %al
	jne	LBB216_9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_newFixed
	movq	%rax, -32(%rbp)
LBB216_9:
	movq	-32(%rbp), %rax
	movq	-1304(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1744(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1744(%rbp), %rdx
	callq	_define
	movq	-96(%rbp), %rax
	movabsq	$16, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
LBB216_10:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, %rax
	jne	LBB216_7
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str289(%rip), %rcx
	movabsq	$1, %rdx
	movabsq	$20, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -1752(%rbp)
	movq	%rdx, %rsi
	movq	-1752(%rbp), %rdx
	movq	%rax, %rcx
	callq	_fwrite
	movq	$0, -32(%rbp)
	jmp	LBB216_13
LBB216_12:
	movq	-32(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_newPair
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1760(%rbp)
	callq	_mbs2wcs
	movq	%rax, %rdi
	callq	_newString
	movq	-1760(%rbp), %rcx
	movq	%rax, (%rcx)
LBB216_13:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB216_12
	movq	-32(%rbp), %rax
	leaq	L_.str290(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1768(%rbp)
	callq	_intern
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1768(%rbp), %rdx
	callq	_define
	movq	%rax, _arguments(%rip)
	movq	$0, -32(%rbp)
	leaq	-80(%rbp), %rax
	leaq	L_.str89(%rip), %rdx
	leaq	L_.str8(%rip), %rsi
	movl	$2862, %edi
	movl	%edi, -1772(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -1784(%rbp)
	movq	%rdx, %rsi
	movq	-1784(%rbp), %rdx
	movl	-1772(%rbp), %eax
	movl	%eax, %ecx
	callq	_GC_pop_root
	movq	_s_set(%rip), %rax
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, _f_set(%rip)
	leaq	_f_set(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movq	_s_quote(%rip), %rax
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, _f_quote(%rip)
	leaq	_f_quote(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movq	_s_lambda(%rip), %rax
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, _f_lambda(%rip)
	leaq	_f_lambda(%rip), %rax
	movq	%rax, %rdi
	callq	_GC_add_root
	movq	_s_let(%rip), %rax
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, _f_let(%rip)
	leaq	_f_let(%rip), %rax
	movq	%rax, %rdi
	movq	%rax, -1792(%rbp)
	callq	_GC_add_root
	movq	_s_define(%rip), %rax
	movq	_globals(%rip), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_lookup
	movq	%rax, _f_define(%rip)
	movq	-1792(%rbp), %rdi
	callq	_GC_add_root
	movl	$0, -84(%rbp)
	movl	$2, %eax
	leaq	_sigint(%rip), %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_signal
	leaq	-1320(%rbp), %rax
	leaq	_sigvtalrm(%rip), %rcx
	movq	%rcx, -1320(%rbp)
	movl	$0, -1312(%rbp)
	movl	$0, -1308(%rbp)
	movl	$26, %ecx
	movabsq	$0, %rdx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_sigaction
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB216_16
	leaq	L_.str291(%rip), %rax
	movq	%rax, %rdi
	callq	_perror
LBB216_16:
	jmp	LBB216_35
LBB216_17:
	movq	_arguments(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -1328(%rbp)
	leaq	-1328(%rbp), %rax
	leaq	-1376(%rbp), %rcx
	movq	%rax, -1376(%rbp)
	leaq	L_.str292(%rip), %rax
	leaq	L_.str8(%rip), %rdx
	movl	$2886, %esi
	movq	%rcx, %rdi
	movl	%esi, -1796(%rbp)
	movq	%rax, %rsi
	movl	-1796(%rbp), %ecx
	callq	_GC_push_root
	movq	-1328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1384(%rbp)
	movq	-1328(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1392(%rbp)
	movq	-1384(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1400(%rbp)
	movq	-1400(%rbp), %rax
	leaq	L_.str293(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB216_19
	movl	_opt_v(%rip), %eax
	addl	$1, %eax
	movl	%eax, _opt_v(%rip)
	jmp	LBB216_34
LBB216_19:
	movq	-1400(%rbp), %rax
	leaq	L_.str294(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB216_21
	movl	_opt_b(%rip), %eax
	addl	$1, %eax
	movl	%eax, _opt_b(%rip)
	jmp	LBB216_34
LBB216_21:
	movq	-1400(%rbp), %rax
	leaq	L_.str295(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcscmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB216_23
	movl	_opt_g(%rip), %eax
	addl	$1, %eax
	movl	%eax, _opt_g(%rip)
	movl	$0, _opt_p(%rip)
	jmp	LBB216_34
LBB216_23:
	movq	-1400(%rbp), %rax
	leaq	L_.str296(%rip), %rcx
	movabsq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcsncmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB216_27
	movl	$0, _opt_g(%rip)
	movq	-1400(%rbp), %rax
	movabsq	$8, %rcx
	addq	%rcx, %rax
	movabsq	$0, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_wcstoul
	movl	%eax, _opt_p(%rip)
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	jne	LBB216_26
	movl	$1, _opt_p(%rip)
LBB216_26:
	movl	_opt_p(%rip), %eax
	xorb	%cl, %cl
	leaq	L_.str297(%rip), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movb	%cl, %al
	callq	_printf
	jmp	LBB216_34
LBB216_27:
	movl	_opt_b(%rip), %eax
	cmpl	$0, %eax
	jne	LBB216_29
	leaq	L_.str298(%rip), %rax
	movq	%rax, %rdi
	callq	_replPath
	movl	$1, _opt_b(%rip)
	jmp	LBB216_33
LBB216_29:
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB216_31
	callq	_profilingEnable
LBB216_31:
	movq	_arguments(%rip), %rax
	movq	-1392(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-1400(%rbp), %rax
	movq	%rax, %rdi
	callq	_replPath
	movl	$1, -84(%rbp)
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB216_33
	movl	$0, %eax
	movl	%eax, %edi
	callq	_profilingDisable
LBB216_33:
	movq	_arguments(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -1392(%rbp)
LBB216_34:
	movq	_arguments(%rip), %rax
	movq	-1392(%rbp), %rcx
	movq	%rcx, 8(%rax)
	leaq	-1376(%rbp), %rax
	leaq	L_.str292(%rip), %rcx
	leaq	L_.str8(%rip), %rdx
	movl	$2924, %esi
	movq	%rax, %rdi
	movl	%esi, -1800(%rbp)
	movq	%rcx, %rsi
	movl	-1800(%rbp), %ecx
	callq	_GC_pop_root
LBB216_35:
	movq	_arguments(%rip), %rax
	movq	8(%rax), %rax
	cmpq	$0, %rax
	je	LBB216_37
	movq	_arguments(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getType
	movl	%eax, %ecx
	cmpl	$6, %ecx
	je	LBB216_17
LBB216_37:
	movl	_opt_v(%rip), %eax
	cmpl	$0, %eax
	je	LBB216_39
	callq	_GC_gcollect
	callq	_GC_count_fragments
	movabsq	$100, %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1808(%rbp)
	callq	_GC_count_bytes
	movq	%rax, -1816(%rbp)
	callq	_GC_count_objects
	movq	%rax, %rcx
	movq	_GC_collections(%rip), %rdx
	movb	$1, %sil
	leaq	L_.str171(%rip), %rdi
	movb	%sil, -1817(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	-1816(%rbp), %rcx
	movsd	-1808(%rbp), %xmm0
	movb	-1817(%rbp), %r8b
	movb	%r8b, %al
	callq	_printf
LBB216_39:
	movl	-84(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB216_43
	movl	_opt_b(%rip), %eax
	cmpl	$0, %eax
	jne	LBB216_42
	leaq	L_.str298(%rip), %rax
	movq	%rax, %rdi
	callq	_replPath
LBB216_42:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	L_.str121(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_replFile
	leaq	L_.str299(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
LBB216_43:
	movl	_opt_p(%rip), %eax
	cmpl	$0, %eax
	je	LBB216_45
	movl	$1, %eax
	movl	%eax, %edi
	callq	_profilingDisable
LBB216_45:
	movl	$0, -24(%rbp)
LBB216_46:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$1824, %rsp
	popq	%rbp
	ret
Leh_func_end216:

	.section	__DATA,__data
	.align	5
_gcbase:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.quad	_gcbase
	.space	40

	.align	3
_gcnext:
	.quad	_gcbase

	.align	3
_gcQuantum:
	.quad	51200

	.align	2
_gcCount:
	.long	32768

	.align	2
_gcAllocs:
	.long	32768

	.align	3
_gcMemory:
	.quad	2147483647

.zerofill __DATA,__bss,_finalisable,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "GC: sbrk failed\n"

L_.str1:
	.asciz	 "GC: out of memory\n"

	.section	__DATA,__data
	.globl	_GC_pre_mark_function
	.align	3
_GC_pre_mark_function:
	.quad	_GC_default_pre_mark_function

	.globl	_GC_mark_function
	.align	3
_GC_mark_function:
	.quad	_GC_default_mark_function

	.globl	_GC_free_function
.zerofill __DATA,__common,_GC_free_function,8,3
.zerofill __DATA,__bss,_roots,8,3
.zerofill __DATA,__bss,_numRoots,8,3
.zerofill __DATA,__bss,_maxRoots,8,3
	.globl	_GC_stack_roots
.zerofill __DATA,__common,_GC_stack_roots,8,3
	.section	__TEXT,__cstring,cstring_literals
	.align	3
___func__.4790:
	.asciz	 "GC_add_root"

L_.str2:
	.asciz	 "src/gc.c"

L_.str3:
	.asciz	 "root"

	.globl	_GC_collections
.zerofill __DATA,__common,_GC_collections,8,3
	.section	__DATA,__data
	.align	3
_cursors.4871:
	.quad	L_.str4

	.section	__TEXT,__cstring,cstring_literals
L_.str4:
	.asciz	 "-/|\\"

.zerofill __DATA,__bss,_cursor.4872,4,2
L_.str5:
	.asciz	 "%c\b"

	.align	3
L_.str6:
	.asciz	 "accessible dead object %p %s:%ld %s\n"

.zerofill __DATA,__bss,_bufSize.5707,8,3
.zerofill __DATA,__bss,_wcs.5706,8,3
.zerofill __DATA,__bss,_bufSize.5731,8,3
.zerofill __DATA,__bss,_mbs.5730,8,3
.zerofill __DATA,__bss,_symbols,8,3
.zerofill __DATA,__bss,_s_define,8,3
.zerofill __DATA,__bss,_s_set,8,3
.zerofill __DATA,__bss,_s_quote,8,3
.zerofill __DATA,__bss,_s_lambda,8,3
.zerofill __DATA,__bss,_s_let,8,3
.zerofill __DATA,__bss,_s_quasiquote,8,3
.zerofill __DATA,__bss,_s_unquote,8,3
.zerofill __DATA,__bss,_s_unquote_splicing,8,3
.zerofill __DATA,__bss,_s_t,8,3
.zerofill __DATA,__bss,_s_dot,8,3
.zerofill __DATA,__bss,_f_lambda,8,3
.zerofill __DATA,__bss,_f_let,8,3
.zerofill __DATA,__bss,_f_quote,8,3
.zerofill __DATA,__bss,_f_set,8,3
.zerofill __DATA,__bss,_globals,8,3
.zerofill __DATA,__bss,_expanders,8,3
.zerofill __DATA,__bss,_encoders,8,3
.zerofill __DATA,__bss,_evaluators,8,3
.zerofill __DATA,__bss,_applicators,8,3
.zerofill __DATA,__bss,_arguments,8,3
.zerofill __DATA,__bss,_backtrace,8,3
.zerofill __DATA,__bss,_input,8,3
.zerofill __DATA,__bss,_opt_b,4,2
.zerofill __DATA,__bss,_opt_g,4,2
.zerofill __DATA,__bss,_opt_p,4,2
.zerofill __DATA,__bss,_opt_v,4,2
L_.str7:
	.asciz	 "gstr"

L_.str8:
	.asciz	 "src/eval.c"

L_.str9:
	.asciz	 "obj"

	.align	3
L_.str10:
	.asciz	 "*** %s %d %s: STALE POP IN GC_pop_root\n"

	.align	3
L_.str11:
	.asciz	 "*** %s %d %s: CYCLE IN GC_pop_root\n"

	.align	3
L_.str12:
	.asciz	 "*** %s %d %s: LOOP IN GC_pop_root\n"

	.align	3
L_.str13:
	.asciz	 "* gc stack roots = %p %s %ld %s\n"

	.align	3
L_.str14:
	.asciz	 "* popped root    = %p %s %ld %s\n"

	.align	3
L_.str15:
	.asciz	 "* next root      = %p %s %ld %s\n"

L_.str16:
	.asciz	 "newStr"

L_.str17:
	.asciz	 "elts"

L_.str18:
	.asciz	 "array"

L_.str19:
	.asciz	 "undefined variable: %ls"

L_.str20:
	.asciz	 "var"

L_.str21:
	.asciz	 "s"

	.section	__DATA,__data
	.align	5
_chartab:
	.asciz	 "\000\000\000\000\000\000\000\000\000\000\003\000\003\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003!\001!!!!\001\001\001!!!!!!\031\031\031\031\031\031\031\031\031\031!\001!!!!!555555%%%%%%%%%%%%%%%%%%%%\001!\001!!\001555555%%%%%%%%%%%%%%%%%%%%\001!\001!"

.zerofill __DATA,__bss,_currentPath,8,3
.zerofill __DATA,__bss,_currentLine,8,3
.zerofill __DATA,__bss,_currentSource,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str22:
	.asciz	 "head"

L_.str23:
	.asciz	 "missing item after ."

L_.str24:
	.asciz	 "extra item after ."

L_.str25:
	.asciz	 "EOF while reading list"

	.align	3
L_.str26:
	.asciz	 "mismatched delimiter: expected '%c' found '%c'"

	.align	3
L_.str27:
	.asciz	 "illegal digit in character escape"

L_.str28:
	.asciz	 "illegal character escape: \\%c"

.zerofill __DATA,__bss,_buf.6900,16,3
L_.str29:
	.asciz	 "EOF in string literal"

.zerofill __DATA,__bss,_buf.6917,16,3
.zerofill __DATA,__bss,_buf.6938,16,3
	.align	3
L_.str30:
	.asciz	 "illegal character: 0x%02x '%c'"

L_.str31:
	.asciz	 "illegal character: 0x%02x"

L_.str32:
	.asciz	 "()"

L_.str33:
	.asciz	 "<globals>"

L_.str34:
	.asciz	 "UNDEFINED"

L_.str35:
	.asciz	 "<data[%i]"

L_.str36:
	.asciz	 " %02x"

L_.str37:
	.asciz	 "%ld"

L_.str38:
	.asciz	 "%lf"

L_.str39:
	.asciz	 "%ls"

L_.str40:
	.asciz	 "\\\""

L_.str41:
	.asciz	 "\\\\"

L_.str42:
	.asciz	 "\\%03o"

	.align	3
___func__.7091:
	.asciz	 "doprint"

L_.str43:
	.asciz	 "is(Pair, obj)"

L_.str44:
	.asciz	 " . "

L_.str45:
	.asciz	 "Array<%d>("

L_.str46:
	.asciz	 "Expr"

L_.str47:
	.asciz	 "Form("

L_.str48:
	.asciz	 ", "

L_.str49:
	.asciz	 "\033[1m"

L_.str50:
	.asciz	 "\033[m"

L_.str51:
	.asciz	 "Fixed<"

L_.str52:
	.asciz	 "Subr<%p>"

L_.str53:
	.asciz	 "\033[4m"

L_.str54:
	.asciz	 "="

L_.str55:
	.space	1

L_.str56:
	.asciz	 "*"

L_.str57:
	.asciz	 "Env%s%s<%ld+%ld:"

L_.str58:
	.asciz	 "Context<"

	.section	__TEXT,__const
	.align	3
L_.str59:
	.long	37
	.long	116
	.long	121
	.long	112
	.long	101
	.long	45
	.long	110
	.long	97
	.long	109
	.long	101
	.long	115
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str60:
	.asciz	 "\033[34m%ls\033[m"

L_.str61:
	.asciz	 "<type=%i>"

L_.str62:
	.asciz	 "tail"

L_.str63:
	.asciz	 "EXPAND "

L_.str64:
	.asciz	 "args"

L_.str65:
	.asciz	 "EXPAND => "

.zerofill __DATA,__bss,_buf.7319,16,3
	.section	__TEXT,__const
L_.str66:
	.long	115
	.long	101
	.long	116
	.long	45
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str67:
	.asciz	 "ENCODE "

L_.str68:
	.asciz	 "env"

	.align	3
L_.str69:
	.asciz	 "\nerror: non-symbol parameter name: "

.zerofill __DATA,__bss,_f_define,8,3
L_.str70:
	.asciz	 "set: undefined variable: %ls"

L_.str71:
	.asciz	 "ENCODE => "

.zerofill __DATA,__bss,_traceStack,8,3
.zerofill __DATA,__bss,_traceDepth,4,2
L_.str72:
	.asciz	 "%ls:%ld"

L_.str73:
	.asciz	 "\nerror: "

L_.str74:
	.asciz	 "\033[32m\033[?7l"

L_.str75:
	.asciz	 "\033[0m "

L_.str76:
	.asciz	 "\033[?7h"

L_.str77:
	.asciz	 "EVAL "

L_.str78:
	.asciz	 " IN "

L_.str79:
	.asciz	 "APPLY "

L_.str80:
	.asciz	 " TO "

L_.str81:
	.asciz	 "defunc"

L_.str82:
	.asciz	 "ctx"

	.align	3
L_.str83:
	.asciz	 "\nerror: too few arguments applying "

L_.str84:
	.asciz	 " to "

	.align	3
L_.str85:
	.asciz	 "\nerror: too many arguments applying "

L_.str86:
	.asciz	 "\nerror: cannot apply: "

	.align	3
L_.str87:
	.asciz	 "wrong number of arguments (%i) in: %s\n"

	.align	3
L_.str88:
	.asciz	 "\nerror: cannot set undefined variable: "

L_.str89:
	.asciz	 "tmp"

	.align	3
L_.str90:
	.asciz	 "\nerror: non-variable in define: "

L_.str91:
	.asciz	 "~"

L_.str92:
	.asciz	 "%s: non-integer argument: "

L_.str93:
	.asciz	 "&"

L_.str94:
	.asciz	 "|"

L_.str95:
	.asciz	 "^"

L_.str96:
	.asciz	 "<<"

L_.str97:
	.asciz	 ">>"

L_.str98:
	.asciz	 "+"

L_.str99:
	.asciz	 "%s: non-numeric argument: "

L_.str100:
	.asciz	 "/"

L_.str101:
	.asciz	 "-"

L_.str102:
	.asciz	 "-: non-numeric argument: "

L_.str103:
	.asciz	 "%"

L_.str104:
	.asciz	 "%%: non-numeric argument: "

L_.str105:
	.asciz	 "<"

L_.str106:
	.asciz	 "<="

L_.str107:
	.asciz	 ">="

L_.str108:
	.asciz	 ">"

L_.str109:
	.asciz	 "!="

L_.str110:
	.asciz	 "open: non-string argument: "

L_.str111:
	.asciz	 "r"

L_.str112:
	.asciz	 "pclose: non-pipe argument: "

L_.str113:
	.asciz	 "stream"

	.align	3
L_.str114:
	.asciz	 "freadstr: non-stream argument: "

	.section	__TEXT,__const
L_.str115:
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str116:
	.asciz	 "gots me some '%s'"

L_.str117:
	.asciz	 "wrapping up"

L_.str118:
	.asciz	 "rb"

L_.str119:
	.asciz	 "close: non-integer argument: "

L_.str120:
	.asciz	 "getc: non-integer argument: "

	.section	__TEXT,__const
	.align	3
L_.str121:
	.long	60
	.long	115
	.long	116
	.long	100
	.long	105
	.long	110
	.long	62
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str122:
	.asciz	 "read: non-String argument: "

L_.str123:
	.asciz	 "x"

L_.str124:
	.asciz	 "e"

L_.str125:
	.asciz	 "c"

L_.str126:
	.asciz	 "type-of"

L_.str127:
	.asciz	 "format"

L_.str128:
	.asciz	 "format is not a string"

L_.str129:
	.asciz	 "fixed?"

L_.str130:
	.asciz	 "pair?"

L_.str131:
	.asciz	 "car"

L_.str132:
	.asciz	 "set-car"

L_.str133:
	.asciz	 "cdr"

L_.str134:
	.asciz	 "set-cdr"

L_.str135:
	.asciz	 "form?"

L_.str136:
	.asciz	 "symbol?"

L_.str137:
	.asciz	 "string?"

L_.str138:
	.asciz	 "string-length"

	.align	3
L_.str139:
	.asciz	 "string-length: non-String argument: "

L_.str140:
	.asciz	 "string-at"

	.align	3
L_.str141:
	.asciz	 "string-at: non-String argument: "

L_.str142:
	.asciz	 "set-string-at"

	.align	3
L_.str143:
	.asciz	 "set-string-at: non-string argument: "

	.align	3
L_.str144:
	.asciz	 "set-string-at: non-integer index: "

	.align	3
L_.str145:
	.asciz	 "set-string-at: non-integer value: "

L_.str146:
	.asciz	 "string-compare"

	.align	3
L_.str147:
	.asciz	 "string-compare: non-string argument: "

L_.str148:
	.asciz	 "symbol-compare"

	.align	3
L_.str149:
	.asciz	 "symbol-compare: non-symbol argument: "

	.section	__TEXT,__const
L_.str150:
	.long	37
	.long	108
	.long	100
	.long	0

L_.str151:
	.long	37
	.long	102
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str152:
	.asciz	 "array-length"

	.align	3
L_.str153:
	.asciz	 "array-length: non-Array argument: "

L_.str154:
	.asciz	 "array-at"

L_.str155:
	.asciz	 "set-array-at"

L_.str156:
	.asciz	 "byte-at"

L_.str157:
	.asciz	 "set-byte-at"

L_.str158:
	.asciz	 "long-at"

L_.str159:
	.asciz	 "set-long-at"

	.align	3
L_.str160:
	.asciz	 "call: cannot call object of type %i"

	.align	3
L_.str161:
	.asciz	 "subr: argument must be string or symbol"

L_.str162:
	.asciz	 "could not find symbol: %s"

L_.str163:
	.asciz	 "allocate"

L_.str164:
	.asciz	 "oop-at"

L_.str165:
	.asciz	 "set-oop-at"

L_.str166:
	.asciz	 "not"

L_.str167:
	.asciz	 "sin: non-numeric argument: "

L_.str168:
	.asciz	 "cos: non-numeric argument: "

L_.str169:
	.asciz	 "log: non-numeric argument: "

L_.str170:
	.asciz	 " => "

	.align	3
L_.str171:
	.asciz	 "%ld collections, %ld objects, %ld bytes, %4.1f%% fragmentation\n"

	.align	3
L_.str172:
	.asciz	 "unexpected character 0x%02x '%c'\n"

L_.str173:
	.asciz	 "running %s ...\n"

	.section	__TEXT,__const
L_.str174:
	.long	45
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str175:
	.asciz	 "\nInterrupt"

.zerofill __DATA,__bss,_profilerCount,4,2
L_.str176:
	.asciz	 "? %p\n"

L_.str177:
	.asciz	 "%i profiles\n"

L_.str178:
	.asciz	 "%i\t"

L_.str179:
	.asciz	 "%*s"

L_.str180:
	.asciz	 "Cannot set stream widths.\n"

	.align	3
L_.str181:
	.asciz	 "Cannot set the locale.  Verify your LANG, LC_CTYPE, LC_ALL.\n"

	.section	__TEXT,__const
L_.str182:
	.long	115
	.long	101
	.long	116
	.long	0

L_.str183:
	.long	100
	.long	101
	.long	102
	.long	105
	.long	110
	.long	101
	.long	0

L_.str184:
	.long	108
	.long	101
	.long	116
	.long	0

L_.str185:
	.long	108
	.long	97
	.long	109
	.long	98
	.long	100
	.long	97
	.long	0

L_.str186:
	.long	113
	.long	117
	.long	111
	.long	116
	.long	101
	.long	0

	.align	3
L_.str187:
	.long	113
	.long	117
	.long	97
	.long	115
	.long	105
	.long	113
	.long	117
	.long	111
	.long	116
	.long	101
	.long	0

	.align	3
L_.str188:
	.long	117
	.long	110
	.long	113
	.long	117
	.long	111
	.long	116
	.long	101
	.long	0

	.align	3
L_.str189:
	.long	117
	.long	110
	.long	113
	.long	117
	.long	111
	.long	116
	.long	101
	.long	45
	.long	115
	.long	112
	.long	108
	.long	105
	.long	99
	.long	105
	.long	110
	.long	103
	.long	0

L_.str190:
	.long	116
	.long	0

L_.str191:
	.long	46
	.long	0

	.align	3
L_.str192:
	.long	42
	.long	103
	.long	108
	.long	111
	.long	98
	.long	97
	.long	108
	.long	115
	.long	42
	.long	0

	.align	3
L_.str193:
	.long	42
	.long	101
	.long	120
	.long	112
	.long	97
	.long	110
	.long	100
	.long	101
	.long	114
	.long	115
	.long	42
	.long	0

	.align	3
L_.str194:
	.long	42
	.long	101
	.long	110
	.long	99
	.long	111
	.long	100
	.long	101
	.long	114
	.long	115
	.long	42
	.long	0

	.align	3
L_.str195:
	.long	42
	.long	101
	.long	118
	.long	97
	.long	108
	.long	117
	.long	97
	.long	116
	.long	111
	.long	114
	.long	115
	.long	42
	.long	0

	.align	3
L_.str196:
	.long	42
	.long	97
	.long	112
	.long	112
	.long	108
	.long	105
	.long	99
	.long	97
	.long	116
	.long	111
	.long	114
	.long	115
	.long	42
	.long	0

	.align	3
L_.str197:
	.long	42
	.long	98
	.long	97
	.long	99
	.long	107
	.long	116
	.long	114
	.long	97
	.long	99
	.long	101
	.long	42
	.long	0

	.align	3
L_.str198:
	.long	42
	.long	105
	.long	110
	.long	112
	.long	117
	.long	116
	.long	42
	.long	0

L_.str199:
	.long	126
	.long	0

L_.str200:
	.long	38
	.long	0

L_.str201:
	.long	124
	.long	0

L_.str202:
	.long	94
	.long	0

L_.str203:
	.long	60
	.long	60
	.long	0

L_.str204:
	.long	62
	.long	62
	.long	0

L_.str205:
	.long	43
	.long	0

L_.str206:
	.long	42
	.long	0

L_.str207:
	.long	47
	.long	0

L_.str208:
	.long	37
	.long	0

L_.str209:
	.long	60
	.long	0

L_.str210:
	.long	60
	.long	61
	.long	0

L_.str211:
	.long	62
	.long	61
	.long	0

L_.str212:
	.long	62
	.long	0

L_.str213:
	.long	61
	.long	0

L_.str214:
	.long	33
	.long	61
	.long	0

	.section	__DATA,__const
	.align	4
_C.703.10903:
	.quad	L_.str215
	.quad	_subr_if
	.quad	L_.str216
	.quad	_subr_and
	.quad	L_.str217
	.quad	_subr_or
	.quad	L_.str218
	.quad	_subr_set
	.quad	L_.str219
	.quad	_subr_let
	.quad	L_.str220
	.quad	_subr_while
	.quad	L_.str221
	.quad	_subr_quote
	.quad	L_.str222
	.quad	_subr_lambda
	.quad	L_.str223
	.quad	_subr_define
	.quad	L_.str224
	.quad	_subr_definedP
	.quad	L_.str225
	.quad	_subr_exit
	.quad	L_.str226
	.quad	_subr_abort
	.quad	L_.str227
	.quad	_subr_popen
	.quad	L_.str228
	.quad	_subr_pclose
	.quad	L_.str229
	.quad	_subr_freadstr
	.quad	L_.str230
	.quad	_subr_open
	.quad	L_.str231
	.quad	_subr_close
	.quad	L_.str232
	.quad	_subr_getc
	.quad	L_.str233
	.quad	_subr_read
	.quad	L_.str234
	.quad	_subr_expand
	.quad	L_.str235
	.quad	_subr_encode
	.quad	L_.str236
	.quad	_subr_eval
	.quad	L_.str237
	.quad	_subr_apply
	.quad	L_.str238
	.quad	_subr_type_of
	.quad	L_.str239
	.quad	_subr_warn
	.quad	L_.str240
	.quad	_subr_print
	.quad	L_.str241
	.quad	_subr_dump
	.quad	L_.str242
	.quad	_subr_format
	.quad	L_.str243
	.quad	_subr_form
	.quad	L_.str244
	.quad	_subr_fixedP
	.quad	L_.str245
	.quad	_subr_cons
	.quad	L_.str246
	.quad	_subr_pairP
	.quad	L_.str247
	.quad	_subr_car
	.quad	L_.str248
	.quad	_subr_set_car
	.quad	L_.str249
	.quad	_subr_cdr
	.quad	L_.str250
	.quad	_subr_set_cdr
	.quad	L_.str251
	.quad	_subr_formP
	.quad	L_.str252
	.quad	_subr_symbolP
	.quad	L_.str253
	.quad	_subr_stringP
	.quad	L_.str254
	.quad	_subr_string
	.quad	L_.str255
	.quad	_subr_string_length
	.quad	L_.str256
	.quad	_subr_string_at
	.quad	L_.str257
	.quad	_subr_set_string_at
	.quad	L_.str258
	.quad	_subr_string_compare
	.quad	L_.str259
	.quad	_subr_symbol_string
	.quad	L_.str260
	.quad	_subr_string_symbol
	.quad	L_.str261
	.quad	_subr_symbol_compare
	.quad	L_.str262
	.quad	_subr_long_double
	.quad	L_.str263
	.quad	_subr_long_string
	.quad	L_.str264
	.quad	_subr_string_long
	.quad	L_.str265
	.quad	_subr_double_long
	.quad	L_.str266
	.quad	_subr_double_string
	.quad	L_.str267
	.quad	_subr_string_double
	.quad	L_.str268
	.quad	_subr_array
	.quad	L_.str269
	.quad	_subr_arrayP
	.quad	L_.str270
	.quad	_subr_array_length
	.quad	L_.str271
	.quad	_subr_array_at
	.quad	L_.str272
	.quad	_subr_set_array_at
	.quad	L_.str273
	.quad	_subr_data
	.quad	L_.str274
	.quad	_subr_byte_at
	.quad	L_.str275
	.quad	_subr_set_byte_at
	.quad	L_.str276
	.quad	_subr_long_at
	.quad	L_.str277
	.quad	_subr_set_long_at
	.quad	L_.str278
	.quad	_subr_call
	.quad	L_.str279
	.quad	_subr_subr
	.quad	L_.str280
	.quad	_subr_allocate
	.quad	L_.str281
	.quad	_subr_oop_at
	.quad	L_.str282
	.quad	_subr_set_oop_at
	.quad	L_.str283
	.quad	_subr_not
	.quad	L_.str284
	.quad	_subr_verbose
	.quad	L_.str285
	.quad	_subr_sin
	.quad	L_.str286
	.quad	_subr_cos
	.quad	L_.str287
	.quad	_subr_log
	.quad	L_.str288
	.quad	_subr_address_of
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str215:
	.asciz	 ".if"

L_.str216:
	.asciz	 ".and"

L_.str217:
	.asciz	 ".or"

L_.str218:
	.asciz	 ".set"

L_.str219:
	.asciz	 ".let"

L_.str220:
	.asciz	 ".while"

L_.str221:
	.asciz	 ".quote"

L_.str222:
	.asciz	 ".lambda"

L_.str223:
	.asciz	 ".define"

L_.str224:
	.asciz	 " defined?"

L_.str225:
	.asciz	 " exit"

L_.str226:
	.asciz	 " abort"

L_.str227:
	.asciz	 " popen"

L_.str228:
	.asciz	 " pclose"

L_.str229:
	.asciz	 " freadstr"

L_.str230:
	.asciz	 " open"

L_.str231:
	.asciz	 " close"

L_.str232:
	.asciz	 " getc"

L_.str233:
	.asciz	 " read"

L_.str234:
	.asciz	 " expand"

L_.str235:
	.asciz	 " encode"

L_.str236:
	.asciz	 " eval"

L_.str237:
	.asciz	 " apply"

L_.str238:
	.asciz	 " type-of"

L_.str239:
	.asciz	 " warn"

L_.str240:
	.asciz	 " print"

L_.str241:
	.asciz	 " dump"

L_.str242:
	.asciz	 " format"

L_.str243:
	.asciz	 " form"

L_.str244:
	.asciz	 " fixed?"

L_.str245:
	.asciz	 " cons"

L_.str246:
	.asciz	 " pair?"

L_.str247:
	.asciz	 " car"

L_.str248:
	.asciz	 " set-car"

L_.str249:
	.asciz	 " cdr"

L_.str250:
	.asciz	 " set-cdr"

L_.str251:
	.asciz	 " form?"

L_.str252:
	.asciz	 " symbol?"

L_.str253:
	.asciz	 " string?"

L_.str254:
	.asciz	 " string"

L_.str255:
	.asciz	 " string-length"

L_.str256:
	.asciz	 " string-at"

L_.str257:
	.asciz	 " set-string-at"

L_.str258:
	.asciz	 " string-compare"

L_.str259:
	.asciz	 " symbol->string"

L_.str260:
	.asciz	 " string->symbol"

L_.str261:
	.asciz	 " symbol-compare"

L_.str262:
	.asciz	 " long->double"

L_.str263:
	.asciz	 " long->string"

L_.str264:
	.asciz	 " string->long"

L_.str265:
	.asciz	 " double->long"

L_.str266:
	.asciz	 " double->string"

L_.str267:
	.asciz	 " string->double"

L_.str268:
	.asciz	 " array"

L_.str269:
	.asciz	 " array?"

L_.str270:
	.asciz	 " array-length"

L_.str271:
	.asciz	 " array-at"

L_.str272:
	.asciz	 " set-array-at"

L_.str273:
	.asciz	 " data"

L_.str274:
	.asciz	 " byte-at"

L_.str275:
	.asciz	 " set-byte-at"

L_.str276:
	.asciz	 " long-at"

L_.str277:
	.asciz	 " set-long-at"

L_.str278:
	.asciz	 " call"

L_.str279:
	.asciz	 " subr"

L_.str280:
	.asciz	 " allocate"

L_.str281:
	.asciz	 " oop-at"

L_.str282:
	.asciz	 " set-oop-at"

L_.str283:
	.asciz	 " not"

L_.str284:
	.asciz	 " verbose"

L_.str285:
	.asciz	 " sin"

L_.str286:
	.asciz	 " cos"

L_.str287:
	.asciz	 " log"

L_.str288:
	.asciz	 " address-of"

L_.str289:
	.asciz	 "maru-bootstrap-2.1\n\n"

	.section	__TEXT,__const
	.align	3
L_.str290:
	.long	42
	.long	97
	.long	114
	.long	103
	.long	117
	.long	109
	.long	101
	.long	110
	.long	116
	.long	115
	.long	42
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str291:
	.asciz	 "vtalrm"

L_.str292:
	.asciz	 "argl"

	.section	__TEXT,__const
L_.str293:
	.long	45
	.long	118
	.long	0

L_.str294:
	.long	45
	.long	98
	.long	0

L_.str295:
	.long	45
	.long	103
	.long	0

L_.str296:
	.long	45
	.long	112
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str297:
	.asciz	 "profiling every %i mSec(s)\n"

	.section	__TEXT,__const
L_.str298:
	.long	98
	.long	111
	.long	111
	.long	116
	.long	46
	.long	108
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_.str299:
	.asciz	 "\nmorituri te salutant"

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
	.globl	_GC_stamp.eh
_GC_stamp.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp630:
	.quad	Leh_func_begin1-Ltmp630
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

_ptr2hdr.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp631:
	.quad	Leh_func_begin2-Ltmp631
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

	.globl	_GC_file.eh
_GC_file.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp632:
	.quad	Leh_func_begin3-Ltmp632
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

	.globl	_GC_line.eh
_GC_line.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp633:
	.quad	Leh_func_begin4-Ltmp633
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

	.globl	_GC_function.eh
_GC_function.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp634:
	.quad	Leh_func_begin5-Ltmp634
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp11-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp12-Ltmp11
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

	.globl	_GC_malloc.eh
_GC_malloc.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp635:
	.quad	Leh_func_begin6-Ltmp635
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp14-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp15-Ltmp14
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

_hdr2ptr.eh:
Lset31 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset31
Leh_frame_begin7:
Lset32 = Leh_frame_begin7-Leh_frame_common
	.long	Lset32
Ltmp636:
	.quad	Leh_func_begin7-Ltmp636
Lset33 = Leh_func_end7-Leh_func_begin7
	.quad	Lset33
	.byte	0
	.byte	4
Lset34 = Ltmp17-Leh_func_begin7
	.long	Lset34
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset35 = Ltmp18-Ltmp17
	.long	Lset35
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

___inline_memset_chk.eh:
Lset36 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset36
Leh_frame_begin8:
Lset37 = Leh_frame_begin8-Leh_frame_common
	.long	Lset37
Ltmp637:
	.quad	Leh_func_begin8-Ltmp637
Lset38 = Leh_func_end8-Leh_func_begin8
	.quad	Lset38
	.byte	0
	.byte	4
Lset39 = Ltmp19-Leh_func_begin8
	.long	Lset39
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset40 = Ltmp20-Ltmp19
	.long	Lset40
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

	.globl	_GC_malloc_atomic.eh
_GC_malloc_atomic.eh:
Lset41 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset41
Leh_frame_begin9:
Lset42 = Leh_frame_begin9-Leh_frame_common
	.long	Lset42
Ltmp638:
	.quad	Leh_func_begin9-Ltmp638
Lset43 = Leh_func_end9-Leh_func_begin9
	.quad	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp22-Leh_func_begin9
	.long	Lset44
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset45 = Ltmp23-Ltmp22
	.long	Lset45
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	_GC_realloc.eh
_GC_realloc.eh:
Lset46 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset46
Leh_frame_begin10:
Lset47 = Leh_frame_begin10-Leh_frame_common
	.long	Lset47
Ltmp639:
	.quad	Leh_func_begin10-Ltmp639
Lset48 = Leh_func_end10-Leh_func_begin10
	.quad	Lset48
	.byte	0
	.byte	4
Lset49 = Ltmp25-Leh_func_begin10
	.long	Lset49
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset50 = Ltmp26-Ltmp25
	.long	Lset50
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

___inline_memcpy_chk.eh:
Lset51 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset51
Leh_frame_begin11:
Lset52 = Leh_frame_begin11-Leh_frame_common
	.long	Lset52
Ltmp640:
	.quad	Leh_func_begin11-Ltmp640
Lset53 = Leh_func_end11-Leh_func_begin11
	.quad	Lset53
	.byte	0
	.byte	4
Lset54 = Ltmp28-Leh_func_begin11
	.long	Lset54
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset55 = Ltmp29-Ltmp28
	.long	Lset55
	.byte	13
	.byte	6
	.align	3
Leh_frame_end11:

_GC_freeHeader.eh:
Lset56 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset56
Leh_frame_begin12:
Lset57 = Leh_frame_begin12-Leh_frame_common
	.long	Lset57
Ltmp641:
	.quad	Leh_func_begin12-Ltmp641
Lset58 = Leh_func_end12-Leh_func_begin12
	.quad	Lset58
	.byte	0
	.byte	4
Lset59 = Ltmp31-Leh_func_begin12
	.long	Lset59
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset60 = Ltmp32-Ltmp31
	.long	Lset60
	.byte	13
	.byte	6
	.align	3
Leh_frame_end12:

	.globl	_GC_free.eh
_GC_free.eh:
Lset61 = Leh_frame_end13-Leh_frame_begin13
	.long	Lset61
Leh_frame_begin13:
Lset62 = Leh_frame_begin13-Leh_frame_common
	.long	Lset62
Ltmp642:
	.quad	Leh_func_begin13-Ltmp642
Lset63 = Leh_func_end13-Leh_func_begin13
	.quad	Lset63
	.byte	0
	.byte	4
Lset64 = Ltmp33-Leh_func_begin13
	.long	Lset64
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset65 = Ltmp34-Ltmp33
	.long	Lset65
	.byte	13
	.byte	6
	.align	3
Leh_frame_end13:

	.globl	_GC_size.eh
_GC_size.eh:
Lset66 = Leh_frame_end14-Leh_frame_begin14
	.long	Lset66
Leh_frame_begin14:
Lset67 = Leh_frame_begin14-Leh_frame_common
	.long	Lset67
Ltmp643:
	.quad	Leh_func_begin14-Ltmp643
Lset68 = Leh_func_end14-Leh_func_begin14
	.quad	Lset68
	.byte	0
	.byte	4
Lset69 = Ltmp36-Leh_func_begin14
	.long	Lset69
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset70 = Ltmp37-Ltmp36
	.long	Lset70
	.byte	13
	.byte	6
	.align	3
Leh_frame_end14:

	.globl	_GC_default_pre_mark_function.eh
_GC_default_pre_mark_function.eh:
Lset71 = Leh_frame_end15-Leh_frame_begin15
	.long	Lset71
Leh_frame_begin15:
Lset72 = Leh_frame_begin15-Leh_frame_common
	.long	Lset72
Ltmp644:
	.quad	Leh_func_begin15-Ltmp644
Lset73 = Leh_func_end15-Leh_func_begin15
	.quad	Lset73
	.byte	0
	.byte	4
Lset74 = Ltmp39-Leh_func_begin15
	.long	Lset74
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset75 = Ltmp40-Ltmp39
	.long	Lset75
	.byte	13
	.byte	6
	.align	3
Leh_frame_end15:

	.globl	_GC_default_mark_function.eh
_GC_default_mark_function.eh:
Lset76 = Leh_frame_end16-Leh_frame_begin16
	.long	Lset76
Leh_frame_begin16:
Lset77 = Leh_frame_begin16-Leh_frame_common
	.long	Lset77
Ltmp645:
	.quad	Leh_func_begin16-Ltmp645
Lset78 = Leh_func_end16-Leh_func_begin16
	.quad	Lset78
	.byte	0
	.byte	4
Lset79 = Ltmp41-Leh_func_begin16
	.long	Lset79
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset80 = Ltmp42-Ltmp41
	.long	Lset80
	.byte	13
	.byte	6
	.align	3
Leh_frame_end16:

	.globl	_GC_mark.eh
_GC_mark.eh:
Lset81 = Leh_frame_end17-Leh_frame_begin17
	.long	Lset81
Leh_frame_begin17:
Lset82 = Leh_frame_begin17-Leh_frame_common
	.long	Lset82
Ltmp646:
	.quad	Leh_func_begin17-Ltmp646
Lset83 = Leh_func_end17-Leh_func_begin17
	.quad	Lset83
	.byte	0
	.byte	4
Lset84 = Ltmp44-Leh_func_begin17
	.long	Lset84
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset85 = Ltmp45-Ltmp44
	.long	Lset85
	.byte	13
	.byte	6
	.align	3
Leh_frame_end17:

	.globl	_GC_mark_leaf.eh
_GC_mark_leaf.eh:
Lset86 = Leh_frame_end18-Leh_frame_begin18
	.long	Lset86
Leh_frame_begin18:
Lset87 = Leh_frame_begin18-Leh_frame_common
	.long	Lset87
Ltmp647:
	.quad	Leh_func_begin18-Ltmp647
Lset88 = Leh_func_end18-Leh_func_begin18
	.quad	Lset88
	.byte	0
	.byte	4
Lset89 = Ltmp47-Leh_func_begin18
	.long	Lset89
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset90 = Ltmp48-Ltmp47
	.long	Lset90
	.byte	13
	.byte	6
	.align	3
Leh_frame_end18:

	.globl	_GC_sweep.eh
_GC_sweep.eh:
Lset91 = Leh_frame_end19-Leh_frame_begin19
	.long	Lset91
Leh_frame_begin19:
Lset92 = Leh_frame_begin19-Leh_frame_common
	.long	Lset92
Ltmp648:
	.quad	Leh_func_begin19-Ltmp648
Lset93 = Leh_func_end19-Leh_func_begin19
	.quad	Lset93
	.byte	0
	.byte	4
Lset94 = Ltmp50-Leh_func_begin19
	.long	Lset94
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset95 = Ltmp51-Ltmp50
	.long	Lset95
	.byte	13
	.byte	6
	.align	3
Leh_frame_end19:

	.globl	_GC_add_root.eh
_GC_add_root.eh:
Lset96 = Leh_frame_end20-Leh_frame_begin20
	.long	Lset96
Leh_frame_begin20:
Lset97 = Leh_frame_begin20-Leh_frame_common
	.long	Lset97
Ltmp649:
	.quad	Leh_func_begin20-Ltmp649
Lset98 = Leh_func_end20-Leh_func_begin20
	.quad	Lset98
	.byte	0
	.byte	4
Lset99 = Ltmp53-Leh_func_begin20
	.long	Lset99
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset100 = Ltmp54-Ltmp53
	.long	Lset100
	.byte	13
	.byte	6
	.align	3
Leh_frame_end20:

	.globl	_GC_delete_root.eh
_GC_delete_root.eh:
Lset101 = Leh_frame_end21-Leh_frame_begin21
	.long	Lset101
Leh_frame_begin21:
Lset102 = Leh_frame_begin21-Leh_frame_common
	.long	Lset102
Ltmp650:
	.quad	Leh_func_begin21-Ltmp650
Lset103 = Leh_func_end21-Leh_func_begin21
	.quad	Lset103
	.byte	0
	.byte	4
Lset104 = Ltmp56-Leh_func_begin21
	.long	Lset104
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset105 = Ltmp57-Ltmp56
	.long	Lset105
	.byte	13
	.byte	6
	.align	3
Leh_frame_end21:

___inline_memmove_chk.eh:
Lset106 = Leh_frame_end22-Leh_frame_begin22
	.long	Lset106
Leh_frame_begin22:
Lset107 = Leh_frame_begin22-Leh_frame_common
	.long	Lset107
Ltmp651:
	.quad	Leh_func_begin22-Ltmp651
Lset108 = Leh_func_end22-Leh_func_begin22
	.quad	Lset108
	.byte	0
	.byte	4
Lset109 = Ltmp59-Leh_func_begin22
	.long	Lset109
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset110 = Ltmp60-Ltmp59
	.long	Lset110
	.byte	13
	.byte	6
	.align	3
Leh_frame_end22:

	.globl	_GC_gcollect.eh
_GC_gcollect.eh:
Lset111 = Leh_frame_end23-Leh_frame_begin23
	.long	Lset111
Leh_frame_begin23:
Lset112 = Leh_frame_begin23-Leh_frame_common
	.long	Lset112
Ltmp652:
	.quad	Leh_func_begin23-Ltmp652
Lset113 = Leh_func_end23-Leh_func_begin23
	.quad	Lset113
	.byte	0
	.byte	4
Lset114 = Ltmp62-Leh_func_begin23
	.long	Lset114
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset115 = Ltmp63-Ltmp62
	.long	Lset115
	.byte	13
	.byte	6
	.align	3
Leh_frame_end23:

	.globl	_GC_count_objects.eh
_GC_count_objects.eh:
Lset116 = Leh_frame_end24-Leh_frame_begin24
	.long	Lset116
Leh_frame_begin24:
Lset117 = Leh_frame_begin24-Leh_frame_common
	.long	Lset117
Ltmp653:
	.quad	Leh_func_begin24-Ltmp653
Lset118 = Leh_func_end24-Leh_func_begin24
	.quad	Lset118
	.byte	0
	.byte	4
Lset119 = Ltmp65-Leh_func_begin24
	.long	Lset119
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset120 = Ltmp66-Ltmp65
	.long	Lset120
	.byte	13
	.byte	6
	.align	3
Leh_frame_end24:

	.globl	_GC_count_bytes.eh
_GC_count_bytes.eh:
Lset121 = Leh_frame_end25-Leh_frame_begin25
	.long	Lset121
Leh_frame_begin25:
Lset122 = Leh_frame_begin25-Leh_frame_common
	.long	Lset122
Ltmp654:
	.quad	Leh_func_begin25-Ltmp654
Lset123 = Leh_func_end25-Leh_func_begin25
	.quad	Lset123
	.byte	0
	.byte	4
Lset124 = Ltmp67-Leh_func_begin25
	.long	Lset124
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset125 = Ltmp68-Ltmp67
	.long	Lset125
	.byte	13
	.byte	6
	.align	3
Leh_frame_end25:

	.globl	_GC_count_fragments.eh
_GC_count_fragments.eh:
Lset126 = Leh_frame_end26-Leh_frame_begin26
	.long	Lset126
Leh_frame_begin26:
Lset127 = Leh_frame_begin26-Leh_frame_common
	.long	Lset127
Ltmp655:
	.quad	Leh_func_begin26-Ltmp655
Lset128 = Leh_func_end26-Leh_func_begin26
	.quad	Lset128
	.byte	0
	.byte	4
Lset129 = Ltmp69-Leh_func_begin26
	.long	Lset129
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset130 = Ltmp70-Ltmp69
	.long	Lset130
	.byte	13
	.byte	6
	.align	3
Leh_frame_end26:

	.globl	_GC_first_object.eh
_GC_first_object.eh:
Lset131 = Leh_frame_end27-Leh_frame_begin27
	.long	Lset131
Leh_frame_begin27:
Lset132 = Leh_frame_begin27-Leh_frame_common
	.long	Lset132
Ltmp656:
	.quad	Leh_func_begin27-Ltmp656
Lset133 = Leh_func_end27-Leh_func_begin27
	.quad	Lset133
	.byte	0
	.byte	4
Lset134 = Ltmp72-Leh_func_begin27
	.long	Lset134
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset135 = Ltmp73-Ltmp72
	.long	Lset135
	.byte	13
	.byte	6
	.align	3
Leh_frame_end27:

	.globl	_GC_next_object.eh
_GC_next_object.eh:
Lset136 = Leh_frame_end28-Leh_frame_begin28
	.long	Lset136
Leh_frame_begin28:
Lset137 = Leh_frame_begin28-Leh_frame_common
	.long	Lset137
Ltmp657:
	.quad	Leh_func_begin28-Ltmp657
Lset138 = Leh_func_end28-Leh_func_begin28
	.quad	Lset138
	.byte	0
	.byte	4
Lset139 = Ltmp75-Leh_func_begin28
	.long	Lset139
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset140 = Ltmp76-Ltmp75
	.long	Lset140
	.byte	13
	.byte	6
	.align	3
Leh_frame_end28:

	.globl	_GC_atomic.eh
_GC_atomic.eh:
Lset141 = Leh_frame_end29-Leh_frame_begin29
	.long	Lset141
Leh_frame_begin29:
Lset142 = Leh_frame_begin29-Leh_frame_common
	.long	Lset142
Ltmp658:
	.quad	Leh_func_begin29-Ltmp658
Lset143 = Leh_func_end29-Leh_func_begin29
	.quad	Lset143
	.byte	0
	.byte	4
Lset144 = Ltmp78-Leh_func_begin29
	.long	Lset144
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset145 = Ltmp79-Ltmp78
	.long	Lset145
	.byte	13
	.byte	6
	.align	3
Leh_frame_end29:

	.globl	_GC_check.eh
_GC_check.eh:
Lset146 = Leh_frame_end30-Leh_frame_begin30
	.long	Lset146
Leh_frame_begin30:
Lset147 = Leh_frame_begin30-Leh_frame_common
	.long	Lset147
Ltmp659:
	.quad	Leh_func_begin30-Ltmp659
Lset148 = Leh_func_end30-Leh_func_begin30
	.quad	Lset148
	.byte	0
	.byte	4
Lset149 = Ltmp81-Leh_func_begin30
	.long	Lset149
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset150 = Ltmp82-Ltmp81
	.long	Lset150
	.byte	13
	.byte	6
	.align	3
Leh_frame_end30:

	.globl	_GC_register_finaliser.eh
_GC_register_finaliser.eh:
Lset151 = Leh_frame_end31-Leh_frame_begin31
	.long	Lset151
Leh_frame_begin31:
Lset152 = Leh_frame_begin31-Leh_frame_common
	.long	Lset152
Ltmp660:
	.quad	Leh_func_begin31-Ltmp660
Lset153 = Leh_func_end31-Leh_func_begin31
	.quad	Lset153
	.byte	0
	.byte	4
Lset154 = Ltmp84-Leh_func_begin31
	.long	Lset154
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset155 = Ltmp85-Ltmp84
	.long	Lset155
	.byte	13
	.byte	6
	.align	3
Leh_frame_end31:

_mbs2wcs.eh:
Lset156 = Leh_frame_end32-Leh_frame_begin32
	.long	Lset156
Leh_frame_begin32:
Lset157 = Leh_frame_begin32-Leh_frame_common
	.long	Lset157
Ltmp661:
	.quad	Leh_func_begin32-Ltmp661
Lset158 = Leh_func_end32-Leh_func_begin32
	.quad	Lset158
	.byte	0
	.byte	4
Lset159 = Ltmp87-Leh_func_begin32
	.long	Lset159
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset160 = Ltmp88-Ltmp87
	.long	Lset160
	.byte	13
	.byte	6
	.align	3
Leh_frame_end32:

_wcs2mbs.eh:
Lset161 = Leh_frame_end33-Leh_frame_begin33
	.long	Lset161
Leh_frame_begin33:
Lset162 = Leh_frame_begin33-Leh_frame_common
	.long	Lset162
Ltmp662:
	.quad	Leh_func_begin33-Ltmp662
Lset163 = Leh_func_end33-Leh_func_begin33
	.quad	Lset163
	.byte	0
	.byte	4
Lset164 = Ltmp90-Leh_func_begin33
	.long	Lset164
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset165 = Ltmp91-Ltmp90
	.long	Lset165
	.byte	13
	.byte	6
	.align	3
Leh_frame_end33:

_car.eh:
Lset166 = Leh_frame_end34-Leh_frame_begin34
	.long	Lset166
Leh_frame_begin34:
Lset167 = Leh_frame_begin34-Leh_frame_common
	.long	Lset167
Ltmp663:
	.quad	Leh_func_begin34-Ltmp663
Lset168 = Leh_func_end34-Leh_func_begin34
	.quad	Lset168
	.byte	0
	.byte	4
Lset169 = Ltmp93-Leh_func_begin34
	.long	Lset169
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset170 = Ltmp94-Ltmp93
	.long	Lset170
	.byte	13
	.byte	6
	.align	3
Leh_frame_end34:

_getType.eh:
Lset171 = Leh_frame_end35-Leh_frame_begin35
	.long	Lset171
Leh_frame_begin35:
Lset172 = Leh_frame_begin35-Leh_frame_common
	.long	Lset172
Ltmp664:
	.quad	Leh_func_begin35-Ltmp664
Lset173 = Leh_func_end35-Leh_func_begin35
	.quad	Lset173
	.byte	0
	.byte	4
Lset174 = Ltmp96-Leh_func_begin35
	.long	Lset174
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset175 = Ltmp97-Ltmp96
	.long	Lset175
	.byte	13
	.byte	6
	.align	3
Leh_frame_end35:

_cdr.eh:
Lset176 = Leh_frame_end36-Leh_frame_begin36
	.long	Lset176
Leh_frame_begin36:
Lset177 = Leh_frame_begin36-Leh_frame_common
	.long	Lset177
Ltmp665:
	.quad	Leh_func_begin36-Ltmp665
Lset178 = Leh_func_end36-Leh_func_begin36
	.quad	Lset178
	.byte	0
	.byte	4
Lset179 = Ltmp99-Leh_func_begin36
	.long	Lset179
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset180 = Ltmp100-Ltmp99
	.long	Lset180
	.byte	13
	.byte	6
	.align	3
Leh_frame_end36:

_caar.eh:
Lset181 = Leh_frame_end37-Leh_frame_begin37
	.long	Lset181
Leh_frame_begin37:
Lset182 = Leh_frame_begin37-Leh_frame_common
	.long	Lset182
Ltmp666:
	.quad	Leh_func_begin37-Ltmp666
Lset183 = Leh_func_end37-Leh_func_begin37
	.quad	Lset183
	.byte	0
	.byte	4
Lset184 = Ltmp102-Leh_func_begin37
	.long	Lset184
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset185 = Ltmp103-Ltmp102
	.long	Lset185
	.byte	13
	.byte	6
	.align	3
Leh_frame_end37:

_cadr.eh:
Lset186 = Leh_frame_end38-Leh_frame_begin38
	.long	Lset186
Leh_frame_begin38:
Lset187 = Leh_frame_begin38-Leh_frame_common
	.long	Lset187
Ltmp667:
	.quad	Leh_func_begin38-Ltmp667
Lset188 = Leh_func_end38-Leh_func_begin38
	.quad	Lset188
	.byte	0
	.byte	4
Lset189 = Ltmp105-Leh_func_begin38
	.long	Lset189
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset190 = Ltmp106-Ltmp105
	.long	Lset190
	.byte	13
	.byte	6
	.align	3
Leh_frame_end38:

_cddr.eh:
Lset191 = Leh_frame_end39-Leh_frame_begin39
	.long	Lset191
Leh_frame_begin39:
Lset192 = Leh_frame_begin39-Leh_frame_common
	.long	Lset192
Ltmp668:
	.quad	Leh_func_begin39-Ltmp668
Lset193 = Leh_func_end39-Leh_func_begin39
	.quad	Lset193
	.byte	0
	.byte	4
Lset194 = Ltmp108-Leh_func_begin39
	.long	Lset194
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset195 = Ltmp109-Ltmp108
	.long	Lset195
	.byte	13
	.byte	6
	.align	3
Leh_frame_end39:

__newBits.eh:
Lset196 = Leh_frame_end40-Leh_frame_begin40
	.long	Lset196
Leh_frame_begin40:
Lset197 = Leh_frame_begin40-Leh_frame_common
	.long	Lset197
Ltmp669:
	.quad	Leh_func_begin40-Ltmp669
Lset198 = Leh_func_end40-Leh_func_begin40
	.quad	Lset198
	.byte	0
	.byte	4
Lset199 = Ltmp111-Leh_func_begin40
	.long	Lset199
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset200 = Ltmp112-Ltmp111
	.long	Lset200
	.byte	13
	.byte	6
	.align	3
Leh_frame_end40:

__newOops.eh:
Lset201 = Leh_frame_end41-Leh_frame_begin41
	.long	Lset201
Leh_frame_begin41:
Lset202 = Leh_frame_begin41-Leh_frame_common
	.long	Lset202
Ltmp670:
	.quad	Leh_func_begin41-Ltmp670
Lset203 = Leh_func_end41-Leh_func_begin41
	.quad	Lset203
	.byte	0
	.byte	4
Lset204 = Ltmp114-Leh_func_begin41
	.long	Lset204
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset205 = Ltmp115-Ltmp114
	.long	Lset205
	.byte	13
	.byte	6
	.align	3
Leh_frame_end41:

_newData.eh:
Lset206 = Leh_frame_end42-Leh_frame_begin42
	.long	Lset206
Leh_frame_begin42:
Lset207 = Leh_frame_begin42-Leh_frame_common
	.long	Lset207
Ltmp671:
	.quad	Leh_func_begin42-Ltmp671
Lset208 = Leh_func_end42-Leh_func_begin42
	.quad	Lset208
	.byte	0
	.byte	4
Lset209 = Ltmp117-Leh_func_begin42
	.long	Lset209
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset210 = Ltmp118-Ltmp117
	.long	Lset210
	.byte	13
	.byte	6
	.align	3
Leh_frame_end42:

_setDouble.eh:
Lset211 = Leh_frame_end43-Leh_frame_begin43
	.long	Lset211
Leh_frame_begin43:
Lset212 = Leh_frame_begin43-Leh_frame_common
	.long	Lset212
Ltmp672:
	.quad	Leh_func_begin43-Ltmp672
Lset213 = Leh_func_end43-Leh_func_begin43
	.quad	Lset213
	.byte	0
	.byte	4
Lset214 = Ltmp120-Leh_func_begin43
	.long	Lset214
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset215 = Ltmp121-Ltmp120
	.long	Lset215
	.byte	13
	.byte	6
	.align	3
Leh_frame_end43:

_getDouble.eh:
Lset216 = Leh_frame_end44-Leh_frame_begin44
	.long	Lset216
Leh_frame_begin44:
Lset217 = Leh_frame_begin44-Leh_frame_common
	.long	Lset217
Ltmp673:
	.quad	Leh_func_begin44-Ltmp673
Lset218 = Leh_func_end44-Leh_func_begin44
	.quad	Lset218
	.byte	0
	.byte	4
Lset219 = Ltmp123-Leh_func_begin44
	.long	Lset219
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset220 = Ltmp124-Ltmp123
	.long	Lset220
	.byte	13
	.byte	6
	.align	3
Leh_frame_end44:

_newDouble.eh:
Lset221 = Leh_frame_end45-Leh_frame_begin45
	.long	Lset221
Leh_frame_begin45:
Lset222 = Leh_frame_begin45-Leh_frame_common
	.long	Lset222
Ltmp674:
	.quad	Leh_func_begin45-Ltmp674
Lset223 = Leh_func_end45-Leh_func_begin45
	.quad	Lset223
	.byte	0
	.byte	4
Lset224 = Ltmp125-Leh_func_begin45
	.long	Lset224
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset225 = Ltmp126-Ltmp125
	.long	Lset225
	.byte	13
	.byte	6
	.align	3
Leh_frame_end45:

__newString.eh:
Lset226 = Leh_frame_end46-Leh_frame_begin46
	.long	Lset226
Leh_frame_begin46:
Lset227 = Leh_frame_begin46-Leh_frame_common
	.long	Lset227
Ltmp675:
	.quad	Leh_func_begin46-Ltmp675
Lset228 = Leh_func_end46-Leh_func_begin46
	.quad	Lset228
	.byte	0
	.byte	4
Lset229 = Ltmp128-Leh_func_begin46
	.long	Lset229
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset230 = Ltmp129-Ltmp128
	.long	Lset230
	.byte	13
	.byte	6
	.align	3
Leh_frame_end46:

_GC_push_root.eh:
Lset231 = Leh_frame_end47-Leh_frame_begin47
	.long	Lset231
Leh_frame_begin47:
Lset232 = Leh_frame_begin47-Leh_frame_common
	.long	Lset232
Ltmp676:
	.quad	Leh_func_begin47-Ltmp676
Lset233 = Leh_func_end47-Leh_func_begin47
	.quad	Lset233
	.byte	0
	.byte	4
Lset234 = Ltmp131-Leh_func_begin47
	.long	Lset234
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset235 = Ltmp132-Ltmp131
	.long	Lset235
	.byte	13
	.byte	6
	.align	3
Leh_frame_end47:

_newLong.eh:
Lset236 = Leh_frame_end48-Leh_frame_begin48
	.long	Lset236
Leh_frame_begin48:
Lset237 = Leh_frame_begin48-Leh_frame_common
	.long	Lset237
Ltmp677:
	.quad	Leh_func_begin48-Ltmp677
Lset238 = Leh_func_end48-Leh_func_begin48
	.quad	Lset238
	.byte	0
	.byte	4
Lset239 = Ltmp133-Leh_func_begin48
	.long	Lset239
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset240 = Ltmp134-Ltmp133
	.long	Lset240
	.byte	13
	.byte	6
	.align	3
Leh_frame_end48:

_GC_pop_root.eh:
Lset241 = Leh_frame_end49-Leh_frame_begin49
	.long	Lset241
Leh_frame_begin49:
Lset242 = Leh_frame_begin49-Leh_frame_common
	.long	Lset242
Ltmp678:
	.quad	Leh_func_begin49-Ltmp678
Lset243 = Leh_func_end49-Leh_func_begin49
	.quad	Lset243
	.byte	0
	.byte	4
Lset244 = Ltmp136-Leh_func_begin49
	.long	Lset244
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset245 = Ltmp137-Ltmp136
	.long	Lset245
	.byte	13
	.byte	6
	.align	3
Leh_frame_end49:

_GC_roots_include.eh:
Lset246 = Leh_frame_end50-Leh_frame_begin50
	.long	Lset246
Leh_frame_begin50:
Lset247 = Leh_frame_begin50-Leh_frame_common
	.long	Lset247
Ltmp679:
	.quad	Leh_func_begin50-Ltmp679
Lset248 = Leh_func_end50-Leh_func_begin50
	.quad	Lset248
	.byte	0
	.byte	4
Lset249 = Ltmp139-Leh_func_begin50
	.long	Lset249
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset250 = Ltmp140-Ltmp139
	.long	Lset250
	.byte	13
	.byte	6
	.align	3
Leh_frame_end50:

_newString.eh:
Lset251 = Leh_frame_end51-Leh_frame_begin51
	.long	Lset251
Leh_frame_begin51:
Lset252 = Leh_frame_begin51-Leh_frame_common
	.long	Lset252
Ltmp680:
	.quad	Leh_func_begin51-Ltmp680
Lset253 = Leh_func_end51-Leh_func_begin51
	.quad	Lset253
	.byte	0
	.byte	4
Lset254 = Ltmp141-Leh_func_begin51
	.long	Lset254
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset255 = Ltmp142-Ltmp141
	.long	Lset255
	.byte	13
	.byte	6
	.align	3
Leh_frame_end51:

_stringLength.eh:
Lset256 = Leh_frame_end52-Leh_frame_begin52
	.long	Lset256
Leh_frame_begin52:
Lset257 = Leh_frame_begin52-Leh_frame_common
	.long	Lset257
Ltmp681:
	.quad	Leh_func_begin52-Ltmp681
Lset258 = Leh_func_end52-Leh_func_begin52
	.quad	Lset258
	.byte	0
	.byte	4
Lset259 = Ltmp144-Leh_func_begin52
	.long	Lset259
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset260 = Ltmp145-Ltmp144
	.long	Lset260
	.byte	13
	.byte	6
	.align	3
Leh_frame_end52:

_getLong.eh:
Lset261 = Leh_frame_end53-Leh_frame_begin53
	.long	Lset261
Leh_frame_begin53:
Lset262 = Leh_frame_begin53-Leh_frame_common
	.long	Lset262
Ltmp682:
	.quad	Leh_func_begin53-Ltmp682
Lset263 = Leh_func_end53-Leh_func_begin53
	.quad	Lset263
	.byte	0
	.byte	4
Lset264 = Ltmp147-Leh_func_begin53
	.long	Lset264
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset265 = Ltmp148-Ltmp147
	.long	Lset265
	.byte	13
	.byte	6
	.align	3
Leh_frame_end53:

_concatString.eh:
Lset266 = Leh_frame_end54-Leh_frame_begin54
	.long	Lset266
Leh_frame_begin54:
Lset267 = Leh_frame_begin54-Leh_frame_common
	.long	Lset267
Ltmp683:
	.quad	Leh_func_begin54-Ltmp683
Lset268 = Leh_func_end54-Leh_func_begin54
	.quad	Lset268
	.byte	0
	.byte	4
Lset269 = Ltmp149-Leh_func_begin54
	.long	Lset269
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset270 = Ltmp150-Ltmp149
	.long	Lset270
	.byte	13
	.byte	6
	.align	3
Leh_frame_end54:

_newSymbol.eh:
Lset271 = Leh_frame_end55-Leh_frame_begin55
	.long	Lset271
Leh_frame_begin55:
Lset272 = Leh_frame_begin55-Leh_frame_common
	.long	Lset272
Ltmp684:
	.quad	Leh_func_begin55-Ltmp684
Lset273 = Leh_func_end55-Leh_func_begin55
	.quad	Lset273
	.byte	0
	.byte	4
Lset274 = Ltmp152-Leh_func_begin55
	.long	Lset274
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset275 = Ltmp153-Ltmp152
	.long	Lset275
	.byte	13
	.byte	6
	.align	3
Leh_frame_end55:

_newPair.eh:
Lset276 = Leh_frame_end56-Leh_frame_begin56
	.long	Lset276
Leh_frame_begin56:
Lset277 = Leh_frame_begin56-Leh_frame_common
	.long	Lset277
Ltmp685:
	.quad	Leh_func_begin56-Ltmp685
Lset278 = Leh_func_end56-Leh_func_begin56
	.quad	Lset278
	.byte	0
	.byte	4
Lset279 = Ltmp155-Leh_func_begin56
	.long	Lset279
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset280 = Ltmp156-Ltmp155
	.long	Lset280
	.byte	13
	.byte	6
	.align	3
Leh_frame_end56:

_newPairFrom.eh:
Lset281 = Leh_frame_end57-Leh_frame_begin57
	.long	Lset281
Leh_frame_begin57:
Lset282 = Leh_frame_begin57-Leh_frame_common
	.long	Lset282
Ltmp686:
	.quad	Leh_func_begin57-Ltmp686
Lset283 = Leh_func_end57-Leh_func_begin57
	.quad	Lset283
	.byte	0
	.byte	4
Lset284 = Ltmp158-Leh_func_begin57
	.long	Lset284
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset285 = Ltmp159-Ltmp158
	.long	Lset285
	.byte	13
	.byte	6
	.align	3
Leh_frame_end57:

_newArray.eh:
Lset286 = Leh_frame_end58-Leh_frame_begin58
	.long	Lset286
Leh_frame_begin58:
Lset287 = Leh_frame_begin58-Leh_frame_common
	.long	Lset287
Ltmp687:
	.quad	Leh_func_begin58-Ltmp687
Lset288 = Leh_func_end58-Leh_func_begin58
	.quad	Lset288
	.byte	0
	.byte	4
Lset289 = Ltmp161-Leh_func_begin58
	.long	Lset289
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset290 = Ltmp162-Ltmp161
	.long	Lset290
	.byte	13
	.byte	6
	.align	3
Leh_frame_end58:

_arrayLength.eh:
Lset291 = Leh_frame_end59-Leh_frame_begin59
	.long	Lset291
Leh_frame_begin59:
Lset292 = Leh_frame_begin59-Leh_frame_common
	.long	Lset292
Ltmp688:
	.quad	Leh_func_begin59-Ltmp688
Lset293 = Leh_func_end59-Leh_func_begin59
	.quad	Lset293
	.byte	0
	.byte	4
Lset294 = Ltmp164-Leh_func_begin59
	.long	Lset294
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset295 = Ltmp165-Ltmp164
	.long	Lset295
	.byte	13
	.byte	6
	.align	3
Leh_frame_end59:

_arrayAt.eh:
Lset296 = Leh_frame_end60-Leh_frame_begin60
	.long	Lset296
Leh_frame_begin60:
Lset297 = Leh_frame_begin60-Leh_frame_common
	.long	Lset297
Ltmp689:
	.quad	Leh_func_begin60-Ltmp689
Lset298 = Leh_func_end60-Leh_func_begin60
	.quad	Lset298
	.byte	0
	.byte	4
Lset299 = Ltmp167-Leh_func_begin60
	.long	Lset299
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset300 = Ltmp168-Ltmp167
	.long	Lset300
	.byte	13
	.byte	6
	.align	3
Leh_frame_end60:

_arrayAtPut.eh:
Lset301 = Leh_frame_end61-Leh_frame_begin61
	.long	Lset301
Leh_frame_begin61:
Lset302 = Leh_frame_begin61-Leh_frame_common
	.long	Lset302
Ltmp690:
	.quad	Leh_func_begin61-Ltmp690
Lset303 = Leh_func_end61-Leh_func_begin61
	.quad	Lset303
	.byte	0
	.byte	4
Lset304 = Ltmp170-Leh_func_begin61
	.long	Lset304
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset305 = Ltmp171-Ltmp170
	.long	Lset305
	.byte	13
	.byte	6
	.align	3
Leh_frame_end61:

_arrayAppend.eh:
Lset306 = Leh_frame_end62-Leh_frame_begin62
	.long	Lset306
Leh_frame_begin62:
Lset307 = Leh_frame_begin62-Leh_frame_common
	.long	Lset307
Ltmp691:
	.quad	Leh_func_begin62-Ltmp691
Lset308 = Leh_func_end62-Leh_func_begin62
	.quad	Lset308
	.byte	0
	.byte	4
Lset309 = Ltmp173-Leh_func_begin62
	.long	Lset309
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset310 = Ltmp174-Ltmp173
	.long	Lset310
	.byte	13
	.byte	6
	.align	3
Leh_frame_end62:

_arrayInsert.eh:
Lset311 = Leh_frame_end63-Leh_frame_begin63
	.long	Lset311
Leh_frame_begin63:
Lset312 = Leh_frame_begin63-Leh_frame_common
	.long	Lset312
Ltmp692:
	.quad	Leh_func_begin63-Ltmp692
Lset313 = Leh_func_end63-Leh_func_begin63
	.quad	Lset313
	.byte	0
	.byte	4
Lset314 = Ltmp176-Leh_func_begin63
	.long	Lset314
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset315 = Ltmp177-Ltmp176
	.long	Lset315
	.byte	13
	.byte	6
	.align	3
Leh_frame_end63:

_oopAt.eh:
Lset316 = Leh_frame_end64-Leh_frame_begin64
	.long	Lset316
Leh_frame_begin64:
Lset317 = Leh_frame_begin64-Leh_frame_common
	.long	Lset317
Ltmp693:
	.quad	Leh_func_begin64-Ltmp693
Lset318 = Leh_func_end64-Leh_func_begin64
	.quad	Lset318
	.byte	0
	.byte	4
Lset319 = Ltmp179-Leh_func_begin64
	.long	Lset319
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset320 = Ltmp180-Ltmp179
	.long	Lset320
	.byte	13
	.byte	6
	.align	3
Leh_frame_end64:

_isLong.eh:
Lset321 = Leh_frame_end65-Leh_frame_begin65
	.long	Lset321
Leh_frame_begin65:
Lset322 = Leh_frame_begin65-Leh_frame_common
	.long	Lset322
Ltmp694:
	.quad	Leh_func_begin65-Ltmp694
Lset323 = Leh_func_end65-Leh_func_begin65
	.quad	Lset323
	.byte	0
	.byte	4
Lset324 = Ltmp182-Leh_func_begin65
	.long	Lset324
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset325 = Ltmp183-Ltmp182
	.long	Lset325
	.byte	13
	.byte	6
	.align	3
Leh_frame_end65:

_oopAtPut.eh:
Lset326 = Leh_frame_end66-Leh_frame_begin66
	.long	Lset326
Leh_frame_begin66:
Lset327 = Leh_frame_begin66-Leh_frame_common
	.long	Lset327
Ltmp695:
	.quad	Leh_func_begin66-Ltmp695
Lset328 = Leh_func_end66-Leh_func_begin66
	.quad	Lset328
	.byte	0
	.byte	4
Lset329 = Ltmp185-Leh_func_begin66
	.long	Lset329
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset330 = Ltmp186-Ltmp185
	.long	Lset330
	.byte	13
	.byte	6
	.align	3
Leh_frame_end66:

_newExpr.eh:
Lset331 = Leh_frame_end67-Leh_frame_begin67
	.long	Lset331
Leh_frame_begin67:
Lset332 = Leh_frame_begin67-Leh_frame_common
	.long	Lset332
Ltmp696:
	.quad	Leh_func_begin67-Ltmp696
Lset333 = Leh_func_end67-Leh_func_begin67
	.quad	Lset333
	.byte	0
	.byte	4
Lset334 = Ltmp188-Leh_func_begin67
	.long	Lset334
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset335 = Ltmp189-Ltmp188
	.long	Lset335
	.byte	13
	.byte	6
	.align	3
Leh_frame_end67:

_newForm.eh:
Lset336 = Leh_frame_end68-Leh_frame_begin68
	.long	Lset336
Leh_frame_begin68:
Lset337 = Leh_frame_begin68-Leh_frame_common
	.long	Lset337
Ltmp697:
	.quad	Leh_func_begin68-Ltmp697
Lset338 = Leh_func_end68-Leh_func_begin68
	.quad	Lset338
	.byte	0
	.byte	4
Lset339 = Ltmp191-Leh_func_begin68
	.long	Lset339
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset340 = Ltmp192-Ltmp191
	.long	Lset340
	.byte	13
	.byte	6
	.align	3
Leh_frame_end68:

_newFixed.eh:
Lset341 = Leh_frame_end69-Leh_frame_begin69
	.long	Lset341
Leh_frame_begin69:
Lset342 = Leh_frame_begin69-Leh_frame_common
	.long	Lset342
Ltmp698:
	.quad	Leh_func_begin69-Ltmp698
Lset343 = Leh_func_end69-Leh_func_begin69
	.quad	Lset343
	.byte	0
	.byte	4
Lset344 = Ltmp194-Leh_func_begin69
	.long	Lset344
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset345 = Ltmp195-Ltmp194
	.long	Lset345
	.byte	13
	.byte	6
	.align	3
Leh_frame_end69:

_newSubr.eh:
Lset346 = Leh_frame_end70-Leh_frame_begin70
	.long	Lset346
Leh_frame_begin70:
Lset347 = Leh_frame_begin70-Leh_frame_common
	.long	Lset347
Ltmp699:
	.quad	Leh_func_begin70-Ltmp699
Lset348 = Leh_func_end70-Leh_func_begin70
	.quad	Lset348
	.byte	0
	.byte	4
Lset349 = Ltmp197-Leh_func_begin70
	.long	Lset349
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset350 = Ltmp198-Ltmp197
	.long	Lset350
	.byte	13
	.byte	6
	.align	3
Leh_frame_end70:

_newVariable.eh:
Lset351 = Leh_frame_end71-Leh_frame_begin71
	.long	Lset351
Leh_frame_begin71:
Lset352 = Leh_frame_begin71-Leh_frame_common
	.long	Lset352
Ltmp700:
	.quad	Leh_func_begin71-Ltmp700
Lset353 = Leh_func_end71-Leh_func_begin71
	.quad	Lset353
	.byte	0
	.byte	4
Lset354 = Ltmp200-Leh_func_begin71
	.long	Lset354
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset355 = Ltmp201-Ltmp200
	.long	Lset355
	.byte	13
	.byte	6
	.align	3
Leh_frame_end71:

_newEnv.eh:
Lset356 = Leh_frame_end72-Leh_frame_begin72
	.long	Lset356
Leh_frame_begin72:
Lset357 = Leh_frame_begin72-Leh_frame_common
	.long	Lset357
Ltmp701:
	.quad	Leh_func_begin72-Ltmp701
Lset358 = Leh_func_end72-Leh_func_begin72
	.quad	Lset358
	.byte	0
	.byte	4
Lset359 = Ltmp203-Leh_func_begin72
	.long	Lset359
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset360 = Ltmp204-Ltmp203
	.long	Lset360
	.byte	13
	.byte	6
	.align	3
Leh_frame_end72:

_newBaseContext.eh:
Lset361 = Leh_frame_end73-Leh_frame_begin73
	.long	Lset361
Leh_frame_begin73:
Lset362 = Leh_frame_begin73-Leh_frame_common
	.long	Lset362
Ltmp702:
	.quad	Leh_func_begin73-Ltmp702
Lset363 = Leh_func_end73-Leh_func_begin73
	.quad	Lset363
	.byte	0
	.byte	4
Lset364 = Ltmp206-Leh_func_begin73
	.long	Lset364
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset365 = Ltmp207-Ltmp206
	.long	Lset365
	.byte	13
	.byte	6
	.align	3
Leh_frame_end73:

_newContext.eh:
Lset366 = Leh_frame_end74-Leh_frame_begin74
	.long	Lset366
Leh_frame_begin74:
Lset367 = Leh_frame_begin74-Leh_frame_common
	.long	Lset367
Ltmp703:
	.quad	Leh_func_begin74-Ltmp703
Lset368 = Leh_func_end74-Leh_func_begin74
	.quad	Lset368
	.byte	0
	.byte	4
Lset369 = Ltmp209-Leh_func_begin74
	.long	Lset369
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset370 = Ltmp210-Ltmp209
	.long	Lset370
	.byte	13
	.byte	6
	.align	3
Leh_frame_end74:

_findVariable.eh:
Lset371 = Leh_frame_end75-Leh_frame_begin75
	.long	Lset371
Leh_frame_begin75:
Lset372 = Leh_frame_begin75-Leh_frame_common
	.long	Lset372
Ltmp704:
	.quad	Leh_func_begin75-Ltmp704
Lset373 = Leh_func_end75-Leh_func_begin75
	.quad	Lset373
	.byte	0
	.byte	4
Lset374 = Ltmp212-Leh_func_begin75
	.long	Lset374
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset375 = Ltmp213-Ltmp212
	.long	Lset375
	.byte	13
	.byte	6
	.align	3
Leh_frame_end75:

_lookup.eh:
Lset376 = Leh_frame_end76-Leh_frame_begin76
	.long	Lset376
Leh_frame_begin76:
Lset377 = Leh_frame_begin76-Leh_frame_common
	.long	Lset377
Ltmp705:
	.quad	Leh_func_begin76-Ltmp705
Lset378 = Leh_func_end76-Leh_func_begin76
	.quad	Lset378
	.byte	0
	.byte	4
Lset379 = Ltmp215-Leh_func_begin76
	.long	Lset379
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset380 = Ltmp216-Ltmp215
	.long	Lset380
	.byte	13
	.byte	6
	.align	3
Leh_frame_end76:

_define.eh:
Lset381 = Leh_frame_end77-Leh_frame_begin77
	.long	Lset381
Leh_frame_begin77:
Lset382 = Leh_frame_begin77-Leh_frame_common
	.long	Lset382
Ltmp706:
	.quad	Leh_func_begin77-Ltmp706
Lset383 = Leh_func_end77-Leh_func_begin77
	.quad	Lset383
	.byte	0
	.byte	4
Lset384 = Ltmp218-Leh_func_begin77
	.long	Lset384
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset385 = Ltmp219-Ltmp218
	.long	Lset385
	.byte	13
	.byte	6
	.align	3
Leh_frame_end77:

_isGlobal.eh:
Lset386 = Leh_frame_end78-Leh_frame_begin78
	.long	Lset386
Leh_frame_begin78:
Lset387 = Leh_frame_begin78-Leh_frame_common
	.long	Lset387
Ltmp707:
	.quad	Leh_func_begin78-Ltmp707
Lset388 = Leh_func_end78-Leh_func_begin78
	.quad	Lset388
	.byte	0
	.byte	4
Lset389 = Ltmp221-Leh_func_begin78
	.long	Lset389
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset390 = Ltmp222-Ltmp221
	.long	Lset390
	.byte	13
	.byte	6
	.align	3
Leh_frame_end78:

_newBool.eh:
Lset391 = Leh_frame_end79-Leh_frame_begin79
	.long	Lset391
Leh_frame_begin79:
Lset392 = Leh_frame_begin79-Leh_frame_common
	.long	Lset392
Ltmp708:
	.quad	Leh_func_begin79-Ltmp708
Lset393 = Leh_func_end79-Leh_func_begin79
	.quad	Lset393
	.byte	0
	.byte	4
Lset394 = Ltmp224-Leh_func_begin79
	.long	Lset394
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset395 = Ltmp225-Ltmp224
	.long	Lset395
	.byte	13
	.byte	6
	.align	3
Leh_frame_end79:

_intern.eh:
Lset396 = Leh_frame_end80-Leh_frame_begin80
	.long	Lset396
Leh_frame_begin80:
Lset397 = Leh_frame_begin80-Leh_frame_common
	.long	Lset397
Ltmp709:
	.quad	Leh_func_begin80-Ltmp709
Lset398 = Leh_func_end80-Leh_func_begin80
	.quad	Lset398
	.byte	0
	.byte	4
Lset399 = Ltmp226-Leh_func_begin80
	.long	Lset399
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset400 = Ltmp227-Ltmp226
	.long	Lset400
	.byte	13
	.byte	6
	.align	3
Leh_frame_end80:

_isPrint.eh:
Lset401 = Leh_frame_end81-Leh_frame_begin81
	.long	Lset401
Leh_frame_begin81:
Lset402 = Leh_frame_begin81-Leh_frame_common
	.long	Lset402
Ltmp710:
	.quad	Leh_func_begin81-Ltmp710
Lset403 = Leh_func_end81-Leh_func_begin81
	.quad	Lset403
	.byte	0
	.byte	4
Lset404 = Ltmp229-Leh_func_begin81
	.long	Lset404
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset405 = Ltmp230-Ltmp229
	.long	Lset405
	.byte	13
	.byte	6
	.align	3
Leh_frame_end81:

_isAlpha.eh:
Lset406 = Leh_frame_end82-Leh_frame_begin82
	.long	Lset406
Leh_frame_begin82:
Lset407 = Leh_frame_begin82-Leh_frame_common
	.long	Lset407
Ltmp711:
	.quad	Leh_func_begin82-Ltmp711
Lset408 = Leh_func_end82-Leh_func_begin82
	.quad	Lset408
	.byte	0
	.byte	4
Lset409 = Ltmp231-Leh_func_begin82
	.long	Lset409
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset410 = Ltmp232-Ltmp231
	.long	Lset410
	.byte	13
	.byte	6
	.align	3
Leh_frame_end82:

_isDigit10.eh:
Lset411 = Leh_frame_end83-Leh_frame_begin83
	.long	Lset411
Leh_frame_begin83:
Lset412 = Leh_frame_begin83-Leh_frame_common
	.long	Lset412
Ltmp712:
	.quad	Leh_func_begin83-Ltmp712
Lset413 = Leh_func_end83-Leh_func_begin83
	.quad	Lset413
	.byte	0
	.byte	4
Lset414 = Ltmp233-Leh_func_begin83
	.long	Lset414
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset415 = Ltmp234-Ltmp233
	.long	Lset415
	.byte	13
	.byte	6
	.align	3
Leh_frame_end83:

_isDigit16.eh:
Lset416 = Leh_frame_end84-Leh_frame_begin84
	.long	Lset416
Leh_frame_begin84:
Lset417 = Leh_frame_begin84-Leh_frame_common
	.long	Lset417
Ltmp713:
	.quad	Leh_func_begin84-Ltmp713
Lset418 = Leh_func_end84-Leh_func_begin84
	.quad	Lset418
	.byte	0
	.byte	4
Lset419 = Ltmp235-Leh_func_begin84
	.long	Lset419
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset420 = Ltmp236-Ltmp235
	.long	Lset420
	.byte	13
	.byte	6
	.align	3
Leh_frame_end84:

_isLetter.eh:
Lset421 = Leh_frame_end85-Leh_frame_begin85
	.long	Lset421
Leh_frame_begin85:
Lset422 = Leh_frame_begin85-Leh_frame_common
	.long	Lset422
Ltmp714:
	.quad	Leh_func_begin85-Ltmp714
Lset423 = Leh_func_end85-Leh_func_begin85
	.quad	Lset423
	.byte	0
	.byte	4
Lset424 = Ltmp237-Leh_func_begin85
	.long	Lset424
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset425 = Ltmp238-Ltmp237
	.long	Lset425
	.byte	13
	.byte	6
	.align	3
Leh_frame_end85:

_beginSource.eh:
Lset426 = Leh_frame_end86-Leh_frame_begin86
	.long	Lset426
Leh_frame_begin86:
Lset427 = Leh_frame_begin86-Leh_frame_common
	.long	Lset427
Ltmp715:
	.quad	Leh_func_begin86-Ltmp715
Lset428 = Leh_func_end86-Leh_func_begin86
	.quad	Lset428
	.byte	0
	.byte	4
Lset429 = Ltmp239-Leh_func_begin86
	.long	Lset429
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset430 = Ltmp240-Ltmp239
	.long	Lset430
	.byte	13
	.byte	6
	.align	3
Leh_frame_end86:

_advanceSource.eh:
Lset431 = Leh_frame_end87-Leh_frame_begin87
	.long	Lset431
Leh_frame_begin87:
Lset432 = Leh_frame_begin87-Leh_frame_common
	.long	Lset432
Ltmp716:
	.quad	Leh_func_begin87-Ltmp716
Lset433 = Leh_func_end87-Leh_func_begin87
	.quad	Lset433
	.byte	0
	.byte	4
Lset434 = Ltmp242-Leh_func_begin87
	.long	Lset434
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset435 = Ltmp243-Ltmp242
	.long	Lset435
	.byte	13
	.byte	6
	.align	3
Leh_frame_end87:

_endSource.eh:
Lset436 = Leh_frame_end88-Leh_frame_begin88
	.long	Lset436
Leh_frame_begin88:
Lset437 = Leh_frame_begin88-Leh_frame_common
	.long	Lset437
Ltmp717:
	.quad	Leh_func_begin88-Ltmp717
Lset438 = Leh_func_end88-Leh_func_begin88
	.quad	Lset438
	.byte	0
	.byte	4
Lset439 = Ltmp245-Leh_func_begin88
	.long	Lset439
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset440 = Ltmp246-Ltmp245
	.long	Lset440
	.byte	13
	.byte	6
	.align	3
Leh_frame_end88:

_readList.eh:
Lset441 = Leh_frame_end89-Leh_frame_begin89
	.long	Lset441
Leh_frame_begin89:
Lset442 = Leh_frame_begin89-Leh_frame_common
	.long	Lset442
Ltmp718:
	.quad	Leh_func_begin89-Ltmp718
Lset443 = Leh_func_end89-Leh_func_begin89
	.quad	Lset443
	.byte	0
	.byte	4
Lset444 = Ltmp248-Leh_func_begin89
	.long	Lset444
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset445 = Ltmp249-Ltmp248
	.long	Lset445
	.byte	13
	.byte	6
	.align	3
Leh_frame_end89:

_digitValue.eh:
Lset446 = Leh_frame_end90-Leh_frame_begin90
	.long	Lset446
Leh_frame_begin90:
Lset447 = Leh_frame_begin90-Leh_frame_common
	.long	Lset447
Ltmp719:
	.quad	Leh_func_begin90-Ltmp719
Lset448 = Leh_func_end90-Leh_func_begin90
	.quad	Lset448
	.byte	0
	.byte	4
Lset449 = Ltmp251-Leh_func_begin90
	.long	Lset449
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset450 = Ltmp252-Ltmp251
	.long	Lset450
	.byte	13
	.byte	6
	.align	3
Leh_frame_end90:

_isHexadecimal.eh:
Lset451 = Leh_frame_end91-Leh_frame_begin91
	.long	Lset451
Leh_frame_begin91:
Lset452 = Leh_frame_begin91-Leh_frame_common
	.long	Lset452
Ltmp720:
	.quad	Leh_func_begin91-Ltmp720
Lset453 = Leh_func_end91-Leh_func_begin91
	.quad	Lset453
	.byte	0
	.byte	4
Lset454 = Ltmp254-Leh_func_begin91
	.long	Lset454
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset455 = Ltmp255-Ltmp254
	.long	Lset455
	.byte	13
	.byte	6
	.align	3
Leh_frame_end91:

_isOctal.eh:
Lset456 = Leh_frame_end92-Leh_frame_begin92
	.long	Lset456
Leh_frame_begin92:
Lset457 = Leh_frame_begin92-Leh_frame_common
	.long	Lset457
Ltmp721:
	.quad	Leh_func_begin92-Ltmp721
Lset458 = Leh_func_end92-Leh_func_begin92
	.quad	Lset458
	.byte	0
	.byte	4
Lset459 = Ltmp256-Leh_func_begin92
	.long	Lset459
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset460 = Ltmp257-Ltmp256
	.long	Lset460
	.byte	13
	.byte	6
	.align	3
Leh_frame_end92:

_readChar.eh:
Lset461 = Leh_frame_end93-Leh_frame_begin93
	.long	Lset461
Leh_frame_begin93:
Lset462 = Leh_frame_begin93-Leh_frame_common
	.long	Lset462
Ltmp722:
	.quad	Leh_func_begin93-Ltmp722
Lset463 = Leh_func_end93-Leh_func_begin93
	.quad	Lset463
	.byte	0
	.byte	4
Lset464 = Ltmp258-Leh_func_begin93
	.long	Lset464
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset465 = Ltmp259-Ltmp258
	.long	Lset465
	.byte	13
	.byte	6
	.align	3
Leh_frame_end93:

_oop_read.eh:
Lset466 = Leh_frame_end94-Leh_frame_begin94
	.long	Lset466
Leh_frame_begin94:
Lset467 = Leh_frame_begin94-Leh_frame_common
	.long	Lset467
Ltmp723:
	.quad	Leh_func_begin94-Ltmp723
Lset468 = Leh_func_end94-Leh_func_begin94
	.quad	Lset468
	.byte	0
	.byte	4
Lset469 = Ltmp261-Leh_func_begin94
	.long	Lset469
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset470 = Ltmp262-Ltmp261
	.long	Lset470
	.byte	13
	.byte	6
	.align	3
Leh_frame_end94:

_doprint.eh:
Lset471 = Leh_frame_end95-Leh_frame_begin95
	.long	Lset471
Leh_frame_begin95:
Lset472 = Leh_frame_begin95-Leh_frame_common
	.long	Lset472
Ltmp724:
	.quad	Leh_func_begin95-Ltmp724
Lset473 = Leh_func_end95-Leh_func_begin95
	.quad	Lset473
	.byte	0
	.byte	4
Lset474 = Ltmp264-Leh_func_begin95
	.long	Lset474
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset475 = Ltmp265-Ltmp264
	.long	Lset475
	.byte	13
	.byte	6
	.align	3
Leh_frame_end95:

_print.eh:
Lset476 = Leh_frame_end96-Leh_frame_begin96
	.long	Lset476
Leh_frame_begin96:
Lset477 = Leh_frame_begin96-Leh_frame_common
	.long	Lset477
Ltmp725:
	.quad	Leh_func_begin96-Ltmp725
Lset478 = Leh_func_end96-Leh_func_begin96
	.quad	Lset478
	.byte	0
	.byte	4
Lset479 = Ltmp267-Leh_func_begin96
	.long	Lset479
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset480 = Ltmp268-Ltmp267
	.long	Lset480
	.byte	13
	.byte	6
	.align	3
Leh_frame_end96:

_fdump.eh:
Lset481 = Leh_frame_end97-Leh_frame_begin97
	.long	Lset481
Leh_frame_begin97:
Lset482 = Leh_frame_begin97-Leh_frame_common
	.long	Lset482
Ltmp726:
	.quad	Leh_func_begin97-Ltmp726
Lset483 = Leh_func_end97-Leh_func_begin97
	.quad	Lset483
	.byte	0
	.byte	4
Lset484 = Ltmp270-Leh_func_begin97
	.long	Lset484
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset485 = Ltmp271-Ltmp270
	.long	Lset485
	.byte	13
	.byte	6
	.align	3
Leh_frame_end97:

_dump.eh:
Lset486 = Leh_frame_end98-Leh_frame_begin98
	.long	Lset486
Leh_frame_begin98:
Lset487 = Leh_frame_begin98-Leh_frame_common
	.long	Lset487
Ltmp727:
	.quad	Leh_func_begin98-Ltmp727
Lset488 = Leh_func_end98-Leh_func_begin98
	.quad	Lset488
	.byte	0
	.byte	4
Lset489 = Ltmp273-Leh_func_begin98
	.long	Lset489
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset490 = Ltmp274-Ltmp273
	.long	Lset490
	.byte	13
	.byte	6
	.align	3
Leh_frame_end98:

_fdumpln.eh:
Lset491 = Leh_frame_end99-Leh_frame_begin99
	.long	Lset491
Leh_frame_begin99:
Lset492 = Leh_frame_begin99-Leh_frame_common
	.long	Lset492
Ltmp728:
	.quad	Leh_func_begin99-Ltmp728
Lset493 = Leh_func_end99-Leh_func_begin99
	.quad	Lset493
	.byte	0
	.byte	4
Lset494 = Ltmp276-Leh_func_begin99
	.long	Lset494
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset495 = Ltmp277-Ltmp276
	.long	Lset495
	.byte	13
	.byte	6
	.align	3
Leh_frame_end99:

_dumpln.eh:
Lset496 = Leh_frame_end100-Leh_frame_begin100
	.long	Lset496
Leh_frame_begin100:
Lset497 = Leh_frame_begin100-Leh_frame_common
	.long	Lset497
Ltmp729:
	.quad	Leh_func_begin100-Ltmp729
Lset498 = Leh_func_end100-Leh_func_begin100
	.quad	Lset498
	.byte	0
	.byte	4
Lset499 = Ltmp279-Leh_func_begin100
	.long	Lset499
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset500 = Ltmp280-Ltmp279
	.long	Lset500
	.byte	13
	.byte	6
	.align	3
Leh_frame_end100:

_concat.eh:
Lset501 = Leh_frame_end101-Leh_frame_begin101
	.long	Lset501
Leh_frame_begin101:
Lset502 = Leh_frame_begin101-Leh_frame_common
	.long	Lset502
Ltmp730:
	.quad	Leh_func_begin101-Ltmp730
Lset503 = Leh_func_end101-Leh_func_begin101
	.quad	Lset503
	.byte	0
	.byte	4
Lset504 = Ltmp282-Leh_func_begin101
	.long	Lset504
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset505 = Ltmp283-Ltmp282
	.long	Lset505
	.byte	13
	.byte	6
	.align	3
Leh_frame_end101:

_setSource.eh:
Lset506 = Leh_frame_end102-Leh_frame_begin102
	.long	Lset506
Leh_frame_begin102:
Lset507 = Leh_frame_begin102-Leh_frame_common
	.long	Lset507
Ltmp731:
	.quad	Leh_func_begin102-Ltmp731
Lset508 = Leh_func_end102-Leh_func_begin102
	.quad	Lset508
	.byte	0
	.byte	4
Lset509 = Ltmp285-Leh_func_begin102
	.long	Lset509
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset510 = Ltmp286-Ltmp285
	.long	Lset510
	.byte	13
	.byte	6
	.align	3
Leh_frame_end102:

_expand.eh:
Lset511 = Leh_frame_end103-Leh_frame_begin103
	.long	Lset511
Leh_frame_begin103:
Lset512 = Leh_frame_begin103-Leh_frame_common
	.long	Lset512
Ltmp732:
	.quad	Leh_func_begin103-Ltmp732
Lset513 = Leh_func_end103-Leh_func_begin103
	.quad	Lset513
	.byte	0
	.byte	4
Lset514 = Ltmp288-Leh_func_begin103
	.long	Lset514
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset515 = Ltmp289-Ltmp288
	.long	Lset515
	.byte	13
	.byte	6
	.align	3
Leh_frame_end103:

_exlist.eh:
Lset516 = Leh_frame_end104-Leh_frame_begin104
	.long	Lset516
Leh_frame_begin104:
Lset517 = Leh_frame_begin104-Leh_frame_common
	.long	Lset517
Ltmp733:
	.quad	Leh_func_begin104-Ltmp733
Lset518 = Leh_func_end104-Leh_func_begin104
	.quad	Lset518
	.byte	0
	.byte	4
Lset519 = Ltmp291-Leh_func_begin104
	.long	Lset519
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset520 = Ltmp292-Ltmp291
	.long	Lset520
	.byte	13
	.byte	6
	.align	3
Leh_frame_end104:

_encode.eh:
Lset521 = Leh_frame_end105-Leh_frame_begin105
	.long	Lset521
Leh_frame_begin105:
Lset522 = Leh_frame_begin105-Leh_frame_common
	.long	Lset522
Ltmp734:
	.quad	Leh_func_begin105-Ltmp734
Lset523 = Leh_func_end105-Leh_func_begin105
	.quad	Lset523
	.byte	0
	.byte	4
Lset524 = Ltmp294-Leh_func_begin105
	.long	Lset524
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset525 = Ltmp295-Ltmp294
	.long	Lset525
	.byte	13
	.byte	6
	.align	3
Leh_frame_end105:

_enlist.eh:
Lset526 = Leh_frame_end106-Leh_frame_begin106
	.long	Lset526
Leh_frame_begin106:
Lset527 = Leh_frame_begin106-Leh_frame_common
	.long	Lset527
Ltmp735:
	.quad	Leh_func_begin106-Ltmp735
Lset528 = Leh_func_end106-Leh_func_begin106
	.quad	Lset528
	.byte	0
	.byte	4
Lset529 = Ltmp297-Leh_func_begin106
	.long	Lset529
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset530 = Ltmp298-Ltmp297
	.long	Lset530
	.byte	13
	.byte	6
	.align	3
Leh_frame_end106:

_printSource.eh:
Lset531 = Leh_frame_end107-Leh_frame_begin107
	.long	Lset531
Leh_frame_begin107:
Lset532 = Leh_frame_begin107-Leh_frame_common
	.long	Lset532
Ltmp736:
	.quad	Leh_func_begin107-Ltmp736
Lset533 = Leh_func_end107-Leh_func_begin107
	.quad	Lset533
	.byte	0
	.byte	4
Lset534 = Ltmp300-Leh_func_begin107
	.long	Lset534
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset535 = Ltmp301-Ltmp300
	.long	Lset535
	.byte	13
	.byte	6
	.align	3
Leh_frame_end107:

_fatal.eh:
Lset536 = Leh_frame_end108-Leh_frame_begin108
	.long	Lset536
Leh_frame_begin108:
Lset537 = Leh_frame_begin108-Leh_frame_common
	.long	Lset537
Ltmp737:
	.quad	Leh_func_begin108-Ltmp737
Lset538 = Leh_func_end108-Leh_func_begin108
	.quad	Lset538
	.byte	0
	.byte	4
Lset539 = Ltmp303-Leh_func_begin108
	.long	Lset539
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset540 = Ltmp304-Ltmp303
	.long	Lset540
	.byte	13
	.byte	6
	.align	3
Leh_frame_end108:

_eval.eh:
Lset541 = Leh_frame_end109-Leh_frame_begin109
	.long	Lset541
Leh_frame_begin109:
Lset542 = Leh_frame_begin109-Leh_frame_common
	.long	Lset542
Ltmp738:
	.quad	Leh_func_begin109-Ltmp738
Lset543 = Leh_func_end109-Leh_func_begin109
	.quad	Lset543
	.byte	0
	.byte	4
Lset544 = Ltmp306-Leh_func_begin109
	.long	Lset544
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset545 = Ltmp307-Ltmp306
	.long	Lset545
	.byte	13
	.byte	6
	.align	3
Leh_frame_end109:

_evlist.eh:
Lset546 = Leh_frame_end110-Leh_frame_begin110
	.long	Lset546
Leh_frame_begin110:
Lset547 = Leh_frame_begin110-Leh_frame_common
	.long	Lset547
Ltmp739:
	.quad	Leh_func_begin110-Ltmp739
Lset548 = Leh_func_end110-Leh_func_begin110
	.quad	Lset548
	.byte	0
	.byte	4
Lset549 = Ltmp309-Leh_func_begin110
	.long	Lset549
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset550 = Ltmp310-Ltmp309
	.long	Lset550
	.byte	13
	.byte	6
	.align	3
Leh_frame_end110:

_apply.eh:
Lset551 = Leh_frame_end111-Leh_frame_begin111
	.long	Lset551
Leh_frame_begin111:
Lset552 = Leh_frame_begin111-Leh_frame_common
	.long	Lset552
Ltmp740:
	.quad	Leh_func_begin111-Ltmp740
Lset553 = Leh_func_end111-Leh_func_begin111
	.quad	Lset553
	.byte	0
	.byte	4
Lset554 = Ltmp312-Leh_func_begin111
	.long	Lset554
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset555 = Ltmp313-Ltmp312
	.long	Lset555
	.byte	13
	.byte	6
	.align	3
Leh_frame_end111:

_length.eh:
Lset556 = Leh_frame_end112-Leh_frame_begin112
	.long	Lset556
Leh_frame_begin112:
Lset557 = Leh_frame_begin112-Leh_frame_common
	.long	Lset557
Ltmp741:
	.quad	Leh_func_begin112-Ltmp741
Lset558 = Leh_func_end112-Leh_func_begin112
	.quad	Lset558
	.byte	0
	.byte	4
Lset559 = Ltmp315-Leh_func_begin112
	.long	Lset559
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset560 = Ltmp316-Ltmp315
	.long	Lset560
	.byte	13
	.byte	6
	.align	3
Leh_frame_end112:

_arity.eh:
Lset561 = Leh_frame_end113-Leh_frame_begin113
	.long	Lset561
Leh_frame_begin113:
Lset562 = Leh_frame_begin113-Leh_frame_common
	.long	Lset562
Ltmp742:
	.quad	Leh_func_begin113-Ltmp742
Lset563 = Leh_func_end113-Leh_func_begin113
	.quad	Lset563
	.byte	0
	.byte	4
Lset564 = Ltmp318-Leh_func_begin113
	.long	Lset564
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset565 = Ltmp319-Ltmp318
	.long	Lset565
	.byte	13
	.byte	6
	.align	3
Leh_frame_end113:

_arity1.eh:
Lset566 = Leh_frame_end114-Leh_frame_begin114
	.long	Lset566
Leh_frame_begin114:
Lset567 = Leh_frame_begin114-Leh_frame_common
	.long	Lset567
Ltmp743:
	.quad	Leh_func_begin114-Ltmp743
Lset568 = Leh_func_end114-Leh_func_begin114
	.quad	Lset568
	.byte	0
	.byte	4
Lset569 = Ltmp321-Leh_func_begin114
	.long	Lset569
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset570 = Ltmp322-Ltmp321
	.long	Lset570
	.byte	13
	.byte	6
	.align	3
Leh_frame_end114:

_arity2.eh:
Lset571 = Leh_frame_end115-Leh_frame_begin115
	.long	Lset571
Leh_frame_begin115:
Lset572 = Leh_frame_begin115-Leh_frame_common
	.long	Lset572
Ltmp744:
	.quad	Leh_func_begin115-Ltmp744
Lset573 = Leh_func_end115-Leh_func_begin115
	.quad	Lset573
	.byte	0
	.byte	4
Lset574 = Ltmp324-Leh_func_begin115
	.long	Lset574
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset575 = Ltmp325-Ltmp324
	.long	Lset575
	.byte	13
	.byte	6
	.align	3
Leh_frame_end115:

_arity3.eh:
Lset576 = Leh_frame_end116-Leh_frame_begin116
	.long	Lset576
Leh_frame_begin116:
Lset577 = Leh_frame_begin116-Leh_frame_common
	.long	Lset577
Ltmp745:
	.quad	Leh_func_begin116-Ltmp745
Lset578 = Leh_func_end116-Leh_func_begin116
	.quad	Lset578
	.byte	0
	.byte	4
Lset579 = Ltmp327-Leh_func_begin116
	.long	Lset579
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset580 = Ltmp328-Ltmp327
	.long	Lset580
	.byte	13
	.byte	6
	.align	3
Leh_frame_end116:

_subr_if.eh:
Lset581 = Leh_frame_end117-Leh_frame_begin117
	.long	Lset581
Leh_frame_begin117:
Lset582 = Leh_frame_begin117-Leh_frame_common
	.long	Lset582
Ltmp746:
	.quad	Leh_func_begin117-Ltmp746
Lset583 = Leh_func_end117-Leh_func_begin117
	.quad	Lset583
	.byte	0
	.byte	4
Lset584 = Ltmp330-Leh_func_begin117
	.long	Lset584
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset585 = Ltmp331-Ltmp330
	.long	Lset585
	.byte	13
	.byte	6
	.align	3
Leh_frame_end117:

_subr_and.eh:
Lset586 = Leh_frame_end118-Leh_frame_begin118
	.long	Lset586
Leh_frame_begin118:
Lset587 = Leh_frame_begin118-Leh_frame_common
	.long	Lset587
Ltmp747:
	.quad	Leh_func_begin118-Ltmp747
Lset588 = Leh_func_end118-Leh_func_begin118
	.quad	Lset588
	.byte	0
	.byte	4
Lset589 = Ltmp333-Leh_func_begin118
	.long	Lset589
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset590 = Ltmp334-Ltmp333
	.long	Lset590
	.byte	13
	.byte	6
	.align	3
Leh_frame_end118:

_subr_or.eh:
Lset591 = Leh_frame_end119-Leh_frame_begin119
	.long	Lset591
Leh_frame_begin119:
Lset592 = Leh_frame_begin119-Leh_frame_common
	.long	Lset592
Ltmp748:
	.quad	Leh_func_begin119-Ltmp748
Lset593 = Leh_func_end119-Leh_func_begin119
	.quad	Lset593
	.byte	0
	.byte	4
Lset594 = Ltmp336-Leh_func_begin119
	.long	Lset594
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset595 = Ltmp337-Ltmp336
	.long	Lset595
	.byte	13
	.byte	6
	.align	3
Leh_frame_end119:

_subr_set.eh:
Lset596 = Leh_frame_end120-Leh_frame_begin120
	.long	Lset596
Leh_frame_begin120:
Lset597 = Leh_frame_begin120-Leh_frame_common
	.long	Lset597
Ltmp749:
	.quad	Leh_func_begin120-Ltmp749
Lset598 = Leh_func_end120-Leh_func_begin120
	.quad	Lset598
	.byte	0
	.byte	4
Lset599 = Ltmp339-Leh_func_begin120
	.long	Lset599
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset600 = Ltmp340-Ltmp339
	.long	Lset600
	.byte	13
	.byte	6
	.align	3
Leh_frame_end120:

_subr_let.eh:
Lset601 = Leh_frame_end121-Leh_frame_begin121
	.long	Lset601
Leh_frame_begin121:
Lset602 = Leh_frame_begin121-Leh_frame_common
	.long	Lset602
Ltmp750:
	.quad	Leh_func_begin121-Ltmp750
Lset603 = Leh_func_end121-Leh_func_begin121
	.quad	Lset603
	.byte	0
	.byte	4
Lset604 = Ltmp342-Leh_func_begin121
	.long	Lset604
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset605 = Ltmp343-Ltmp342
	.long	Lset605
	.byte	13
	.byte	6
	.align	3
Leh_frame_end121:

_subr_while.eh:
Lset606 = Leh_frame_end122-Leh_frame_begin122
	.long	Lset606
Leh_frame_begin122:
Lset607 = Leh_frame_begin122-Leh_frame_common
	.long	Lset607
Ltmp751:
	.quad	Leh_func_begin122-Ltmp751
Lset608 = Leh_func_end122-Leh_func_begin122
	.quad	Lset608
	.byte	0
	.byte	4
Lset609 = Ltmp345-Leh_func_begin122
	.long	Lset609
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset610 = Ltmp346-Ltmp345
	.long	Lset610
	.byte	13
	.byte	6
	.align	3
Leh_frame_end122:

_subr_quote.eh:
Lset611 = Leh_frame_end123-Leh_frame_begin123
	.long	Lset611
Leh_frame_begin123:
Lset612 = Leh_frame_begin123-Leh_frame_common
	.long	Lset612
Ltmp752:
	.quad	Leh_func_begin123-Ltmp752
Lset613 = Leh_func_end123-Leh_func_begin123
	.quad	Lset613
	.byte	0
	.byte	4
Lset614 = Ltmp348-Leh_func_begin123
	.long	Lset614
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset615 = Ltmp349-Ltmp348
	.long	Lset615
	.byte	13
	.byte	6
	.align	3
Leh_frame_end123:

_subr_lambda.eh:
Lset616 = Leh_frame_end124-Leh_frame_begin124
	.long	Lset616
Leh_frame_begin124:
Lset617 = Leh_frame_begin124-Leh_frame_common
	.long	Lset617
Ltmp753:
	.quad	Leh_func_begin124-Ltmp753
Lset618 = Leh_func_end124-Leh_func_begin124
	.quad	Lset618
	.byte	0
	.byte	4
Lset619 = Ltmp351-Leh_func_begin124
	.long	Lset619
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset620 = Ltmp352-Ltmp351
	.long	Lset620
	.byte	13
	.byte	6
	.align	3
Leh_frame_end124:

_subr_define.eh:
Lset621 = Leh_frame_end125-Leh_frame_begin125
	.long	Lset621
Leh_frame_begin125:
Lset622 = Leh_frame_begin125-Leh_frame_common
	.long	Lset622
Ltmp754:
	.quad	Leh_func_begin125-Ltmp754
Lset623 = Leh_func_end125-Leh_func_begin125
	.quad	Lset623
	.byte	0
	.byte	4
Lset624 = Ltmp354-Leh_func_begin125
	.long	Lset624
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset625 = Ltmp355-Ltmp354
	.long	Lset625
	.byte	13
	.byte	6
	.align	3
Leh_frame_end125:

_subr_definedP.eh:
Lset626 = Leh_frame_end126-Leh_frame_begin126
	.long	Lset626
Leh_frame_begin126:
Lset627 = Leh_frame_begin126-Leh_frame_common
	.long	Lset627
Ltmp755:
	.quad	Leh_func_begin126-Ltmp755
Lset628 = Leh_func_end126-Leh_func_begin126
	.quad	Lset628
	.byte	0
	.byte	4
Lset629 = Ltmp357-Leh_func_begin126
	.long	Lset629
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset630 = Ltmp358-Ltmp357
	.long	Lset630
	.byte	13
	.byte	6
	.align	3
Leh_frame_end126:

_subr_com.eh:
Lset631 = Leh_frame_end127-Leh_frame_begin127
	.long	Lset631
Leh_frame_begin127:
Lset632 = Leh_frame_begin127-Leh_frame_common
	.long	Lset632
Ltmp756:
	.quad	Leh_func_begin127-Ltmp756
Lset633 = Leh_func_end127-Leh_func_begin127
	.quad	Lset633
	.byte	0
	.byte	4
Lset634 = Ltmp360-Leh_func_begin127
	.long	Lset634
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset635 = Ltmp361-Ltmp360
	.long	Lset635
	.byte	13
	.byte	6
	.align	3
Leh_frame_end127:

_subr_bitand.eh:
Lset636 = Leh_frame_end128-Leh_frame_begin128
	.long	Lset636
Leh_frame_begin128:
Lset637 = Leh_frame_begin128-Leh_frame_common
	.long	Lset637
Ltmp757:
	.quad	Leh_func_begin128-Ltmp757
Lset638 = Leh_func_end128-Leh_func_begin128
	.quad	Lset638
	.byte	0
	.byte	4
Lset639 = Ltmp363-Leh_func_begin128
	.long	Lset639
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset640 = Ltmp364-Ltmp363
	.long	Lset640
	.byte	13
	.byte	6
	.align	3
Leh_frame_end128:

_subr_bitor.eh:
Lset641 = Leh_frame_end129-Leh_frame_begin129
	.long	Lset641
Leh_frame_begin129:
Lset642 = Leh_frame_begin129-Leh_frame_common
	.long	Lset642
Ltmp758:
	.quad	Leh_func_begin129-Ltmp758
Lset643 = Leh_func_end129-Leh_func_begin129
	.quad	Lset643
	.byte	0
	.byte	4
Lset644 = Ltmp366-Leh_func_begin129
	.long	Lset644
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset645 = Ltmp367-Ltmp366
	.long	Lset645
	.byte	13
	.byte	6
	.align	3
Leh_frame_end129:

_subr_bitxor.eh:
Lset646 = Leh_frame_end130-Leh_frame_begin130
	.long	Lset646
Leh_frame_begin130:
Lset647 = Leh_frame_begin130-Leh_frame_common
	.long	Lset647
Ltmp759:
	.quad	Leh_func_begin130-Ltmp759
Lset648 = Leh_func_end130-Leh_func_begin130
	.quad	Lset648
	.byte	0
	.byte	4
Lset649 = Ltmp369-Leh_func_begin130
	.long	Lset649
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset650 = Ltmp370-Ltmp369
	.long	Lset650
	.byte	13
	.byte	6
	.align	3
Leh_frame_end130:

_subr_shl.eh:
Lset651 = Leh_frame_end131-Leh_frame_begin131
	.long	Lset651
Leh_frame_begin131:
Lset652 = Leh_frame_begin131-Leh_frame_common
	.long	Lset652
Ltmp760:
	.quad	Leh_func_begin131-Ltmp760
Lset653 = Leh_func_end131-Leh_func_begin131
	.quad	Lset653
	.byte	0
	.byte	4
Lset654 = Ltmp372-Leh_func_begin131
	.long	Lset654
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset655 = Ltmp373-Ltmp372
	.long	Lset655
	.byte	13
	.byte	6
	.align	3
Leh_frame_end131:

_subr_shr.eh:
Lset656 = Leh_frame_end132-Leh_frame_begin132
	.long	Lset656
Leh_frame_begin132:
Lset657 = Leh_frame_begin132-Leh_frame_common
	.long	Lset657
Ltmp761:
	.quad	Leh_func_begin132-Ltmp761
Lset658 = Leh_func_end132-Leh_func_begin132
	.quad	Lset658
	.byte	0
	.byte	4
Lset659 = Ltmp375-Leh_func_begin132
	.long	Lset659
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset660 = Ltmp376-Ltmp375
	.long	Lset660
	.byte	13
	.byte	6
	.align	3
Leh_frame_end132:

_subr_add.eh:
Lset661 = Leh_frame_end133-Leh_frame_begin133
	.long	Lset661
Leh_frame_begin133:
Lset662 = Leh_frame_begin133-Leh_frame_common
	.long	Lset662
Ltmp762:
	.quad	Leh_func_begin133-Ltmp762
Lset663 = Leh_func_end133-Leh_func_begin133
	.quad	Lset663
	.byte	0
	.byte	4
Lset664 = Ltmp378-Leh_func_begin133
	.long	Lset664
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset665 = Ltmp379-Ltmp378
	.long	Lset665
	.byte	13
	.byte	6
	.align	3
Leh_frame_end133:

_isNumeric.eh:
Lset666 = Leh_frame_end134-Leh_frame_begin134
	.long	Lset666
Leh_frame_begin134:
Lset667 = Leh_frame_begin134-Leh_frame_common
	.long	Lset667
Ltmp763:
	.quad	Leh_func_begin134-Ltmp763
Lset668 = Leh_func_end134-Leh_func_begin134
	.quad	Lset668
	.byte	0
	.byte	4
Lset669 = Ltmp381-Leh_func_begin134
	.long	Lset669
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset670 = Ltmp382-Ltmp381
	.long	Lset670
	.byte	13
	.byte	6
	.align	3
Leh_frame_end134:

_subr_mul.eh:
Lset671 = Leh_frame_end135-Leh_frame_begin135
	.long	Lset671
Leh_frame_begin135:
Lset672 = Leh_frame_begin135-Leh_frame_common
	.long	Lset672
Ltmp764:
	.quad	Leh_func_begin135-Ltmp764
Lset673 = Leh_func_end135-Leh_func_begin135
	.quad	Lset673
	.byte	0
	.byte	4
Lset674 = Ltmp384-Leh_func_begin135
	.long	Lset674
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset675 = Ltmp385-Ltmp384
	.long	Lset675
	.byte	13
	.byte	6
	.align	3
Leh_frame_end135:

_subr_div.eh:
Lset676 = Leh_frame_end136-Leh_frame_begin136
	.long	Lset676
Leh_frame_begin136:
Lset677 = Leh_frame_begin136-Leh_frame_common
	.long	Lset677
Ltmp765:
	.quad	Leh_func_begin136-Ltmp765
Lset678 = Leh_func_end136-Leh_func_begin136
	.quad	Lset678
	.byte	0
	.byte	4
Lset679 = Ltmp387-Leh_func_begin136
	.long	Lset679
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset680 = Ltmp388-Ltmp387
	.long	Lset680
	.byte	13
	.byte	6
	.align	3
Leh_frame_end136:

_subr_sub.eh:
Lset681 = Leh_frame_end137-Leh_frame_begin137
	.long	Lset681
Leh_frame_begin137:
Lset682 = Leh_frame_begin137-Leh_frame_common
	.long	Lset682
Ltmp766:
	.quad	Leh_func_begin137-Ltmp766
Lset683 = Leh_func_end137-Leh_func_begin137
	.quad	Lset683
	.byte	0
	.byte	4
Lset684 = Ltmp390-Leh_func_begin137
	.long	Lset684
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset685 = Ltmp391-Ltmp390
	.long	Lset685
	.byte	13
	.byte	6
	.align	3
Leh_frame_end137:

_subr_mod.eh:
Lset686 = Leh_frame_end138-Leh_frame_begin138
	.long	Lset686
Leh_frame_begin138:
Lset687 = Leh_frame_begin138-Leh_frame_common
	.long	Lset687
Ltmp767:
	.quad	Leh_func_begin138-Ltmp767
Lset688 = Leh_func_end138-Leh_func_begin138
	.quad	Lset688
	.byte	0
	.byte	4
Lset689 = Ltmp393-Leh_func_begin138
	.long	Lset689
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset690 = Ltmp394-Ltmp393
	.long	Lset690
	.byte	13
	.byte	6
	.align	3
Leh_frame_end138:

_subr_lt.eh:
Lset691 = Leh_frame_end139-Leh_frame_begin139
	.long	Lset691
Leh_frame_begin139:
Lset692 = Leh_frame_begin139-Leh_frame_common
	.long	Lset692
Ltmp768:
	.quad	Leh_func_begin139-Ltmp768
Lset693 = Leh_func_end139-Leh_func_begin139
	.quad	Lset693
	.byte	0
	.byte	4
Lset694 = Ltmp396-Leh_func_begin139
	.long	Lset694
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset695 = Ltmp397-Ltmp396
	.long	Lset695
	.byte	13
	.byte	6
	.align	3
Leh_frame_end139:

_subr_le.eh:
Lset696 = Leh_frame_end140-Leh_frame_begin140
	.long	Lset696
Leh_frame_begin140:
Lset697 = Leh_frame_begin140-Leh_frame_common
	.long	Lset697
Ltmp769:
	.quad	Leh_func_begin140-Ltmp769
Lset698 = Leh_func_end140-Leh_func_begin140
	.quad	Lset698
	.byte	0
	.byte	4
Lset699 = Ltmp399-Leh_func_begin140
	.long	Lset699
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset700 = Ltmp400-Ltmp399
	.long	Lset700
	.byte	13
	.byte	6
	.align	3
Leh_frame_end140:

_subr_ge.eh:
Lset701 = Leh_frame_end141-Leh_frame_begin141
	.long	Lset701
Leh_frame_begin141:
Lset702 = Leh_frame_begin141-Leh_frame_common
	.long	Lset702
Ltmp770:
	.quad	Leh_func_begin141-Ltmp770
Lset703 = Leh_func_end141-Leh_func_begin141
	.quad	Lset703
	.byte	0
	.byte	4
Lset704 = Ltmp402-Leh_func_begin141
	.long	Lset704
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset705 = Ltmp403-Ltmp402
	.long	Lset705
	.byte	13
	.byte	6
	.align	3
Leh_frame_end141:

_subr_gt.eh:
Lset706 = Leh_frame_end142-Leh_frame_begin142
	.long	Lset706
Leh_frame_begin142:
Lset707 = Leh_frame_begin142-Leh_frame_common
	.long	Lset707
Ltmp771:
	.quad	Leh_func_begin142-Ltmp771
Lset708 = Leh_func_end142-Leh_func_begin142
	.quad	Lset708
	.byte	0
	.byte	4
Lset709 = Ltmp405-Leh_func_begin142
	.long	Lset709
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset710 = Ltmp406-Ltmp405
	.long	Lset710
	.byte	13
	.byte	6
	.align	3
Leh_frame_end142:

_equal.eh:
Lset711 = Leh_frame_end143-Leh_frame_begin143
	.long	Lset711
Leh_frame_begin143:
Lset712 = Leh_frame_begin143-Leh_frame_common
	.long	Lset712
Ltmp772:
	.quad	Leh_func_begin143-Ltmp772
Lset713 = Leh_func_end143-Leh_func_begin143
	.quad	Lset713
	.byte	0
	.byte	4
Lset714 = Ltmp408-Leh_func_begin143
	.long	Lset714
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset715 = Ltmp409-Ltmp408
	.long	Lset715
	.byte	13
	.byte	6
	.align	3
Leh_frame_end143:

_subr_eq.eh:
Lset716 = Leh_frame_end144-Leh_frame_begin144
	.long	Lset716
Leh_frame_begin144:
Lset717 = Leh_frame_begin144-Leh_frame_common
	.long	Lset717
Ltmp773:
	.quad	Leh_func_begin144-Ltmp773
Lset718 = Leh_func_end144-Leh_func_begin144
	.quad	Lset718
	.byte	0
	.byte	4
Lset719 = Ltmp411-Leh_func_begin144
	.long	Lset719
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset720 = Ltmp412-Ltmp411
	.long	Lset720
	.byte	13
	.byte	6
	.align	3
Leh_frame_end144:

_subr_ne.eh:
Lset721 = Leh_frame_end145-Leh_frame_begin145
	.long	Lset721
Leh_frame_begin145:
Lset722 = Leh_frame_begin145-Leh_frame_common
	.long	Lset722
Ltmp774:
	.quad	Leh_func_begin145-Ltmp774
Lset723 = Leh_func_end145-Leh_func_begin145
	.quad	Lset723
	.byte	0
	.byte	4
Lset724 = Ltmp414-Leh_func_begin145
	.long	Lset724
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset725 = Ltmp415-Ltmp414
	.long	Lset725
	.byte	13
	.byte	6
	.align	3
Leh_frame_end145:

_subr_exit.eh:
Lset726 = Leh_frame_end146-Leh_frame_begin146
	.long	Lset726
Leh_frame_begin146:
Lset727 = Leh_frame_begin146-Leh_frame_common
	.long	Lset727
Ltmp775:
	.quad	Leh_func_begin146-Ltmp775
Lset728 = Leh_func_end146-Leh_func_begin146
	.quad	Lset728
	.byte	0
	.byte	4
Lset729 = Ltmp417-Leh_func_begin146
	.long	Lset729
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset730 = Ltmp418-Ltmp417
	.long	Lset730
	.byte	13
	.byte	6
	.align	3
Leh_frame_end146:

_subr_abort.eh:
Lset731 = Leh_frame_end147-Leh_frame_begin147
	.long	Lset731
Leh_frame_begin147:
Lset732 = Leh_frame_begin147-Leh_frame_common
	.long	Lset732
Ltmp776:
	.quad	Leh_func_begin147-Ltmp776
Lset733 = Leh_func_end147-Leh_func_begin147
	.quad	Lset733
	.byte	0
	.byte	4
Lset734 = Ltmp420-Leh_func_begin147
	.long	Lset734
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset735 = Ltmp421-Ltmp420
	.long	Lset735
	.byte	13
	.byte	6
	.align	3
Leh_frame_end147:

_subr_popen.eh:
Lset736 = Leh_frame_end148-Leh_frame_begin148
	.long	Lset736
Leh_frame_begin148:
Lset737 = Leh_frame_begin148-Leh_frame_common
	.long	Lset737
Ltmp777:
	.quad	Leh_func_begin148-Ltmp777
Lset738 = Leh_func_end148-Leh_func_begin148
	.quad	Lset738
	.byte	0
	.byte	4
Lset739 = Ltmp423-Leh_func_begin148
	.long	Lset739
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset740 = Ltmp424-Ltmp423
	.long	Lset740
	.byte	13
	.byte	6
	.align	3
Leh_frame_end148:

_subr_pclose.eh:
Lset741 = Leh_frame_end149-Leh_frame_begin149
	.long	Lset741
Leh_frame_begin149:
Lset742 = Leh_frame_begin149-Leh_frame_common
	.long	Lset742
Ltmp778:
	.quad	Leh_func_begin149-Ltmp778
Lset743 = Leh_func_end149-Leh_func_begin149
	.quad	Lset743
	.byte	0
	.byte	4
Lset744 = Ltmp426-Leh_func_begin149
	.long	Lset744
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset745 = Ltmp427-Ltmp426
	.long	Lset745
	.byte	13
	.byte	6
	.align	3
Leh_frame_end149:

_subr_freadstr.eh:
Lset746 = Leh_frame_end150-Leh_frame_begin150
	.long	Lset746
Leh_frame_begin150:
Lset747 = Leh_frame_begin150-Leh_frame_common
	.long	Lset747
Ltmp779:
	.quad	Leh_func_begin150-Ltmp779
Lset748 = Leh_func_end150-Leh_func_begin150
	.quad	Lset748
	.byte	0
	.byte	4
Lset749 = Ltmp429-Leh_func_begin150
	.long	Lset749
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset750 = Ltmp430-Ltmp429
	.long	Lset750
	.byte	13
	.byte	6
	.align	3
Leh_frame_end150:

_subr_open.eh:
Lset751 = Leh_frame_end151-Leh_frame_begin151
	.long	Lset751
Leh_frame_begin151:
Lset752 = Leh_frame_begin151-Leh_frame_common
	.long	Lset752
Ltmp780:
	.quad	Leh_func_begin151-Ltmp780
Lset753 = Leh_func_end151-Leh_func_begin151
	.quad	Lset753
	.byte	0
	.byte	4
Lset754 = Ltmp432-Leh_func_begin151
	.long	Lset754
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset755 = Ltmp433-Ltmp432
	.long	Lset755
	.byte	13
	.byte	6
	.align	3
Leh_frame_end151:

_subr_close.eh:
Lset756 = Leh_frame_end152-Leh_frame_begin152
	.long	Lset756
Leh_frame_begin152:
Lset757 = Leh_frame_begin152-Leh_frame_common
	.long	Lset757
Ltmp781:
	.quad	Leh_func_begin152-Ltmp781
Lset758 = Leh_func_end152-Leh_func_begin152
	.quad	Lset758
	.byte	0
	.byte	4
Lset759 = Ltmp435-Leh_func_begin152
	.long	Lset759
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset760 = Ltmp436-Ltmp435
	.long	Lset760
	.byte	13
	.byte	6
	.align	3
Leh_frame_end152:

_subr_getc.eh:
Lset761 = Leh_frame_end153-Leh_frame_begin153
	.long	Lset761
Leh_frame_begin153:
Lset762 = Leh_frame_begin153-Leh_frame_common
	.long	Lset762
Ltmp782:
	.quad	Leh_func_begin153-Ltmp782
Lset763 = Leh_func_end153-Leh_func_begin153
	.quad	Lset763
	.byte	0
	.byte	4
Lset764 = Ltmp438-Leh_func_begin153
	.long	Lset764
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset765 = Ltmp439-Ltmp438
	.long	Lset765
	.byte	13
	.byte	6
	.align	3
Leh_frame_end153:

_subr_read.eh:
Lset766 = Leh_frame_end154-Leh_frame_begin154
	.long	Lset766
Leh_frame_begin154:
Lset767 = Leh_frame_begin154-Leh_frame_common
	.long	Lset767
Ltmp783:
	.quad	Leh_func_begin154-Ltmp783
Lset768 = Leh_func_end154-Leh_func_begin154
	.quad	Lset768
	.byte	0
	.byte	4
Lset769 = Ltmp441-Leh_func_begin154
	.long	Lset769
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset770 = Ltmp442-Ltmp441
	.long	Lset770
	.byte	13
	.byte	6
	.align	3
Leh_frame_end154:

_subr_expand.eh:
Lset771 = Leh_frame_end155-Leh_frame_begin155
	.long	Lset771
Leh_frame_begin155:
Lset772 = Leh_frame_begin155-Leh_frame_common
	.long	Lset772
Ltmp784:
	.quad	Leh_func_begin155-Ltmp784
Lset773 = Leh_func_end155-Leh_func_begin155
	.quad	Lset773
	.byte	0
	.byte	4
Lset774 = Ltmp444-Leh_func_begin155
	.long	Lset774
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset775 = Ltmp445-Ltmp444
	.long	Lset775
	.byte	13
	.byte	6
	.align	3
Leh_frame_end155:

_subr_encode.eh:
Lset776 = Leh_frame_end156-Leh_frame_begin156
	.long	Lset776
Leh_frame_begin156:
Lset777 = Leh_frame_begin156-Leh_frame_common
	.long	Lset777
Ltmp785:
	.quad	Leh_func_begin156-Ltmp785
Lset778 = Leh_func_end156-Leh_func_begin156
	.quad	Lset778
	.byte	0
	.byte	4
Lset779 = Ltmp447-Leh_func_begin156
	.long	Lset779
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset780 = Ltmp448-Ltmp447
	.long	Lset780
	.byte	13
	.byte	6
	.align	3
Leh_frame_end156:

_subr_eval.eh:
Lset781 = Leh_frame_end157-Leh_frame_begin157
	.long	Lset781
Leh_frame_begin157:
Lset782 = Leh_frame_begin157-Leh_frame_common
	.long	Lset782
Ltmp786:
	.quad	Leh_func_begin157-Ltmp786
Lset783 = Leh_func_end157-Leh_func_begin157
	.quad	Lset783
	.byte	0
	.byte	4
Lset784 = Ltmp450-Leh_func_begin157
	.long	Lset784
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset785 = Ltmp451-Ltmp450
	.long	Lset785
	.byte	13
	.byte	6
	.align	3
Leh_frame_end157:

_subr_apply.eh:
Lset786 = Leh_frame_end158-Leh_frame_begin158
	.long	Lset786
Leh_frame_begin158:
Lset787 = Leh_frame_begin158-Leh_frame_common
	.long	Lset787
Ltmp787:
	.quad	Leh_func_begin158-Ltmp787
Lset788 = Leh_func_end158-Leh_func_begin158
	.quad	Lset788
	.byte	0
	.byte	4
Lset789 = Ltmp453-Leh_func_begin158
	.long	Lset789
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset790 = Ltmp454-Ltmp453
	.long	Lset790
	.byte	13
	.byte	6
	.align	3
Leh_frame_end158:

_subr_type_of.eh:
Lset791 = Leh_frame_end159-Leh_frame_begin159
	.long	Lset791
Leh_frame_begin159:
Lset792 = Leh_frame_begin159-Leh_frame_common
	.long	Lset792
Ltmp788:
	.quad	Leh_func_begin159-Ltmp788
Lset793 = Leh_func_end159-Leh_func_begin159
	.quad	Lset793
	.byte	0
	.byte	4
Lset794 = Ltmp456-Leh_func_begin159
	.long	Lset794
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset795 = Ltmp457-Ltmp456
	.long	Lset795
	.byte	13
	.byte	6
	.align	3
Leh_frame_end159:

_subr_warn.eh:
Lset796 = Leh_frame_end160-Leh_frame_begin160
	.long	Lset796
Leh_frame_begin160:
Lset797 = Leh_frame_begin160-Leh_frame_common
	.long	Lset797
Ltmp789:
	.quad	Leh_func_begin160-Ltmp789
Lset798 = Leh_func_end160-Leh_func_begin160
	.quad	Lset798
	.byte	0
	.byte	4
Lset799 = Ltmp459-Leh_func_begin160
	.long	Lset799
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset800 = Ltmp460-Ltmp459
	.long	Lset800
	.byte	13
	.byte	6
	.align	3
Leh_frame_end160:

_subr_print.eh:
Lset801 = Leh_frame_end161-Leh_frame_begin161
	.long	Lset801
Leh_frame_begin161:
Lset802 = Leh_frame_begin161-Leh_frame_common
	.long	Lset802
Ltmp790:
	.quad	Leh_func_begin161-Ltmp790
Lset803 = Leh_func_end161-Leh_func_begin161
	.quad	Lset803
	.byte	0
	.byte	4
Lset804 = Ltmp462-Leh_func_begin161
	.long	Lset804
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset805 = Ltmp463-Ltmp462
	.long	Lset805
	.byte	13
	.byte	6
	.align	3
Leh_frame_end161:

_subr_dump.eh:
Lset806 = Leh_frame_end162-Leh_frame_begin162
	.long	Lset806
Leh_frame_begin162:
Lset807 = Leh_frame_begin162-Leh_frame_common
	.long	Lset807
Ltmp791:
	.quad	Leh_func_begin162-Ltmp791
Lset808 = Leh_func_end162-Leh_func_begin162
	.quad	Lset808
	.byte	0
	.byte	4
Lset809 = Ltmp465-Leh_func_begin162
	.long	Lset809
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset810 = Ltmp466-Ltmp465
	.long	Lset810
	.byte	13
	.byte	6
	.align	3
Leh_frame_end162:

_subr_format.eh:
Lset811 = Leh_frame_end163-Leh_frame_begin163
	.long	Lset811
Leh_frame_begin163:
Lset812 = Leh_frame_begin163-Leh_frame_common
	.long	Lset812
Ltmp792:
	.quad	Leh_func_begin163-Ltmp792
Lset813 = Leh_func_end163-Leh_func_begin163
	.quad	Lset813
	.byte	0
	.byte	4
Lset814 = Ltmp468-Leh_func_begin163
	.long	Lset814
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset815 = Ltmp469-Ltmp468
	.long	Lset815
	.byte	13
	.byte	6
	.align	3
Leh_frame_end163:

_subr_form.eh:
Lset816 = Leh_frame_end164-Leh_frame_begin164
	.long	Lset816
Leh_frame_begin164:
Lset817 = Leh_frame_begin164-Leh_frame_common
	.long	Lset817
Ltmp793:
	.quad	Leh_func_begin164-Ltmp793
Lset818 = Leh_func_end164-Leh_func_begin164
	.quad	Lset818
	.byte	0
	.byte	4
Lset819 = Ltmp471-Leh_func_begin164
	.long	Lset819
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset820 = Ltmp472-Ltmp471
	.long	Lset820
	.byte	13
	.byte	6
	.align	3
Leh_frame_end164:

_subr_fixedP.eh:
Lset821 = Leh_frame_end165-Leh_frame_begin165
	.long	Lset821
Leh_frame_begin165:
Lset822 = Leh_frame_begin165-Leh_frame_common
	.long	Lset822
Ltmp794:
	.quad	Leh_func_begin165-Ltmp794
Lset823 = Leh_func_end165-Leh_func_begin165
	.quad	Lset823
	.byte	0
	.byte	4
Lset824 = Ltmp474-Leh_func_begin165
	.long	Lset824
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset825 = Ltmp475-Ltmp474
	.long	Lset825
	.byte	13
	.byte	6
	.align	3
Leh_frame_end165:

_subr_cons.eh:
Lset826 = Leh_frame_end166-Leh_frame_begin166
	.long	Lset826
Leh_frame_begin166:
Lset827 = Leh_frame_begin166-Leh_frame_common
	.long	Lset827
Ltmp795:
	.quad	Leh_func_begin166-Ltmp795
Lset828 = Leh_func_end166-Leh_func_begin166
	.quad	Lset828
	.byte	0
	.byte	4
Lset829 = Ltmp477-Leh_func_begin166
	.long	Lset829
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset830 = Ltmp478-Ltmp477
	.long	Lset830
	.byte	13
	.byte	6
	.align	3
Leh_frame_end166:

_subr_pairP.eh:
Lset831 = Leh_frame_end167-Leh_frame_begin167
	.long	Lset831
Leh_frame_begin167:
Lset832 = Leh_frame_begin167-Leh_frame_common
	.long	Lset832
Ltmp796:
	.quad	Leh_func_begin167-Ltmp796
Lset833 = Leh_func_end167-Leh_func_begin167
	.quad	Lset833
	.byte	0
	.byte	4
Lset834 = Ltmp480-Leh_func_begin167
	.long	Lset834
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset835 = Ltmp481-Ltmp480
	.long	Lset835
	.byte	13
	.byte	6
	.align	3
Leh_frame_end167:

_subr_car.eh:
Lset836 = Leh_frame_end168-Leh_frame_begin168
	.long	Lset836
Leh_frame_begin168:
Lset837 = Leh_frame_begin168-Leh_frame_common
	.long	Lset837
Ltmp797:
	.quad	Leh_func_begin168-Ltmp797
Lset838 = Leh_func_end168-Leh_func_begin168
	.quad	Lset838
	.byte	0
	.byte	4
Lset839 = Ltmp483-Leh_func_begin168
	.long	Lset839
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset840 = Ltmp484-Ltmp483
	.long	Lset840
	.byte	13
	.byte	6
	.align	3
Leh_frame_end168:

_subr_set_car.eh:
Lset841 = Leh_frame_end169-Leh_frame_begin169
	.long	Lset841
Leh_frame_begin169:
Lset842 = Leh_frame_begin169-Leh_frame_common
	.long	Lset842
Ltmp798:
	.quad	Leh_func_begin169-Ltmp798
Lset843 = Leh_func_end169-Leh_func_begin169
	.quad	Lset843
	.byte	0
	.byte	4
Lset844 = Ltmp486-Leh_func_begin169
	.long	Lset844
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset845 = Ltmp487-Ltmp486
	.long	Lset845
	.byte	13
	.byte	6
	.align	3
Leh_frame_end169:

_subr_cdr.eh:
Lset846 = Leh_frame_end170-Leh_frame_begin170
	.long	Lset846
Leh_frame_begin170:
Lset847 = Leh_frame_begin170-Leh_frame_common
	.long	Lset847
Ltmp799:
	.quad	Leh_func_begin170-Ltmp799
Lset848 = Leh_func_end170-Leh_func_begin170
	.quad	Lset848
	.byte	0
	.byte	4
Lset849 = Ltmp489-Leh_func_begin170
	.long	Lset849
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset850 = Ltmp490-Ltmp489
	.long	Lset850
	.byte	13
	.byte	6
	.align	3
Leh_frame_end170:

_subr_set_cdr.eh:
Lset851 = Leh_frame_end171-Leh_frame_begin171
	.long	Lset851
Leh_frame_begin171:
Lset852 = Leh_frame_begin171-Leh_frame_common
	.long	Lset852
Ltmp800:
	.quad	Leh_func_begin171-Ltmp800
Lset853 = Leh_func_end171-Leh_func_begin171
	.quad	Lset853
	.byte	0
	.byte	4
Lset854 = Ltmp492-Leh_func_begin171
	.long	Lset854
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset855 = Ltmp493-Ltmp492
	.long	Lset855
	.byte	13
	.byte	6
	.align	3
Leh_frame_end171:

_subr_formP.eh:
Lset856 = Leh_frame_end172-Leh_frame_begin172
	.long	Lset856
Leh_frame_begin172:
Lset857 = Leh_frame_begin172-Leh_frame_common
	.long	Lset857
Ltmp801:
	.quad	Leh_func_begin172-Ltmp801
Lset858 = Leh_func_end172-Leh_func_begin172
	.quad	Lset858
	.byte	0
	.byte	4
Lset859 = Ltmp495-Leh_func_begin172
	.long	Lset859
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset860 = Ltmp496-Ltmp495
	.long	Lset860
	.byte	13
	.byte	6
	.align	3
Leh_frame_end172:

_subr_symbolP.eh:
Lset861 = Leh_frame_end173-Leh_frame_begin173
	.long	Lset861
Leh_frame_begin173:
Lset862 = Leh_frame_begin173-Leh_frame_common
	.long	Lset862
Ltmp802:
	.quad	Leh_func_begin173-Ltmp802
Lset863 = Leh_func_end173-Leh_func_begin173
	.quad	Lset863
	.byte	0
	.byte	4
Lset864 = Ltmp498-Leh_func_begin173
	.long	Lset864
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset865 = Ltmp499-Ltmp498
	.long	Lset865
	.byte	13
	.byte	6
	.align	3
Leh_frame_end173:

_subr_stringP.eh:
Lset866 = Leh_frame_end174-Leh_frame_begin174
	.long	Lset866
Leh_frame_begin174:
Lset867 = Leh_frame_begin174-Leh_frame_common
	.long	Lset867
Ltmp803:
	.quad	Leh_func_begin174-Ltmp803
Lset868 = Leh_func_end174-Leh_func_begin174
	.quad	Lset868
	.byte	0
	.byte	4
Lset869 = Ltmp501-Leh_func_begin174
	.long	Lset869
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset870 = Ltmp502-Ltmp501
	.long	Lset870
	.byte	13
	.byte	6
	.align	3
Leh_frame_end174:

_subr_string.eh:
Lset871 = Leh_frame_end175-Leh_frame_begin175
	.long	Lset871
Leh_frame_begin175:
Lset872 = Leh_frame_begin175-Leh_frame_common
	.long	Lset872
Ltmp804:
	.quad	Leh_func_begin175-Ltmp804
Lset873 = Leh_func_end175-Leh_func_begin175
	.quad	Lset873
	.byte	0
	.byte	4
Lset874 = Ltmp504-Leh_func_begin175
	.long	Lset874
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset875 = Ltmp505-Ltmp504
	.long	Lset875
	.byte	13
	.byte	6
	.align	3
Leh_frame_end175:

_subr_string_length.eh:
Lset876 = Leh_frame_end176-Leh_frame_begin176
	.long	Lset876
Leh_frame_begin176:
Lset877 = Leh_frame_begin176-Leh_frame_common
	.long	Lset877
Ltmp805:
	.quad	Leh_func_begin176-Ltmp805
Lset878 = Leh_func_end176-Leh_func_begin176
	.quad	Lset878
	.byte	0
	.byte	4
Lset879 = Ltmp507-Leh_func_begin176
	.long	Lset879
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset880 = Ltmp508-Ltmp507
	.long	Lset880
	.byte	13
	.byte	6
	.align	3
Leh_frame_end176:

_subr_string_at.eh:
Lset881 = Leh_frame_end177-Leh_frame_begin177
	.long	Lset881
Leh_frame_begin177:
Lset882 = Leh_frame_begin177-Leh_frame_common
	.long	Lset882
Ltmp806:
	.quad	Leh_func_begin177-Ltmp806
Lset883 = Leh_func_end177-Leh_func_begin177
	.quad	Lset883
	.byte	0
	.byte	4
Lset884 = Ltmp510-Leh_func_begin177
	.long	Lset884
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset885 = Ltmp511-Ltmp510
	.long	Lset885
	.byte	13
	.byte	6
	.align	3
Leh_frame_end177:

_subr_set_string_at.eh:
Lset886 = Leh_frame_end178-Leh_frame_begin178
	.long	Lset886
Leh_frame_begin178:
Lset887 = Leh_frame_begin178-Leh_frame_common
	.long	Lset887
Ltmp807:
	.quad	Leh_func_begin178-Ltmp807
Lset888 = Leh_func_end178-Leh_func_begin178
	.quad	Lset888
	.byte	0
	.byte	4
Lset889 = Ltmp513-Leh_func_begin178
	.long	Lset889
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset890 = Ltmp514-Ltmp513
	.long	Lset890
	.byte	13
	.byte	6
	.align	3
Leh_frame_end178:

_subr_string_compare.eh:
Lset891 = Leh_frame_end179-Leh_frame_begin179
	.long	Lset891
Leh_frame_begin179:
Lset892 = Leh_frame_begin179-Leh_frame_common
	.long	Lset892
Ltmp808:
	.quad	Leh_func_begin179-Ltmp808
Lset893 = Leh_func_end179-Leh_func_begin179
	.quad	Lset893
	.byte	0
	.byte	4
Lset894 = Ltmp516-Leh_func_begin179
	.long	Lset894
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset895 = Ltmp517-Ltmp516
	.long	Lset895
	.byte	13
	.byte	6
	.align	3
Leh_frame_end179:

_subr_symbol_compare.eh:
Lset896 = Leh_frame_end180-Leh_frame_begin180
	.long	Lset896
Leh_frame_begin180:
Lset897 = Leh_frame_begin180-Leh_frame_common
	.long	Lset897
Ltmp809:
	.quad	Leh_func_begin180-Ltmp809
Lset898 = Leh_func_end180-Leh_func_begin180
	.quad	Lset898
	.byte	0
	.byte	4
Lset899 = Ltmp519-Leh_func_begin180
	.long	Lset899
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset900 = Ltmp520-Ltmp519
	.long	Lset900
	.byte	13
	.byte	6
	.align	3
Leh_frame_end180:

_subr_string_symbol.eh:
Lset901 = Leh_frame_end181-Leh_frame_begin181
	.long	Lset901
Leh_frame_begin181:
Lset902 = Leh_frame_begin181-Leh_frame_common
	.long	Lset902
Ltmp810:
	.quad	Leh_func_begin181-Ltmp810
Lset903 = Leh_func_end181-Leh_func_begin181
	.quad	Lset903
	.byte	0
	.byte	4
Lset904 = Ltmp522-Leh_func_begin181
	.long	Lset904
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset905 = Ltmp523-Ltmp522
	.long	Lset905
	.byte	13
	.byte	6
	.align	3
Leh_frame_end181:

_subr_symbol_string.eh:
Lset906 = Leh_frame_end182-Leh_frame_begin182
	.long	Lset906
Leh_frame_begin182:
Lset907 = Leh_frame_begin182-Leh_frame_common
	.long	Lset907
Ltmp811:
	.quad	Leh_func_begin182-Ltmp811
Lset908 = Leh_func_end182-Leh_func_begin182
	.quad	Lset908
	.byte	0
	.byte	4
Lset909 = Ltmp525-Leh_func_begin182
	.long	Lset909
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset910 = Ltmp526-Ltmp525
	.long	Lset910
	.byte	13
	.byte	6
	.align	3
Leh_frame_end182:

_subr_long_double.eh:
Lset911 = Leh_frame_end183-Leh_frame_begin183
	.long	Lset911
Leh_frame_begin183:
Lset912 = Leh_frame_begin183-Leh_frame_common
	.long	Lset912
Ltmp812:
	.quad	Leh_func_begin183-Ltmp812
Lset913 = Leh_func_end183-Leh_func_begin183
	.quad	Lset913
	.byte	0
	.byte	4
Lset914 = Ltmp528-Leh_func_begin183
	.long	Lset914
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset915 = Ltmp529-Ltmp528
	.long	Lset915
	.byte	13
	.byte	6
	.align	3
Leh_frame_end183:

_subr_long_string.eh:
Lset916 = Leh_frame_end184-Leh_frame_begin184
	.long	Lset916
Leh_frame_begin184:
Lset917 = Leh_frame_begin184-Leh_frame_common
	.long	Lset917
Ltmp813:
	.quad	Leh_func_begin184-Ltmp813
Lset918 = Leh_func_end184-Leh_func_begin184
	.quad	Lset918
	.byte	0
	.byte	4
Lset919 = Ltmp531-Leh_func_begin184
	.long	Lset919
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset920 = Ltmp532-Ltmp531
	.long	Lset920
	.byte	13
	.byte	6
	.align	3
Leh_frame_end184:

_subr_string_long.eh:
Lset921 = Leh_frame_end185-Leh_frame_begin185
	.long	Lset921
Leh_frame_begin185:
Lset922 = Leh_frame_begin185-Leh_frame_common
	.long	Lset922
Ltmp814:
	.quad	Leh_func_begin185-Ltmp814
Lset923 = Leh_func_end185-Leh_func_begin185
	.quad	Lset923
	.byte	0
	.byte	4
Lset924 = Ltmp534-Leh_func_begin185
	.long	Lset924
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset925 = Ltmp535-Ltmp534
	.long	Lset925
	.byte	13
	.byte	6
	.align	3
Leh_frame_end185:

_subr_double_long.eh:
Lset926 = Leh_frame_end186-Leh_frame_begin186
	.long	Lset926
Leh_frame_begin186:
Lset927 = Leh_frame_begin186-Leh_frame_common
	.long	Lset927
Ltmp815:
	.quad	Leh_func_begin186-Ltmp815
Lset928 = Leh_func_end186-Leh_func_begin186
	.quad	Lset928
	.byte	0
	.byte	4
Lset929 = Ltmp537-Leh_func_begin186
	.long	Lset929
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset930 = Ltmp538-Ltmp537
	.long	Lset930
	.byte	13
	.byte	6
	.align	3
Leh_frame_end186:

_subr_double_string.eh:
Lset931 = Leh_frame_end187-Leh_frame_begin187
	.long	Lset931
Leh_frame_begin187:
Lset932 = Leh_frame_begin187-Leh_frame_common
	.long	Lset932
Ltmp816:
	.quad	Leh_func_begin187-Ltmp816
Lset933 = Leh_func_end187-Leh_func_begin187
	.quad	Lset933
	.byte	0
	.byte	4
Lset934 = Ltmp540-Leh_func_begin187
	.long	Lset934
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset935 = Ltmp541-Ltmp540
	.long	Lset935
	.byte	13
	.byte	6
	.align	3
Leh_frame_end187:

_subr_string_double.eh:
Lset936 = Leh_frame_end188-Leh_frame_begin188
	.long	Lset936
Leh_frame_begin188:
Lset937 = Leh_frame_begin188-Leh_frame_common
	.long	Lset937
Ltmp817:
	.quad	Leh_func_begin188-Ltmp817
Lset938 = Leh_func_end188-Leh_func_begin188
	.quad	Lset938
	.byte	0
	.byte	4
Lset939 = Ltmp543-Leh_func_begin188
	.long	Lset939
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset940 = Ltmp544-Ltmp543
	.long	Lset940
	.byte	13
	.byte	6
	.align	3
Leh_frame_end188:

_subr_array.eh:
Lset941 = Leh_frame_end189-Leh_frame_begin189
	.long	Lset941
Leh_frame_begin189:
Lset942 = Leh_frame_begin189-Leh_frame_common
	.long	Lset942
Ltmp818:
	.quad	Leh_func_begin189-Ltmp818
Lset943 = Leh_func_end189-Leh_func_begin189
	.quad	Lset943
	.byte	0
	.byte	4
Lset944 = Ltmp546-Leh_func_begin189
	.long	Lset944
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset945 = Ltmp547-Ltmp546
	.long	Lset945
	.byte	13
	.byte	6
	.align	3
Leh_frame_end189:

_subr_arrayP.eh:
Lset946 = Leh_frame_end190-Leh_frame_begin190
	.long	Lset946
Leh_frame_begin190:
Lset947 = Leh_frame_begin190-Leh_frame_common
	.long	Lset947
Ltmp819:
	.quad	Leh_func_begin190-Ltmp819
Lset948 = Leh_func_end190-Leh_func_begin190
	.quad	Lset948
	.byte	0
	.byte	4
Lset949 = Ltmp549-Leh_func_begin190
	.long	Lset949
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset950 = Ltmp550-Ltmp549
	.long	Lset950
	.byte	13
	.byte	6
	.align	3
Leh_frame_end190:

_subr_array_length.eh:
Lset951 = Leh_frame_end191-Leh_frame_begin191
	.long	Lset951
Leh_frame_begin191:
Lset952 = Leh_frame_begin191-Leh_frame_common
	.long	Lset952
Ltmp820:
	.quad	Leh_func_begin191-Ltmp820
Lset953 = Leh_func_end191-Leh_func_begin191
	.quad	Lset953
	.byte	0
	.byte	4
Lset954 = Ltmp552-Leh_func_begin191
	.long	Lset954
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset955 = Ltmp553-Ltmp552
	.long	Lset955
	.byte	13
	.byte	6
	.align	3
Leh_frame_end191:

_subr_array_at.eh:
Lset956 = Leh_frame_end192-Leh_frame_begin192
	.long	Lset956
Leh_frame_begin192:
Lset957 = Leh_frame_begin192-Leh_frame_common
	.long	Lset957
Ltmp821:
	.quad	Leh_func_begin192-Ltmp821
Lset958 = Leh_func_end192-Leh_func_begin192
	.quad	Lset958
	.byte	0
	.byte	4
Lset959 = Ltmp555-Leh_func_begin192
	.long	Lset959
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset960 = Ltmp556-Ltmp555
	.long	Lset960
	.byte	13
	.byte	6
	.align	3
Leh_frame_end192:

_subr_set_array_at.eh:
Lset961 = Leh_frame_end193-Leh_frame_begin193
	.long	Lset961
Leh_frame_begin193:
Lset962 = Leh_frame_begin193-Leh_frame_common
	.long	Lset962
Ltmp822:
	.quad	Leh_func_begin193-Ltmp822
Lset963 = Leh_func_end193-Leh_func_begin193
	.quad	Lset963
	.byte	0
	.byte	4
Lset964 = Ltmp558-Leh_func_begin193
	.long	Lset964
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset965 = Ltmp559-Ltmp558
	.long	Lset965
	.byte	13
	.byte	6
	.align	3
Leh_frame_end193:

_subr_data.eh:
Lset966 = Leh_frame_end194-Leh_frame_begin194
	.long	Lset966
Leh_frame_begin194:
Lset967 = Leh_frame_begin194-Leh_frame_common
	.long	Lset967
Ltmp823:
	.quad	Leh_func_begin194-Ltmp823
Lset968 = Leh_func_end194-Leh_func_begin194
	.quad	Lset968
	.byte	0
	.byte	4
Lset969 = Ltmp561-Leh_func_begin194
	.long	Lset969
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset970 = Ltmp562-Ltmp561
	.long	Lset970
	.byte	13
	.byte	6
	.align	3
Leh_frame_end194:

_subr_byte_at.eh:
Lset971 = Leh_frame_end195-Leh_frame_begin195
	.long	Lset971
Leh_frame_begin195:
Lset972 = Leh_frame_begin195-Leh_frame_common
	.long	Lset972
Ltmp824:
	.quad	Leh_func_begin195-Ltmp824
Lset973 = Leh_func_end195-Leh_func_begin195
	.quad	Lset973
	.byte	0
	.byte	4
Lset974 = Ltmp564-Leh_func_begin195
	.long	Lset974
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset975 = Ltmp565-Ltmp564
	.long	Lset975
	.byte	13
	.byte	6
	.align	3
Leh_frame_end195:

_subr_set_byte_at.eh:
Lset976 = Leh_frame_end196-Leh_frame_begin196
	.long	Lset976
Leh_frame_begin196:
Lset977 = Leh_frame_begin196-Leh_frame_common
	.long	Lset977
Ltmp825:
	.quad	Leh_func_begin196-Ltmp825
Lset978 = Leh_func_end196-Leh_func_begin196
	.quad	Lset978
	.byte	0
	.byte	4
Lset979 = Ltmp567-Leh_func_begin196
	.long	Lset979
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset980 = Ltmp568-Ltmp567
	.long	Lset980
	.byte	13
	.byte	6
	.align	3
Leh_frame_end196:

_subr_long_at.eh:
Lset981 = Leh_frame_end197-Leh_frame_begin197
	.long	Lset981
Leh_frame_begin197:
Lset982 = Leh_frame_begin197-Leh_frame_common
	.long	Lset982
Ltmp826:
	.quad	Leh_func_begin197-Ltmp826
Lset983 = Leh_func_end197-Leh_func_begin197
	.quad	Lset983
	.byte	0
	.byte	4
Lset984 = Ltmp570-Leh_func_begin197
	.long	Lset984
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset985 = Ltmp571-Ltmp570
	.long	Lset985
	.byte	13
	.byte	6
	.align	3
Leh_frame_end197:

_subr_set_long_at.eh:
Lset986 = Leh_frame_end198-Leh_frame_begin198
	.long	Lset986
Leh_frame_begin198:
Lset987 = Leh_frame_begin198-Leh_frame_common
	.long	Lset987
Ltmp827:
	.quad	Leh_func_begin198-Ltmp827
Lset988 = Leh_func_end198-Leh_func_begin198
	.quad	Lset988
	.byte	0
	.byte	4
Lset989 = Ltmp573-Leh_func_begin198
	.long	Lset989
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset990 = Ltmp574-Ltmp573
	.long	Lset990
	.byte	13
	.byte	6
	.align	3
Leh_frame_end198:

_subr_call.eh:
Lset991 = Leh_frame_end199-Leh_frame_begin199
	.long	Lset991
Leh_frame_begin199:
Lset992 = Leh_frame_begin199-Leh_frame_common
	.long	Lset992
Ltmp828:
	.quad	Leh_func_begin199-Ltmp828
Lset993 = Leh_func_end199-Leh_func_begin199
	.quad	Lset993
	.byte	0
	.byte	4
Lset994 = Ltmp576-Leh_func_begin199
	.long	Lset994
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset995 = Ltmp577-Ltmp576
	.long	Lset995
	.byte	13
	.byte	6
	.align	3
Leh_frame_end199:

_subr_subr.eh:
Lset996 = Leh_frame_end200-Leh_frame_begin200
	.long	Lset996
Leh_frame_begin200:
Lset997 = Leh_frame_begin200-Leh_frame_common
	.long	Lset997
Ltmp829:
	.quad	Leh_func_begin200-Ltmp829
Lset998 = Leh_func_end200-Leh_func_begin200
	.quad	Lset998
	.byte	0
	.byte	4
Lset999 = Ltmp579-Leh_func_begin200
	.long	Lset999
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1000 = Ltmp580-Ltmp579
	.long	Lset1000
	.byte	13
	.byte	6
	.align	3
Leh_frame_end200:

_subr_allocate.eh:
Lset1001 = Leh_frame_end201-Leh_frame_begin201
	.long	Lset1001
Leh_frame_begin201:
Lset1002 = Leh_frame_begin201-Leh_frame_common
	.long	Lset1002
Ltmp830:
	.quad	Leh_func_begin201-Ltmp830
Lset1003 = Leh_func_end201-Leh_func_begin201
	.quad	Lset1003
	.byte	0
	.byte	4
Lset1004 = Ltmp582-Leh_func_begin201
	.long	Lset1004
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1005 = Ltmp583-Ltmp582
	.long	Lset1005
	.byte	13
	.byte	6
	.align	3
Leh_frame_end201:

_subr_oop_at.eh:
Lset1006 = Leh_frame_end202-Leh_frame_begin202
	.long	Lset1006
Leh_frame_begin202:
Lset1007 = Leh_frame_begin202-Leh_frame_common
	.long	Lset1007
Ltmp831:
	.quad	Leh_func_begin202-Ltmp831
Lset1008 = Leh_func_end202-Leh_func_begin202
	.quad	Lset1008
	.byte	0
	.byte	4
Lset1009 = Ltmp585-Leh_func_begin202
	.long	Lset1009
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1010 = Ltmp586-Ltmp585
	.long	Lset1010
	.byte	13
	.byte	6
	.align	3
Leh_frame_end202:

_subr_set_oop_at.eh:
Lset1011 = Leh_frame_end203-Leh_frame_begin203
	.long	Lset1011
Leh_frame_begin203:
Lset1012 = Leh_frame_begin203-Leh_frame_common
	.long	Lset1012
Ltmp832:
	.quad	Leh_func_begin203-Ltmp832
Lset1013 = Leh_func_end203-Leh_func_begin203
	.quad	Lset1013
	.byte	0
	.byte	4
Lset1014 = Ltmp588-Leh_func_begin203
	.long	Lset1014
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1015 = Ltmp589-Ltmp588
	.long	Lset1015
	.byte	13
	.byte	6
	.align	3
Leh_frame_end203:

_subr_not.eh:
Lset1016 = Leh_frame_end204-Leh_frame_begin204
	.long	Lset1016
Leh_frame_begin204:
Lset1017 = Leh_frame_begin204-Leh_frame_common
	.long	Lset1017
Ltmp833:
	.quad	Leh_func_begin204-Ltmp833
Lset1018 = Leh_func_end204-Leh_func_begin204
	.quad	Lset1018
	.byte	0
	.byte	4
Lset1019 = Ltmp591-Leh_func_begin204
	.long	Lset1019
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1020 = Ltmp592-Ltmp591
	.long	Lset1020
	.byte	13
	.byte	6
	.align	3
Leh_frame_end204:

_subr_verbose.eh:
Lset1021 = Leh_frame_end205-Leh_frame_begin205
	.long	Lset1021
Leh_frame_begin205:
Lset1022 = Leh_frame_begin205-Leh_frame_common
	.long	Lset1022
Ltmp834:
	.quad	Leh_func_begin205-Ltmp834
Lset1023 = Leh_func_end205-Leh_func_begin205
	.quad	Lset1023
	.byte	0
	.byte	4
Lset1024 = Ltmp594-Leh_func_begin205
	.long	Lset1024
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1025 = Ltmp595-Ltmp594
	.long	Lset1025
	.byte	13
	.byte	6
	.align	3
Leh_frame_end205:

_subr_sin.eh:
Lset1026 = Leh_frame_end206-Leh_frame_begin206
	.long	Lset1026
Leh_frame_begin206:
Lset1027 = Leh_frame_begin206-Leh_frame_common
	.long	Lset1027
Ltmp835:
	.quad	Leh_func_begin206-Ltmp835
Lset1028 = Leh_func_end206-Leh_func_begin206
	.quad	Lset1028
	.byte	0
	.byte	4
Lset1029 = Ltmp597-Leh_func_begin206
	.long	Lset1029
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1030 = Ltmp598-Ltmp597
	.long	Lset1030
	.byte	13
	.byte	6
	.align	3
Leh_frame_end206:

_subr_cos.eh:
Lset1031 = Leh_frame_end207-Leh_frame_begin207
	.long	Lset1031
Leh_frame_begin207:
Lset1032 = Leh_frame_begin207-Leh_frame_common
	.long	Lset1032
Ltmp836:
	.quad	Leh_func_begin207-Ltmp836
Lset1033 = Leh_func_end207-Leh_func_begin207
	.quad	Lset1033
	.byte	0
	.byte	4
Lset1034 = Ltmp600-Leh_func_begin207
	.long	Lset1034
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1035 = Ltmp601-Ltmp600
	.long	Lset1035
	.byte	13
	.byte	6
	.align	3
Leh_frame_end207:

_subr_log.eh:
Lset1036 = Leh_frame_end208-Leh_frame_begin208
	.long	Lset1036
Leh_frame_begin208:
Lset1037 = Leh_frame_begin208-Leh_frame_common
	.long	Lset1037
Ltmp837:
	.quad	Leh_func_begin208-Ltmp837
Lset1038 = Leh_func_end208-Leh_func_begin208
	.quad	Lset1038
	.byte	0
	.byte	4
Lset1039 = Ltmp603-Leh_func_begin208
	.long	Lset1039
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1040 = Ltmp604-Ltmp603
	.long	Lset1040
	.byte	13
	.byte	6
	.align	3
Leh_frame_end208:

_subr_address_of.eh:
Lset1041 = Leh_frame_end209-Leh_frame_begin209
	.long	Lset1041
Leh_frame_begin209:
Lset1042 = Leh_frame_begin209-Leh_frame_common
	.long	Lset1042
Ltmp838:
	.quad	Leh_func_begin209-Ltmp838
Lset1043 = Leh_func_end209-Leh_func_begin209
	.quad	Lset1043
	.byte	0
	.byte	4
Lset1044 = Ltmp606-Leh_func_begin209
	.long	Lset1044
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1045 = Ltmp607-Ltmp606
	.long	Lset1045
	.byte	13
	.byte	6
	.align	3
Leh_frame_end209:

_replFile.eh:
Lset1046 = Leh_frame_end210-Leh_frame_begin210
	.long	Lset1046
Leh_frame_begin210:
Lset1047 = Leh_frame_begin210-Leh_frame_common
	.long	Lset1047
Ltmp839:
	.quad	Leh_func_begin210-Ltmp839
Lset1048 = Leh_func_end210-Leh_func_begin210
	.quad	Lset1048
	.byte	0
	.byte	4
Lset1049 = Ltmp609-Leh_func_begin210
	.long	Lset1049
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1050 = Ltmp610-Ltmp609
	.long	Lset1050
	.byte	13
	.byte	6
	.align	3
Leh_frame_end210:

_replPath.eh:
Lset1051 = Leh_frame_end211-Leh_frame_begin211
	.long	Lset1051
Leh_frame_begin211:
Lset1052 = Leh_frame_begin211-Leh_frame_common
	.long	Lset1052
Ltmp840:
	.quad	Leh_func_begin211-Ltmp840
Lset1053 = Leh_func_end211-Leh_func_begin211
	.quad	Lset1053
	.byte	0
	.byte	4
Lset1054 = Ltmp612-Leh_func_begin211
	.long	Lset1054
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1055 = Ltmp613-Ltmp612
	.long	Lset1055
	.byte	13
	.byte	6
	.align	3
Leh_frame_end211:

_sigint.eh:
Lset1056 = Leh_frame_end212-Leh_frame_begin212
	.long	Lset1056
Leh_frame_begin212:
Lset1057 = Leh_frame_begin212-Leh_frame_common
	.long	Lset1057
Ltmp841:
	.quad	Leh_func_begin212-Ltmp841
Lset1058 = Leh_func_end212-Leh_func_begin212
	.quad	Lset1058
	.byte	0
	.byte	4
Lset1059 = Ltmp615-Leh_func_begin212
	.long	Lset1059
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1060 = Ltmp616-Ltmp615
	.long	Lset1060
	.byte	13
	.byte	6
	.align	3
Leh_frame_end212:

_sigvtalrm.eh:
Lset1061 = Leh_frame_end213-Leh_frame_begin213
	.long	Lset1061
Leh_frame_begin213:
Lset1062 = Leh_frame_begin213-Leh_frame_common
	.long	Lset1062
Ltmp842:
	.quad	Leh_func_begin213-Ltmp842
Lset1063 = Leh_func_end213-Leh_func_begin213
	.quad	Lset1063
	.byte	0
	.byte	4
Lset1064 = Ltmp618-Leh_func_begin213
	.long	Lset1064
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1065 = Ltmp619-Ltmp618
	.long	Lset1065
	.byte	13
	.byte	6
	.align	3
Leh_frame_end213:

_profilingEnable.eh:
Lset1066 = Leh_frame_end214-Leh_frame_begin214
	.long	Lset1066
Leh_frame_begin214:
Lset1067 = Leh_frame_begin214-Leh_frame_common
	.long	Lset1067
Ltmp843:
	.quad	Leh_func_begin214-Ltmp843
Lset1068 = Leh_func_end214-Leh_func_begin214
	.quad	Lset1068
	.byte	0
	.byte	4
Lset1069 = Ltmp621-Leh_func_begin214
	.long	Lset1069
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1070 = Ltmp622-Ltmp621
	.long	Lset1070
	.byte	13
	.byte	6
	.align	3
Leh_frame_end214:

_profilingDisable.eh:
Lset1071 = Leh_frame_end215-Leh_frame_begin215
	.long	Lset1071
Leh_frame_begin215:
Lset1072 = Leh_frame_begin215-Leh_frame_common
	.long	Lset1072
Ltmp844:
	.quad	Leh_func_begin215-Ltmp844
Lset1073 = Leh_func_end215-Leh_func_begin215
	.quad	Lset1073
	.byte	0
	.byte	4
Lset1074 = Ltmp624-Leh_func_begin215
	.long	Lset1074
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1075 = Ltmp625-Ltmp624
	.long	Lset1075
	.byte	13
	.byte	6
	.align	3
Leh_frame_end215:

	.globl	_main.eh
_main.eh:
Lset1076 = Leh_frame_end216-Leh_frame_begin216
	.long	Lset1076
Leh_frame_begin216:
Lset1077 = Leh_frame_begin216-Leh_frame_common
	.long	Lset1077
Ltmp845:
	.quad	Leh_func_begin216-Ltmp845
Lset1078 = Leh_func_end216-Leh_func_begin216
	.quad	Lset1078
	.byte	0
	.byte	4
Lset1079 = Ltmp627-Leh_func_begin216
	.long	Lset1079
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1080 = Ltmp628-Ltmp627
	.long	Lset1080
	.byte	13
	.byte	6
	.align	3
Leh_frame_end216:


.subsections_via_symbols
