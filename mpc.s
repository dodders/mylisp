	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_mpc_err_delete
	.align	4, 0x90
_mpc_err_delete:                        ## @mpc_err_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_free
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_4:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_err_print
	.align	4, 0x90
_mpc_err_print:                         ## @mpc_err_print
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rax), %rsi
	callq	_mpc_err_print_to
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_err_print_to
	.align	4, 0x90
_mpc_err_print_to:                      ## @mpc_err_print_to
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_err_string
	leaq	L_.str(%rip), %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	_fprintf
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_free
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_err_string
	.align	4, 0x90
_mpc_err_string:                        ## @mpc_err_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$1024, %eax             ## imm = 0x400
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$1023, -28(%rbp)        ## imm = 0x3FF
	movq	%rcx, %rdi
	callq	_calloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	LBB3_2
## BB#1:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.1(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	40(%rax), %r9
	movb	$0, %al
	callq	_mpc_err_string_cat
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	LBB3_13
LBB3_2:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.2(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movq	-16(%rbp), %r9
	movq	16(%r9), %r9
	addq	$1, %r9
	movq	%r9, -48(%rbp)          ## 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_err_string_cat
	movq	-16(%rbp), %rcx
	cmpl	$0, 24(%rcx)
	jne	LBB3_4
## BB#3:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.3(%rip), %rcx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	_mpc_err_string_cat
LBB3_4:
	movq	-16(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	LBB3_6
## BB#5:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %r8
	movb	$0, %al
	callq	_mpc_err_string_cat
LBB3_6:
	movq	-16(%rbp), %rax
	cmpl	$2, 24(%rax)
	jl	LBB3_12
## BB#7:
	movl	$0, -20(%rbp)
LBB3_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jge	LBB3_11
## BB#9:                                ##   in Loop: Header=BB3_8 Depth=1
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.4(%rip), %rcx
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rax,8), %r8
	movb	$0, %al
	callq	_mpc_err_string_cat
## BB#10:                               ##   in Loop: Header=BB3_8 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB3_8
LBB3_11:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.5(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %r8d
	subl	$2, %r8d
	movslq	%r8d, %rax
	movq	-16(%rbp), %r9
	movq	48(%r9), %r9
	movq	(%r9,%rax,8), %r8
	movq	-16(%rbp), %rax
	movl	24(%rax), %r10d
	subl	$1, %r10d
	movslq	%r10d, %rax
	movq	-16(%rbp), %r9
	movq	48(%r9), %r9
	movq	(%r9,%rax,8), %r9
	movb	$0, %al
	callq	_mpc_err_string_cat
LBB3_12:
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.6(%rip), %rcx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	_mpc_err_string_cat
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movsbl	56(%rcx), %r8d
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movl	%r8d, %edi
	callq	_mpc_err_char_unescape
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_err_string_cat
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	L_.str.7(%rip), %rcx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	_mpc_err_string_cat
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -8(%rbp)
LBB3_13:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_string_cat:                    ## @mpc_err_string_cat
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
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -384(%rbp)       ## 16-byte Spill
	movq	%rdi, -392(%rbp)        ## 8-byte Spill
	movq	%r9, -400(%rbp)         ## 8-byte Spill
	movq	%r8, -408(%rbp)         ## 8-byte Spill
	movq	%rcx, -416(%rbp)        ## 8-byte Spill
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
	movq	%rsi, -432(%rbp)        ## 8-byte Spill
	je	LBB4_6
## BB#5:
	movaps	-384(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -96(%rbp)
LBB4_6:
	movq	-400(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        ## 8-byte Reload
	movq	-424(%rbp), %rsi        ## 8-byte Reload
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movq	-392(%rbp), %r8         ## 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-56(%rbp), %rdx
	movl	(%rdx), %r11d
	movq	-48(%rbp), %rdx
	subl	(%rdx), %r11d
	movl	%r11d, -68(%rbp)
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%r9)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%r9)
	movl	$48, 4(%r9)
	movl	$32, (%r9)
	cmpl	$0, -68(%rbp)
	jge	LBB4_2
## BB#1:
	movl	$0, -68(%rbp)
LBB4_2:
	xorl	%esi, %esi
	leaq	-32(%rbp), %r8
	movq	$-1, %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	___vsprintf_chk
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi
	addl	(%rdi), %eax
	movl	%eax, (%rdi)
	movq	(%rcx), %rcx
	cmpq	-8(%rbp), %rcx
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
	jne	LBB4_4
## BB#3:
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB4_4:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_mpc_err_char_unescape:                 ## @mpc_err_char_unescape
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movb	$39, _char_unescape_buffer(%rip)
	movb	$32, _char_unescape_buffer+1(%rip)
	movb	$39, _char_unescape_buffer+2(%rip)
	movb	$0, _char_unescape_buffer+3(%rip)
	movsbl	-9(%rbp), %edi
	movl	%edi, %ecx
	subl	$32, %edi
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	movl	%edi, -28(%rbp)         ## 4-byte Spill
	ja	LBB5_10
## BB#12:
	leaq	LJTI5_0(%rip), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB5_1:
	leaq	L_.str.95(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_2:
	leaq	L_.str.96(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_3:
	leaq	L_.str.97(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_4:
	leaq	L_.str.98(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_5:
	leaq	L_.str.99(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_6:
	leaq	L_.str.21(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_7:
	leaq	L_.str.26(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_8:
	leaq	L_.str.27(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_9:
	leaq	L_.str.100(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_11
LBB5_10:
	leaq	_char_unescape_buffer(%rip), %rax
	movb	-9(%rbp), %cl
	movb	%cl, _char_unescape_buffer+1(%rip)
	movq	%rax, -8(%rbp)
LBB5_11:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L5_0_set_6 = LBB5_6-LJTI5_0
L5_0_set_10 = LBB5_10-LJTI5_0
L5_0_set_1 = LBB5_1-LJTI5_0
L5_0_set_2 = LBB5_2-LJTI5_0
L5_0_set_8 = LBB5_8-LJTI5_0
L5_0_set_7 = LBB5_7-LJTI5_0
L5_0_set_5 = LBB5_5-LJTI5_0
L5_0_set_3 = LBB5_3-LJTI5_0
L5_0_set_4 = LBB5_4-LJTI5_0
L5_0_set_9 = LBB5_9-LJTI5_0
LJTI5_0:
	.long	L5_0_set_6
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_1
	.long	L5_0_set_2
	.long	L5_0_set_8
	.long	L5_0_set_7
	.long	L5_0_set_5
	.long	L5_0_set_3
	.long	L5_0_set_4
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_10
	.long	L5_0_set_9

	.globl	_mpc_parse_input
	.align	4, 0x90
_mpc_parse_input:                       ## @mpc_parse_input
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	L_.str.8(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_mpc_err_fail
	leaq	-64(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_mpc_state_invalid
	leaq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_mpc_parse_run
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB6_2
## BB#1:
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_mpc_err_delete_internal
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	_mpc_export
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	LBB6_3
LBB6_2:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_mpc_err_merge
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_err_export
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
LBB6_3:
	movl	-28(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_fail:                          ## @mpc_err_fail
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 64(%rsi)
	je	LBB7_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB7_3
LBB7_2:
	movl	$64, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	_mpc_malloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	___strcpy_chk
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rdi, (%rdx)
	movq	24(%rsi), %rdi
	movq	%rdi, 8(%rdx)
	movq	32(%rsi), %rsi
	movq	%rsi, 16(%rdx)
	movq	-32(%rbp), %rdx
	movl	$0, 24(%rdx)
	movq	-32(%rbp), %rdx
	movq	$0, 48(%rdx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	movq	-32(%rbp), %rdx
	movb	$32, 56(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -64(%rbp)         ## 8-byte Spill
LBB7_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_state_invalid:                     ## @mpc_state_invalid
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	$-1, -24(%rbp)
	movq	$-1, -16(%rbp)
	movq	$-1, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_parse_run:                         ## @mpc_parse_run
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$4, -108(%rbp)
	movq	-72(%rbp), %rax
	movsbl	16(%rax), %r8d
	movl	%r8d, %eax
	subl	$24, %r8d
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	movl	%r8d, -124(%rbp)        ## 4-byte Spill
	ja	LBB9_131
## BB#135:
	leaq	LJTI9_0(%rip), %rax
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_1:
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_input_any
	cmpl	$0, %eax
	je	LBB9_3
## BB#2:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_3:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_4:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movb	24(%rax), %cl
	movq	-80(%rbp), %rax
	movsbl	%cl, %esi
	movq	%rax, %rdx
	callq	_mpc_input_char
	cmpl	$0, %eax
	je	LBB9_6
## BB#5:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_6:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_7:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movb	24(%rax), %cl
	movq	-72(%rbp), %rax
	movb	25(%rax), %dl
	movq	-80(%rbp), %rax
	movsbl	%cl, %esi
	movsbl	%dl, %edx
	movq	%rax, %rcx
	callq	_mpc_input_range
	cmpl	$0, %eax
	je	LBB9_9
## BB#8:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_9:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_10:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	_mpc_input_oneof
	cmpl	$0, %eax
	je	LBB9_12
## BB#11:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_12:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_13:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	_mpc_input_noneof
	cmpl	$0, %eax
	je	LBB9_15
## BB#14:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_15:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_16:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	_mpc_input_satisfy
	cmpl	$0, %eax
	je	LBB9_18
## BB#17:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_18:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_19:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	_mpc_input_string
	cmpl	$0, %eax
	je	LBB9_21
## BB#20:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_21:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_22:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	_mpc_input_anchor
	cmpl	$0, %eax
	je	LBB9_24
## BB#23:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_24:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_25:
	leaq	L_.str.101(%rip), %rsi
	movq	-64(%rbp), %rdi
	callq	_mpc_err_fail
	movq	-80(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_26:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_27:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	callq	_mpc_err_fail
	movq	-80(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_28:
	movq	-72(%rbp), %rax
	callq	*24(%rax)
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_29:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_30:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_state_copy
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_31:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_33
## BB#32:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	callq	_mpc_parse_apply
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_33:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_34:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_36
## BB#35:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rcx
	callq	_mpc_parse_apply_to
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_36:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_37:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_enable
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_39
## BB#38:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_disable
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, (%rax)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_39:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_disable
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_mpc_err_new
	movq	-80(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_40:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_backtrack_disable
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_42
## BB#41:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_backtrack_enable
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, (%rax)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_42:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_backtrack_enable
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, (%rax)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_43:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_mark
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_enable
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_45
## BB#44:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_rewind
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_disable
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	callq	_mpc_parse_dtor
	leaq	L_.str.102(%rip), %rsi
	movq	-64(%rbp), %rdi
	callq	_mpc_err_new
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_45:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_unmark
	movq	-64(%rbp), %rdi
	callq	_mpc_input_suppress_disable
	movq	-72(%rbp), %rdi
	callq	*40(%rdi)
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_46:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_48
## BB#47:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_48:
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	callq	_mpc_err_merge
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	callq	*40(%rax)
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_49:
	leaq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
LBB9_50:                                ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	40(%rax), %rsi
	movslq	-92(%rbp), %rax
	shlq	$3, %rax
	addq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_57
## BB#51:                               ##   in Loop: Header=BB9_50 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	cmpl	$4, -92(%rbp)
	jne	LBB9_53
## BB#52:                               ##   in Loop: Header=BB9_50 Depth=1
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	%eax, -128(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-128(%rbp), %esi        ## 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-108(%rbp), %r8
	shlq	$3, %r8
	movq	%r8, %rsi
	callq	_mpc_malloc
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	$-1, %rcx
	leaq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        ## 8-byte Reload
	movq	%rsi, -144(%rbp)        ## 8-byte Spill
	movq	%rax, %rsi
	movq	-144(%rbp), %r8         ## 8-byte Reload
	movq	%r8, %rdx
	callq	___memcpy_chk
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	jmp	LBB9_56
LBB9_53:                                ##   in Loop: Header=BB9_50 Depth=1
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	LBB9_55
## BB#54:                               ##   in Loop: Header=BB9_50 Depth=1
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-156(%rbp), %esi        ## 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %r8
	movslq	-108(%rbp), %r9
	shlq	$3, %r9
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	_mpc_realloc
	movq	%rax, -104(%rbp)
LBB9_55:                                ##   in Loop: Header=BB9_50 Depth=1
	jmp	LBB9_56
LBB9_56:                                ##   in Loop: Header=BB9_50 Depth=1
	jmp	LBB9_50
LBB9_57:
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_err_merge
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	callq	_mpc_parse_fold
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$4, -92(%rbp)
	jl	LBB9_59
## BB#58:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_59:
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_60:
	leaq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
LBB9_61:                                ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	40(%rax), %rsi
	movslq	-92(%rbp), %rax
	shlq	$3, %rax
	addq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_68
## BB#62:                               ##   in Loop: Header=BB9_61 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	cmpl	$4, -92(%rbp)
	jne	LBB9_64
## BB#63:                               ##   in Loop: Header=BB9_61 Depth=1
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	%eax, -160(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-160(%rbp), %esi        ## 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-108(%rbp), %r8
	shlq	$3, %r8
	movq	%r8, %rsi
	callq	_mpc_malloc
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	$-1, %rcx
	leaq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -168(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	%rsi, -176(%rbp)        ## 8-byte Spill
	movq	%rax, %rsi
	movq	-176(%rbp), %r8         ## 8-byte Reload
	movq	%r8, %rdx
	callq	___memcpy_chk
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	jmp	LBB9_67
LBB9_64:                                ##   in Loop: Header=BB9_61 Depth=1
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	LBB9_66
## BB#65:                               ##   in Loop: Header=BB9_61 Depth=1
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	%eax, -188(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-188(%rbp), %esi        ## 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %r8
	movslq	-108(%rbp), %r9
	shlq	$3, %r9
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	_mpc_realloc
	movq	%rax, -104(%rbp)
LBB9_66:                                ##   in Loop: Header=BB9_61 Depth=1
	jmp	LBB9_67
LBB9_67:                                ##   in Loop: Header=BB9_61 Depth=1
	jmp	LBB9_61
LBB9_68:
	cmpl	$0, -92(%rbp)
	jne	LBB9_72
## BB#69:
	movq	-64(%rbp), %rdi
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_err_many1
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$4, -92(%rbp)
	jl	LBB9_71
## BB#70:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_71:
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_72:
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_err_merge
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	callq	_mpc_parse_fold
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$4, -92(%rbp)
	jl	LBB9_74
## BB#73:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_74:
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_75:
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_77
## BB#76:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	jmp	LBB9_78
LBB9_77:
	leaq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        ## 8-byte Spill
LBB9_78:
	movq	-200(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
LBB9_79:                                ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	40(%rax), %rsi
	movslq	-92(%rbp), %rax
	shlq	$3, %rax
	addq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_83
## BB#80:                               ##   in Loop: Header=BB9_79 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jne	LBB9_82
## BB#81:
	jmp	LBB9_83
LBB9_82:                                ##   in Loop: Header=BB9_79 Depth=1
	jmp	LBB9_79
LBB9_83:
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jne	LBB9_87
## BB#84:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	callq	_mpc_parse_fold
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_86
## BB#85:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_86:
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_87:
	movl	$0, -96(%rbp)
LBB9_88:                                ## =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	LBB9_91
## BB#89:                               ##   in Loop: Header=BB9_88 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	48(%rax), %rsi
	movslq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_parse_dtor
## BB#90:                               ##   in Loop: Header=BB9_88 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	LBB9_88
LBB9_91:
	movq	-64(%rbp), %rdi
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-72(%rbp), %rax
	movl	24(%rax), %edx
	callq	_mpc_err_count
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_93
## BB#92:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_93:
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_94:
	movq	-72(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	LBB9_96
## BB#95:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_96:
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_98
## BB#97:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	jmp	LBB9_99
LBB9_98:
	leaq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        ## 8-byte Spill
LBB9_99:
	movq	-208(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	$0, -92(%rbp)
LBB9_100:                               ## =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB9_108
## BB#101:                              ##   in Loop: Header=BB9_100 Depth=1
	movq	-64(%rbp), %rdi
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-92(%rbp), %rax
	shlq	$3, %rax
	addq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	je	LBB9_105
## BB#102:
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_104
## BB#103:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_104:
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_105:                               ##   in Loop: Header=BB9_100 Depth=1
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_err_merge
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
## BB#106:                              ##   in Loop: Header=BB9_100 Depth=1
	jmp	LBB9_107
LBB9_107:                               ##   in Loop: Header=BB9_100 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	LBB9_100
LBB9_108:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_110
## BB#109:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_110:
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_111:
	movq	-72(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	LBB9_113
## BB#112:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_113:
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_115
## BB#114:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	jmp	LBB9_116
LBB9_115:
	leaq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        ## 8-byte Spill
LBB9_116:
	movq	-216(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	callq	_mpc_input_mark
	movl	$0, -92(%rbp)
LBB9_117:                               ## =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB9_128
## BB#118:                              ##   in Loop: Header=BB9_117 Depth=1
	movq	-64(%rbp), %rdi
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-92(%rbp), %rax
	shlq	$3, %rax
	addq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	_mpc_parse_run
	cmpl	$0, %eax
	jne	LBB9_126
## BB#119:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_rewind
	movl	$0, -96(%rbp)
LBB9_120:                               ## =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	LBB9_123
## BB#121:                              ##   in Loop: Header=BB9_120 Depth=1
	movq	-64(%rbp), %rdi
	movslq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_parse_dtor
## BB#122:                              ##   in Loop: Header=BB9_120 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	LBB9_120
LBB9_123:
	movslq	-92(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_125
## BB#124:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_125:
	movl	$0, -52(%rbp)
	jmp	LBB9_132
LBB9_126:                               ##   in Loop: Header=BB9_117 Depth=1
	jmp	LBB9_127
LBB9_127:                               ##   in Loop: Header=BB9_117 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	LBB9_117
LBB9_128:
	movq	-64(%rbp), %rdi
	callq	_mpc_input_unmark
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	callq	_mpc_parse_fold
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpl	$4, 24(%rax)
	jle	LBB9_130
## BB#129:
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB9_130:
	movl	$1, -52(%rbp)
	jmp	LBB9_132
LBB9_131:
	leaq	L_.str.103(%rip), %rsi
	movq	-64(%rbp), %rdi
	callq	_mpc_err_fail
	movq	-80(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -52(%rbp)
LBB9_132:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%ecx, -220(%rbp)        ## 4-byte Spill
	jne	LBB9_134
## BB#133:
	movl	-220(%rbp), %eax        ## 4-byte Reload
	addq	$224, %rsp
	popq	%rbp
	retq
LBB9_134:
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L9_0_set_25 = LBB9_25-LJTI9_0
L9_0_set_26 = LBB9_26-LJTI9_0
L9_0_set_27 = LBB9_27-LJTI9_0
L9_0_set_28 = LBB9_28-LJTI9_0
L9_0_set_29 = LBB9_29-LJTI9_0
L9_0_set_37 = LBB9_37-LJTI9_0
L9_0_set_22 = LBB9_22-LJTI9_0
L9_0_set_30 = LBB9_30-LJTI9_0
L9_0_set_1 = LBB9_1-LJTI9_0
L9_0_set_4 = LBB9_4-LJTI9_0
L9_0_set_10 = LBB9_10-LJTI9_0
L9_0_set_13 = LBB9_13-LJTI9_0
L9_0_set_7 = LBB9_7-LJTI9_0
L9_0_set_16 = LBB9_16-LJTI9_0
L9_0_set_19 = LBB9_19-LJTI9_0
L9_0_set_31 = LBB9_31-LJTI9_0
L9_0_set_34 = LBB9_34-LJTI9_0
L9_0_set_40 = LBB9_40-LJTI9_0
L9_0_set_43 = LBB9_43-LJTI9_0
L9_0_set_46 = LBB9_46-LJTI9_0
L9_0_set_49 = LBB9_49-LJTI9_0
L9_0_set_60 = LBB9_60-LJTI9_0
L9_0_set_75 = LBB9_75-LJTI9_0
L9_0_set_94 = LBB9_94-LJTI9_0
L9_0_set_111 = LBB9_111-LJTI9_0
LJTI9_0:
	.long	L9_0_set_25
	.long	L9_0_set_26
	.long	L9_0_set_27
	.long	L9_0_set_28
	.long	L9_0_set_29
	.long	L9_0_set_37
	.long	L9_0_set_22
	.long	L9_0_set_30
	.long	L9_0_set_1
	.long	L9_0_set_4
	.long	L9_0_set_10
	.long	L9_0_set_13
	.long	L9_0_set_7
	.long	L9_0_set_16
	.long	L9_0_set_19
	.long	L9_0_set_31
	.long	L9_0_set_34
	.long	L9_0_set_40
	.long	L9_0_set_43
	.long	L9_0_set_46
	.long	L9_0_set_49
	.long	L9_0_set_60
	.long	L9_0_set_75
	.long	L9_0_set_94
	.long	L9_0_set_111

	.align	4, 0x90
_mpc_err_delete_internal:               ## @mpc_err_delete_internal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB10_2
## BB#1:
	jmp	LBB10_7
LBB10_2:
	movl	$0, -20(%rbp)
LBB10_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB10_6
## BB#4:                                ##   in Loop: Header=BB10_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_free
## BB#5:                                ##   in Loop: Header=BB10_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB10_3
LBB10_6:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	_mpc_free
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_mpc_free
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	_mpc_free
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
LBB10_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_export:                            ## @mpc_export
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_mpc_mem_ptr
	cmpl	$0, %eax
	jne	LBB11_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB11_3
LBB11_2:
	movl	$64, %eax
	movl	%eax, %edi
	callq	_malloc
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	___memcpy_chk
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB11_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_export:                        ## @mpc_err_export
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB12_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB12_4
## BB#2:                                ##   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_export
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
## BB#3:                                ##   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB12_1
LBB12_4:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	_mpc_export
	movq	-16(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_mpc_export
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	_mpc_export
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_export
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_merge:                         ## @mpc_err_merge
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	leaq	-32(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	_mpc_err_or
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-8(%rbp), %rcx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	jne	LBB13_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
LBB13_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_parse
	.align	4, 0x90
_mpc_parse:                             ## @mpc_parse
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_input_new_string
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_mpc_parse_input
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	_mpc_input_delete
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_new_string:                  ## @mpc_input_new_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$33392, %eax            ## imm = 0x8270
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-24(%rbp), %rcx
	movq	$0, 48(%rcx)
	movq	-24(%rbp), %rcx
	movq	$0, 56(%rcx)
	movq	-24(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-24(%rbp), %rcx
	movl	$1, 68(%rcx)
	movq	-24(%rbp), %rcx
	movl	$0, 76(%rcx)
	movq	-24(%rbp), %rcx
	movl	$32, 72(%rcx)
	movq	-24(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$24, %rcx, %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_malloc
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	xorl	%esi, %esi
	movl	$512, %r8d              ## imm = 0x200
	movl	%r8d, %edx
	movq	$-1, %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-24(%rbp), %rax
	movb	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-24(%rbp), %rcx
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_delete:                      ## @mpc_input_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	_free
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	LBB16_2
## BB#1:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_free
LBB16_2:
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB16_4
## BB#3:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_free
LBB16_4:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_nparse
	.align	4, 0x90
_mpc_nparse:                            ## @mpc_nparse
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_mpc_input_new_nstring
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	_mpc_parse_input
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rdi
	callq	_mpc_input_delete
	movl	-44(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_new_nstring:                 ## @mpc_input_new_nstring
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp54:
	.cfi_def_cfa_offset 16
Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$33392, %eax            ## imm = 0x8270
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	___strncpy_chk
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, 48(%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, 56(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-32(%rbp), %rcx
	movl	$1, 68(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 76(%rcx)
	movq	-32(%rbp), %rcx
	movl	$32, 72(%rcx)
	movq	-32(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$24, %rcx, %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	_malloc
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-32(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	xorl	%esi, %esi
	movl	$512, %r8d              ## imm = 0x200
	movl	%r8d, %edx
	movq	$-1, %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-32(%rbp), %rax
	movb	$0, 96(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-32(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-32(%rbp), %rcx
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_parse_file
	.align	4, 0x90
_mpc_parse_file:                        ## @mpc_parse_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_input_new_file
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_mpc_parse_input
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	_mpc_input_delete
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_new_file:                    ## @mpc_input_new_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp60:
	.cfi_def_cfa_offset 16
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$33392, %eax            ## imm = 0x8270
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 68(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-24(%rbp), %rax
	movl	$32, 72(%rax)
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	imulq	$24, %rax, %rdi
	callq	_malloc
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	xorl	%esi, %esi
	movl	$512, %r8d              ## imm = 0x200
	movl	%r8d, %edx
	movq	$-1, %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-24(%rbp), %rax
	movb	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-24(%rbp), %rcx
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_parse_pipe
	.align	4, 0x90
_mpc_parse_pipe:                        ## @mpc_parse_pipe
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp63:
	.cfi_def_cfa_offset 16
Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_input_new_pipe
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_mpc_parse_input
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	_mpc_input_delete
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_new_pipe:                    ## @mpc_input_new_pipe
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp66:
	.cfi_def_cfa_offset 16
Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$33392, %eax            ## imm = 0x8270
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$2, (%rcx)
	movq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 68(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-24(%rbp), %rax
	movl	$32, 72(%rax)
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	imulq	$24, %rax, %rdi
	callq	_malloc
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	xorl	%esi, %esi
	movl	$512, %r8d              ## imm = 0x200
	movl	%r8d, %edx
	movq	$-1, %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-24(%rbp), %rax
	movb	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-24(%rbp), %rcx
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_parse_contents
	.align	4, 0x90
_mpc_parse_contents:                    ## @mpc_parse_contents
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp69:
	.cfi_def_cfa_offset 16
Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	L_.str.9(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB23_2
## BB#1:
	leaq	L_.str.10(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	_mpc_err_file
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -4(%rbp)
	jmp	LBB23_3
LBB23_2:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_mpc_parse_file
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	_fclose
	movl	-44(%rbp), %r8d
	movl	%r8d, -4(%rbp)
	movl	%eax, -48(%rbp)         ## 4-byte Spill
LBB23_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_file:                          ## @mpc_err_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp72:
	.cfi_def_cfa_offset 16
Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-24(%rbp), %rcx
	movb	$32, 56(%rcx)
	movq	-24(%rbp), %rcx
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_delete
	.align	4, 0x90
_mpc_delete:                            ## @mpc_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp75:
	.cfi_def_cfa_offset 16
Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpb	$0, (%rdi)
	je	LBB25_4
## BB#1:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB25_3
## BB#2:
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_unretained
LBB25_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB25_5
LBB25_4:
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_unretained
LBB25_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_undefine_unretained:               ## @mpc_undefine_unretained
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp78:
	.cfi_def_cfa_offset 16
Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %esi
	cmpl	$0, %esi
	je	LBB26_3
## BB#1:
	cmpl	$0, -12(%rbp)
	jne	LBB26_3
## BB#2:
	jmp	LBB26_17
LBB26_3:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$22, %ecx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movl	%ecx, -28(%rbp)         ## 4-byte Spill
	ja	LBB26_14
## BB#18:
	leaq	LJTI26_0(%rip), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB26_4:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_free
	jmp	LBB26_15
LBB26_5:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_free
	jmp	LBB26_15
LBB26_6:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_undefine_unretained
	jmp	LBB26_15
LBB26_7:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_undefine_unretained
	jmp	LBB26_15
LBB26_8:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_undefine_unretained
	jmp	LBB26_15
LBB26_9:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_undefine_unretained
	jmp	LBB26_15
LBB26_10:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_undefine_unretained
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_free
	jmp	LBB26_15
LBB26_11:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_undefine_unretained
	jmp	LBB26_15
LBB26_12:
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_or
	jmp	LBB26_15
LBB26_13:
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_and
	jmp	LBB26_15
LBB26_14:
	jmp	LBB26_15
LBB26_15:
	cmpl	$0, -12(%rbp)
	jne	LBB26_17
## BB#16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB26_17:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L26_0_set_4 = LBB26_4-LJTI26_0
L26_0_set_14 = LBB26_14-LJTI26_0
L26_0_set_10 = LBB26_10-LJTI26_0
L26_0_set_5 = LBB26_5-LJTI26_0
L26_0_set_6 = LBB26_6-LJTI26_0
L26_0_set_7 = LBB26_7-LJTI26_0
L26_0_set_8 = LBB26_8-LJTI26_0
L26_0_set_9 = LBB26_9-LJTI26_0
L26_0_set_11 = LBB26_11-LJTI26_0
L26_0_set_12 = LBB26_12-LJTI26_0
L26_0_set_13 = LBB26_13-LJTI26_0
LJTI26_0:
	.long	L26_0_set_4
	.long	L26_0_set_14
	.long	L26_0_set_14
	.long	L26_0_set_10
	.long	L26_0_set_14
	.long	L26_0_set_14
	.long	L26_0_set_14
	.long	L26_0_set_14
	.long	L26_0_set_5
	.long	L26_0_set_5
	.long	L26_0_set_14
	.long	L26_0_set_14
	.long	L26_0_set_5
	.long	L26_0_set_6
	.long	L26_0_set_7
	.long	L26_0_set_8
	.long	L26_0_set_9
	.long	L26_0_set_9
	.long	L26_0_set_11
	.long	L26_0_set_11
	.long	L26_0_set_11
	.long	L26_0_set_12
	.long	L26_0_set_13

	.globl	_mpc_new
	.align	4, 0x90
_mpc_new:                               ## @mpc_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp81:
	.cfi_def_cfa_offset 16
Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	movq	-16(%rbp), %rdx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_undefined:                         ## @mpc_undefined
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp84:
	.cfi_def_cfa_offset 16
Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$56, %eax
	movl	%eax, %esi
	callq	_calloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_copy
	.align	4, 0x90
_mpc_copy:                              ## @mpc_copy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp87:
	.cfi_def_cfa_offset 16
Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpb	$0, (%rdi)
	je	LBB29_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB29_29
LBB29_2:
	callq	_mpc_undefined
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	16(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 16(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, 24(%rax)
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB29_4
## BB#3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	___strcpy_chk
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB29_4:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$22, %ecx
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movl	%ecx, -52(%rbp)         ## 4-byte Spill
	ja	LBB29_27
## BB#30:
	leaq	LJTI29_0(%rip), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB29_5:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	___strcpy_chk
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	jmp	LBB29_28
LBB29_6:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	___strcpy_chk
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	jmp	LBB29_28
LBB29_7:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	LBB29_28
LBB29_8:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	LBB29_28
LBB29_9:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	LBB29_28
LBB29_10:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	LBB29_28
LBB29_11:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	___strcpy_chk
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	jmp	LBB29_28
LBB29_12:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	LBB29_28
LBB29_13:
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movl	$0, -20(%rbp)
LBB29_14:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB29_17
## BB#15:                               ##   in Loop: Header=BB29_14 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_copy
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
## BB#16:                               ##   in Loop: Header=BB29_14 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB29_14
LBB29_17:
	jmp	LBB29_28
LBB29_18:
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movl	$0, -20(%rbp)
LBB29_19:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB29_22
## BB#20:                               ##   in Loop: Header=BB29_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_copy
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
## BB#21:                               ##   in Loop: Header=BB29_19 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB29_19
LBB29_22:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-32(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movl	$0, -20(%rbp)
LBB29_23:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB29_26
## BB#24:                               ##   in Loop: Header=BB29_23 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#25:                               ##   in Loop: Header=BB29_23 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB29_23
LBB29_26:
	jmp	LBB29_28
LBB29_27:
	jmp	LBB29_28
LBB29_28:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB29_29:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L29_0_set_5 = LBB29_5-LJTI29_0
L29_0_set_27 = LBB29_27-LJTI29_0
L29_0_set_11 = LBB29_11-LJTI29_0
L29_0_set_6 = LBB29_6-LJTI29_0
L29_0_set_7 = LBB29_7-LJTI29_0
L29_0_set_8 = LBB29_8-LJTI29_0
L29_0_set_9 = LBB29_9-LJTI29_0
L29_0_set_10 = LBB29_10-LJTI29_0
L29_0_set_12 = LBB29_12-LJTI29_0
L29_0_set_13 = LBB29_13-LJTI29_0
L29_0_set_18 = LBB29_18-LJTI29_0
LJTI29_0:
	.long	L29_0_set_5
	.long	L29_0_set_27
	.long	L29_0_set_27
	.long	L29_0_set_11
	.long	L29_0_set_27
	.long	L29_0_set_27
	.long	L29_0_set_27
	.long	L29_0_set_27
	.long	L29_0_set_6
	.long	L29_0_set_6
	.long	L29_0_set_27
	.long	L29_0_set_27
	.long	L29_0_set_6
	.long	L29_0_set_7
	.long	L29_0_set_8
	.long	L29_0_set_9
	.long	L29_0_set_10
	.long	L29_0_set_10
	.long	L29_0_set_12
	.long	L29_0_set_12
	.long	L29_0_set_12
	.long	L29_0_set_13
	.long	L29_0_set_18

	.globl	_mpc_undefine
	.align	4, 0x90
_mpc_undefine:                          ## @mpc_undefine
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp90:
	.cfi_def_cfa_offset 16
Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_unretained
	movq	-8(%rbp), %rdi
	movb	$0, 16(%rdi)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_define
	.align	4, 0x90
_mpc_define:                            ## @mpc_define
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp93:
	.cfi_def_cfa_offset 16
Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpb	$0, (%rsi)
	je	LBB31_2
## BB#1:
	movq	-16(%rbp), %rax
	movb	16(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, 24(%rax)
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	jmp	LBB31_3
LBB31_2:
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	16(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rdi), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rdi), %rdx
	movq	%rdx, 40(%rax)
	movq	48(%rdi), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB31_3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_failf
	.align	4, 0x90
_mpc_failf:                             ## @mpc_failf
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp96:
	.cfi_def_cfa_offset 16
Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movq	%rdi, -376(%rbp)        ## 8-byte Spill
	movq	%r9, -384(%rbp)         ## 8-byte Spill
	movq	%r8, -392(%rbp)         ## 8-byte Spill
	movq	%rcx, -400(%rbp)        ## 8-byte Spill
	movq	%rdx, -408(%rbp)        ## 8-byte Spill
	movq	%rsi, -416(%rbp)        ## 8-byte Spill
	je	LBB32_4
## BB#3:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB32_4:
	movq	-384(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -232(%rbp)
	movq	-376(%rbp), %r8         ## 8-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	%r8, -40(%rbp)
	callq	_mpc_undefined
	movl	$2048, %r10d            ## imm = 0x800
	movl	%r10d, %edi
	leaq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movb	$2, 16(%rax)
	leaq	-240(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	callq	_malloc
	xorl	%esi, %esi
	leaq	-32(%rbp), %r8
	movq	$-1, %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	___vsprintf_chk
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, -424(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -428(%rbp)        ## 4-byte Spill
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-424(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-56(%rbp), %rax
	movq	(%rcx), %rcx
	cmpq	-8(%rbp), %rcx
	movq	%rax, -448(%rbp)        ## 8-byte Spill
	jne	LBB32_2
## BB#1:
	movq	-448(%rbp), %rax        ## 8-byte Reload
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB32_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_cleanup
	.align	4, 0x90
_mpc_cleanup:                           ## @mpc_cleanup
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp99:
	.cfi_def_cfa_offset 16
Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movl	%edi, -356(%rbp)        ## 4-byte Spill
	movq	%r9, -368(%rbp)         ## 8-byte Spill
	movq	%r8, -376(%rbp)         ## 8-byte Spill
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
	movq	%rdx, -392(%rbp)        ## 8-byte Spill
	movq	%rsi, -400(%rbp)        ## 8-byte Spill
	je	LBB33_19
## BB#18:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB33_19:
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	movl	-356(%rbp), %r8d        ## 4-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movslq	-36(%rbp), %r9
	shlq	$3, %r9
	movq	%r9, %rdi
	callq	_malloc
	leaq	-32(%rbp), %rcx
	movq	%rax, -48(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movl	$0, -40(%rbp)
LBB33_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB33_7
## BB#2:                                ##   in Loop: Header=BB33_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB33_4
## BB#3:                                ##   in Loop: Header=BB33_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB33_5
LBB33_4:                                ##   in Loop: Header=BB33_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB33_5:                                ##   in Loop: Header=BB33_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#6:                                ##   in Loop: Header=BB33_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB33_1
LBB33_7:
	movl	$0, -40(%rbp)
LBB33_8:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB33_11
## BB#9:                                ##   in Loop: Header=BB33_8 Depth=1
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_undefine
	movq	%rax, -432(%rbp)        ## 8-byte Spill
## BB#10:                               ##   in Loop: Header=BB33_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB33_8
LBB33_11:
	movl	$0, -40(%rbp)
LBB33_12:                               ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB33_15
## BB#13:                               ##   in Loop: Header=BB33_12 Depth=1
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_delete
## BB#14:                               ##   in Loop: Header=BB33_12 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB33_12
LBB33_15:
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB33_17
## BB#16:
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB33_17:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_pass
	.align	4, 0x90
_mpc_pass:                              ## @mpc_pass
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp102:
	.cfi_def_cfa_offset 16
Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_undefined
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_fail
	.align	4, 0x90
_mpc_fail:                              ## @mpc_fail
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp105:
	.cfi_def_cfa_offset 16
Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$2, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	movq	-16(%rbp), %rdx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_lift_val
	.align	4, 0x90
_mpc_lift_val:                          ## @mpc_lift_val
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp108:
	.cfi_def_cfa_offset 16
Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_lift
	.align	4, 0x90
_mpc_lift:                              ## @mpc_lift
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp111:
	.cfi_def_cfa_offset 16
Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$3, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_anchor
	.align	4, 0x90
_mpc_anchor:                            ## @mpc_anchor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp114:
	.cfi_def_cfa_offset 16
Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	leaq	L_.str.12(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$6, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rdi
	callq	_mpc_expect
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_expect
	.align	4, 0x90
_mpc_expect:                            ## @mpc_expect
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp117:
	.cfi_def_cfa_offset 16
Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_undefined
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$5, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-24(%rbp), %rdx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_state
	.align	4, 0x90
_mpc_state:                             ## @mpc_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp120:
	.cfi_def_cfa_offset 16
Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_undefined
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$7, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_expectf
	.align	4, 0x90
_mpc_expectf:                           ## @mpc_expectf
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp123:
	.cfi_def_cfa_offset 16
Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movq	%rdi, -376(%rbp)        ## 8-byte Spill
	movq	%r9, -384(%rbp)         ## 8-byte Spill
	movq	%r8, -392(%rbp)         ## 8-byte Spill
	movq	%rcx, -400(%rbp)        ## 8-byte Spill
	movq	%rdx, -408(%rbp)        ## 8-byte Spill
	movq	%rsi, -416(%rbp)        ## 8-byte Spill
	je	LBB41_4
## BB#3:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB41_4:
	movq	-384(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        ## 8-byte Reload
	movq	-376(%rbp), %r8         ## 8-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rdi, -48(%rbp)
	callq	_mpc_undefined
	movl	$2048, %r10d            ## imm = 0x800
	movl	%r10d, %edi
	leaq	-32(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$5, 16(%rax)
	leaq	-240(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	callq	_malloc
	xorl	%esi, %esi
	leaq	-32(%rbp), %r8
	movq	$-1, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	___vsprintf_chk
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rdi, -424(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -428(%rbp)        ## 4-byte Spill
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-424(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-64(%rbp), %rax
	movq	(%rcx), %rcx
	cmpq	-8(%rbp), %rcx
	movq	%rax, -448(%rbp)        ## 8-byte Spill
	jne	LBB41_2
## BB#1:
	movq	-448(%rbp), %rax        ## 8-byte Reload
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB41_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_any
	.align	4, 0x90
_mpc_any:                               ## @mpc_any
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp126:
	.cfi_def_cfa_offset 16
Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_undefined
	leaq	L_.str.13(%rip), %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$8, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	_mpc_expect
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_char
	.align	4, 0x90
_mpc_char:                              ## @mpc_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp129:
	.cfi_def_cfa_offset 16
Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	callq	_mpc_undefined
	leaq	L_.str.14(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$9, 16(%rax)
	movb	-1(%rbp), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 24(%rax)
	movq	-16(%rbp), %rdi
	movsbl	-1(%rbp), %edx
	movb	$0, %al
	callq	_mpc_expectf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_range
	.align	4, 0x90
_mpc_range:                             ## @mpc_range
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp132:
	.cfi_def_cfa_offset 16
Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	callq	_mpc_undefined
	leaq	L_.str.15(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$12, 16(%rax)
	movb	-1(%rbp), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 24(%rax)
	movb	-2(%rbp), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 25(%rax)
	movq	-16(%rbp), %rdi
	movsbl	-1(%rbp), %edx
	movsbl	-2(%rbp), %ecx
	movb	$0, %al
	callq	_mpc_expectf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_oneof
	.align	4, 0x90
_mpc_oneof:                             ## @mpc_oneof
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp135:
	.cfi_def_cfa_offset 16
Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$10, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	L_.str.16(%rip), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_mpc_expectf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_noneof
	.align	4, 0x90
_mpc_noneof:                            ## @mpc_noneof
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp138:
	.cfi_def_cfa_offset 16
Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$11, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	L_.str.17(%rip), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_mpc_expectf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_satisfy
	.align	4, 0x90
_mpc_satisfy:                           ## @mpc_satisfy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp141:
	.cfi_def_cfa_offset 16
Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	leaq	L_.str.18(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$13, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	_mpc_expectf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_string
	.align	4, 0x90
_mpc_string:                            ## @mpc_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp144:
	.cfi_def_cfa_offset 16
Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$14, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	leaq	L_.str.19(%rip), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_mpc_expectf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_apply
	.align	4, 0x90
_mpc_apply:                             ## @mpc_apply
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp147:
	.cfi_def_cfa_offset 16
Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_undefined
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$15, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_apply_to
	.align	4, 0x90
_mpc_apply_to:                          ## @mpc_apply_to
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp150:
	.cfi_def_cfa_offset 16
Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	_mpc_undefined
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$16, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_predictive
	.align	4, 0x90
_mpc_predictive:                        ## @mpc_predictive
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp153:
	.cfi_def_cfa_offset 16
Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_undefined
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$17, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_not_lift
	.align	4, 0x90
_mpc_not_lift:                          ## @mpc_not_lift
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp156:
	.cfi_def_cfa_offset 16
Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	_mpc_undefined
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$18, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_not
	.align	4, 0x90
_mpc_not:                               ## @mpc_not
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp159:
	.cfi_def_cfa_offset 16
Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpcf_ctor_null(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_not_lift
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_ctor_null
	.align	4, 0x90
_mpcf_ctor_null:                        ## @mpcf_ctor_null
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp162:
	.cfi_def_cfa_offset 16
Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp164:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        ## 
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_maybe_lift
	.align	4, 0x90
_mpc_maybe_lift:                        ## @mpc_maybe_lift
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp165:
	.cfi_def_cfa_offset 16
Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_undefined
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$19, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_maybe
	.align	4, 0x90
_mpc_maybe:                             ## @mpc_maybe
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp168:
	.cfi_def_cfa_offset 16
Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpcf_ctor_null(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_maybe_lift
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_many
	.align	4, 0x90
_mpc_many:                              ## @mpc_many
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp171:
	.cfi_def_cfa_offset 16
Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_undefined
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$20, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_many1
	.align	4, 0x90
_mpc_many1:                             ## @mpc_many1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp174:
	.cfi_def_cfa_offset 16
Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_undefined
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$21, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_count
	.align	4, 0x90
_mpc_count:                             ## @mpc_count
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp177:
	.cfi_def_cfa_offset 16
Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	callq	_mpc_undefined
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$22, 16(%rax)
	movl	-4(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	%edi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_or
	.align	4, 0x90
_mpc_or:                                ## @mpc_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp180:
	.cfi_def_cfa_offset 16
Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movl	%edi, -356(%rbp)        ## 4-byte Spill
	movq	%r9, -368(%rbp)         ## 8-byte Spill
	movq	%r8, -376(%rbp)         ## 8-byte Spill
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
	movq	%rdx, -392(%rbp)        ## 8-byte Spill
	movq	%rsi, -400(%rbp)        ## 8-byte Spill
	je	LBB60_11
## BB#10:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB60_11:
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	movl	-356(%rbp), %r8d        ## 4-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	callq	_mpc_undefined
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$23, 16(%rax)
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 24(%rax)
	movslq	-36(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, 32(%rdx)
	leaq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movl	$0, -40(%rbp)
LBB60_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB60_7
## BB#2:                                ##   in Loop: Header=BB60_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB60_4
## BB#3:                                ##   in Loop: Header=BB60_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB60_5
LBB60_4:                                ##   in Loop: Header=BB60_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB60_5:                                ##   in Loop: Header=BB60_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#6:                                ##   in Loop: Header=BB60_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB60_1
LBB60_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -432(%rbp)        ## 8-byte Spill
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	jne	LBB60_9
## BB#8:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB60_9:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_and
	.align	4, 0x90
_mpc_and:                               ## @mpc_and
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp183:
	.cfi_def_cfa_offset 16
Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              ## imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movl	%edi, -372(%rbp)        ## 4-byte Spill
	movq	%r9, -384(%rbp)         ## 8-byte Spill
	movq	%r8, -392(%rbp)         ## 8-byte Spill
	movq	%rcx, -400(%rbp)        ## 8-byte Spill
	movq	%rdx, -408(%rbp)        ## 8-byte Spill
	movq	%rsi, -416(%rbp)        ## 8-byte Spill
	je	LBB61_18
## BB#17:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB61_18:
	movq	-384(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        ## 8-byte Reload
	movl	-372(%rbp), %r8d        ## 4-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	callq	_mpc_undefined
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$24, 16(%rax)
	movl	-36(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	%r8d, 24(%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movslq	-36(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-64(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, 48(%rdx)
	leaq	-240(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movl	$0, -52(%rbp)
LBB61_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB61_7
## BB#2:                                ##   in Loop: Header=BB61_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	movl	%ecx, -428(%rbp)        ## 4-byte Spill
	ja	LBB61_4
## BB#3:                                ##   in Loop: Header=BB61_1 Depth=1
	movl	-428(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	jmp	LBB61_5
LBB61_4:                                ##   in Loop: Header=BB61_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
LBB61_5:                                ##   in Loop: Header=BB61_1 Depth=1
	movq	-440(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#6:                                ##   in Loop: Header=BB61_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB61_1
LBB61_7:
	movl	$0, -52(%rbp)
LBB61_8:                                ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB61_14
## BB#9:                                ##   in Loop: Header=BB61_8 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -448(%rbp)        ## 8-byte Spill
	movl	%ecx, -452(%rbp)        ## 4-byte Spill
	ja	LBB61_11
## BB#10:                               ##   in Loop: Header=BB61_8 Depth=1
	movl	-452(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-448(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jmp	LBB61_12
LBB61_11:                               ##   in Loop: Header=BB61_8 Depth=1
	movq	-448(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -464(%rbp)        ## 8-byte Spill
LBB61_12:                               ##   in Loop: Header=BB61_8 Depth=1
	movq	-464(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#13:                               ##   in Loop: Header=BB61_8 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB61_8
LBB61_14:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -472(%rbp)        ## 8-byte Spill
	movq	%rcx, -480(%rbp)        ## 8-byte Spill
	jne	LBB61_16
## BB#15:
	movq	-472(%rbp), %rax        ## 8-byte Reload
	addq	$480, %rsp              ## imm = 0x1E0
	popq	%rbp
	retq
LBB61_16:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_soi
	.align	4, 0x90
_mpc_soi:                               ## @mpc_soi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp186:
	.cfi_def_cfa_offset 16
Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp188:
	.cfi_def_cfa_register %rbp
	leaq	_mpc_soi_anchor(%rip), %rdi
	callq	_mpc_anchor
	leaq	L_.str.20(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_soi_anchor:                        ## @mpc_soi_anchor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp189:
	.cfi_def_cfa_offset 16
Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp191:
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %esi
	cmpl	$0, %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_eoi
	.align	4, 0x90
_mpc_eoi:                               ## @mpc_eoi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp192:
	.cfi_def_cfa_offset 16
Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp194:
	.cfi_def_cfa_register %rbp
	leaq	_mpc_eoi_anchor(%rip), %rdi
	callq	_mpc_anchor
	leaq	L_.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_eoi_anchor:                        ## @mpc_eoi_anchor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp195:
	.cfi_def_cfa_offset 16
Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp197:
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %esi
	cmpl	$0, %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_boundary
	.align	4, 0x90
_mpc_boundary:                          ## @mpc_boundary
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp198:
	.cfi_def_cfa_offset 16
Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp200:
	.cfi_def_cfa_register %rbp
	leaq	_mpc_boundary_anchor(%rip), %rdi
	callq	_mpc_anchor
	leaq	L_.str.22(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_boundary_anchor:                   ## @mpc_boundary_anchor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp201:
	.cfi_def_cfa_offset 16
Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movb	%dil, %cl
	leaq	L_.str.108(%rip), %rdx
	movb	%cl, -5(%rbp)
	movb	%al, -6(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	-6(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB67_3
## BB#1:
	movsbl	-5(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB67_3
## BB#2:
	movl	$1, -4(%rbp)
	jmp	LBB67_13
LBB67_3:
	movq	-16(%rbp), %rdi
	movsbl	-5(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB67_6
## BB#4:
	movsbl	-6(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB67_6
## BB#5:
	movl	$1, -4(%rbp)
	jmp	LBB67_13
LBB67_6:
	movq	-16(%rbp), %rdi
	movsbl	-6(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB67_9
## BB#7:
	movq	-16(%rbp), %rdi
	movsbl	-5(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB67_9
## BB#8:
	movl	$1, -4(%rbp)
	jmp	LBB67_13
LBB67_9:
	movq	-16(%rbp), %rdi
	movsbl	-6(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB67_12
## BB#10:
	movq	-16(%rbp), %rdi
	movsbl	-5(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB67_12
## BB#11:
	movl	$1, -4(%rbp)
	jmp	LBB67_13
LBB67_12:
	movl	$0, -4(%rbp)
LBB67_13:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_whitespace
	.align	4, 0x90
_mpc_whitespace:                        ## @mpc_whitespace
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp204:
	.cfi_def_cfa_offset 16
Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp206:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.23(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.24(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_whitespaces
	.align	4, 0x90
_mpc_whitespaces:                       ## @mpc_whitespaces
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp207:
	.cfi_def_cfa_offset 16
Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp209:
	.cfi_def_cfa_register %rbp
	callq	_mpc_whitespace
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many
	leaq	L_.str.25(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_strfold
	.align	4, 0x90
_mpcf_strfold:                          ## @mpcf_strfold
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp210:
	.cfi_def_cfa_offset 16
Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB70_2
## BB#1:
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	movq	%rax, -8(%rbp)
	jmp	LBB70_11
LBB70_2:
	movl	$0, -28(%rbp)
LBB70_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB70_6
## BB#4:                                ##   in Loop: Header=BB70_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_strlen
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
## BB#5:                                ##   in Loop: Header=BB70_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB70_3
LBB70_6:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	_realloc
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$1, -28(%rbp)
LBB70_7:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB70_10
## BB#8:                                ##   in Loop: Header=BB70_7 Depth=1
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	___strcat_chk
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_free
## BB#9:                                ##   in Loop: Header=BB70_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB70_7
LBB70_10:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
LBB70_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_blank
	.align	4, 0x90
_mpc_blank:                             ## @mpc_blank
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp213:
	.cfi_def_cfa_offset 16
Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp215:
	.cfi_def_cfa_register %rbp
	callq	_mpc_whitespaces
	leaq	_mpcf_free(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.24(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_free
	.align	4, 0x90
_mpcf_free:                             ## @mpcf_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp216:
	.cfi_def_cfa_offset 16
Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	xorl	%eax, %eax
                                        ## 
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_newline
	.align	4, 0x90
_mpc_newline:                           ## @mpc_newline
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp219:
	.cfi_def_cfa_offset 16
Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp221:
	.cfi_def_cfa_register %rbp
	movl	$10, %edi
	callq	_mpc_char
	leaq	L_.str.26(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tab
	.align	4, 0x90
_mpc_tab:                               ## @mpc_tab
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp222:
	.cfi_def_cfa_offset 16
Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp224:
	.cfi_def_cfa_register %rbp
	movl	$9, %edi
	callq	_mpc_char
	leaq	L_.str.27(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_escape
	.align	4, 0x90
_mpc_escape:                            ## @mpc_escape
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp225:
	.cfi_def_cfa_offset 16
Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$92, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	callq	_mpc_any
	movl	$2, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-8(%rbp), %rdx          ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_digit
	.align	4, 0x90
_mpc_digit:                             ## @mpc_digit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp228:
	.cfi_def_cfa_offset 16
Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp230:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.28(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.29(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_hexdigit
	.align	4, 0x90
_mpc_hexdigit:                          ## @mpc_hexdigit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp231:
	.cfi_def_cfa_offset 16
Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp233:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.30(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.31(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_octdigit
	.align	4, 0x90
_mpc_octdigit:                          ## @mpc_octdigit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp234:
	.cfi_def_cfa_offset 16
Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp236:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.32(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.33(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_digits
	.align	4, 0x90
_mpc_digits:                            ## @mpc_digits
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp237:
	.cfi_def_cfa_offset 16
Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp239:
	.cfi_def_cfa_register %rbp
	callq	_mpc_digit
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many1
	leaq	L_.str.34(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_hexdigits
	.align	4, 0x90
_mpc_hexdigits:                         ## @mpc_hexdigits
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp240:
	.cfi_def_cfa_offset 16
Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp242:
	.cfi_def_cfa_register %rbp
	callq	_mpc_hexdigit
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many1
	leaq	L_.str.35(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_octdigits
	.align	4, 0x90
_mpc_octdigits:                         ## @mpc_octdigits
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp243:
	.cfi_def_cfa_offset 16
Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp245:
	.cfi_def_cfa_register %rbp
	callq	_mpc_octdigit
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many1
	leaq	L_.str.36(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_lower
	.align	4, 0x90
_mpc_lower:                             ## @mpc_lower
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp246:
	.cfi_def_cfa_offset 16
Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp248:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.37(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.38(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_upper
	.align	4, 0x90
_mpc_upper:                             ## @mpc_upper
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp249:
	.cfi_def_cfa_offset 16
Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp251:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.39(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.40(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_alpha
	.align	4, 0x90
_mpc_alpha:                             ## @mpc_alpha
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp252:
	.cfi_def_cfa_offset 16
Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp254:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.41(%rip), %rdi
	callq	_mpc_oneof
	leaq	L_.str.42(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_underscore
	.align	4, 0x90
_mpc_underscore:                        ## @mpc_underscore
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp255:
	.cfi_def_cfa_offset 16
Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp257:
	.cfi_def_cfa_register %rbp
	movl	$95, %edi
	callq	_mpc_char
	leaq	L_.str.43(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_alphanum
	.align	4, 0x90
_mpc_alphanum:                          ## @mpc_alphanum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp258:
	.cfi_def_cfa_offset 16
Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_alpha
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	callq	_mpc_digit
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_underscore
	movl	$3, %edi
	movq	-8(%rbp), %rsi          ## 8-byte Reload
	movq	-16(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_or
	leaq	L_.str.44(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_int
	.align	4, 0x90
_mpc_int:                               ## @mpc_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp261:
	.cfi_def_cfa_offset 16
Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp263:
	.cfi_def_cfa_register %rbp
	callq	_mpc_digits
	leaq	_mpcf_int(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.45(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_int
	.align	4, 0x90
_mpcf_int:                              ## @mpcf_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp264:
	.cfi_def_cfa_offset 16
Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$10, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strtol
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_hex
	.align	4, 0x90
_mpc_hex:                               ## @mpc_hex
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp267:
	.cfi_def_cfa_offset 16
Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp269:
	.cfi_def_cfa_register %rbp
	callq	_mpc_hexdigits
	leaq	_mpcf_hex(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.46(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_hex
	.align	4, 0x90
_mpcf_hex:                              ## @mpcf_hex
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp270:
	.cfi_def_cfa_offset 16
Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$16, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strtol
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_oct
	.align	4, 0x90
_mpc_oct:                               ## @mpc_oct
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp273:
	.cfi_def_cfa_offset 16
Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp275:
	.cfi_def_cfa_register %rbp
	callq	_mpc_octdigits
	leaq	_mpcf_oct(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.47(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_oct
	.align	4, 0x90
_mpcf_oct:                              ## @mpcf_oct
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp276:
	.cfi_def_cfa_offset 16
Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$8, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strtol
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_number
	.align	4, 0x90
_mpc_number:                            ## @mpc_number
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp279:
	.cfi_def_cfa_offset 16
Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_int
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	callq	_mpc_hex
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_oct
	movl	$3, %edi
	movq	-8(%rbp), %rsi          ## 8-byte Reload
	movq	-16(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_or
	leaq	L_.str.48(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_real
	.align	4, 0x90
_mpc_real:                              ## @mpc_real
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp282:
	.cfi_def_cfa_offset 16
Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	L_.str.49(%rip), %rdi
	callq	_mpc_oneof
	leaq	_mpcf_ctor_str(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_maybe_lift
	movq	%rax, -8(%rbp)
	callq	_mpc_digits
	movl	$46, %edi
	movq	%rax, -16(%rbp)
	callq	_mpc_char
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_digits
	movl	$2, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	leaq	_mpcf_ctor_str(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_maybe_lift
	leaq	L_.str.50(%rip), %rdi
	movq	%rax, -24(%rbp)
	callq	_mpc_oneof
	leaq	L_.str.49(%rip), %rdi
	movq	%rax, -32(%rbp)
	callq	_mpc_oneof
	leaq	_mpcf_ctor_str(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_maybe_lift
	movq	%rax, -40(%rbp)
	callq	_mpc_digits
	movl	$3, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %rcx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	-72(%rbp), %r9          ## 8-byte Reload
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_and
	leaq	_mpcf_ctor_str(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_maybe_lift
	movl	$4, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %rcx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	_mpc_and
	leaq	L_.str.51(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_ctor_str
	.align	4, 0x90
_mpcf_ctor_str:                         ## @mpcf_ctor_str
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp285:
	.cfi_def_cfa_offset 16
Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp287:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_float
	.align	4, 0x90
_mpc_float:                             ## @mpc_float
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp288:
	.cfi_def_cfa_offset 16
Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp290:
	.cfi_def_cfa_register %rbp
	callq	_mpc_real
	leaq	_mpcf_float(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.52(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_float
	.align	4, 0x90
_mpcf_float:                            ## @mpcf_float
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp291:
	.cfi_def_cfa_offset 16
Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strtof
	movq	-16(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_char_lit
	.align	4, 0x90
_mpc_char_lit:                          ## @mpc_char_lit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp294:
	.cfi_def_cfa_offset 16
Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_mpc_escape
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	callq	_mpc_any
	movl	$2, %edi
	movq	-8(%rbp), %rsi          ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	L_.str.53(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, -16(%rbp)         ## 8-byte Spill
	movq	-16(%rbp), %rcx         ## 8-byte Reload
	callq	_mpc_between
	leaq	L_.str.54(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_between
	.align	4, 0x90
_mpc_between:                           ## @mpc_between
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp297:
	.cfi_def_cfa_offset 16
Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_mpc_string
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_string
	movl	$3, %edi
	leaq	_mpcf_snd_free(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r9
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_and
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_string_lit
	.align	4, 0x90
_mpc_string_lit:                        ## @mpc_string_lit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp300:
	.cfi_def_cfa_offset 16
Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_mpc_escape
	leaq	L_.str.55(%rip), %rdi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_noneof
	movl	$2, %edi
	movq	-16(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	_mpc_many
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	L_.str.55(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	callq	_mpc_between
	leaq	L_.str.56(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_regex_lit
	.align	4, 0x90
_mpc_regex_lit:                         ## @mpc_regex_lit
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp303:
	.cfi_def_cfa_offset 16
Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_mpc_escape
	leaq	L_.str.57(%rip), %rdi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_noneof
	movl	$2, %edi
	movq	-16(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	_mpc_many
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	L_.str.57(%rip), %rdx
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	callq	_mpc_between
	leaq	L_.str.58(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_expect
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ident
	.align	4, 0x90
_mpc_ident:                             ## @mpc_ident
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp306:
	.cfi_def_cfa_offset 16
Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_mpc_alpha
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	_mpc_underscore
	movl	$2, %edi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	movq	%rax, -8(%rbp)
	callq	_mpc_alphanum
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many
	movl	$2, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	$0, %al
	callq	_mpc_and
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_startwith
	.align	4, 0x90
_mpc_startwith:                         ## @mpc_startwith
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp309:
	.cfi_def_cfa_offset 16
Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_soi
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %r8
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_snd
	.align	4, 0x90
_mpcf_snd:                              ## @mpcf_snd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp312:
	.cfi_def_cfa_offset 16
Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp314:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_dtor_null
	.align	4, 0x90
_mpcf_dtor_null:                        ## @mpcf_dtor_null
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp315:
	.cfi_def_cfa_offset 16
Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp317:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_endwith
	.align	4, 0x90
_mpc_endwith:                           ## @mpc_endwith
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp318:
	.cfi_def_cfa_offset 16
Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	callq	_mpc_eoi
	movl	$2, %edi
	leaq	_mpcf_fst(%rip), %rsi
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_fst
	.align	4, 0x90
_mpcf_fst:                              ## @mpcf_fst
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp321:
	.cfi_def_cfa_offset 16
Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp323:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_whole
	.align	4, 0x90
_mpc_whole:                             ## @mpc_whole
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp324:
	.cfi_def_cfa_offset 16
Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_soi
	movq	-8(%rbp), %rcx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movq	%rcx, -32(%rbp)         ## 8-byte Spill
	callq	_mpc_eoi
	movl	$3, %edi
	leaq	_mpcf_snd(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %r9
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx         ## 8-byte Reload
	movq	-32(%rbp), %r8          ## 8-byte Reload
	movq	%rcx, -40(%rbp)         ## 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_and
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_stripl
	.align	4, 0x90
_mpc_stripl:                            ## @mpc_stripl
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp327:
	.cfi_def_cfa_offset 16
Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_blank
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %r8
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_stripr
	.align	4, 0x90
_mpc_stripr:                            ## @mpc_stripr
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp330:
	.cfi_def_cfa_offset 16
Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_blank
	movl	$2, %edi
	leaq	_mpcf_fst(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %r8
	movq	-16(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_strip
	.align	4, 0x90
_mpc_strip:                             ## @mpc_strip
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp333:
	.cfi_def_cfa_offset 16
Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_blank
	movq	-8(%rbp), %rcx
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	callq	_mpc_blank
	movl	$3, %edi
	leaq	_mpcf_snd(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %rcx
	movq	-16(%rbp), %rdx         ## 8-byte Reload
	movq	-24(%rbp), %r8          ## 8-byte Reload
	movq	%rcx, -32(%rbp)         ## 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-32(%rbp), %r9          ## 8-byte Reload
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_and
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok
	.align	4, 0x90
_mpc_tok:                               ## @mpc_tok
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp336:
	.cfi_def_cfa_offset 16
Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -16(%rbp)         ## 8-byte Spill
	callq	_mpc_blank
	movl	$2, %edi
	leaq	_mpcf_fst(%rip), %rsi
	leaq	_mpcf_dtor_null(%rip), %r8
	movq	-16(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_sym
	.align	4, 0x90
_mpc_sym:                               ## @mpc_sym
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp339:
	.cfi_def_cfa_offset 16
Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_string
	movq	%rax, %rdi
	callq	_mpc_tok
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_total
	.align	4, 0x90
_mpc_total:                             ## @mpc_total
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp342:
	.cfi_def_cfa_offset 16
Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_strip
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_mpc_whole
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_snd_free
	.align	4, 0x90
_mpcf_snd_free:                         ## @mpcf_snd_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp345:
	.cfi_def_cfa_offset 16
Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_mpcf_nth_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_parens
	.align	4, 0x90
_mpc_parens:                            ## @mpc_parens
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp348:
	.cfi_def_cfa_offset 16
Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.59(%rip), %rdx
	leaq	L_.str.60(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_braces
	.align	4, 0x90
_mpc_braces:                            ## @mpc_braces
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp351:
	.cfi_def_cfa_offset 16
Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.61(%rip), %rdx
	leaq	L_.str.62(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_brackets
	.align	4, 0x90
_mpc_brackets:                          ## @mpc_brackets
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp354:
	.cfi_def_cfa_offset 16
Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.63(%rip), %rdx
	leaq	L_.str.64(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_squares
	.align	4, 0x90
_mpc_squares:                           ## @mpc_squares
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp357:
	.cfi_def_cfa_offset 16
Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.65(%rip), %rdx
	leaq	L_.str.66(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok_between
	.align	4, 0x90
_mpc_tok_between:                       ## @mpc_tok_between
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp360:
	.cfi_def_cfa_offset 16
Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_mpc_sym
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_tok
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_sym
	movl	$3, %edi
	leaq	_mpcf_snd_free(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r9
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_and
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok_parens
	.align	4, 0x90
_mpc_tok_parens:                        ## @mpc_tok_parens
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp363:
	.cfi_def_cfa_offset 16
Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.59(%rip), %rdx
	leaq	L_.str.60(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_tok_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok_braces
	.align	4, 0x90
_mpc_tok_braces:                        ## @mpc_tok_braces
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp366:
	.cfi_def_cfa_offset 16
Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.61(%rip), %rdx
	leaq	L_.str.62(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_tok_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok_brackets
	.align	4, 0x90
_mpc_tok_brackets:                      ## @mpc_tok_brackets
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp369:
	.cfi_def_cfa_offset 16
Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.63(%rip), %rdx
	leaq	L_.str.64(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_tok_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_tok_squares
	.align	4, 0x90
_mpc_tok_squares:                       ## @mpc_tok_squares
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp372:
	.cfi_def_cfa_offset 16
Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.65(%rip), %rdx
	leaq	L_.str.66(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_tok_between
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_re
	.align	4, 0x90
_mpc_re:                                ## @mpc_re
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp375:
	.cfi_def_cfa_offset 16
Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              ## imm = 0x110
	leaq	L_.str.58(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_mpc_new
	leaq	L_.str.67(%rip), %rdi
	movq	%rax, -40(%rbp)
	callq	_mpc_new
	leaq	L_.str.68(%rip), %rdi
	movq	%rax, -48(%rbp)
	callq	_mpc_new
	leaq	L_.str.69(%rip), %rdi
	movq	%rax, -56(%rbp)
	callq	_mpc_new
	leaq	L_.str.70(%rip), %rdi
	movq	%rax, -64(%rbp)
	callq	_mpc_new
	movl	$124, %edi
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_mpc_char
	movl	$2, %edi
	leaq	_mpcf_snd_free(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, %rdi
	callq	_mpc_maybe
	movl	$2, %edi
	leaq	_mpcf_re_or(%rip), %rsi
	leaq	_mpc_delete(%rip), %rcx
	movq	-88(%rbp), %rdx         ## 8-byte Reload
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	-104(%rbp), %r8         ## 8-byte Reload
	movb	$0, %al
	callq	_mpc_and
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	_mpcf_re_and(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movq	%rcx, -120(%rbp)        ## 8-byte Spill
	callq	_mpc_many
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movl	$42, %edi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	movq	%rdx, -136(%rbp)        ## 8-byte Spill
	movq	%rcx, -144(%rbp)        ## 8-byte Spill
	callq	_mpc_char
	movl	$43, %edi
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	_mpc_char
	movl	$63, %edi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_mpc_char
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	callq	_mpc_int
	movq	_free@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_brackets
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_mpc_pass
	movl	$5, %edi
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	movq	-160(%rbp), %rdx        ## 8-byte Reload
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	-176(%rbp), %r8         ## 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	_mpc_or
	movl	$2, %edi
	leaq	_mpcf_re_repeat(%rip), %rsi
	leaq	_mpc_delete(%rip), %rcx
	movq	-136(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, -184(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	-184(%rbp), %r8         ## 8-byte Reload
	movb	$0, %al
	callq	_mpc_and
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	_mpc_delete(%rip), %rcx
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, -192(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_mpc_parens
	leaq	_mpc_delete(%rip), %rcx
	movq	-72(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_mpc_squares
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	callq	_mpc_escape
	leaq	_mpcf_re_escape(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	leaq	L_.str.71(%rip), %rdi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_mpc_noneof
	leaq	_mpcf_re_escape(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	movl	$4, %edi
	movq	-208(%rbp), %rsi        ## 8-byte Reload
	movq	-216(%rbp), %rdx        ## 8-byte Reload
	movq	-224(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	_mpc_or
	movq	-192(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-72(%rbp), %rdi
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movq	%rdi, -240(%rbp)        ## 8-byte Spill
	callq	_mpc_escape
	leaq	L_.str.66(%rip), %rdi
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	callq	_mpc_noneof
	movl	$2, %edi
	movq	-248(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	leaq	_mpcf_strfold(%rip), %rdi
	movq	%rax, %rsi
	callq	_mpc_many
	leaq	_mpcf_re_range(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_apply
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-40(%rbp), %rdi
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	callq	_mpc_predictive
	leaq	_mpc_delete(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_mpc_whole
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	_mpc_optimise
	movq	-40(%rbp), %rdi
	callq	_mpc_optimise
	movq	-48(%rbp), %rdi
	callq	_mpc_optimise
	movq	-56(%rbp), %rdi
	callq	_mpc_optimise
	movq	-64(%rbp), %rdi
	callq	_mpc_optimise
	movq	-72(%rbp), %rdi
	callq	_mpc_optimise
	leaq	L_.str.72(%rip), %rdi
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	_mpc_parse
	cmpl	$0, %eax
	jne	LBB125_2
## BB#1:
	movq	-32(%rbp), %rdi
	callq	_mpc_err_string
	leaq	L_.str.73(%rip), %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	_mpc_err_delete
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB125_2:
	movl	$6, %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_cleanup
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_mpc_optimise
	movq	-32(%rbp), %rcx
	movq	%rcx, %rax
	addq	$272, %rsp              ## imm = 0x110
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_re_or:                            ## @mpcf_re_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp378:
	.cfi_def_cfa_offset 16
Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	LBB126_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB126_3
LBB126_2:
	movl	$2, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	_mpc_or
	movq	%rax, -8(%rbp)
LBB126_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_re_and:                           ## @mpcf_re_and
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp381:
	.cfi_def_cfa_offset 16
Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	_mpcf_ctor_str(%rip), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	_mpc_lift
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
LBB127_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB127_4
## BB#2:                                ##   in Loop: Header=BB127_1 Depth=1
	movl	$2, %edi
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -32(%rbp)
## BB#3:                                ##   in Loop: Header=BB127_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB127_1
LBB127_4:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_re_repeat:                        ## @mpcf_re_repeat
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp384:
	.cfi_def_cfa_offset 16
Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	LBB128_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB128_9
LBB128_2:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.74(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB128_4
## BB#3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	leaq	_mpcf_strfold(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	_mpc_many
	movq	%rax, -8(%rbp)
	jmp	LBB128_9
LBB128_4:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.76(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB128_6
## BB#5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	leaq	_mpcf_strfold(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	_mpc_many1
	movq	%rax, -8(%rbp)
	jmp	LBB128_9
LBB128_6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.85(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB128_8
## BB#7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	leaq	_mpcf_ctor_str(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_mpc_maybe_lift
	movq	%rax, -8(%rbp)
	jmp	LBB128_9
LBB128_8:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	leaq	_mpcf_strfold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %rcx
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	callq	_mpc_count
	movq	%rax, -8(%rbp)
LBB128_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_re_escape:                        ## @mpcf_re_escape
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp387:
	.cfi_def_cfa_offset 16
Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsbl	(%rdi), %eax
	cmpl	$46, %eax
	jne	LBB129_2
## BB#1:
	movq	-24(%rbp), %rdi
	callq	_free
	callq	_mpc_any
	movq	%rax, -8(%rbp)
	jmp	LBB129_12
LBB129_2:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	LBB129_4
## BB#3:
	movq	-24(%rbp), %rdi
	callq	_free
	callq	_mpc_soi
	leaq	_mpcf_ctor_str(%rip), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_lift
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -8(%rbp)
	jmp	LBB129_12
LBB129_4:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	LBB129_6
## BB#5:
	movq	-24(%rbp), %rdi
	callq	_free
	callq	_mpc_eoi
	leaq	_mpcf_ctor_str(%rip), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_lift
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -8(%rbp)
	jmp	LBB129_12
LBB129_6:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	LBB129_11
## BB#7:
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	_mpc_re_escape_char
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB129_9
## BB#8:
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	_mpc_char
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB129_10
LBB129_9:
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB129_10:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB129_12
LBB129_11:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	_mpc_char
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB129_12:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_re_range:                         ## @mpcf_re_range
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp390:
	.cfi_def_cfa_offset 16
Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp392:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movsbl	(%rdi), %esi
	cmpl	$94, %esi
	cmovel	%edx, %eax
	movl	%eax, -76(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	LBB130_2
## BB#1:
	movq	-16(%rbp), %rdi
	callq	_free
	leaq	L_.str.109(%rip), %rdi
	callq	_mpc_fail
	movq	%rax, -8(%rbp)
	jmp	LBB130_30
LBB130_2:
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	LBB130_5
## BB#3:
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB130_5
## BB#4:
	movq	-16(%rbp), %rdi
	callq	_free
	leaq	L_.str.109(%rip), %rdi
	callq	_mpc_fail
	movq	%rax, -8(%rbp)
	jmp	LBB130_30
LBB130_5:
	movslq	-76(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB130_6:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB130_17 Depth 2
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	cmpq	%rax, %rdi
	jae	LBB130_26
## BB#7:                                ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$92, %edx
	jne	LBB130_12
## BB#8:                                ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edi
	callq	_mpc_re_range_escape_char
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	LBB130_10
## BB#9:                                ##   in Loop: Header=BB130_6 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	callq	_realloc
	movq	$-1, %rdx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	___strcat_chk
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	jmp	LBB130_11
LBB130_10:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	$0, 1(%rsi,%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rsi
	movb	1(%rsi,%rax), %cl
	movq	-88(%rbp), %rdi
	movb	%cl, -137(%rbp)         ## 1-byte Spill
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	-137(%rbp), %cl         ## 1-byte Reload
	movb	%cl, (%rsi,%rax)
LBB130_11:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB130_24
LBB130_12:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	LBB130_22
## BB#13:                               ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB130_15
## BB#14:                               ##   in Loop: Header=BB130_6 Depth=1
	cmpq	$0, -32(%rbp)
	jne	LBB130_16
LBB130_15:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -152(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	leaq	L_.str.77(%rip), %rsi
	movq	$-1, %rdx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	___strcat_chk
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	jmp	LBB130_21
LBB130_16:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-72(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB130_17:                              ##   Parent Loop BB130_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	LBB130_20
## BB#18:                               ##   in Loop: Header=BB130_17 Depth=2
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -168(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	addq	$1, %rax
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	$0, 1(%rsi,%rax)
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movq	-88(%rbp), %rdi
	movb	%cl, -169(%rbp)         ## 1-byte Spill
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	-169(%rbp), %cl         ## 1-byte Reload
	movb	%cl, (%rsi,%rax)
## BB#19:                               ##   in Loop: Header=BB130_17 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB130_17
LBB130_20:                              ##   in Loop: Header=BB130_6 Depth=1
	jmp	LBB130_21
LBB130_21:                              ##   in Loop: Header=BB130_6 Depth=1
	jmp	LBB130_23
LBB130_22:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -184(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	movq	-184(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	$0, 1(%rsi,%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rsi
	movb	(%rsi,%rax), %cl
	movq	-88(%rbp), %rdi
	movb	%cl, -185(%rbp)         ## 1-byte Spill
	callq	_strlen
	movq	-88(%rbp), %rsi
	movb	-185(%rbp), %cl         ## 1-byte Reload
	movb	%cl, (%rsi,%rax)
LBB130_23:                              ##   in Loop: Header=BB130_6 Depth=1
	jmp	LBB130_24
LBB130_24:                              ##   in Loop: Header=BB130_6 Depth=1
	jmp	LBB130_25
LBB130_25:                              ##   in Loop: Header=BB130_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB130_6
LBB130_26:
	cmpl	$1, -76(%rbp)
	jne	LBB130_28
## BB#27:
	movq	-88(%rbp), %rdi
	callq	_mpc_noneof
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	jmp	LBB130_29
LBB130_28:
	movq	-88(%rbp), %rdi
	callq	_mpc_oneof
	movq	%rax, -200(%rbp)        ## 8-byte Spill
LBB130_29:
	movq	-200(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-88(%rbp), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB130_30:
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_optimise
	.align	4, 0x90
_mpc_optimise:                          ## @mpc_optimise
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp393:
	.cfi_def_cfa_offset 16
Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp395:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_optimise_unretained
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_strtriml
	.align	4, 0x90
_mpcf_strtriml:                         ## @mpcf_strtriml
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp396:
	.cfi_def_cfa_offset 16
Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp398:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
LBB132_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	_isspace
	cmpl	$0, %eax
	je	LBB132_3
## BB#2:                                ##   in Loop: Header=BB132_1 Depth=1
	movq	$-1, %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -32(%rbp)         ## 8-byte Spill
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	callq	___memmove_chk
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB132_1
LBB132_3:
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_strtrimr
	.align	4, 0x90
_mpcf_strtrimr:                         ## @mpcf_strtrimr
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp399:
	.cfi_def_cfa_offset 16
Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, -24(%rbp)
LBB133_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	_isspace
	cmpl	$0, %eax
	je	LBB133_3
## BB#2:                                ##   in Loop: Header=BB133_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB133_1
LBB133_3:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_strtrim
	.align	4, 0x90
_mpcf_strtrim:                          ## @mpcf_strtrim
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp402:
	.cfi_def_cfa_offset 16
Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_strtrimr
	movq	%rax, %rdi
	callq	_mpcf_strtriml
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_escape
	.align	4, 0x90
_mpcf_escape:                           ## @mpcf_escape
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp405:
	.cfi_def_cfa_offset 16
Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_escape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_escape_new:                       ## @mpcf_escape_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp408:
	.cfi_def_cfa_offset 16
Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	movq	%rax, -56(%rbp)
LBB136_1:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB136_3 Depth 2
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB136_10
## BB#2:                                ##   in Loop: Header=BB136_1 Depth=1
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
LBB136_3:                               ##   Parent Loop BB136_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB136_7
## BB#4:                                ##   in Loop: Header=BB136_3 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	LBB136_6
## BB#5:                                ##   in Loop: Header=BB136_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movslq	-28(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%rcx, %rsi
	callq	_realloc
	movq	$-1, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	___strcat_chk
	movl	$1, -32(%rbp)
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	jmp	LBB136_7
LBB136_6:                               ##   in Loop: Header=BB136_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB136_3
LBB136_7:                               ##   in Loop: Header=BB136_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB136_9
## BB#8:                                ##   in Loop: Header=BB136_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$2, %rax
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	$-1, %rdx
	leaq	-34(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	movq	-56(%rbp), %rdi
	callq	___strcat_chk
	movq	%rax, -96(%rbp)         ## 8-byte Spill
LBB136_9:                               ##   in Loop: Header=BB136_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB136_1
LBB136_10:
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_unescape
	.align	4, 0x90
_mpcf_unescape:                         ## @mpcf_unescape
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp411:
	.cfi_def_cfa_offset 16
Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_unescape_new:                     ## @mpcf_unescape_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp414:
	.cfi_def_cfa_offset 16
Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	movq	%rax, -56(%rbp)
LBB138_1:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB138_3 Depth 2
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB138_14
## BB#2:                                ##   in Loop: Header=BB138_1 Depth=1
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
LBB138_3:                               ##   Parent Loop BB138_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB138_8
## BB#4:                                ##   in Loop: Header=BB138_3 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %ecx
	jne	LBB138_7
## BB#5:                                ##   in Loop: Header=BB138_3 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movsbl	1(%rax), %esi
	cmpl	%esi, %ecx
	jne	LBB138_7
## BB#6:                                ##   in Loop: Header=BB138_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	$-1, %rdx
	leaq	-34(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rdi
	movb	(%rdi,%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	movq	-56(%rbp), %rdi
	callq	___strcat_chk
	movl	$1, -32(%rbp)
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	jmp	LBB138_8
LBB138_7:                               ##   in Loop: Header=BB138_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB138_3
LBB138_8:                               ##   in Loop: Header=BB138_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB138_10
## BB#9:                                ##   in Loop: Header=BB138_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	addq	$1, %rax
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	$-1, %rdx
	leaq	-34(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	movq	-56(%rbp), %rdi
	callq	___strcat_chk
	movq	%rax, -88(%rbp)         ## 8-byte Spill
LBB138_10:                              ##   in Loop: Header=BB138_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB138_12
## BB#11:
	jmp	LBB138_14
LBB138_12:                              ##   in Loop: Header=BB138_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
## BB#13:                               ##   in Loop: Header=BB138_1 Depth=1
	jmp	LBB138_1
LBB138_14:
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_escape_regex
	.align	4, 0x90
_mpcf_escape_regex:                     ## @mpcf_escape_regex
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp417:
	.cfi_def_cfa_offset 16
Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_re(%rip), %rsi
	leaq	_mpc_escape_output_raw_re(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_escape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_unescape_regex
	.align	4, 0x90
_mpcf_unescape_regex:                   ## @mpcf_unescape_regex
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp420:
	.cfi_def_cfa_offset 16
Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_re(%rip), %rsi
	leaq	_mpc_escape_output_raw_re(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_escape_string_raw
	.align	4, 0x90
_mpcf_escape_string_raw:                ## @mpcf_escape_string_raw
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp423:
	.cfi_def_cfa_offset 16
Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_cstr(%rip), %rsi
	leaq	_mpc_escape_output_raw_cstr(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_escape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_unescape_string_raw
	.align	4, 0x90
_mpcf_unescape_string_raw:              ## @mpcf_unescape_string_raw
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp426:
	.cfi_def_cfa_offset 16
Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_cstr(%rip), %rsi
	leaq	_mpc_escape_output_raw_cstr(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_escape_char_raw
	.align	4, 0x90
_mpcf_escape_char_raw:                  ## @mpcf_escape_char_raw
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp429:
	.cfi_def_cfa_offset 16
Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_cchar(%rip), %rsi
	leaq	_mpc_escape_output_raw_cchar(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_escape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_unescape_char_raw
	.align	4, 0x90
_mpcf_unescape_char_raw:                ## @mpcf_unescape_char_raw
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp432:
	.cfi_def_cfa_offset 16
Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp434:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_escape_input_raw_cchar(%rip), %rsi
	leaq	_mpc_escape_output_raw_cchar(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_null
	.align	4, 0x90
_mpcf_null:                             ## @mpcf_null
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp435:
	.cfi_def_cfa_offset 16
Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp437:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        ## 
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_trd
	.align	4, 0x90
_mpcf_trd:                              ## @mpcf_trd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp438:
	.cfi_def_cfa_offset 16
Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp440:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_fst_free
	.align	4, 0x90
_mpcf_fst_free:                         ## @mpcf_fst_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp441:
	.cfi_def_cfa_offset 16
Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp443:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_mpcf_nth_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_nth_free:                         ## @mpcf_nth_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp444:
	.cfi_def_cfa_offset 16
Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp446:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB148_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB148_6
## BB#2:                                ##   in Loop: Header=BB148_1 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	LBB148_4
## BB#3:                                ##   in Loop: Header=BB148_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_free
LBB148_4:                               ##   in Loop: Header=BB148_1 Depth=1
	jmp	LBB148_5
LBB148_5:                               ##   in Loop: Header=BB148_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB148_1
LBB148_6:
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_trd_free
	.align	4, 0x90
_mpcf_trd_free:                         ## @mpcf_trd_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp447:
	.cfi_def_cfa_offset 16
Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_mpcf_nth_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_maths
	.align	4, 0x90
_mpcf_maths:                            ## @mpcf_maths
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp450:
	.cfi_def_cfa_offset 16
Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp452:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	leaq	L_.str.74(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB150_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	imull	(%rax), %ecx
	movl	%ecx, (%rax)
LBB150_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.57(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB150_4
## BB#3:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movl	%eax, (%rsi)
LBB150_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.75(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB150_6
## BB#5:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movl	%edx, (%rsi)
LBB150_6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.76(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB150_8
## BB#7:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
LBB150_8:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.77(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB150_10
## BB#9:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, (%rax)
LBB150_10:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_print
	.align	4, 0x90
_mpc_print:                             ## @mpc_print
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp453:
	.cfi_def_cfa_offset 16
Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp455:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_print_unretained:                  ## @mpc_print_unretained
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp456:
	.cfi_def_cfa_offset 16
Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp458:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %esi
	cmpl	$0, %esi
	je	LBB152_6
## BB#1:
	cmpl	$0, -12(%rbp)
	jne	LBB152_6
## BB#2:
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB152_4
## BB#3:
	leaq	L_.str.128(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB152_5
LBB152_4:
	leaq	L_.str.129(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -44(%rbp)         ## 4-byte Spill
LBB152_5:
	jmp	LBB152_62
LBB152_6:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB152_8
## BB#7:
	leaq	L_.str.130(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
LBB152_8:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$1, %ecx
	jne	LBB152_10
## BB#9:
	leaq	L_.str.131(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -52(%rbp)         ## 4-byte Spill
LBB152_10:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$2, %ecx
	jne	LBB152_12
## BB#11:
	leaq	L_.str.132(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB152_12:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB152_14
## BB#13:
	leaq	L_.str.133(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -60(%rbp)         ## 4-byte Spill
LBB152_14:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$7, %ecx
	jne	LBB152_16
## BB#15:
	leaq	L_.str.134(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
LBB152_16:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$6, %ecx
	jne	LBB152_18
## BB#17:
	leaq	L_.str.135(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
LBB152_18:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$5, %ecx
	jne	LBB152_20
## BB#19:
	leaq	L_.str(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -72(%rbp)         ## 4-byte Spill
LBB152_20:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$8, %ecx
	jne	LBB152_22
## BB#21:
	leaq	L_.str.136(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
LBB152_22:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$13, %ecx
	jne	LBB152_24
## BB#23:
	leaq	L_.str.137(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -80(%rbp)         ## 4-byte Spill
LBB152_24:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$9, %ecx
	jne	LBB152_26
## BB#25:
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	leaq	-34(%rbp), %rdi
	movq	-8(%rbp), %rax
	movb	24(%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	callq	_mpcf_escape_new
	leaq	L_.str.138(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	callq	_free
LBB152_26:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$12, %ecx
	jne	LBB152_28
## BB#27:
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	leaq	-34(%rbp), %rdi
	movq	-8(%rbp), %rax
	movb	24(%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	callq	_mpcf_escape_new
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	leaq	-34(%rbp), %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movb	25(%rax), %cl
	movb	%cl, -34(%rbp)
	movb	$0, -33(%rbp)
	callq	_mpcf_escape_new
	leaq	L_.str.139(%rip), %rdi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	callq	_free
	movq	-32(%rbp), %rdi
	callq	_free
LBB152_28:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$10, %ecx
	jne	LBB152_30
## BB#29:
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpcf_escape_new
	leaq	L_.str.140(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	callq	_free
LBB152_30:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$11, %ecx
	jne	LBB152_32
## BB#31:
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpcf_escape_new
	leaq	L_.str.141(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	callq	_free
LBB152_32:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$14, %ecx
	jne	LBB152_34
## BB#33:
	leaq	_mpc_escape_input_c(%rip), %rsi
	leaq	_mpc_escape_output_c(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpcf_escape_new
	leaq	L_.str.19(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	callq	_free
LBB152_34:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$15, %ecx
	jne	LBB152_36
## BB#35:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_print_unretained
LBB152_36:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$16, %ecx
	jne	LBB152_38
## BB#37:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_print_unretained
LBB152_38:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$17, %ecx
	jne	LBB152_40
## BB#39:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_print_unretained
LBB152_40:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$18, %ecx
	jne	LBB152_42
## BB#41:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.86(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -104(%rbp)        ## 4-byte Spill
LBB152_42:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$19, %ecx
	jne	LBB152_44
## BB#43:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.85(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
LBB152_44:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$20, %ecx
	jne	LBB152_46
## BB#45:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.74(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -112(%rbp)        ## 4-byte Spill
LBB152_46:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$21, %ecx
	jne	LBB152_48
## BB#47:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.76(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -116(%rbp)        ## 4-byte Spill
LBB152_48:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$22, %ecx
	jne	LBB152_50
## BB#49:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.142(%rip), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -120(%rbp)        ## 4-byte Spill
LBB152_50:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB152_56
## BB#51:
	leaq	L_.str.59(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -16(%rbp)
	movl	%eax, -124(%rbp)        ## 4-byte Spill
LBB152_52:                              ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB152_55
## BB#53:                               ##   in Loop: Header=BB152_52 Depth=1
	xorl	%esi, %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.143(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -128(%rbp)        ## 4-byte Spill
## BB#54:                               ##   in Loop: Header=BB152_52 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB152_52
LBB152_55:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.60(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -132(%rbp)        ## 4-byte Spill
LBB152_56:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB152_62
## BB#57:
	leaq	L_.str.59(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -16(%rbp)
	movl	%eax, -136(%rbp)        ## 4-byte Spill
LBB152_58:                              ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB152_61
## BB#59:                               ##   in Loop: Header=BB152_58 Depth=1
	xorl	%esi, %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.144(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -140(%rbp)        ## 4-byte Spill
## BB#60:                               ##   in Loop: Header=BB152_58 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB152_58
LBB152_61:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	_mpc_print_unretained
	leaq	L_.str.60(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -144(%rbp)        ## 4-byte Spill
LBB152_62:
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_test_fail
	.align	4, 0x90
_mpc_test_fail:                         ## @mpc_test_fail
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp459:
	.cfi_def_cfa_offset 16
Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp461:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	L_.str.78(%rip), %rax
	leaq	-64(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r10, %rcx
	callq	_mpc_parse
	cmpl	$0, %eax
	je	LBB153_4
## BB#1:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	LBB153_3
## BB#2:
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movl	$0, -4(%rbp)
	jmp	LBB153_5
LBB153_3:
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movl	$1, -4(%rbp)
	jmp	LBB153_5
LBB153_4:
	movq	-64(%rbp), %rdi
	callq	_mpc_err_delete
	movl	$1, -4(%rbp)
LBB153_5:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_test_pass
	.align	4, 0x90
_mpc_test_pass:                         ## @mpc_test_pass
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp462:
	.cfi_def_cfa_offset 16
Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp464:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	L_.str.78(%rip), %rax
	leaq	-64(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r10, %rcx
	callq	_mpc_parse
	cmpl	$0, %eax
	je	LBB154_4
## BB#1:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	LBB154_3
## BB#2:
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movl	$1, -4(%rbp)
	jmp	LBB154_5
LBB154_3:
	leaq	L_.str.79(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	*%rcx
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.80(%rip), %rdi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	callq	*%rcx
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	callq	*%rcx
	movl	$0, -4(%rbp)
	jmp	LBB154_5
LBB154_4:
	movq	-64(%rbp), %rdi
	callq	_mpc_err_print
	movq	-64(%rbp), %rdi
	callq	_mpc_err_delete
	movl	$0, -4(%rbp)
LBB154_5:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_delete
	.align	4, 0x90
_mpc_ast_delete:                        ## @mpc_ast_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp465:
	.cfi_def_cfa_offset 16
Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp467:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB155_2
## BB#1:
	jmp	LBB155_7
LBB155_2:
	movl	$0, -12(%rbp)
LBB155_3:                               ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB155_6
## BB#4:                                ##   in Loop: Header=BB155_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_ast_delete
## BB#5:                                ##   in Loop: Header=BB155_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB155_3
LBB155_6:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB155_7:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_new
	.align	4, 0x90
_mpc_ast_new:                           ## @mpc_ast_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp468:
	.cfi_def_cfa_offset 16
Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp470:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$56, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	___strcpy_chk
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	callq	_mpc_state_new
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_state_new:                         ## @mpc_state_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp471:
	.cfi_def_cfa_offset 16
Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp473:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_build
	.align	4, 0x90
_mpc_ast_build:                         ## @mpc_ast_build
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp474:
	.cfi_def_cfa_offset 16
Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp476:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              ## imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movl	%edi, -372(%rbp)        ## 4-byte Spill
	movq	%r9, -384(%rbp)         ## 8-byte Spill
	movq	%r8, -392(%rbp)         ## 8-byte Spill
	movq	%rcx, -400(%rbp)        ## 8-byte Spill
	movq	%rdx, -408(%rbp)        ## 8-byte Spill
	movq	%rsi, -416(%rbp)        ## 8-byte Spill
	je	LBB158_11
## BB#10:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB158_11:
	movq	-384(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        ## 8-byte Reload
	movl	-372(%rbp), %r8d        ## 4-byte Reload
	leaq	L_.str.81(%rip), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_mpc_ast_new
	leaq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movl	$0, -60(%rbp)
LBB158_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB158_7
## BB#2:                                ##   in Loop: Header=BB158_1 Depth=1
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	movq	%rdi, -432(%rbp)        ## 8-byte Spill
	movl	%ecx, -436(%rbp)        ## 4-byte Spill
	ja	LBB158_4
## BB#3:                                ##   in Loop: Header=BB158_1 Depth=1
	movl	-436(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -448(%rbp)        ## 8-byte Spill
	jmp	LBB158_5
LBB158_4:                               ##   in Loop: Header=BB158_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -448(%rbp)        ## 8-byte Spill
LBB158_5:                               ##   in Loop: Header=BB158_1 Depth=1
	movq	-448(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rsi
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	callq	_mpc_ast_add_child
	movq	%rax, -456(%rbp)        ## 8-byte Spill
## BB#6:                                ##   in Loop: Header=BB158_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB158_1
LBB158_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -464(%rbp)        ## 8-byte Spill
	movq	%rcx, -472(%rbp)        ## 8-byte Spill
	jne	LBB158_9
## BB#8:
	movq	-464(%rbp), %rax        ## 8-byte Reload
	addq	$480, %rsp              ## imm = 0x1E0
	popq	%rbp
	retq
LBB158_9:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_ast_add_child
	.align	4, 0x90
_mpc_ast_add_child:                     ## @mpc_ast_add_child
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp477:
	.cfi_def_cfa_offset 16
Ltmp478:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp479:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 40(%rsi)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movslq	40(%rdi), %rdi
	shlq	$3, %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	callq	_realloc
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_add_root
	.align	4, 0x90
_mpc_ast_add_root:                      ## @mpc_ast_add_root
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp480:
	.cfi_def_cfa_offset 16
Ltmp481:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp482:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB160_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB160_7
LBB160_2:
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	LBB160_4
## BB#3:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB160_7
LBB160_4:
	movq	-16(%rbp), %rax
	cmpl	$1, 40(%rax)
	jne	LBB160_6
## BB#5:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB160_7
LBB160_6:
	leaq	L_.str.62(%rip), %rdi
	leaq	L_.str.81(%rip), %rsi
	callq	_mpc_ast_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_ast_add_child
	movq	-24(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB160_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_eq
	.align	4, 0x90
_mpc_ast_eq:                            ## @mpc_ast_eq
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp483:
	.cfi_def_cfa_offset 16
Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp485:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB161_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB161_13
LBB161_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB161_4
## BB#3:
	movl	$0, -4(%rbp)
	jmp	LBB161_13
LBB161_4:
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	40(%rax), %ecx
	je	LBB161_6
## BB#5:
	movl	$0, -4(%rbp)
	jmp	LBB161_13
LBB161_6:
	movl	$0, -28(%rbp)
LBB161_7:                               ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB161_12
## BB#8:                                ##   in Loop: Header=BB161_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_ast_eq
	cmpl	$0, %eax
	jne	LBB161_10
## BB#9:
	movl	$0, -4(%rbp)
	jmp	LBB161_13
LBB161_10:                              ##   in Loop: Header=BB161_7 Depth=1
	jmp	LBB161_11
LBB161_11:                              ##   in Loop: Header=BB161_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB161_7
LBB161_12:
	movl	$1, -4(%rbp)
LBB161_13:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_add_tag
	.align	4, 0x90
_mpc_ast_add_tag:                       ## @mpc_ast_add_tag
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp486:
	.cfi_def_cfa_offset 16
Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp488:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB162_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB162_3
LBB162_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	_realloc
	movq	$-1, %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	callq	___memmove_chk
	movq	$-1, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	callq	___memmove_chk
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	movq	%rcx, -128(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movb	L_.str.82(%rip), %r8b
	movb	%r8b, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB162_3:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_add_root_tag
	.align	4, 0x90
_mpc_ast_add_root_tag:                  ## @mpc_ast_add_root_tag
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp489:
	.cfi_def_cfa_offset 16
Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp491:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB163_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB163_3
LBB163_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	subq	$1, %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	_realloc
	movq	$-1, %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_strlen
	subq	$1, %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	callq	___memmove_chk
	movq	$-1, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	callq	_strlen
	subq	$1, %rax
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	callq	___memmove_chk
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -120(%rbp)        ## 8-byte Spill
LBB163_3:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_tag
	.align	4, 0x90
_mpc_ast_tag:                           ## @mpc_ast_tag
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp492:
	.cfi_def_cfa_offset 16
Ltmp493:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp494:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	$-1, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-8(%rbp), %rdx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_state
	.align	4, 0x90
_mpc_ast_state:                         ## @mpc_ast_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp495:
	.cfi_def_cfa_offset 16
Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp497:
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jne	LBB165_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB165_3
LBB165_2:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB165_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_print
	.align	4, 0x90
_mpc_ast_print:                         ## @mpc_ast_print
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp498:
	.cfi_def_cfa_offset 16
Ltmp499:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp500:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rax), %rdx
	callq	_mpc_ast_print_depth
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_ast_print_depth:                   ## @mpc_ast_print_depth
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp501:
	.cfi_def_cfa_offset 16
Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp503:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB167_2
## BB#1:
	leaq	L_.str.145(%rip), %rsi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB167_13
LBB167_2:
	movl	$0, -28(%rbp)
LBB167_3:                               ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB167_6
## BB#4:                                ##   in Loop: Header=BB167_3 Depth=1
	leaq	L_.str.146(%rip), %rsi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
## BB#5:                                ##   in Loop: Header=BB167_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB167_3
LBB167_6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_strlen
	cmpq	$0, %rax
	je	LBB167_8
## BB#7:
	leaq	L_.str.147(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r9
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	jmp	LBB167_9
LBB167_8:
	leaq	L_.str.148(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB167_9:
	movl	$0, -28(%rbp)
LBB167_10:                              ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB167_13
## BB#11:                               ##   in Loop: Header=BB167_10 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	_mpc_ast_print_depth
## BB#12:                               ##   in Loop: Header=BB167_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB167_10
LBB167_13:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_print_to
	.align	4, 0x90
_mpc_ast_print_to:                      ## @mpc_ast_print_to
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp504:
	.cfi_def_cfa_offset 16
Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp506:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	_mpc_ast_print_depth
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_get_index
	.align	4, 0x90
_mpc_ast_get_index:                     ## @mpc_ast_get_index
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp507:
	.cfi_def_cfa_offset 16
Ltmp508:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp509:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_ast_get_index_lb
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_get_index_lb
	.align	4, 0x90
_mpc_ast_get_index_lb:                  ## @mpc_ast_get_index_lb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp510:
	.cfi_def_cfa_offset 16
Ltmp511:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp512:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -32(%rbp)
LBB170_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB170_6
## BB#2:                                ##   in Loop: Header=BB170_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB170_4
## BB#3:
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB170_7
LBB170_4:                               ##   in Loop: Header=BB170_1 Depth=1
	jmp	LBB170_5
LBB170_5:                               ##   in Loop: Header=BB170_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB170_1
LBB170_6:
	movl	$-1, -4(%rbp)
LBB170_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_get_child
	.align	4, 0x90
_mpc_ast_get_child:                     ## @mpc_ast_get_child
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp513:
	.cfi_def_cfa_offset 16
Ltmp514:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp515:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_ast_get_child_lb
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_get_child_lb
	.align	4, 0x90
_mpc_ast_get_child_lb:                  ## @mpc_ast_get_child_lb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp516:
	.cfi_def_cfa_offset 16
Ltmp517:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp518:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -32(%rbp)
LBB172_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB172_6
## BB#2:                                ##   in Loop: Header=BB172_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB172_4
## BB#3:
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB172_7
LBB172_4:                               ##   in Loop: Header=BB172_1 Depth=1
	jmp	LBB172_5
LBB172_5:                               ##   in Loop: Header=BB172_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB172_1
LBB172_6:
	movq	$0, -8(%rbp)
LBB172_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_traverse_start
	.align	4, 0x90
_mpc_ast_traverse_start:                ## @mpc_ast_traverse_start
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp519:
	.cfi_def_cfa_offset 16
Ltmp520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp521:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$24, %esi
	movl	%esi, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%esi, 20(%rax)
	movl	-12(%rbp), %esi
	testl	%esi, %esi
	movl	%esi, -44(%rbp)         ## 4-byte Spill
	je	LBB173_1
	jmp	LBB173_8
LBB173_8:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	je	LBB173_2
	jmp	LBB173_6
LBB173_1:
	jmp	LBB173_7
LBB173_2:
	jmp	LBB173_3
LBB173_3:                               ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 40(%rax)
	jle	LBB173_5
## BB#4:                                ##   in Loop: Header=BB173_3 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB173_3
LBB173_5:
	jmp	LBB173_7
LBB173_6:
	jmp	LBB173_7
LBB173_7:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_traverse_next
	.align	4, 0x90
_mpc_ast_traverse_next:                 ## @mpc_ast_traverse_next
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp522:
	.cfi_def_cfa_offset 16
Ltmp523:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp524:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, (%rdi)
	jne	LBB174_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB174_21
LBB174_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -48(%rbp)         ## 4-byte Spill
	je	LBB174_3
	jmp	LBB174_22
LBB174_22:
	movl	-48(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	je	LBB174_11
	jmp	LBB174_19
LBB174_3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
LBB174_4:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -53(%rbp)          ## 1-byte Spill
	je	LBB174_6
## BB#5:                                ##   in Loop: Header=BB174_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	40(%rax), %ecx
	setge	%dl
	movb	%dl, -53(%rbp)          ## 1-byte Spill
LBB174_6:                               ##   in Loop: Header=BB174_4 Depth=1
	movb	-53(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB174_7
	jmp	LBB174_8
LBB174_7:                               ##   in Loop: Header=BB174_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB174_4
LBB174_8:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB174_10
## BB#9:
	jmp	LBB174_20
LBB174_10:
	movl	$24, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	LBB174_20
LBB174_11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB174_13
## BB#12:
	jmp	LBB174_20
LBB174_13:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	40(%rax), %ecx
	jl	LBB174_15
## BB#14:
	jmp	LBB174_20
LBB174_15:
	jmp	LBB174_16
LBB174_16:                              ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 40(%rax)
	jle	LBB174_18
## BB#17:                               ##   in Loop: Header=BB174_16 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	LBB174_16
LBB174_18:
	jmp	LBB174_19
LBB174_19:
	jmp	LBB174_20
LBB174_20:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB174_21:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpc_ast_traverse_free
	.align	4, 0x90
_mpc_ast_traverse_free:                 ## @mpc_ast_traverse_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp525:
	.cfi_def_cfa_offset 16
Ltmp526:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp527:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
LBB175_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB175_3
## BB#2:                                ##   in Loop: Header=BB175_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	LBB175_1
LBB175_3:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_fold_ast
	.align	4, 0x90
_mpcf_fold_ast:                         ## @mpcf_fold_ast
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp528:
	.cfi_def_cfa_offset 16
Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp530:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB176_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB176_34
LBB176_2:
	cmpl	$1, -12(%rbp)
	jne	LBB176_4
## BB#3:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB176_34
LBB176_4:
	cmpl	$2, -12(%rbp)
	jne	LBB176_7
## BB#5:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB176_7
## BB#6:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB176_34
LBB176_7:
	cmpl	$2, -12(%rbp)
	jne	LBB176_10
## BB#8:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB176_10
## BB#9:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB176_34
LBB176_10:
	leaq	L_.str.62(%rip), %rdi
	leaq	L_.str.81(%rip), %rsi
	callq	_mpc_ast_new
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
LBB176_11:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB176_23 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB176_31
## BB#12:                               ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB176_14
## BB#13:                               ##   in Loop: Header=BB176_11 Depth=1
	jmp	LBB176_30
LBB176_14:                              ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB176_17
## BB#15:                               ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 40(%rax)
	jne	LBB176_17
## BB#16:                               ##   in Loop: Header=BB176_11 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_ast_add_child
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB176_29
LBB176_17:                              ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB176_20
## BB#18:                               ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$1, 40(%rax)
	jne	LBB176_20
## BB#19:                               ##   in Loop: Header=BB176_11 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_mpc_ast_add_root_tag
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_ast_add_child
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_mpc_ast_delete_no_children
	jmp	LBB176_28
LBB176_20:                              ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB176_27
## BB#21:                               ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 40(%rax)
	jl	LBB176_27
## BB#22:                               ##   in Loop: Header=BB176_11 Depth=1
	movl	$0, -32(%rbp)
LBB176_23:                              ##   Parent Loop BB176_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	40(%rcx), %eax
	jge	LBB176_26
## BB#24:                               ##   in Loop: Header=BB176_23 Depth=2
	movq	-48(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_ast_add_child
	movq	%rax, -80(%rbp)         ## 8-byte Spill
## BB#25:                               ##   in Loop: Header=BB176_23 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB176_23
LBB176_26:                              ##   in Loop: Header=BB176_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_ast_delete_no_children
LBB176_27:                              ##   in Loop: Header=BB176_11 Depth=1
	jmp	LBB176_28
LBB176_28:                              ##   in Loop: Header=BB176_11 Depth=1
	jmp	LBB176_29
LBB176_29:                              ##   in Loop: Header=BB176_11 Depth=1
	jmp	LBB176_30
LBB176_30:                              ##   in Loop: Header=BB176_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB176_11
LBB176_31:
	movq	-48(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	LBB176_33
## BB#32:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 32(%rax)
LBB176_33:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB176_34:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_ast_delete_no_children:            ## @mpc_ast_delete_no_children
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp531:
	.cfi_def_cfa_offset 16
Ltmp532:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp533:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	_free
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	_free
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_str_ast
	.align	4, 0x90
_mpcf_str_ast:                          ## @mpcf_str_ast
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp534:
	.cfi_def_cfa_offset 16
Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp536:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.81(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_mpc_ast_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpcf_state_ast
	.align	4, 0x90
_mpcf_state_ast:                        ## @mpcf_state_ast
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp537:
	.cfi_def_cfa_offset 16
Ltmp538:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp539:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rsp)
	callq	_mpc_ast_state
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_state
	.align	4, 0x90
_mpca_state:                            ## @mpca_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp540:
	.cfi_def_cfa_offset 16
Ltmp541:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp542:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_mpc_state
	movl	$2, %edi
	leaq	_mpcf_state_ast(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_tag
	.align	4, 0x90
_mpca_tag:                              ## @mpca_tag
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp543:
	.cfi_def_cfa_offset 16
Ltmp544:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp545:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_ast_tag(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	_mpc_apply_to
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_add_tag
	.align	4, 0x90
_mpca_add_tag:                          ## @mpca_add_tag
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp546:
	.cfi_def_cfa_offset 16
Ltmp547:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp548:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_ast_add_tag(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	_mpc_apply_to
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_root
	.align	4, 0x90
_mpca_root:                             ## @mpca_root
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp549:
	.cfi_def_cfa_offset 16
Ltmp550:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp551:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_ast_add_root(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_mpc_apply
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_not
	.align	4, 0x90
_mpca_not:                              ## @mpca_not
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp552:
	.cfi_def_cfa_offset 16
Ltmp553:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp554:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_ast_delete(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_mpc_not
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_maybe
	.align	4, 0x90
_mpca_maybe:                            ## @mpca_maybe
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp555:
	.cfi_def_cfa_offset 16
Ltmp556:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp557:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_maybe
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_many
	.align	4, 0x90
_mpca_many:                             ## @mpca_many
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp558:
	.cfi_def_cfa_offset 16
Ltmp559:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp560:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_mpc_many
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_many1
	.align	4, 0x90
_mpca_many1:                            ## @mpca_many1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp561:
	.cfi_def_cfa_offset 16
Ltmp562:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp563:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_mpc_many1
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_count
	.align	4, 0x90
_mpca_count:                            ## @mpca_count
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp564:
	.cfi_def_cfa_offset 16
Ltmp565:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp566:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpcf_fold_ast(%rip), %rax
	leaq	_mpc_ast_delete(%rip), %rcx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	_mpc_count
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_or
	.align	4, 0x90
_mpca_or:                               ## @mpca_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp567:
	.cfi_def_cfa_offset 16
Ltmp568:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp569:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movl	%edi, -356(%rbp)        ## 4-byte Spill
	movq	%r9, -368(%rbp)         ## 8-byte Spill
	movq	%r8, -376(%rbp)         ## 8-byte Spill
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
	movq	%rdx, -392(%rbp)        ## 8-byte Spill
	movq	%rsi, -400(%rbp)        ## 8-byte Spill
	je	LBB189_11
## BB#10:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB189_11:
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	movl	-356(%rbp), %r8d        ## 4-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	callq	_mpc_undefined
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$23, 16(%rax)
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 24(%rax)
	movslq	-36(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, 32(%rdx)
	leaq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movl	$0, -40(%rbp)
LBB189_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB189_7
## BB#2:                                ##   in Loop: Header=BB189_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB189_4
## BB#3:                                ##   in Loop: Header=BB189_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB189_5
LBB189_4:                               ##   in Loop: Header=BB189_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB189_5:                               ##   in Loop: Header=BB189_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#6:                                ##   in Loop: Header=BB189_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB189_1
LBB189_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -432(%rbp)        ## 8-byte Spill
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	jne	LBB189_9
## BB#8:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB189_9:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpca_and
	.align	4, 0x90
_mpca_and:                              ## @mpca_and
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp570:
	.cfi_def_cfa_offset 16
Ltmp571:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp572:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              ## imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movl	%edi, -356(%rbp)        ## 4-byte Spill
	movq	%r9, -368(%rbp)         ## 8-byte Spill
	movq	%r8, -376(%rbp)         ## 8-byte Spill
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
	movq	%rdx, -392(%rbp)        ## 8-byte Spill
	movq	%rsi, -400(%rbp)        ## 8-byte Spill
	je	LBB190_15
## BB#14:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB190_15:
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	movl	-356(%rbp), %r8d        ## 4-byte Reload
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -36(%rbp)
	callq	_mpc_undefined
	leaq	_mpcf_fold_ast(%rip), %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$24, 16(%rax)
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 32(%rax)
	movslq	-36(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-48(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, 48(%rdx)
	leaq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movl	$0, -40(%rbp)
LBB190_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB190_7
## BB#2:                                ##   in Loop: Header=BB190_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB190_4
## BB#3:                                ##   in Loop: Header=BB190_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB190_5
LBB190_4:                               ##   in Loop: Header=BB190_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB190_5:                               ##   in Loop: Header=BB190_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#6:                                ##   in Loop: Header=BB190_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB190_1
LBB190_7:
	movl	$0, -40(%rbp)
LBB190_8:                               ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB190_11
## BB#9:                                ##   in Loop: Header=BB190_8 Depth=1
	leaq	_mpc_ast_delete(%rip), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#10:                               ##   in Loop: Header=BB190_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB190_8
LBB190_11:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -432(%rbp)        ## 8-byte Spill
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	jne	LBB190_13
## BB#12:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	addq	$448, %rsp              ## imm = 0x1C0
	popq	%rbp
	retq
LBB190_13:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpca_total
	.align	4, 0x90
_mpca_total:                            ## @mpca_total
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp573:
	.cfi_def_cfa_offset 16
Ltmp574:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp575:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	_mpc_ast_delete(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_mpc_total
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_grammar_st
	.align	4, 0x90
_mpca_grammar_st:                       ## @mpca_grammar_st
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp576:
	.cfi_def_cfa_offset 16
Ltmp577:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp578:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              ## imm = 0x110
	leaq	L_.str.83(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	_mpc_new
	leaq	L_.str.84(%rip), %rdi
	movq	%rax, -48(%rbp)
	callq	_mpc_new
	leaq	L_.str.67(%rip), %rdi
	movq	%rax, -56(%rbp)
	callq	_mpc_new
	leaq	L_.str.68(%rip), %rdi
	movq	%rax, -64(%rbp)
	callq	_mpc_new
	leaq	L_.str.69(%rip), %rdi
	movq	%rax, -72(%rbp)
	callq	_mpc_new
	leaq	_mpc_soft_delete(%rip), %rsi
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_mpc_total
	movq	%rax, %rdi
	callq	_mpc_predictive
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	L_.str.82(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rdx, -104(%rbp)        ## 8-byte Spill
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	movl	$2, %edi
	leaq	_mpcf_snd_free(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, %rdi
	callq	_mpc_maybe
	movl	$2, %edi
	leaq	_mpcaf_grammar_or(%rip), %rsi
	leaq	_mpc_soft_delete(%rip), %r8
	movq	-104(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	_mpcaf_grammar_and(%rip), %rdi
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	movq	%rcx, -128(%rbp)        ## 8-byte Spill
	callq	_mpc_many1
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	L_.str.74(%rip), %rdi
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%rdx, -144(%rbp)        ## 8-byte Spill
	movq	%rcx, -152(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.76(%rip), %rdi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.85(%rip), %rdi
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.86(%rip), %rdi
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	callq	_mpc_int
	movq	_free@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_tok_brackets
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	callq	_mpc_pass
	movl	$6, %edi
	movq	-160(%rbp), %rsi        ## 8-byte Reload
	movq	-168(%rbp), %rdx        ## 8-byte Reload
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	-184(%rbp), %r8         ## 8-byte Reload
	movq	-192(%rbp), %r9         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_or
	movl	$2, %edi
	leaq	_mpcaf_grammar_repeat(%rip), %rsi
	leaq	_mpc_soft_delete(%rip), %r8
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-80(%rbp), %rdi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	movq	%rdi, -208(%rbp)        ## 8-byte Spill
	callq	_mpc_string_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_string(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	callq	_mpc_char_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_char(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_mpc_regex_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_regex(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	callq	_mpc_digits
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_mpc_ident
	movl	$2, %edi
	movq	-240(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	movq	_free@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_tok_braces
	leaq	_mpcaf_grammar_id(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	leaq	_mpc_soft_delete(%rip), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	callq	_mpc_tok_parens
	movl	$5, %edi
	movq	-216(%rbp), %rsi        ## 8-byte Reload
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	movq	-248(%rbp), %r8         ## 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	_mpc_or
	movq	-208(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-48(%rbp), %rdi
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	callq	_mpc_optimise
	movq	-56(%rbp), %rdi
	callq	_mpc_optimise
	movq	-72(%rbp), %rdi
	callq	_mpc_optimise
	movq	-64(%rbp), %rdi
	callq	_mpc_optimise
	movq	-80(%rbp), %rdi
	callq	_mpc_optimise
	leaq	L_.str.87(%rip), %rdi
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_mpc_parse
	cmpl	$0, %eax
	jne	LBB192_2
## BB#1:
	movq	-40(%rbp), %rdi
	callq	_mpc_err_string
	leaq	L_.str.88(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	_mpc_err_delete
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB192_2:
	movl	$5, %edi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movb	$0, %al
	callq	_mpc_cleanup
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_mpc_optimise
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %r10d
	andl	$1, %r10d
	cmpl	$0, %r10d
	je	LBB192_4
## BB#3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_mpc_predictive
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	jmp	LBB192_5
LBB192_4:
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        ## 8-byte Spill
LBB192_5:
	movq	-264(%rbp), %rax        ## 8-byte Reload
	addq	$272, %rsp              ## imm = 0x110
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_soft_delete:                       ## @mpc_soft_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp579:
	.cfi_def_cfa_offset 16
Ltmp580:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp581:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_undefine_unretained
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_or:                      ## @mpcaf_grammar_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp582:
	.cfi_def_cfa_offset 16
Ltmp583:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp584:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	LBB194_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB194_3
LBB194_2:
	movl	$2, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	_mpca_or
	movq	%rax, -8(%rbp)
LBB194_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_and:                     ## @mpcaf_grammar_and
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp585:
	.cfi_def_cfa_offset 16
Ltmp586:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp587:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_mpc_pass
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
LBB195_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB195_6
## BB#2:                                ##   in Loop: Header=BB195_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB195_4
## BB#3:                                ##   in Loop: Header=BB195_1 Depth=1
	movl	$2, %edi
	movq	-32(%rbp), %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	_mpca_and
	movq	%rax, -32(%rbp)
LBB195_4:                               ##   in Loop: Header=BB195_1 Depth=1
	jmp	LBB195_5
LBB195_5:                               ##   in Loop: Header=BB195_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB195_1
LBB195_6:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_repeat:                  ## @mpcaf_grammar_repeat
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp588:
	.cfi_def_cfa_offset 16
Ltmp589:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp590:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	LBB196_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB196_11
LBB196_2:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.74(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB196_4
## BB#3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_mpca_many
	movq	%rax, -8(%rbp)
	jmp	LBB196_11
LBB196_4:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.76(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB196_6
## BB#5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_mpca_many1
	movq	%rax, -8(%rbp)
	jmp	LBB196_11
LBB196_6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.85(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB196_8
## BB#7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_mpca_maybe
	movq	%rax, -8(%rbp)
	jmp	LBB196_11
LBB196_8:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.86(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB196_10
## BB#9:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_mpca_not
	movq	%rax, -8(%rbp)
	jmp	LBB196_11
LBB196_10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	_mpca_count
	movq	%rax, -8(%rbp)
LBB196_11:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_string:                  ## @mpcaf_grammar_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp591:
	.cfi_def_cfa_offset 16
Ltmp592:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp593:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	LBB197_2
## BB#1:
	movq	-32(%rbp), %rdi
	callq	_mpc_string
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB197_3
LBB197_2:
	movq	-32(%rbp), %rdi
	callq	_mpc_string
	movq	%rax, %rdi
	callq	_mpc_tok
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB197_3:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_free
	leaq	_mpcf_str_ast(%rip), %rsi
	movq	-40(%rbp), %rdi
	callq	_mpc_apply
	leaq	L_.str.56(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpca_tag
	movq	%rax, %rdi
	callq	_mpca_state
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_char:                    ## @mpcaf_grammar_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp594:
	.cfi_def_cfa_offset 16
Ltmp595:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp596:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	LBB198_2
## BB#1:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	_mpc_char
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB198_3
LBB198_2:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	_mpc_char
	movq	%rax, %rdi
	callq	_mpc_tok
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB198_3:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_free
	leaq	_mpcf_str_ast(%rip), %rsi
	movq	-40(%rbp), %rdi
	callq	_mpc_apply
	leaq	L_.str.54(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpca_tag
	movq	%rax, %rdi
	callq	_mpca_state
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_regex:                   ## @mpcaf_grammar_regex
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp597:
	.cfi_def_cfa_offset 16
Ltmp598:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp599:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpcf_unescape_regex
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	LBB199_2
## BB#1:
	movq	-32(%rbp), %rdi
	callq	_mpc_re
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB199_3
LBB199_2:
	movq	-32(%rbp), %rdi
	callq	_mpc_re
	movq	%rax, %rdi
	callq	_mpc_tok
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB199_3:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_free
	leaq	_mpcf_str_ast(%rip), %rsi
	movq	-40(%rbp), %rdi
	callq	_mpc_apply
	leaq	L_.str.58(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpca_tag
	movq	%rax, %rdi
	callq	_mpca_state
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcaf_grammar_id:                      ## @mpcaf_grammar_id
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp600:
	.cfi_def_cfa_offset 16
Ltmp601:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp602:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_mpca_grammar_find_parser
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB200_2
## BB#1:
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_mpca_add_tag
	movq	%rax, %rdi
	callq	_mpca_root
	movq	%rax, %rdi
	callq	_mpca_state
	movq	%rax, -8(%rbp)
	jmp	LBB200_3
LBB200_2:
	movq	-40(%rbp), %rdi
	callq	_mpca_root
	movq	%rax, %rdi
	callq	_mpca_state
	movq	%rax, -8(%rbp)
LBB200_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_grammar
	.align	4, 0x90
_mpca_grammar:                          ## @mpca_grammar
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp603:
	.cfi_def_cfa_offset 16
Ltmp604:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp605:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -384(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -400(%rbp)       ## 16-byte Spill
	movl	%edi, -404(%rbp)        ## 4-byte Spill
	movq	%r9, -416(%rbp)         ## 8-byte Spill
	movq	%r8, -424(%rbp)         ## 8-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
	movq	%rsi, -448(%rbp)        ## 8-byte Spill
	je	LBB201_4
## BB#3:
	movaps	-400(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -112(%rbp)
LBB201_4:
	movq	-416(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        ## 8-byte Reload
	movl	-404(%rbp), %r8d        ## 4-byte Reload
	leaq	-80(%rbp), %rsi
	leaq	-32(%rbp), %r9
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%r9, %rdi
	leaq	-272(%rbp), %r10
	movq	%r10, 16(%rdi)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$16, (%rdi)
	movq	%r9, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	_mpca_grammar_st
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jne	LBB201_2
## BB#1:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	retq
LBB201_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpca_lang_file
	.align	4, 0x90
_mpca_lang_file:                        ## @mpca_lang_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp606:
	.cfi_def_cfa_offset 16
Ltmp607:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp608:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -384(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -400(%rbp)       ## 16-byte Spill
	movl	%edi, -404(%rbp)        ## 4-byte Spill
	movq	%r9, -416(%rbp)         ## 8-byte Spill
	movq	%r8, -424(%rbp)         ## 8-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
	movq	%rsi, -448(%rbp)        ## 8-byte Spill
	je	LBB202_4
## BB#3:
	movaps	-400(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -112(%rbp)
LBB202_4:
	movq	-416(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        ## 8-byte Reload
	movl	-404(%rbp), %r8d        ## 4-byte Reload
	leaq	L_.str.89(%rip), %r9
	leaq	-32(%rbp), %r10
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%r10, %rdi
	leaq	-272(%rbp), %r11
	movq	%r11, 16(%rdi)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$16, (%rdi)
	movq	%r10, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	%r9, %rdi
	callq	_mpc_input_new_file
	leaq	-80(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpca_lang_st
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpc_input_delete
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jne	LBB202_2
## BB#1:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	retq
LBB202_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_mpca_lang_st:                          ## @mpca_lang_st
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp609:
	.cfi_def_cfa_offset 16
Ltmp610:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp611:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              ## imm = 0x170
	leaq	L_.str.151(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	_mpc_new
	leaq	L_.str.152(%rip), %rdi
	movq	%rax, -40(%rbp)
	callq	_mpc_new
	leaq	L_.str.84(%rip), %rdi
	movq	%rax, -48(%rbp)
	callq	_mpc_new
	leaq	L_.str.67(%rip), %rdi
	movq	%rax, -56(%rbp)
	callq	_mpc_new
	leaq	L_.str.68(%rip), %rdi
	movq	%rax, -64(%rbp)
	callq	_mpc_new
	leaq	L_.str.69(%rip), %rdi
	movq	%rax, -72(%rbp)
	callq	_mpc_new
	leaq	_mpca_stmt_fold(%rip), %rdi
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	_mpc_many
	movq	%rax, %rdi
	callq	_mpc_predictive
	leaq	_mpca_stmt_list_delete(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_total
	leaq	_mpca_stmt_list_apply_to(%rip), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         ## 8-byte Reload
	callq	_mpc_apply_to
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	callq	_mpc_ident
	movq	%rax, %rdi
	callq	_mpc_tok
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	_mpc_string_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	movq	%rax, %rdi
	callq	_mpc_maybe
	leaq	L_.str.153(%rip), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.154(%rip), %rdi
	movq	-56(%rbp), %r9
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%r9, -144(%rbp)         ## 8-byte Spill
	callq	_mpc_sym
	movl	$5, %edi
	leaq	_mpca_stmt_afold(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %rdx
	leaq	_mpc_soft_delete(%rip), %r9
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rdx, -152(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	movq	-136(%rbp), %r8         ## 8-byte Reload
	movq	-144(%rbp), %r10        ## 8-byte Reload
	movq	%r9, -160(%rbp)         ## 8-byte Spill
	movq	%r10, %r9
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-160(%rbp), %r11        ## 8-byte Reload
	movq	%r11, 32(%rsp)
	movb	$0, %al
	callq	_mpc_and
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	L_.str.82(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	movq	%rdx, -176(%rbp)        ## 8-byte Spill
	movq	%rcx, -184(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	movl	$2, %edi
	leaq	_mpcf_snd_free(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, %rdi
	callq	_mpc_maybe
	movl	$2, %edi
	leaq	_mpcaf_grammar_or(%rip), %rsi
	leaq	_mpc_soft_delete(%rip), %r8
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	-184(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	_mpcaf_grammar_and(%rip), %rdi
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	movq	%rcx, -200(%rbp)        ## 8-byte Spill
	callq	_mpc_many1
	movq	-200(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	leaq	L_.str.74(%rip), %rdi
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	movq	%rdx, -216(%rbp)        ## 8-byte Spill
	movq	%rcx, -224(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.76(%rip), %rdi
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.85(%rip), %rdi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	leaq	L_.str.86(%rip), %rdi
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	callq	_mpc_sym
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	callq	_mpc_int
	movq	_free@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_tok_brackets
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	callq	_mpc_pass
	movl	$6, %edi
	movq	-232(%rbp), %rsi        ## 8-byte Reload
	movq	-240(%rbp), %rdx        ## 8-byte Reload
	movq	-248(%rbp), %rcx        ## 8-byte Reload
	movq	-256(%rbp), %r8         ## 8-byte Reload
	movq	-264(%rbp), %r9         ## 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_or
	movl	$2, %edi
	leaq	_mpcaf_grammar_repeat(%rip), %rsi
	leaq	_mpc_soft_delete(%rip), %r8
	movq	-216(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	-224(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-80(%rbp), %rdi
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	movq	%rdi, -280(%rbp)        ## 8-byte Spill
	callq	_mpc_string_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_string(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	callq	_mpc_char_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_char(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	callq	_mpc_regex_lit
	movq	%rax, %rdi
	callq	_mpc_tok
	leaq	_mpcaf_grammar_regex(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	callq	_mpc_digits
	movq	%rax, -312(%rbp)        ## 8-byte Spill
	callq	_mpc_ident
	movl	$2, %edi
	movq	-312(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_mpc_or
	movq	_free@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_mpc_tok_braces
	leaq	_mpcaf_grammar_id(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	_mpc_apply_to
	leaq	_mpc_soft_delete(%rip), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -320(%rbp)        ## 8-byte Spill
	callq	_mpc_tok_parens
	movl	$5, %edi
	movq	-288(%rbp), %rsi        ## 8-byte Reload
	movq	-296(%rbp), %rdx        ## 8-byte Reload
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	movq	-320(%rbp), %r8         ## 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	_mpc_or
	movq	-280(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_define
	movq	-40(%rbp), %rdi
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	callq	_mpc_optimise
	movq	-48(%rbp), %rdi
	callq	_mpc_optimise
	movq	-56(%rbp), %rdi
	callq	_mpc_optimise
	movq	-64(%rbp), %rdi
	callq	_mpc_optimise
	movq	-72(%rbp), %rdi
	callq	_mpc_optimise
	movq	-80(%rbp), %rdi
	callq	_mpc_optimise
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_mpc_parse_input
	cmpl	$0, %eax
	jne	LBB203_2
## BB#1:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB203_3
LBB203_2:
	movq	$0, -32(%rbp)
LBB203_3:
	movl	$6, %edi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_mpc_cleanup
	movq	-32(%rbp), %rax
	addq	$368, %rsp              ## imm = 0x170
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_mpca_lang_pipe
	.align	4, 0x90
_mpca_lang_pipe:                        ## @mpca_lang_pipe
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp612:
	.cfi_def_cfa_offset 16
Ltmp613:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp614:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -384(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -400(%rbp)       ## 16-byte Spill
	movl	%edi, -404(%rbp)        ## 4-byte Spill
	movq	%r9, -416(%rbp)         ## 8-byte Spill
	movq	%r8, -424(%rbp)         ## 8-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
	movq	%rsi, -448(%rbp)        ## 8-byte Spill
	je	LBB204_4
## BB#3:
	movaps	-400(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -112(%rbp)
LBB204_4:
	movq	-416(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        ## 8-byte Reload
	movl	-404(%rbp), %r8d        ## 4-byte Reload
	leaq	L_.str.90(%rip), %r9
	leaq	-32(%rbp), %r10
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%r10, %rdi
	leaq	-272(%rbp), %r11
	movq	%r11, 16(%rdi)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$16, (%rdi)
	movq	%r10, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	%r9, %rdi
	callq	_mpc_input_new_pipe
	leaq	-80(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpca_lang_st
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpc_input_delete
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jne	LBB204_2
## BB#1:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	retq
LBB204_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpca_lang
	.align	4, 0x90
_mpca_lang:                             ## @mpca_lang
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp615:
	.cfi_def_cfa_offset 16
Ltmp616:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp617:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -384(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -400(%rbp)       ## 16-byte Spill
	movl	%edi, -404(%rbp)        ## 4-byte Spill
	movq	%r9, -416(%rbp)         ## 8-byte Spill
	movq	%r8, -424(%rbp)         ## 8-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	movq	%rdx, -440(%rbp)        ## 8-byte Spill
	movq	%rsi, -448(%rbp)        ## 8-byte Spill
	je	LBB205_4
## BB#3:
	movaps	-400(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -112(%rbp)
LBB205_4:
	movq	-416(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        ## 8-byte Reload
	movl	-404(%rbp), %r8d        ## 4-byte Reload
	leaq	L_.str.91(%rip), %r9
	leaq	-32(%rbp), %r10
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%r10, %rdi
	leaq	-272(%rbp), %r11
	movq	%r11, 16(%rdi)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$16, (%rdi)
	movq	%r10, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	%r9, %rdi
	callq	_mpc_input_new_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpca_lang_st
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	_mpc_input_delete
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	leaq	-32(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jne	LBB205_2
## BB#1:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	retq
LBB205_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpca_lang_contents
	.align	4, 0x90
_mpca_lang_contents:                    ## @mpca_lang_contents
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp618:
	.cfi_def_cfa_offset 16
Ltmp619:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp620:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              ## imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -384(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -400(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -416(%rbp)       ## 16-byte Spill
	movl	%edi, -420(%rbp)        ## 4-byte Spill
	movq	%r9, -432(%rbp)         ## 8-byte Spill
	movq	%r8, -440(%rbp)         ## 8-byte Spill
	movq	%rcx, -448(%rbp)        ## 8-byte Spill
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	movq	%rsi, -464(%rbp)        ## 8-byte Spill
	je	LBB206_7
## BB#6:
	movaps	-416(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -128(%rbp)
LBB206_7:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -272(%rbp)
	movq	-464(%rbp), %rdi        ## 8-byte Reload
	movl	-420(%rbp), %r8d        ## 4-byte Reload
	leaq	L_.str.9(%rip), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	_fopen
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	LBB206_2
## BB#1:
	leaq	L_.str.10(%rip), %rsi
	movq	-56(%rbp), %rdi
	callq	_mpc_err_file
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB206_3
LBB206_2:
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	leaq	-288(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	%rax, -88(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movl	-44(%rbp), %esi
	movl	%esi, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	_mpc_input_new_file
	leaq	-88(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	_mpca_lang_st
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	_mpc_input_delete
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	leaq	-32(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, -472(%rbp)        ## 8-byte Spill
	callq	_fclose
	movq	-104(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	%eax, -476(%rbp)        ## 4-byte Spill
LBB206_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movq	%rcx, -488(%rbp)        ## 8-byte Spill
	jne	LBB206_5
## BB#4:
	movq	-488(%rbp), %rax        ## 8-byte Reload
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	retq
LBB206_5:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mpc_stats
	.align	4, 0x90
_mpc_stats:                             ## @mpc_stats
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp621:
	.cfi_def_cfa_offset 16
Ltmp622:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp623:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.92(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.93(%rip), %rdi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_mpc_nodecount_unretained
	leaq	L_.str.94(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_nodecount_unretained:              ## @mpc_nodecount_unretained
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp624:
	.cfi_def_cfa_offset 16
Ltmp625:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp626:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	(%rdi), %esi
	cmpl	$0, %esi
	je	LBB208_3
## BB#1:
	cmpl	$0, -20(%rbp)
	jne	LBB208_3
## BB#2:
	movl	$0, -4(%rbp)
	jmp	LBB208_34
LBB208_3:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$5, %ecx
	jne	LBB208_5
## BB#4:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_5:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$15, %ecx
	jne	LBB208_7
## BB#6:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_7:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$16, %ecx
	jne	LBB208_9
## BB#8:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_9:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$17, %ecx
	jne	LBB208_11
## BB#10:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_11:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$18, %ecx
	jne	LBB208_13
## BB#12:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_13:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$19, %ecx
	jne	LBB208_15
## BB#14:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_15:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$20, %ecx
	jne	LBB208_17
## BB#16:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_17:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$21, %ecx
	jne	LBB208_19
## BB#18:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_19:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$22, %ecx
	jne	LBB208_21
## BB#20:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_nodecount_unretained
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_21:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB208_27
## BB#22:
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
LBB208_23:                              ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB208_26
## BB#24:                               ##   in Loop: Header=BB208_23 Depth=1
	xorl	%esi, %esi
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_nodecount_unretained
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
## BB#25:                               ##   in Loop: Header=BB208_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB208_23
LBB208_26:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_27:
	movq	-16(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB208_33
## BB#28:
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
LBB208_29:                              ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB208_32
## BB#30:                               ##   in Loop: Header=BB208_29 Depth=1
	xorl	%esi, %esi
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_nodecount_unretained
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
## BB#31:                               ##   in Loop: Header=BB208_29 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB208_29
LBB208_32:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB208_34
LBB208_33:
	movl	$1, -4(%rbp)
LBB208_34:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_optimise_unretained:               ## @mpc_optimise_unretained
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp627:
	.cfi_def_cfa_offset 16
Ltmp628:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp629:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %esi
	cmpl	$0, %esi
	je	LBB209_3
## BB#1:
	cmpl	$0, -12(%rbp)
	jne	LBB209_3
## BB#2:
	jmp	LBB209_96
LBB209_3:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$5, %ecx
	jne	LBB209_5
## BB#4:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_5:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$15, %ecx
	jne	LBB209_7
## BB#6:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_7:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$16, %ecx
	jne	LBB209_9
## BB#8:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_9:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$17, %ecx
	jne	LBB209_11
## BB#10:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_11:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$18, %ecx
	jne	LBB209_13
## BB#12:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_13:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$19, %ecx
	jne	LBB209_15
## BB#14:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_15:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$20, %ecx
	jne	LBB209_17
## BB#16:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_17:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$21, %ecx
	jne	LBB209_19
## BB#18:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_19:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$22, %ecx
	jne	LBB209_21
## BB#20:
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_mpc_optimise_unretained
LBB209_21:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB209_27
## BB#22:
	movl	$0, -16(%rbp)
LBB209_23:                              ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB209_26
## BB#24:                               ##   in Loop: Header=BB209_23 Depth=1
	xorl	%esi, %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_optimise_unretained
## BB#25:                               ##   in Loop: Header=BB209_23 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_23
LBB209_26:
	jmp	LBB209_27
LBB209_27:
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_33
## BB#28:
	movl	$0, -16(%rbp)
LBB209_29:                              ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB209_32
## BB#30:                               ##   in Loop: Header=BB209_29 Depth=1
	xorl	%esi, %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_optimise_unretained
## BB#31:                               ##   in Loop: Header=BB209_29 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_29
LBB209_32:
	jmp	LBB209_33
LBB209_33:
	jmp	LBB209_34
LBB209_34:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB209_54 Depth 2
                                        ##     Child Loop BB209_64 Depth 2
                                        ##     Child Loop BB209_81 Depth 2
                                        ##     Child Loop BB209_91 Depth 2
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB209_38
## BB#35:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB209_38
## BB#36:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	cmpb	$0, (%rax)
	jne	LBB209_38
## BB#37:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	addq	$-8, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	callq	___memmove_chk
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_38:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB209_42
## BB#39:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movsbl	16(%rax), %ecx
	cmpl	$23, %ecx
	jne	LBB209_42
## BB#40:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	LBB209_42
## BB#41:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-24(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	addq	$8, %rdx
	movslq	-20(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	callq	___memmove_chk
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	shlq	$3, %rdi
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	___memmove_chk
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_42:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_48
## BB#43:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	LBB209_48
## BB#44:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movsbl	16(%rax), %ecx
	cmpl	$1, %ecx
	jne	LBB209_48
## BB#45:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	LBB209_48
## BB#46:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_48
## BB#47:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdi
	callq	_mpc_delete
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	callq	___memcpy_chk
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_free
	jmp	LBB209_34
LBB209_48:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_58
## BB#49:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_58
## BB#50:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_58
## BB#51:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	LBB209_58
## BB#52:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_58
## BB#53:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-24(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	addq	$8, %rdx
	movl	-20(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-104(%rbp), %rdx        ## 8-byte Reload
	callq	___memmove_chk
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	40(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	shlq	$3, %rdi
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	___memmove_chk
	movl	$0, -16(%rbp)
	movq	%rax, -128(%rbp)        ## 8-byte Spill
LBB209_54:                              ##   Parent Loop BB209_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB209_57
## BB#55:                               ##   in Loop: Header=BB209_54 Depth=2
	leaq	_mpc_ast_delete(%rip), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#56:                               ##   in Loop: Header=BB209_54 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_54
LBB209_57:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_58:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_68
## BB#59:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_68
## BB#60:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_68
## BB#61:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	cmpb	$0, (%rax)
	jne	LBB209_68
## BB#62:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_fold_ast(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi,%rcx,8), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_68
## BB#63:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	addq	$-8, %rax
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx        ## 8-byte Reload
	callq	___memmove_chk
	movl	$0, -16(%rbp)
	movq	%rax, -144(%rbp)        ## 8-byte Spill
LBB209_64:                              ##   Parent Loop BB209_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB209_67
## BB#65:                               ##   in Loop: Header=BB209_64 Depth=2
	leaq	_mpc_ast_delete(%rip), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#66:                               ##   in Loop: Header=BB209_64 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_64
LBB209_67:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_68:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_75
## BB#69:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	LBB209_75
## BB#70:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movsbl	16(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB209_75
## BB#71:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_ctor_str(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rax, 24(%rcx)
	jne	LBB209_75
## BB#72:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	LBB209_75
## BB#73:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_strfold(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_75
## BB#74:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdi
	callq	_mpc_delete
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	callq	___memcpy_chk
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB209_34
LBB209_75:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_85
## BB#76:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_strfold(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_85
## BB#77:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_85
## BB#78:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	LBB209_85
## BB#79:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_strfold(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_85
## BB#80:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-24(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	addq	$8, %rdx
	movl	-20(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-168(%rbp), %rdx        ## 8-byte Reload
	callq	___memmove_chk
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	40(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	shlq	$3, %rdi
	movq	%rdi, -176(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	callq	___memmove_chk
	movl	$0, -16(%rbp)
	movq	%rax, -192(%rbp)        ## 8-byte Spill
LBB209_81:                              ##   Parent Loop BB209_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB209_84
## BB#82:                               ##   in Loop: Header=BB209_81 Depth=2
	movq	_free@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#83:                               ##   in Loop: Header=BB209_81 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_81
LBB209_84:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_85:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_95
## BB#86:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_strfold(%rip), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_95
## BB#87:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movsbl	16(%rax), %ecx
	cmpl	$24, %ecx
	jne	LBB209_95
## BB#88:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	cmpb	$0, (%rax)
	jne	LBB209_95
## BB#89:                               ##   in Loop: Header=BB209_34 Depth=1
	leaq	_mpcf_strfold(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi,%rcx,8), %rcx
	cmpq	%rax, 32(%rcx)
	jne	LBB209_95
## BB#90:                               ##   in Loop: Header=BB209_34 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	$-1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	addq	$-8, %rax
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-200(%rbp), %rdx        ## 8-byte Reload
	callq	___memmove_chk
	movl	$0, -16(%rbp)
	movq	%rax, -208(%rbp)        ## 8-byte Spill
LBB209_91:                              ##   Parent Loop BB209_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB209_94
## BB#92:                               ##   in Loop: Header=BB209_91 Depth=2
	movq	_free@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#93:                               ##   in Loop: Header=BB209_91 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB209_91
LBB209_94:                              ##   in Loop: Header=BB209_34 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	jmp	LBB209_34
LBB209_95:
	jmp	LBB209_96
LBB209_96:
	addq	$208, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_malloc:                            ## @mpc_malloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp630:
	.cfi_def_cfa_offset 16
Ltmp631:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp632:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$64, -24(%rbp)
	jbe	LBB210_2
## BB#1:
	movq	-24(%rbp), %rdi
	callq	_malloc
	movq	%rax, -8(%rbp)
	jmp	LBB210_8
LBB210_2:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
LBB210_3:                               ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, 112(%rcx,%rax)
	jne	LBB210_5
## BB#4:
	movq	-16(%rbp), %rax
	addq	$624, %rax              ## imm = 0x270
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	movb	$1, 112(%rcx,%rax)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	andq	$511, %rax              ## imm = 0x1FF
	movq	-16(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB210_8
LBB210_5:                               ##   in Loop: Header=BB210_3 Depth=1
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	andq	$511, %rax              ## imm = 0x1FF
	movq	-16(%rbp), %rcx
	movq	%rax, 104(%rcx)
## BB#6:                                ##   in Loop: Header=BB210_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	LBB210_3
## BB#7:
	movq	-24(%rbp), %rdi
	callq	_malloc
	movq	%rax, -8(%rbp)
LBB210_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_any:                         ## @mpc_input_any
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp633:
	.cfi_def_cfa_offset 16
Ltmp634:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp635:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB211_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB211_3
LBB211_2:
	movq	-16(%rbp), %rdi
	movb	-25(%rbp), %al
	movq	-24(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -4(%rbp)
LBB211_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_char:                        ## @mpc_input_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp636:
	.cfi_def_cfa_offset 16
Ltmp637:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp638:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB212_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB212_6
LBB212_2:
	movsbl	-33(%rbp), %eax
	movsbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	LBB212_4
## BB#3:
	movq	-16(%rbp), %rdi
	movb	-33(%rbp), %al
	movq	-32(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB212_5
LBB212_4:
	movq	-16(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_mpc_input_failure
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB212_5:
	movl	-40(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -4(%rbp)
LBB212_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_range:                       ## @mpc_input_range
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp639:
	.cfi_def_cfa_offset 16
Ltmp640:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp641:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dl, %al
	movb	%sil, %r8b
	movq	%rdi, -16(%rbp)
	movb	%r8b, -17(%rbp)
	movb	%al, -18(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB213_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB213_7
LBB213_2:
	movsbl	-33(%rbp), %eax
	movsbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB213_5
## BB#3:
	movsbl	-33(%rbp), %eax
	movsbl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	LBB213_5
## BB#4:
	movq	-16(%rbp), %rdi
	movb	-33(%rbp), %al
	movq	-32(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB213_6
LBB213_5:
	movq	-16(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_mpc_input_failure
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB213_6:
	movl	-40(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -4(%rbp)
LBB213_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_oneof:                       ## @mpc_input_oneof
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp642:
	.cfi_def_cfa_offset 16
Ltmp643:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp644:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB214_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB214_6
LBB214_2:
	movq	-24(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB214_4
## BB#3:
	movq	-16(%rbp), %rdi
	movb	-33(%rbp), %al
	movq	-32(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB214_5
LBB214_4:
	movq	-16(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_mpc_input_failure
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB214_5:
	movl	-40(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -4(%rbp)
LBB214_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_noneof:                      ## @mpc_input_noneof
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp645:
	.cfi_def_cfa_offset 16
Ltmp646:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp647:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB215_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB215_6
LBB215_2:
	movq	-24(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB215_4
## BB#3:
	movq	-16(%rbp), %rdi
	movb	-33(%rbp), %al
	movq	-32(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB215_5
LBB215_4:
	movq	-16(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_mpc_input_failure
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB215_5:
	movl	-40(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -4(%rbp)
LBB215_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_satisfy:                     ## @mpc_input_satisfy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp648:
	.cfi_def_cfa_offset 16
Ltmp649:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp650:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_getc
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_terminated
	cmpl	$0, %eax
	je	LBB216_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB216_6
LBB216_2:
	movq	-24(%rbp), %rax
	movsbl	-33(%rbp), %edi
	callq	*%rax
	cmpl	$0, %eax
	je	LBB216_4
## BB#3:
	movq	-16(%rbp), %rdi
	movb	-33(%rbp), %al
	movq	-32(%rbp), %rdx
	movsbl	%al, %esi
	callq	_mpc_input_success
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB216_5
LBB216_4:
	movq	-16(%rbp), %rdi
	movsbl	-33(%rbp), %esi
	callq	_mpc_input_failure
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB216_5:
	movl	-40(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -4(%rbp)
LBB216_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_string:                      ## @mpc_input_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp651:
	.cfi_def_cfa_offset 16
Ltmp652:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp653:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	_mpc_input_mark
LBB217_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB217_5
## BB#2:                                ##   in Loop: Header=BB217_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %esi
	callq	_mpc_input_char
	cmpl	$0, %eax
	jne	LBB217_4
## BB#3:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_rewind
	movl	$0, -4(%rbp)
	jmp	LBB217_6
LBB217_4:                               ##   in Loop: Header=BB217_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB217_1
LBB217_5:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_unmark
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	movl	$1, -4(%rbp)
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB217_6:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_anchor:                      ## @mpc_input_anchor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp654:
	.cfi_def_cfa_offset 16
Ltmp655:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp656:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	96(%rsi), %al
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	movb	%al, -33(%rbp)          ## 1-byte Spill
	callq	_mpc_input_peekc
	movb	-33(%rbp), %cl          ## 1-byte Reload
	movsbl	%cl, %edi
	movsbl	%al, %esi
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	callq	*%rdx
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_state_copy:                  ## @mpc_input_state_copy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp657:
	.cfi_def_cfa_offset 16
Ltmp658:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp659:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$24, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_mpc_malloc
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	___memcpy_chk
	movq	-16(%rbp), %rcx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_parse_apply:                       ## @mpc_parse_apply
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp660:
	.cfi_def_cfa_offset 16
Ltmp661:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp662:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	_mpcf_free(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	%rax, -24(%rbp)
	jne	LBB220_2
## BB#1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_mpcf_input_free
	movq	%rax, -8(%rbp)
	jmp	LBB220_5
LBB220_2:
	leaq	_mpcf_str_ast(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB220_4
## BB#3:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_mpcf_input_str_ast
	movq	%rax, -8(%rbp)
	jmp	LBB220_5
LBB220_4:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_export
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	movq	%rax, -8(%rbp)
LBB220_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_parse_apply_to:                    ## @mpc_parse_apply_to
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp663:
	.cfi_def_cfa_offset 16
Ltmp664:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp665:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_export
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_suppress_enable:             ## @mpc_input_suppress_enable
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp666:
	.cfi_def_cfa_offset 16
Ltmp667:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp668:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	64(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 64(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_suppress_disable:            ## @mpc_input_suppress_disable
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp669:
	.cfi_def_cfa_offset 16
Ltmp670:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp671:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	64(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 64(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_new:                           ## @mpc_err_new
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp672:
	.cfi_def_cfa_offset 16
Ltmp673:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp674:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 64(%rsi)
	je	LBB224_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB224_3
LBB224_2:
	movl	$64, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	_mpc_malloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	___strcpy_chk
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %r8
	movq	%r8, (%rdx)
	movq	24(%rdi), %r8
	movq	%r8, 8(%rdx)
	movq	32(%rdi), %rdi
	movq	%rdi, 16(%rdx)
	movq	-32(%rbp), %rdx
	movl	$1, 24(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_malloc
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	movq	-32(%rbp), %rdx
	movq	$0, 40(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_mpc_input_peekc
	movq	-32(%rbp), %rdx
	movb	%al, 56(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
LBB224_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_backtrack_disable:           ## @mpc_input_backtrack_disable
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp675:
	.cfi_def_cfa_offset 16
Ltmp676:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp677:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	68(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 68(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_backtrack_enable:            ## @mpc_input_backtrack_enable
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp678:
	.cfi_def_cfa_offset 16
Ltmp679:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp680:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	68(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 68(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_mark:                        ## @mpc_input_mark
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp681:
	.cfi_def_cfa_offset 16
Ltmp682:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp683:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 68(%rdi)
	jge	LBB227_2
## BB#1:
	jmp	LBB227_7
LBB227_2:
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 76(%rax)
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	72(%rax), %ecx
	jle	LBB227_4
## BB#3:
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -16(%rbp)         ## 4-byte Spill
	cltd
	movl	-12(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movl	-16(%rbp), %edi         ## 4-byte Reload
	addl	%eax, %edi
	movq	-8(%rbp), %rcx
	movl	%edi, 72(%rcx)
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %r8
	movslq	72(%r8), %r8
	imulq	$24, %r8, %rsi
	movq	%rcx, %rdi
	callq	_realloc
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	_realloc
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
LBB227_4:
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	imulq	$24, %rax, %rax
	addq	80(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	%rsi, (%rax)
	movq	24(%rdx), %rsi
	movq	%rsi, 8(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movb	96(%rax), %dil
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	88(%rdx), %rdx
	movb	%dil, (%rdx,%rax)
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB227_7
## BB#5:
	movq	-8(%rbp), %rax
	cmpl	$1, 76(%rax)
	jne	LBB227_7
## BB#6:
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_calloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
LBB227_7:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_rewind:                      ## @mpc_input_rewind
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp684:
	.cfi_def_cfa_offset 16
Ltmp685:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp686:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 68(%rdi)
	jge	LBB228_2
## BB#1:
	jmp	LBB228_5
LBB228_2:
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	imulq	$24, %rcx, %rcx
	addq	80(%rsi), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 16(%rax)
	movq	8(%rcx), %rsi
	movq	%rsi, 24(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	76(%rax), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rcx
	movb	(%rcx,%rax), %dil
	movq	-8(%rbp), %rax
	movb	%dil, 96(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB228_4
## BB#3:
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	callq	_fseek
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB228_4:
	movq	-8(%rbp), %rdi
	callq	_mpc_input_unmark
LBB228_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_parse_dtor:                        ## @mpc_parse_dtor
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp687:
	.cfi_def_cfa_offset 16
Ltmp688:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp689:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_free@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	%rax, -16(%rbp)
	jne	LBB229_2
## BB#1:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_mpc_free
	jmp	LBB229_3
LBB229_2:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_mpc_export
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
LBB229_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_unmark:                      ## @mpc_input_unmark
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp690:
	.cfi_def_cfa_offset 16
Ltmp691:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp692:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 68(%rdi)
	jge	LBB230_2
## BB#1:
	jmp	LBB230_11
LBB230_2:
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %edx
	addl	$-1, %edx
	movl	%edx, 76(%rcx)
	movq	-8(%rbp), %rcx
	movl	72(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	76(%rcx), %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -16(%rbp)         ## 4-byte Spill
	cltd
	movl	-12(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movl	-16(%rbp), %eax         ## 4-byte Reload
	cmpl	%esi, %eax
	jle	LBB230_8
## BB#3:
	movq	-8(%rbp), %rax
	cmpl	$32, 72(%rax)
	jle	LBB230_8
## BB#4:
	movq	-8(%rbp), %rax
	cmpl	$32, 76(%rax)
	jle	LBB230_6
## BB#5:
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, -20(%rbp)         ## 4-byte Spill
	jmp	LBB230_7
LBB230_6:
	movl	$32, %eax
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB230_7
LBB230_7:
	movl	-20(%rbp), %eax         ## 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	72(%rdx), %rdx
	imulq	$24, %rdx, %rsi
	movq	%rcx, %rdi
	callq	_realloc
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	_realloc
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
LBB230_8:
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB230_11
## BB#9:
	movq	-8(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	LBB230_11
## BB#10:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
LBB230_11:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_realloc:                           ## @mpc_realloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp693:
	.cfi_def_cfa_offset 16
Ltmp694:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp695:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_mpc_mem_ptr
	cmpl	$0, %eax
	jne	LBB231_2
## BB#1:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_realloc
	movq	%rax, -8(%rbp)
	jmp	LBB231_5
LBB231_2:
	cmpq	$64, -32(%rbp)
	jbe	LBB231_4
## BB#3:
	movq	-32(%rbp), %rdi
	callq	_malloc
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	___memcpy_chk
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB231_5
LBB231_4:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB231_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_parse_fold:                        ## @mpc_parse_fold
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp696:
	.cfi_def_cfa_offset 16
Ltmp697:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp698:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	_mpcf_null(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	%rax, -24(%rbp)
	jne	LBB232_2
## BB#1:
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_mpcf_null
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_2:
	leaq	_mpcf_fst(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_4
## BB#3:
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_mpcf_fst
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_4:
	leaq	_mpcf_snd(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_6
## BB#5:
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_mpcf_snd
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_6:
	leaq	_mpcf_trd(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_8
## BB#7:
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_mpcf_trd
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_8:
	leaq	_mpcf_fst_free(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_10
## BB#9:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_mpcf_input_fst_free
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_10:
	leaq	_mpcf_snd_free(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_12
## BB#11:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_mpcf_input_snd_free
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_12:
	leaq	_mpcf_trd_free(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_14
## BB#13:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_mpcf_input_trd_free
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_14:
	leaq	_mpcf_strfold(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_16
## BB#15:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_mpcf_input_strfold
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_16:
	leaq	_mpcf_state_ast(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	LBB232_18
## BB#17:
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_mpcf_input_state_ast
	movq	%rax, -8(%rbp)
	jmp	LBB232_23
LBB232_18:
	movl	$0, -44(%rbp)
LBB232_19:                              ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB232_22
## BB#20:                               ##   in Loop: Header=BB232_19 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_export
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
## BB#21:                               ##   in Loop: Header=BB232_19 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB232_19
LBB232_22:
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
LBB232_23:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_free:                              ## @mpc_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp699:
	.cfi_def_cfa_offset 16
Ltmp700:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp701:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_mem_ptr
	cmpl	$0, %eax
	jne	LBB233_2
## BB#1:
	movq	-16(%rbp), %rdi
	callq	_free
	jmp	LBB233_3
LBB233_2:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$624, %rcx              ## imm = 0x270
	subq	%rcx, %rax
	shrq	$6, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, 112(%rcx,%rax)
LBB233_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_many1:                         ## @mpc_err_many1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp702:
	.cfi_def_cfa_offset 16
Ltmp703:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp704:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.104(%rip), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_err_repeat
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_count:                         ## @mpc_err_count
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp705:
	.cfi_def_cfa_offset 16
Ltmp706:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp707:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$10, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-52(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	addq	$4, %rsi
	addq	$1, %rsi
	callq	_mpc_malloc
	xorl	%esi, %esi
	leaq	L_.str.107(%rip), %rcx
	movq	$-1, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %r8d
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_mpc_err_repeat
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_mpc_free
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_getc:                        ## @mpc_input_getc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp708:
	.cfi_def_cfa_offset 16
Ltmp709:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp710:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	je	LBB236_1
	jmp	LBB236_11
LBB236_11:
	movl	-24(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	je	LBB236_2
	jmp	LBB236_12
LBB236_12:
	movl	-24(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	je	LBB236_3
	jmp	LBB236_9
LBB236_1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -1(%rbp)
	jmp	LBB236_10
LBB236_2:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_fgetc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	jmp	LBB236_10
LBB236_3:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB236_5
## BB#4:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_getc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	jmp	LBB236_10
LBB236_5:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	LBB236_8
## BB#6:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_buffer_in_range
	cmpl	$0, %eax
	je	LBB236_8
## BB#7:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_buffer_get
	movb	%al, -17(%rbp)
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
	jmp	LBB236_10
LBB236_8:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_getc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	jmp	LBB236_10
LBB236_9:
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
LBB236_10:
	movsbl	-1(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_terminated:                  ## @mpc_input_terminated
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp711:
	.cfi_def_cfa_offset 16
Ltmp712:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp713:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	LBB237_3
## BB#1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB237_3
## BB#2:
	movl	$1, -4(%rbp)
	jmp	LBB237_10
LBB237_3:
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB237_6
## BB#4:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB237_6
## BB#5:
	movl	$1, -4(%rbp)
	jmp	LBB237_10
LBB237_6:
	movq	-16(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB237_9
## BB#7:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB237_9
## BB#8:
	movl	$1, -4(%rbp)
	jmp	LBB237_10
LBB237_9:
	movl	$0, -4(%rbp)
LBB237_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_success:                     ## @mpc_input_success
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp714:
	.cfi_def_cfa_offset 16
Ltmp715:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp716:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$2, (%rdx)
	jne	LBB238_4
## BB#1:
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	LBB238_4
## BB#2:
	movq	-8(%rbp), %rdi
	callq	_mpc_input_buffer_in_range
	cmpl	$0, %eax
	jne	LBB238_4
## BB#3:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$2, %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_realloc
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_strlen
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movb	$0, 1(%rsi,%rax)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movb	%cl, -33(%rbp)          ## 1-byte Spill
	callq	_strlen
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movb	-33(%rbp), %cl          ## 1-byte Reload
	movb	%cl, (%rsi,%rax)
LBB238_4:
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 96(%rcx)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 32(%rcx)
	movsbl	-9(%rbp), %esi
	cmpl	$10, %esi
	jne	LBB238_6
## BB#5:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
LBB238_6:
	cmpq	$0, -24(%rbp)
	je	LBB238_8
## BB#7:
	movl	$2, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	_mpc_malloc
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movb	-9(%rbp), %cl
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, 1(%rax)
LBB238_8:
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_buffer_in_range:             ## @mpc_input_buffer_in_range
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp717:
	.cfi_def_cfa_offset 16
Ltmp718:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp719:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	addq	(%rdi), %rax
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	cmpq	%rax, %rdi
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_buffer_get:                  ## @mpc_input_buffer_get
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp720:
	.cfi_def_cfa_offset 16
Ltmp721:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp722:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	subq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movsbl	(%rax,%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_failure:                     ## @mpc_input_failure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp723:
	.cfi_def_cfa_offset 16
Ltmp724:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp725:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	testl	%esi, %esi
	movl	%esi, -16(%rbp)         ## 4-byte Spill
	je	LBB241_1
	jmp	LBB241_12
LBB241_12:
	movl	-16(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB241_2
	jmp	LBB241_13
LBB241_13:
	movl	-16(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	je	LBB241_3
	jmp	LBB241_10
LBB241_1:
	jmp	LBB241_11
LBB241_2:
	movq	$-1, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_fseek
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	jmp	LBB241_11
LBB241_3:
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB241_5
## BB#4:
	movsbl	-9(%rbp), %edi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	_ungetc
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB241_11
LBB241_5:
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	LBB241_8
## BB#6:
	movq	-8(%rbp), %rdi
	callq	_mpc_input_buffer_in_range
	cmpl	$0, %eax
	je	LBB241_8
## BB#7:
	jmp	LBB241_11
LBB241_8:
	movsbl	-9(%rbp), %edi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	_ungetc
	movl	%eax, -36(%rbp)         ## 4-byte Spill
## BB#9:
	jmp	LBB241_10
LBB241_10:
	jmp	LBB241_11
LBB241_11:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_input_peekc:                       ## @mpc_input_peekc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp726:
	.cfi_def_cfa_offset 16
Ltmp727:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp728:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	je	LBB242_1
	jmp	LBB242_17
LBB242_17:
	movl	-24(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	je	LBB242_2
	jmp	LBB242_18
LBB242_18:
	movl	-24(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	je	LBB242_5
	jmp	LBB242_15
LBB242_1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -1(%rbp)
	jmp	LBB242_16
LBB242_2:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_fgetc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB242_4
## BB#3:
	movb	$0, -1(%rbp)
	jmp	LBB242_16
LBB242_4:
	movq	$-1, %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_fseek
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	jmp	LBB242_16
LBB242_5:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB242_9
## BB#6:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_getc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB242_8
## BB#7:
	movb	$0, -1(%rbp)
	jmp	LBB242_16
LBB242_8:
	movsbl	-17(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	_ungetc
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB242_16
LBB242_9:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	LBB242_12
## BB#10:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_buffer_in_range
	cmpl	$0, %eax
	je	LBB242_12
## BB#11:
	movq	-16(%rbp), %rdi
	callq	_mpc_input_buffer_get
	movb	%al, -1(%rbp)
	jmp	LBB242_16
LBB242_12:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_getc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB242_14
## BB#13:
	movb	$0, -1(%rbp)
	jmp	LBB242_16
LBB242_14:
	movsbl	-17(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	_ungetc
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB242_16
LBB242_15:
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
LBB242_16:
	movsbl	-1(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_free:                       ## @mpcf_input_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp729:
	.cfi_def_cfa_offset 16
Ltmp730:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp731:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_free
	xorl	%eax, %eax
                                        ## 
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_str_ast:                    ## @mpcf_input_str_ast
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp732:
	.cfi_def_cfa_offset 16
Ltmp733:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp734:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.81(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_mpc_ast_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_mpc_free
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_mem_ptr:                           ## @mpc_mem_ptr
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp735:
	.cfi_def_cfa_offset 16
Ltmp736:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp737:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	addq	$624, %rdi              ## imm = 0x270
	cmpq	%rdi, %rsi
	movb	%cl, -17(%rbp)          ## 1-byte Spill
	jb	LBB245_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$624, %rcx              ## imm = 0x270
	addq	$32768, %rcx            ## imm = 0x8000
	cmpq	%rcx, %rax
	setb	%dl
	movb	%dl, -17(%rbp)          ## 1-byte Spill
LBB245_2:
	movb	-17(%rbp), %al          ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_fst_free:                   ## @mpcf_input_fst_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp738:
	.cfi_def_cfa_offset 16
Ltmp739:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp740:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_mpcf_input_nth_free
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_snd_free:                   ## @mpcf_input_snd_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp741:
	.cfi_def_cfa_offset 16
Ltmp742:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp743:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_mpcf_input_nth_free
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_trd_free:                   ## @mpcf_input_trd_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp744:
	.cfi_def_cfa_offset 16
Ltmp745:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp746:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_mpcf_input_nth_free
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_strfold:                    ## @mpcf_input_strfold
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp747:
	.cfi_def_cfa_offset 16
Ltmp748:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp749:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jne	LBB249_2
## BB#1:
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	_mpc_calloc
	movq	%rax, -8(%rbp)
	jmp	LBB249_11
LBB249_2:
	movl	$0, -36(%rbp)
LBB249_3:                               ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB249_6
## BB#4:                                ##   in Loop: Header=BB249_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_strlen
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
## BB#5:                                ##   in Loop: Header=BB249_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB249_3
LBB249_6:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_mpc_realloc
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, -36(%rbp)
LBB249_7:                               ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB249_10
## BB#8:                                ##   in Loop: Header=BB249_7 Depth=1
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	___strcat_chk
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_mpc_free
## BB#9:                                ##   in Loop: Header=BB249_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB249_7
LBB249_10:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
LBB249_11:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_state_ast:                  ## @mpcf_input_state_ast
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp750:
	.cfi_def_cfa_offset 16
Ltmp751:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp752:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	callq	_mpc_ast_state
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	_mpc_free
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpcf_input_nth_free:                   ## @mpcf_input_nth_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp753:
	.cfi_def_cfa_offset 16
Ltmp754:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp755:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB251_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB251_6
## BB#2:                                ##   in Loop: Header=BB251_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	LBB251_4
## BB#3:                                ##   in Loop: Header=BB251_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_free
LBB251_4:                               ##   in Loop: Header=BB251_1 Depth=1
	jmp	LBB251_5
LBB251_5:                               ##   in Loop: Header=BB251_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB251_1
LBB251_6:
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_calloc:                            ## @mpc_calloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp756:
	.cfi_def_cfa_offset 16
Ltmp757:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp758:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	imulq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	callq	_mpc_malloc
	xorl	%esi, %esi
	movq	$-1, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	___memset_chk
	movq	-32(%rbp), %rcx
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_repeat:                        ## @mpc_err_repeat
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp759:
	.cfi_def_cfa_offset 16
Ltmp760:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp761:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB253_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB253_23
LBB253_2:
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	LBB253_4
## BB#3:
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	_mpc_calloc
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	24(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_mpc_realloc
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB253_23
LBB253_4:
	movq	-24(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	LBB253_6
## BB#5:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	___strcat_chk
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx), %rsi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_mpc_free
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB253_23
LBB253_6:
	movq	-24(%rbp), %rax
	cmpl	$1, 24(%rax)
	jle	LBB253_20
## BB#7:
	movq	-32(%rbp), %rdi
	callq	_strlen
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
LBB253_8:                               ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jge	LBB253_11
## BB#9:                                ##   in Loop: Header=BB253_8 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_strlen
	addq	$2, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
## BB#10:                               ##   in Loop: Header=BB253_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB253_8
LBB253_11:
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	_strlen
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	_strlen
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	___strcpy_chk
	movl	$0, -36(%rbp)
	movq	%rax, -104(%rbp)        ## 8-byte Spill
LBB253_12:                              ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jge	LBB253_15
## BB#13:                               ##   in Loop: Header=BB253_12 Depth=1
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	___strcat_chk
	leaq	L_.str.105(%rip), %rsi
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	%rax, -120(%rbp)        ## 8-byte Spill
## BB#14:                               ##   in Loop: Header=BB253_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB253_12
LBB253_15:
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rax,8), %rsi
	callq	___strcat_chk
	leaq	L_.str.106(%rip), %rsi
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	24(%rsi), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-24(%rbp), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movl	$0, -36(%rbp)
	movq	%rax, -144(%rbp)        ## 8-byte Spill
LBB253_16:                              ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB253_19
## BB#17:                               ##   in Loop: Header=BB253_16 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_free
## BB#18:                               ##   in Loop: Header=BB253_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB253_16
LBB253_19:
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	24(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_mpc_realloc
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB253_23
LBB253_20:
	jmp	LBB253_21
LBB253_21:
	jmp	LBB253_22
LBB253_22:
	movq	$0, -8(%rbp)
LBB253_23:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_or:                            ## @mpc_err_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp762:
	.cfi_def_cfa_offset 16
Ltmp763:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp764:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$-1, -40(%rbp)
	movl	$0, -32(%rbp)
LBB254_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB254_6
## BB#2:                                ##   in Loop: Header=BB254_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB254_4
## BB#3:                                ##   in Loop: Header=BB254_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB254_4:                               ##   in Loop: Header=BB254_1 Depth=1
	jmp	LBB254_5
LBB254_5:                               ##   in Loop: Header=BB254_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB254_1
LBB254_6:
	cmpl	$-1, -40(%rbp)
	jne	LBB254_8
## BB#7:
	movq	$0, -8(%rbp)
	jmp	LBB254_39
LBB254_8:
	movl	$64, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	_mpc_malloc
	leaq	-72(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	_mpc_state_invalid
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rsi)
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rsi)
	movq	-48(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rdi
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	32(%rax), %rax
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	32(%rax), %rsi
	callq	___strcpy_chk
	movl	$0, -32(%rbp)
	movq	%rax, -96(%rbp)         ## 8-byte Spill
LBB254_9:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB254_16
## BB#10:                               ##   in Loop: Header=BB254_9 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB254_12
## BB#11:                               ##   in Loop: Header=BB254_9 Depth=1
	jmp	LBB254_15
LBB254_12:                              ##   in Loop: Header=BB254_9 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	(%rcx), %rax
	jle	LBB254_14
## BB#13:                               ##   in Loop: Header=BB254_9 Depth=1
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
LBB254_14:                              ##   in Loop: Header=BB254_9 Depth=1
	jmp	LBB254_15
LBB254_15:                              ##   in Loop: Header=BB254_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB254_9
LBB254_16:
	movl	$0, -32(%rbp)
LBB254_17:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB254_25 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB254_32
## BB#18:                               ##   in Loop: Header=BB254_17 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB254_20
## BB#19:                               ##   in Loop: Header=BB254_17 Depth=1
	jmp	LBB254_31
LBB254_20:                              ##   in Loop: Header=BB254_17 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB254_22
## BB#21:                               ##   in Loop: Header=BB254_17 Depth=1
	jmp	LBB254_31
LBB254_22:                              ##   in Loop: Header=BB254_17 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, 40(%rax)
	je	LBB254_24
## BB#23:
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	40(%rax), %rax
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-48(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	40(%rax), %rsi
	callq	___strcpy_chk
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	jmp	LBB254_32
LBB254_24:                              ##   in Loop: Header=BB254_17 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	56(%rax), %dl
	movq	-48(%rbp), %rax
	movb	%dl, 56(%rax)
	movl	$0, -36(%rbp)
LBB254_25:                              ##   Parent Loop BB254_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB254_30
## BB#26:                               ##   in Loop: Header=BB254_25 Depth=2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movslq	-36(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_err_contains_expected
	cmpl	$0, %eax
	jne	LBB254_28
## BB#27:                               ##   in Loop: Header=BB254_25 Depth=2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movslq	-36(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	_mpc_err_add_expected
LBB254_28:                              ##   in Loop: Header=BB254_25 Depth=2
	jmp	LBB254_29
LBB254_29:                              ##   in Loop: Header=BB254_25 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB254_25
LBB254_30:                              ##   in Loop: Header=BB254_17 Depth=1
	jmp	LBB254_31
LBB254_31:                              ##   in Loop: Header=BB254_17 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB254_17
LBB254_32:
	movl	$0, -32(%rbp)
LBB254_33:                              ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB254_38
## BB#34:                               ##   in Loop: Header=BB254_33 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB254_36
## BB#35:                               ##   in Loop: Header=BB254_33 Depth=1
	jmp	LBB254_37
LBB254_36:                              ##   in Loop: Header=BB254_33 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_mpc_err_delete_internal
LBB254_37:                              ##   in Loop: Header=BB254_33 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB254_33
LBB254_38:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB254_39:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_contains_expected:             ## @mpc_err_contains_expected
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp765:
	.cfi_def_cfa_offset 16
Ltmp766:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp767:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
LBB255_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB255_6
## BB#2:                                ##   in Loop: Header=BB255_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-32(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB255_4
## BB#3:
	movl	$1, -4(%rbp)
	jmp	LBB255_7
LBB255_4:                               ##   in Loop: Header=BB255_1 Depth=1
	jmp	LBB255_5
LBB255_5:                               ##   in Loop: Header=BB255_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB255_1
LBB255_6:
	movl	$0, -4(%rbp)
LBB255_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_err_add_expected:                  ## @mpc_err_add_expected
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp768:
	.cfi_def_cfa_offset 16
Ltmp769:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp770:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %eax
	addl	$1, %eax
	movl	%eax, 24(%rdx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movslq	24(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	callq	_mpc_realloc
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	addq	$1, %rax
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_mpc_malloc
	movq	$-1, %rdx
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rax,8), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_undefine_or:                       ## @mpc_undefine_or
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp771:
	.cfi_def_cfa_offset 16
Ltmp772:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp773:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB257_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB257_4
## BB#2:                                ##   in Loop: Header=BB257_1 Depth=1
	xorl	%esi, %esi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_undefine_unretained
## BB#3:                                ##   in Loop: Header=BB257_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB257_1
LBB257_4:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_undefine_and:                      ## @mpc_undefine_and
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp774:
	.cfi_def_cfa_offset 16
Ltmp775:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp776:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB258_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	LBB258_4
## BB#2:                                ##   in Loop: Header=BB258_1 Depth=1
	xorl	%esi, %esi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_mpc_undefine_unretained
## BB#3:                                ##   in Loop: Header=BB258_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB258_1
LBB258_4:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpc_re_escape_char:                    ## @mpc_re_escape_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp777:
	.cfi_def_cfa_offset 16
Ltmp778:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp779:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %edi
	addl	$-65, %edi
	movl	%edi, %ecx
	subl	$54, %edi
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	movl	%edi, -28(%rbp)         ## 4-byte Spill
	ja	LBB259_17
## BB#19:
	leaq	LJTI259_0(%rip), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB259_1:
	movl	$7, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_2:
	movl	$12, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_3:
	movl	$10, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_4:
	movl	$13, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_5:
	movl	$9, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_6:
	movl	$11, %edi
	callq	_mpc_char
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_7:
	callq	_mpc_boundary
	leaq	_mpcf_ctor_str(%rip), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_mpc_lift
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_8:
	callq	_mpc_boundary
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	_mpcf_ctor_str(%rip), %rdx
	movq	%rax, %rdi
	callq	_mpc_not_lift
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_9:
	callq	_mpc_soi
	leaq	_mpcf_ctor_str(%rip), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mpc_lift
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_10:
	callq	_mpc_eoi
	leaq	_mpcf_ctor_str(%rip), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_mpc_lift
	movl	$2, %edi
	leaq	_mpcf_snd(%rip), %rsi
	movq	_free@GOTPCREL(%rip), %r8
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_mpc_and
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_11:
	callq	_mpc_digit
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_12:
	callq	_mpc_digit
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	_mpcf_ctor_str(%rip), %rdx
	movq	%rax, %rdi
	callq	_mpc_not_lift
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_13:
	callq	_mpc_whitespace
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_14:
	callq	_mpc_whitespace
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	_mpcf_ctor_str(%rip), %rdx
	movq	%rax, %rdi
	callq	_mpc_not_lift
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_15:
	callq	_mpc_alphanum
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_16:
	callq	_mpc_alphanum
	movq	_free@GOTPCREL(%rip), %rsi
	leaq	_mpcf_ctor_str(%rip), %rdx
	movq	%rax, %rdi
	callq	_mpc_not_lift
	movq	%rax, -8(%rbp)
	jmp	LBB259_18
LBB259_17:
	movq	$0, -8(%rbp)
LBB259_18:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L259_0_set_9 = LBB259_9-LJTI259_0
L259_0_set_8 = LBB259_8-LJTI259_0
L259_0_set_17 = LBB259_17-LJTI259_0
L259_0_set_12 = LBB259_12-LJTI259_0
L259_0_set_14 = LBB259_14-LJTI259_0
L259_0_set_16 = LBB259_16-LJTI259_0
L259_0_set_10 = LBB259_10-LJTI259_0
L259_0_set_1 = LBB259_1-LJTI259_0
L259_0_set_7 = LBB259_7-LJTI259_0
L259_0_set_11 = LBB259_11-LJTI259_0
L259_0_set_2 = LBB259_2-LJTI259_0
L259_0_set_3 = LBB259_3-LJTI259_0
L259_0_set_4 = LBB259_4-LJTI259_0
L259_0_set_13 = LBB259_13-LJTI259_0
L259_0_set_5 = LBB259_5-LJTI259_0
L259_0_set_6 = LBB259_6-LJTI259_0
L259_0_set_15 = LBB259_15-LJTI259_0
LJTI259_0:
	.long	L259_0_set_9
	.long	L259_0_set_8
	.long	L259_0_set_17
	.long	L259_0_set_12
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_14
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_16
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_10
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_1
	.long	L259_0_set_7
	.long	L259_0_set_17
	.long	L259_0_set_11
	.long	L259_0_set_17
	.long	L259_0_set_2
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_3
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_17
	.long	L259_0_set_4
	.long	L259_0_set_13
	.long	L259_0_set_5
	.long	L259_0_set_17
	.long	L259_0_set_6
	.long	L259_0_set_15

	.align	4, 0x90
_mpc_re_range_escape_char:              ## @mpc_re_range_escape_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp780:
	.cfi_def_cfa_offset 16
Ltmp781:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp782:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %edi
	addl	$-45, %edi
	movl	%edi, %ecx
	subl	$74, %edi
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	movl	%edi, -28(%rbp)         ## 4-byte Spill
	ja	LBB260_12
## BB#14:
	leaq	LJTI260_0(%rip), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB260_1:
	leaq	L_.str.77(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_2:
	leaq	L_.str.110(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_3:
	leaq	L_.str.111(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_4:
	leaq	L_.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_5:
	leaq	L_.str.112(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_6:
	leaq	L_.str.113(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_7:
	leaq	L_.str.114(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_8:
	leaq	L_.str.115(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_9:
	leaq	L_.str.28(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_10:
	leaq	L_.str.23(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_11:
	leaq	L_.str.108(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB260_13
LBB260_12:
	movq	$0, -8(%rbp)
LBB260_13:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L260_0_set_1 = LBB260_1-LJTI260_0
L260_0_set_12 = LBB260_12-LJTI260_0
L260_0_set_2 = LBB260_2-LJTI260_0
L260_0_set_8 = LBB260_8-LJTI260_0
L260_0_set_9 = LBB260_9-LJTI260_0
L260_0_set_3 = LBB260_3-LJTI260_0
L260_0_set_4 = LBB260_4-LJTI260_0
L260_0_set_5 = LBB260_5-LJTI260_0
L260_0_set_10 = LBB260_10-LJTI260_0
L260_0_set_6 = LBB260_6-LJTI260_0
L260_0_set_7 = LBB260_7-LJTI260_0
L260_0_set_11 = LBB260_11-LJTI260_0
LJTI260_0:
	.long	L260_0_set_1
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_2
	.long	L260_0_set_8
	.long	L260_0_set_12
	.long	L260_0_set_9
	.long	L260_0_set_12
	.long	L260_0_set_3
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_4
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_12
	.long	L260_0_set_5
	.long	L260_0_set_10
	.long	L260_0_set_6
	.long	L260_0_set_12
	.long	L260_0_set_7
	.long	L260_0_set_11

	.align	4, 0x90
_mpca_grammar_find_parser:              ## @mpca_grammar_find_parser
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp783:
	.cfi_def_cfa_offset 16
Ltmp784:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp785:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_is_number
	cmpl	$0, %eax
	je	LBB261_10
## BB#1:
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	movq	-16(%rbp), %rdi
	callq	_strtol
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
LBB261_2:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jg	LBB261_9
## BB#3:                                ##   in Loop: Header=BB261_2 Depth=1
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	8(%rdx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movl	%ecx, -60(%rbp)         ## 4-byte Spill
	ja	LBB261_5
## BB#4:                                ##   in Loop: Header=BB261_2 Depth=1
	movl	-60(%rbp), %eax         ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	jmp	LBB261_6
LBB261_5:                               ##   in Loop: Header=BB261_2 Depth=1
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
LBB261_6:                               ##   in Loop: Header=BB261_2 Depth=1
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB261_8
## BB#7:
	leaq	L_.str.149(%rip), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_8:                               ##   in Loop: Header=BB261_2 Depth=1
	jmp	LBB261_2
LBB261_9:
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_10:
	movl	$0, -28(%rbp)
LBB261_11:                              ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB261_19
## BB#12:                               ##   in Loop: Header=BB261_11 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB261_14
## BB#13:
	leaq	L_.str.150(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_14:                              ##   in Loop: Header=BB261_11 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB261_17
## BB#15:                               ##   in Loop: Header=BB261_11 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB261_17
## BB#16:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_17:                              ##   in Loop: Header=BB261_11 Depth=1
	jmp	LBB261_18
LBB261_18:                              ##   in Loop: Header=BB261_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB261_11
LBB261_19:
	jmp	LBB261_20
LBB261_20:                              ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movl	%ecx, -84(%rbp)         ## 4-byte Spill
	ja	LBB261_22
## BB#21:                               ##   in Loop: Header=BB261_20 Depth=1
	movl	-84(%rbp), %eax         ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx         ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -96(%rbp)         ## 8-byte Spill
	jmp	LBB261_23
LBB261_22:                              ##   in Loop: Header=BB261_20 Depth=1
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
LBB261_23:                              ##   in Loop: Header=BB261_20 Depth=1
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	8(%rdx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, (%rsi,%rdx,8)
	cmpq	$0, -40(%rbp)
	je	LBB261_25
## BB#24:                               ##   in Loop: Header=BB261_20 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB261_26
LBB261_25:
	leaq	L_.str.150(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_mpc_failf
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_26:                              ##   in Loop: Header=BB261_20 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB261_29
## BB#27:                               ##   in Loop: Header=BB261_20 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB261_29
## BB#28:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB261_30
LBB261_29:                              ##   in Loop: Header=BB261_20 Depth=1
	jmp	LBB261_20
LBB261_30:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_is_number:                             ## @is_number
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp786:
	.cfi_def_cfa_offset 16
Ltmp787:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp788:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
LBB262_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	cmpq	%rax, %rdi
	jae	LBB262_6
## BB#2:                                ##   in Loop: Header=BB262_1 Depth=1
	leaq	L_.str.28(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB262_4
## BB#3:
	movl	$0, -4(%rbp)
	jmp	LBB262_7
LBB262_4:                               ##   in Loop: Header=BB262_1 Depth=1
	jmp	LBB262_5
LBB262_5:                               ##   in Loop: Header=BB262_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB262_1
LBB262_6:
	movl	$1, -4(%rbp)
LBB262_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpca_stmt_fold:                        ## @mpca_stmt_fold
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp789:
	.cfi_def_cfa_offset 16
Ltmp790:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp791:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rsi
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
LBB263_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB263_4
## BB#2:                                ##   in Loop: Header=BB263_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
## BB#3:                                ##   in Loop: Header=BB263_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB263_1
LBB263_4:
	movslq	-4(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpca_stmt_list_delete:                 ## @mpca_stmt_list_delete
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp792:
	.cfi_def_cfa_offset 16
Ltmp793:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp794:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
LBB264_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB264_3
## BB#2:                                ##   in Loop: Header=BB264_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	_mpc_soft_delete
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB264_1
LBB264_3:
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpca_stmt_list_apply_to:               ## @mpca_stmt_list_apply_to
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp795:
	.cfi_def_cfa_offset 16
Ltmp796:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp797:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)
LBB265_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB265_7
## BB#2:                                ##   in Loop: Header=BB265_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	_mpca_grammar_find_parser
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	LBB265_4
## BB#3:                                ##   in Loop: Header=BB265_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_mpc_predictive
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
LBB265_4:                               ##   in Loop: Header=BB265_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB265_6
## BB#5:                                ##   in Loop: Header=BB265_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_mpc_expect
	movq	-32(%rbp), %rsi
	movq	%rax, 16(%rsi)
LBB265_6:                               ##   in Loop: Header=BB265_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_mpc_optimise
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	callq	_mpc_define
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB265_1
LBB265_7:
	movq	-8(%rbp), %rdi
	callq	_free
	xorl	%eax, %eax
                                        ## 
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_mpca_stmt_afold:                       ## @mpca_stmt_afold
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp798:
	.cfi_def_cfa_offset 16
Ltmp799:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp800:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s"

L_.str.1:                               ## @.str.1
	.asciz	"%s: error: %s\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s:%i:%i: error: expected "

L_.str.3:                               ## @.str.3
	.asciz	"ERROR: NOTHING EXPECTED"

L_.str.4:                               ## @.str.4
	.asciz	"%s, "

L_.str.5:                               ## @.str.5
	.asciz	"%s or %s"

L_.str.6:                               ## @.str.6
	.asciz	" at "

L_.str.7:                               ## @.str.7
	.asciz	"\n"

L_.str.8:                               ## @.str.8
	.asciz	"Unknown Error"

L_.str.9:                               ## @.str.9
	.asciz	"rb"

L_.str.10:                              ## @.str.10
	.asciz	"Unable to open file!"

L_.str.11:                              ## @.str.11
	.asciz	"Attempt to assign to Unretained Parser!"

L_.str.12:                              ## @.str.12
	.asciz	"anchor"

L_.str.13:                              ## @.str.13
	.asciz	"any character"

L_.str.14:                              ## @.str.14
	.asciz	"'%c'"

L_.str.15:                              ## @.str.15
	.asciz	"character between '%c' and '%c'"

L_.str.16:                              ## @.str.16
	.asciz	"one of '%s'"

L_.str.17:                              ## @.str.17
	.asciz	"none of '%s'"

L_.str.18:                              ## @.str.18
	.asciz	"character satisfying function %p"

L_.str.19:                              ## @.str.19
	.asciz	"\"%s\""

L_.str.20:                              ## @.str.20
	.asciz	"start of input"

L_.str.21:                              ## @.str.21
	.asciz	"end of input"

L_.str.22:                              ## @.str.22
	.asciz	"boundary"

L_.str.23:                              ## @.str.23
	.asciz	" \f\n\r\t\013"

L_.str.24:                              ## @.str.24
	.asciz	"whitespace"

L_.str.25:                              ## @.str.25
	.asciz	"spaces"

L_.str.26:                              ## @.str.26
	.asciz	"newline"

L_.str.27:                              ## @.str.27
	.asciz	"tab"

L_.str.28:                              ## @.str.28
	.asciz	"0123456789"

L_.str.29:                              ## @.str.29
	.asciz	"digit"

L_.str.30:                              ## @.str.30
	.asciz	"0123456789ABCDEFabcdef"

L_.str.31:                              ## @.str.31
	.asciz	"hex digit"

L_.str.32:                              ## @.str.32
	.asciz	"01234567"

L_.str.33:                              ## @.str.33
	.asciz	"oct digit"

L_.str.34:                              ## @.str.34
	.asciz	"digits"

L_.str.35:                              ## @.str.35
	.asciz	"hex digits"

L_.str.36:                              ## @.str.36
	.asciz	"oct digits"

L_.str.37:                              ## @.str.37
	.asciz	"abcdefghijklmnopqrstuvwxyz"

L_.str.38:                              ## @.str.38
	.asciz	"lowercase letter"

L_.str.39:                              ## @.str.39
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"

L_.str.40:                              ## @.str.40
	.asciz	"uppercase letter"

L_.str.41:                              ## @.str.41
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

L_.str.42:                              ## @.str.42
	.asciz	"letter"

L_.str.43:                              ## @.str.43
	.asciz	"underscore"

L_.str.44:                              ## @.str.44
	.asciz	"alphanumeric"

L_.str.45:                              ## @.str.45
	.asciz	"integer"

L_.str.46:                              ## @.str.46
	.asciz	"hexadecimal"

L_.str.47:                              ## @.str.47
	.asciz	"octadecimal"

L_.str.48:                              ## @.str.48
	.asciz	"number"

L_.str.49:                              ## @.str.49
	.asciz	"+-"

L_.str.50:                              ## @.str.50
	.asciz	"eE"

L_.str.51:                              ## @.str.51
	.asciz	"real"

L_.str.52:                              ## @.str.52
	.asciz	"float"

L_.str.53:                              ## @.str.53
	.asciz	"'"

L_.str.54:                              ## @.str.54
	.asciz	"char"

L_.str.55:                              ## @.str.55
	.asciz	"\""

L_.str.56:                              ## @.str.56
	.asciz	"string"

L_.str.57:                              ## @.str.57
	.asciz	"/"

L_.str.58:                              ## @.str.58
	.asciz	"regex"

L_.str.59:                              ## @.str.59
	.asciz	"("

L_.str.60:                              ## @.str.60
	.asciz	")"

L_.str.61:                              ## @.str.61
	.asciz	"<"

L_.str.62:                              ## @.str.62
	.asciz	">"

L_.str.63:                              ## @.str.63
	.asciz	"{"

L_.str.64:                              ## @.str.64
	.asciz	"}"

L_.str.65:                              ## @.str.65
	.asciz	"["

L_.str.66:                              ## @.str.66
	.asciz	"]"

L_.str.67:                              ## @.str.67
	.asciz	"term"

L_.str.68:                              ## @.str.68
	.asciz	"factor"

L_.str.69:                              ## @.str.69
	.asciz	"base"

L_.str.70:                              ## @.str.70
	.asciz	"range"

L_.str.71:                              ## @.str.71
	.asciz	")|"

L_.str.72:                              ## @.str.72
	.asciz	"<mpc_re_compiler>"

L_.str.73:                              ## @.str.73
	.asciz	"Invalid Regex: %s"

	.section	__TEXT,__const
_mpc_escape_input_c:                    ## @mpc_escape_input_c
	.asciz	"\007\b\f\n\r\t\013\\'\""

	.section	__DATA,__data
	.align	4                       ## @mpc_escape_output_c
_mpc_escape_output_c:
	.quad	L_.str.116
	.quad	L_.str.117
	.quad	L_.str.118
	.quad	L_.str.119
	.quad	L_.str.120
	.quad	L_.str.121
	.quad	L_.str.122
	.quad	L_.str.123
	.quad	L_.str.124
	.quad	L_.str.125
	.quad	L_.str.126
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_re:               ## @mpc_escape_input_raw_re
	.byte	47

	.section	__DATA,__data
	.align	4                       ## @mpc_escape_output_raw_re
_mpc_escape_output_raw_re:
	.quad	L_.str.127
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_cstr:             ## @mpc_escape_input_raw_cstr
	.byte	34

	.section	__DATA,__data
	.align	4                       ## @mpc_escape_output_raw_cstr
_mpc_escape_output_raw_cstr:
	.quad	L_.str.125
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_cchar:            ## @mpc_escape_input_raw_cchar
	.byte	39

	.section	__DATA,__data
	.align	4                       ## @mpc_escape_output_raw_cchar
_mpc_escape_output_raw_cchar:
	.quad	L_.str.124
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_.str.74:                              ## @.str.74
	.asciz	"*"

L_.str.75:                              ## @.str.75
	.asciz	"%"

L_.str.76:                              ## @.str.76
	.asciz	"+"

L_.str.77:                              ## @.str.77
	.asciz	"-"

L_.str.78:                              ## @.str.78
	.asciz	"<test>"

L_.str.79:                              ## @.str.79
	.asciz	"Got "

L_.str.80:                              ## @.str.80
	.asciz	"Expected "

L_.str.81:                              ## @.str.81
	.space	1

L_.str.82:                              ## @.str.82
	.asciz	"|"

L_.str.83:                              ## @.str.83
	.asciz	"grammar_total"

L_.str.84:                              ## @.str.84
	.asciz	"grammar"

L_.str.85:                              ## @.str.85
	.asciz	"?"

L_.str.86:                              ## @.str.86
	.asciz	"!"

L_.str.87:                              ## @.str.87
	.asciz	"<mpc_grammar_compiler>"

L_.str.88:                              ## @.str.88
	.asciz	"Invalid Grammar: %s"

L_.str.89:                              ## @.str.89
	.asciz	"<mpca_lang_file>"

L_.str.90:                              ## @.str.90
	.asciz	"<mpca_lang_pipe>"

L_.str.91:                              ## @.str.91
	.asciz	"<mpca_lang>"

L_.str.92:                              ## @.str.92
	.asciz	"Stats\n"

L_.str.93:                              ## @.str.93
	.asciz	"=====\n"

L_.str.94:                              ## @.str.94
	.asciz	"Node Count: %i\n"

.zerofill __DATA,__bss,_char_unescape_buffer,4,0 ## @char_unescape_buffer
L_.str.95:                              ## @.str.95
	.asciz	"bell"

L_.str.96:                              ## @.str.96
	.asciz	"backspace"

L_.str.97:                              ## @.str.97
	.asciz	"formfeed"

L_.str.98:                              ## @.str.98
	.asciz	"carriage return"

L_.str.99:                              ## @.str.99
	.asciz	"vertical tab"

L_.str.100:                             ## @.str.100
	.asciz	"space"

L_.str.101:                             ## @.str.101
	.asciz	"Parser Undefined!"

L_.str.102:                             ## @.str.102
	.asciz	"opposite"

L_.str.103:                             ## @.str.103
	.asciz	"Unknown Parser Type Id!"

L_.str.104:                             ## @.str.104
	.asciz	"one or more of "

L_.str.105:                             ## @.str.105
	.asciz	", "

L_.str.106:                             ## @.str.106
	.asciz	" or "

L_.str.107:                             ## @.str.107
	.asciz	"%i of "

L_.str.108:                             ## @.str.108
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"

L_.str.109:                             ## @.str.109
	.asciz	"Invalid Regex Range Expression"

L_.str.110:                             ## @.str.110
	.asciz	"\007"

L_.str.111:                             ## @.str.111
	.asciz	"\f"

L_.str.112:                             ## @.str.112
	.asciz	"\r"

L_.str.113:                             ## @.str.113
	.asciz	"\t"

L_.str.114:                             ## @.str.114
	.asciz	"\013"

L_.str.115:                             ## @.str.115
	.asciz	"\b"

L_.str.116:                             ## @.str.116
	.asciz	"\\a"

L_.str.117:                             ## @.str.117
	.asciz	"\\b"

L_.str.118:                             ## @.str.118
	.asciz	"\\f"

L_.str.119:                             ## @.str.119
	.asciz	"\\n"

L_.str.120:                             ## @.str.120
	.asciz	"\\r"

L_.str.121:                             ## @.str.121
	.asciz	"\\t"

L_.str.122:                             ## @.str.122
	.asciz	"\\v"

L_.str.123:                             ## @.str.123
	.asciz	"\\\\"

L_.str.124:                             ## @.str.124
	.asciz	"\\'"

L_.str.125:                             ## @.str.125
	.asciz	"\\\""

L_.str.126:                             ## @.str.126
	.asciz	"\\0"

L_.str.127:                             ## @.str.127
	.asciz	"\\/"

L_.str.128:                             ## @.str.128
	.asciz	"<%s>"

L_.str.129:                             ## @.str.129
	.asciz	"<anon>"

L_.str.130:                             ## @.str.130
	.asciz	"<?>"

L_.str.131:                             ## @.str.131
	.asciz	"<:>"

L_.str.132:                             ## @.str.132
	.asciz	"<!>"

L_.str.133:                             ## @.str.133
	.asciz	"<#>"

L_.str.134:                             ## @.str.134
	.asciz	"<S>"

L_.str.135:                             ## @.str.135
	.asciz	"<@>"

L_.str.136:                             ## @.str.136
	.asciz	"<.>"

L_.str.137:                             ## @.str.137
	.asciz	"<f>"

L_.str.138:                             ## @.str.138
	.asciz	"'%s'"

L_.str.139:                             ## @.str.139
	.asciz	"[%s-%s]"

L_.str.140:                             ## @.str.140
	.asciz	"[%s]"

L_.str.141:                             ## @.str.141
	.asciz	"[^%s]"

L_.str.142:                             ## @.str.142
	.asciz	"{%i}"

L_.str.143:                             ## @.str.143
	.asciz	" | "

L_.str.144:                             ## @.str.144
	.asciz	" "

L_.str.145:                             ## @.str.145
	.asciz	"NULL\n"

L_.str.146:                             ## @.str.146
	.asciz	"  "

L_.str.147:                             ## @.str.147
	.asciz	"%s:%lu:%lu '%s'\n"

L_.str.148:                             ## @.str.148
	.asciz	"%s \n"

L_.str.149:                             ## @.str.149
	.asciz	"No Parser in position %i! Only supplied %i Parsers!"

L_.str.150:                             ## @.str.150
	.asciz	"Unknown Parser '%s'!"

L_.str.151:                             ## @.str.151
	.asciz	"lang"

L_.str.152:                             ## @.str.152
	.asciz	"stmt"

L_.str.153:                             ## @.str.153
	.asciz	":"

L_.str.154:                             ## @.str.154
	.asciz	";"


.subsections_via_symbols
