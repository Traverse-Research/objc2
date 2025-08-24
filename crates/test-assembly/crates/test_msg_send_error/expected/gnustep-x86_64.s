	.intel_syntax noprefix
	.section	.text.fn1_error_bool,"ax",@progbits
	.globl	fn1_error_bool
	.p2align	4
	.type	fn1_error_bool,@function
fn1_error_bool:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 16
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 8], 0
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	lea	rcx, [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	rax
	test	al, al
	je	.LBB0_2
	xor	eax, eax
.LBB0_4:
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	r15
	ret
.LBB0_2:
	mov	rdi, qword ptr [rsp + 8]
	call	qword ptr [rip + objc_retain@GOTPCREL]
	test	rax, rax
	jne	.LBB0_4
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	jmp	.LBB0_4
.Lfunc_end0:
	.size	fn1_error_bool, .Lfunc_end0-fn1_error_bool

	.section	.text.fn2_error_new,"ax",@progbits
	.globl	fn2_error_new
	.p2align	4
	.type	fn2_error_new,@function
fn2_error_new:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	mov	rdx, rsp
	mov	rdi, r14
	mov	rsi, rbx
	call	rax
	test	rax, rax
	je	.LBB1_2
	mov	rdx, rax
	xor	eax, eax
.LBB1_4:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB1_2:
	mov	rdi, qword ptr [rsp]
	call	qword ptr [rip + objc_retain@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB1_4
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.Lfunc_end1:
	.size	fn2_error_new, .Lfunc_end1-fn2_error_new

	.section	.text.fn3_error_init,"ax",@progbits
	.globl	fn3_error_init
	.p2align	4
	.type	fn3_error_init,@function
fn3_error_init:
	push	r14
	push	rbx
	push	rax
	mov	qword ptr [rsp], 0
	test	rdi, rdi
	je	.LBB2_1
	mov	rbx, rdi
	mov	r14, rsi
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	mov	rdx, rsp
	mov	rdi, rbx
	mov	rsi, r14
	call	rax
	test	rax, rax
	je	.LBB2_4
	mov	rdx, rax
	xor	eax, eax
.LBB2_7:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB2_1:
	xor	edi, edi
.LBB2_5:
	call	qword ptr [rip + objc_retain@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB2_7
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB2_4:
	mov	rdi, qword ptr [rsp]
	jmp	.LBB2_5
.Lfunc_end2:
	.size	fn3_error_init, .Lfunc_end2-fn3_error_init

	.section	.text.fn4_error_copy,"ax",@progbits
	.globl	fn4_error_copy
	.p2align	4
	.type	fn4_error_copy,@function
fn4_error_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	mov	rdx, rsp
	mov	rdi, r14
	mov	rsi, rbx
	call	rax
	test	rax, rax
	je	.LBB3_2
	mov	rdx, rax
	xor	eax, eax
.LBB3_4:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB3_2:
	mov	rdi, qword ptr [rsp]
	call	qword ptr [rip + objc_retain@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB3_4
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.Lfunc_end3:
	.size	fn4_error_copy, .Lfunc_end3-fn4_error_copy

	.section	.text.fn5_error_mutable_copy,"ax",@progbits
	.globl	fn5_error_mutable_copy
	.p2align	4
	.type	fn5_error_mutable_copy,@function
fn5_error_mutable_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	mov	rdx, rsp
	mov	rdi, r14
	mov	rsi, rbx
	call	rax
	test	rax, rax
	je	.LBB4_2
	mov	rdx, rax
	xor	eax, eax
.LBB4_4:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB4_2:
	mov	rdi, qword ptr [rsp]
	call	qword ptr [rip + objc_retain@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB4_4
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.Lfunc_end4:
	.size	fn5_error_mutable_copy, .Lfunc_end4-fn5_error_mutable_copy

	.section	.text.fn6_error_autoreleased,"ax",@progbits
	.globl	fn6_error_autoreleased
	.p2align	4
	.type	fn6_error_autoreleased,@function
fn6_error_autoreleased:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	call	qword ptr [rip + objc_msg_lookup@GOTPCREL]
	mov	rdx, rsp
	mov	rdi, r14
	mov	rsi, rbx
	call	rax
	mov	rdi, rax
	call	qword ptr [rip + objc_retainAutoreleasedReturnValue@GOTPCREL]
	test	rax, rax
	je	.LBB5_2
	mov	rdx, rax
	xor	eax, eax
.LBB5_4:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.LBB5_2:
	mov	rdi, qword ptr [rsp]
	call	qword ptr [rip + objc_retain@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB5_4
	call	qword ptr [rip + SYM(objc2::__macro_helpers::null_error::null_error::GENERATED_ID, 0)@GOTPCREL]
	mov	rdx, rax
	mov	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.Lfunc_end5:
	.size	fn6_error_autoreleased, .Lfunc_end5-fn6_error_autoreleased

	.section	".note.GNU-stack","",@progbits
