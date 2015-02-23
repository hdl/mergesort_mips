	.section	__TEXT,__text,regular,pure_instructions
	.globl	_merge
	.align	4, 0x90
_merge:                                 ## @merge
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movl	-220(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movl	-220(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-228(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -236(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	$0, %al
	movl	-232(%rbp), %ecx
	cmpl	-228(%rbp), %ecx
	movb	%al, -241(%rbp)         ## 1-byte Spill
	jg	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-236(%rbp), %eax
	cmpl	-224(%rbp), %eax
	setle	%cl
	movb	%cl, -241(%rbp)         ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-241(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_4
	jmp	LBB0_8
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movslq	-232(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-236(%rbp), %rax
	movq	-216(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	jge	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-232(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-240(%rbp), %rax
	movl	%edx, -208(%rbp,%rax,4)
	movl	-240(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -240(%rbp)
	movl	-236(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movslq	-236(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-240(%rbp), %rax
	movl	%edx, -208(%rbp,%rax,4)
	movl	-240(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -240(%rbp)
	movl	-236(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jg	LBB0_11
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	movslq	-236(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-240(%rbp), %rax
	movl	%edx, -208(%rbp,%rax,4)
	movl	-240(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -240(%rbp)
	movl	-232(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -232(%rbp)
	jmp	LBB0_9
LBB0_11:
	jmp	LBB0_12
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	movl	-236(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jg	LBB0_14
## BB#13:                               ##   in Loop: Header=BB0_12 Depth=1
	movslq	-236(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-240(%rbp), %rax
	movl	%edx, -208(%rbp,%rax,4)
	movl	-240(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -240(%rbp)
	movl	-236(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)
	jmp	LBB0_12
LBB0_14:
	movl	-220(%rbp), %eax
	movl	%eax, -232(%rbp)
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jge	LBB0_18
## BB#16:                               ##   in Loop: Header=BB0_15 Depth=1
	movslq	-232(%rbp), %rax
	movl	-208(%rbp,%rax,4), %ecx
	movslq	-232(%rbp), %rax
	movq	-216(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
## BB#17:                               ##   in Loop: Header=BB0_15 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	LBB0_15
LBB0_18:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB0_20
## BB#19:                               ## %SP_return
	addq	$256, %rsp              ## imm = 0x100
	popq	%rbp
	retq
LBB0_20:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mergesort
	.align	4, 0x90
_mergesort:                             ## @mergesort
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jge	LBB1_2
## BB#1:
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	_mergesort
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	_mergesort
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	_merge
LBB1_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, %esi
	movl	$4, %edx
	leaq	-32(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$3, -20(%rbp)
	callq	_mergesort
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB2_2
## BB#1:                                ## %SP_return
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
LBB2_2:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc


.subsections_via_symbols
