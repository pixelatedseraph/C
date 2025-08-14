	.file	"start.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"The addresses are %p (casted from void)\n, %p (actual pointer to int)\n, %p(no casting done)\n"
	.align 8
.LC1:
	.string	"the address is : %p (casted to char from void )\n"
	.align 8
.LC2:
	.string	"the address is : %p (casted to char from int)\n"
	.align 8
.LC3:
	.string	"the address is : %p (casted to double from int)\n"
	.align 8
.LC4:
	.string	"the address is : %p (casted to void from int)\n"
	.align 8
.LC5:
	.string	"the address of pointer itself : %p \n"
.LC6:
	.string	"the value is %d \n"
.LC7:
	.string	"the value is %c \n"
.LC8:
	.string	"the value is %f \n"
	.text
	.globl	pbasics
	.type	pbasics, @function
pbasics:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$12, -68(%rbp)
	leaq	-68(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pbasics, .-pbasics
	.section	.rodata
.LC9:
	.string	"the address at byte %d is %x\n"
	.text
	.globl	pcast
	.type	pcast, @function
pcast:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$190, -100(%rbp)
	leaq	-100(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$200, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$10, -76(%rbp)
	movl	$19, -92(%rbp)
	leaq	-92(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$20, (%rax)
	movl	$13, -88(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$10, -84(%rbp)
	leaq	-84(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L4
.L5:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-80(%rbp), %eax
	leaq	.LC9(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -80(%rbp)
.L4:
	movl	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L5
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pcast, .-pcast
	.section	.rodata
.LC10:
	.string	"%d "
.LC11:
	.string	"%d\n"
	.text
	.globl	parithmetic
	.type	parithmetic, @function
parithmetic:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$5, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$7, -40(%rbp)
	movl	$8, -36(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$8, -108(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L8
.L9:
	movq	-104(%rbp), %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -120(%rbp)
.L8:
	movl	-120(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L9
	movl	$10, %edi
	call	putchar@PLT
	leaq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -88(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L10
.L11:
	movl	-116(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -116(%rbp)
.L10:
	movl	-116(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L11
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, -112(%rbp)
	jmp	.L12
.L13:
	movq	-104(%rbp), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -112(%rbp)
.L12:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L13
	movl	$10, %edi
	call	putchar@PLT
	movq	-96(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	addq	$4, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, (%rdx)
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	%rbx, %rsp
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	parithmetic, .-parithmetic
	.section	.rodata
	.align 8
.LC12:
	.string	"The elements in vec2 before modification "
	.align 8
.LC13:
	.string	"vec2 after pointer arithematic"
	.text
	.globl	ptoarrs
	.type	ptoarrs, @function
ptoarrs:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -80(%rbp)
	movl	$20, -76(%rbp)
	movl	$30, -72(%rbp)
	movl	$40, -68(%rbp)
	movl	$50, -64(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -128(%rbp)
	jmp	.L16
.L17:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -128(%rbp)
.L16:
	cmpl	$4, -128(%rbp)
	jle	.L17
	movl	$10, %edi
	call	putchar@PLT
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-32(%rbp), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -124(%rbp)
	jmp	.L18
.L21:
	movl	$0, -120(%rbp)
	jmp	.L19
.L20:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -120(%rbp)
.L19:
	cmpl	$2, -120(%rbp)
	jle	.L20
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -124(%rbp)
.L18:
	cmpl	$2, -124(%rbp)
	jle	.L21
	movl	$0, -116(%rbp)
	jmp	.L22
.L27:
	movl	$0, -112(%rbp)
	jmp	.L23
.L26:
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L24
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rax, %rcx
	movl	-112(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, (%rax)
	jmp	.L25
.L24:
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rcx,%rcx), %edx
	movl	%edx, (%rax)
.L25:
	addl	$1, -112(%rbp)
.L23:
	cmpl	$2, -112(%rbp)
	jle	.L26
	addl	$1, -116(%rbp)
.L22:
	cmpl	$2, -116(%rbp)
	jle	.L27
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -108(%rbp)
	jmp	.L28
.L31:
	movl	$0, -104(%rbp)
	jmp	.L29
.L30:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-104(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -104(%rbp)
.L29:
	cmpl	$2, -104(%rbp)
	jle	.L30
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -108(%rbp)
.L28:
	cmpl	$2, -108(%rbp)
	jle	.L31
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ptoarrs, .-ptoarrs
	.section	.rodata
.LC14:
	.string	"welcome"
.LC15:
	.string	"to"
.LC16:
	.string	"pointer"
.LC17:
	.string	"bible"
.LC18:
	.string	"%s \n"
.LC19:
	.string	"num %d is : %d \n"
.LC20:
	.string	"failed!"
	.text
	.globl	arrofptrs
	.type	arrofptrs, @function
arrofptrs:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L34
.L35:
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -220(%rbp)
.L34:
	cmpl	$3, -220(%rbp)
	jle	.L35
	movl	$0, -216(%rbp)
	jmp	.L36
.L37:
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movl	-216(%rbp), %eax
	cltq
	movq	%rdx, -128(%rbp,%rax,8)
	movl	-216(%rbp), %eax
	leal	1(%rax), %edx
	movl	-216(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rcx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, (%rcx)
	movl	-216(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	movl	(%rax), %edx
	movl	-216(%rbp), %eax
	leaq	.LC19(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -216(%rbp)
.L36:
	cmpl	$2, -216(%rbp)
	jle	.L37
	movl	$0, -212(%rbp)
	jmp	.L38
.L39:
	movl	-212(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -212(%rbp)
.L38:
	cmpl	$2, -212(%rbp)
	jle	.L39
	movl	$1, -164(%rbp)
	movl	$2, -160(%rbp)
	movl	$3, -156(%rbp)
	movl	$4, -152(%rbp)
	movl	$5, -148(%rbp)
	movl	$6, -144(%rbp)
	movl	$7, -140(%rbp)
	movl	$8, -136(%rbp)
	movl	$9, -132(%rbp)
	leaq	-164(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-140(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L40
.L43:
	movl	$0, -204(%rbp)
	jmp	.L41
.L42:
	movl	-208(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movl	-204(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -204(%rbp)
.L41:
	cmpl	$2, -204(%rbp)
	jle	.L42
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -208(%rbp)
.L40:
	cmpl	$2, -208(%rbp)
	jle	.L43
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.L44
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	movl	$0, -200(%rbp)
	jmp	.L45
.L46:
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -200(%rbp)
.L45:
	cmpl	$2, -200(%rbp)
	jle	.L46
	movl	$0, -196(%rbp)
	jmp	.L47
.L50:
	movl	$0, -192(%rbp)
	jmp	.L48
.L49:
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-192(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-192(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -192(%rbp)
.L48:
	cmpl	$3, -192(%rbp)
	jle	.L49
	addl	$1, -196(%rbp)
.L47:
	cmpl	$2, -196(%rbp)
	jle	.L50
	movl	$0, -188(%rbp)
	jmp	.L51
.L54:
	movl	$0, -184(%rbp)
	jmp	.L52
.L53:
	movl	-188(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -184(%rbp)
.L52:
	cmpl	$3, -184(%rbp)
	jle	.L53
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -188(%rbp)
.L51:
	cmpl	$2, -188(%rbp)
	jle	.L54
	movl	$0, -180(%rbp)
	jmp	.L55
.L56:
	movl	-180(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -180(%rbp)
.L55:
	cmpl	$2, -180(%rbp)
	jle	.L56
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	arrofptrs, .-arrofptrs
	.section	.rodata
.LC21:
	.string	"ace"
.LC22:
	.string	"the name is %s \n"
.LC23:
	.string	"%c "
.LC24:
	.string	"hey whatsup"
.LC25:
	.string	"hello"
.LC26:
	.string	"pointer land"
	.text
	.globl	pstrings
	.type	pstrings, @function
pstrings:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC21(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -80(%rbp)
	jmp	.L59
.L60:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -80(%rbp)
.L59:
	cmpl	$2, -80(%rbp)
	jle	.L60
	movl	$10, %edi
	call	putchar@PLT
	movl	$1819043176, -14(%rbp)
	movw	$111, -10(%rbp)
	movb	$101, -11(%rbp)
	leaq	-14(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-72(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movb	$45, (%rax)
	movq	-56(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L61
.L62:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -76(%rbp)
.L61:
	cmpl	$3, -76(%rbp)
	jle	.L62
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	pstrings, .-pstrings
	.section	.rodata
.LC27:
	.string	"%s "
	.text
	.globl	pheap
	.type	pheap, @function
pheap:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$42, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$3, -48(%rbp)
	movl	$4, -44(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L65
.L66:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -96(%rbp)
.L65:
	movl	-96(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L66
	movl	$0, -92(%rbp)
	jmp	.L67
.L70:
	movl	$0, -88(%rbp)
	jmp	.L68
.L69:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-88(%rbp), %edx
	addl	$10, %edx
	movl	%edx, (%rax)
	addl	$1, -88(%rbp)
.L68:
	movl	-88(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L69
	addl	$1, -92(%rbp)
.L67:
	movl	-92(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L70
	movl	$0, -84(%rbp)
	jmp	.L71
.L74:
	movl	$0, -80(%rbp)
	jmp	.L72
.L73:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -80(%rbp)
.L72:
	movl	-80(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L73
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -84(%rbp)
.L71:
	movl	-84(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L74
	movl	$0, -76(%rbp)
	jmp	.L75
.L76:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -76(%rbp)
.L75:
	movl	-76(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L76
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L77
.L80:
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -68(%rbp)
	jmp	.L78
.L79:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	$10, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$7955816, (%rax)
	addl	$1, -68(%rbp)
.L78:
	movl	-68(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L79
	addl	$1, -72(%rbp)
.L77:
	movl	-72(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L80
	movl	$0, -64(%rbp)
	jmp	.L81
.L84:
	movl	$0, -60(%rbp)
	jmp	.L82
.L83:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -60(%rbp)
.L82:
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L83
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -64(%rbp)
.L81:
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L84
	movl	$0, -56(%rbp)
	jmp	.L85
.L88:
	movl	$0, -52(%rbp)
	jmp	.L86
.L87:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -52(%rbp)
.L86:
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L87
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -56(%rbp)
.L85:
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L88
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	pheap, .-pheap
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.1.1 20250729"
	.section	.note.GNU-stack,"",@progbits
