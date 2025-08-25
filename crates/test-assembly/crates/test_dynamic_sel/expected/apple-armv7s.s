	.syntax	unified
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fn1_get_sel
	.p2align	2
	.code	32
_fn1_get_sel:
	push	{r7, lr}
	mov	r7, sp
	movw	r1, :lower16:(__MergedGlobals-(LPC0_0+8))
	movt	r1, :upper16:(__MergedGlobals-(LPC0_0+8))
LPC0_0:
	add	r1, pc, r1
	ldr	r0, [r1, #8]
	cmp	r0, #0
	popne	{r7, pc}
LBB0_1:
	add	r0, r1, #8
	movw	r1, :lower16:(L_anon.[ID].0-(LPC0_1+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC0_1+8))
LPC0_1:
	add	r1, pc, r1
	pop	{r7, lr}
	b	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)

	.globl	_fn2_get_same_sel
	.p2align	2
	.code	32
_fn2_get_same_sel:
	push	{r7, lr}
	mov	r7, sp
	movw	r0, :lower16:(__MergedGlobals-(LPC1_0+8))
	movt	r0, :upper16:(__MergedGlobals-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	cmp	r0, #0
	popne	{r7, pc}
LBB1_1:
	movw	r0, :lower16:(__MergedGlobals-(LPC1_1+8))
	movt	r0, :upper16:(__MergedGlobals-(LPC1_1+8))
LPC1_1:
	add	r0, pc, r0
	movw	r1, :lower16:(L_anon.[ID].0-(LPC1_2+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC1_2+8))
LPC1_2:
	add	r1, pc, r1
	pop	{r7, lr}
	b	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)

	.globl	_fn3_get_common_twice
	.p2align	2
	.code	32
_fn3_get_common_twice:
	push	{r4, r7, lr}
	add	r7, sp, #4
	movw	r4, :lower16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_0+8))
	movt	r4, :upper16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_0+8))
LPC2_0:
	ldr	r4, [pc, r4]
	ldr	r0, [r4]
	cmp	r0, #0
	beq	LBB2_3
LBB2_1:
	ldr	r1, [r4]
	cmp	r1, #0
	popne	{r4, r7, pc}
LBB2_2:
	movw	r2, :lower16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_3+8))
	movt	r2, :upper16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_3+8))
LPC2_3:
	ldr	r2, [pc, r2]
	movw	r1, :lower16:(L_anon.[ID].1-(LPC2_4+8))
	movt	r1, :upper16:(L_anon.[ID].1-(LPC2_4+8))
LPC2_4:
	add	r1, pc, r1
	mov	r4, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r1, r0
	mov	r0, r4
	pop	{r4, r7, pc}
LBB2_3:
	movw	r0, :lower16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_1+8))
	movt	r0, :upper16:(LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr-(LPC2_1+8))
LPC2_1:
	ldr	r0, [pc, r0]
	movw	r1, :lower16:(L_anon.[ID].1-(LPC2_2+8))
	movt	r1, :upper16:(L_anon.[ID].1-(LPC2_2+8))
LPC2_2:
	add	r1, pc, r1
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	b	LBB2_1

	.globl	_fn4_get_different_sel
	.p2align	2
	.code	32
_fn4_get_different_sel:
	push	{r7, lr}
	mov	r7, sp
	movw	r1, :lower16:(__MergedGlobals-(LPC3_0+8))
	movt	r1, :upper16:(__MergedGlobals-(LPC3_0+8))
LPC3_0:
	add	r1, pc, r1
	ldr	r0, [r1, #4]
	cmp	r0, #0
	popne	{r7, pc}
LBB3_1:
	add	r0, r1, #4
	movw	r1, :lower16:(L_anon.[ID].2-(LPC3_1+8))
	movt	r1, :upper16:(L_anon.[ID].2-(LPC3_1+8))
LPC3_1:
	add	r1, pc, r1
	pop	{r7, lr}
	b	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)

	.globl	_fn5_unused_sel
	.p2align	2
	.code	32
_fn5_unused_sel:
	push	{r7, lr}
	mov	r7, sp
	movw	r0, :lower16:(SYM(test_dynamic_sel[CRATE_ID]::unused_sel::CACHED_SEL, 0)-(LPC4_0+8))
	movt	r0, :upper16:(SYM(test_dynamic_sel[CRATE_ID]::unused_sel::CACHED_SEL, 0)-(LPC4_0+8))
LPC4_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	cmp	r0, #0
	popne	{r7, pc}
LBB4_1:
	movw	r0, :lower16:(SYM(test_dynamic_sel[CRATE_ID]::unused_sel::CACHED_SEL, 0)-(LPC4_1+8))
	movt	r0, :upper16:(SYM(test_dynamic_sel[CRATE_ID]::unused_sel::CACHED_SEL, 0)-(LPC4_1+8))
LPC4_1:
	add	r0, pc, r0
	movw	r1, :lower16:(L_anon.[ID].3-(LPC4_2+8))
	movt	r1, :upper16:(L_anon.[ID].3-(LPC4_2+8))
LPC4_2:
	add	r1, pc, r1
	pop	{r7, lr}
	b	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)

	.globl	_fn6_use_fns
	.p2align	2
	.code	32
_fn6_use_fns:
	push	{r4, r5, r6, r7, lr}
	add	r7, sp, #12
	push	{r8, r10}
	movw	r8, :lower16:(__MergedGlobals-(LPC5_0+8))
	movt	r8, :upper16:(__MergedGlobals-(LPC5_0+8))
LPC5_0:
	add	r8, pc, r8
	ldr	r4, [r8, #8]
	cmp	r4, #0
	beq	LBB5_5
	ldr	r5, [r8]
	cmp	r5, #0
	beq	LBB5_6
LBB5_2:
	ldr	r6, [r8, #4]
	cmp	r6, #0
	beq	LBB5_7
LBB5_3:
	ldr	r1, [r8, #12]
	cmp	r1, #0
	beq	LBB5_8
LBB5_4:
	stm	r0, {r4, r5, r6}
	str	r1, [r0, #12]
	pop	{r8, r10}
	pop	{r4, r5, r6, r7, pc}
LBB5_5:
	add	r2, r8, #8
	movw	r1, :lower16:(L_anon.[ID].0-(LPC5_1+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC5_1+8))
LPC5_1:
	add	r1, pc, r1
	mov	r5, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r4, r0
	mov	r0, r5
	ldr	r5, [r8]
	cmp	r5, #0
	bne	LBB5_2
LBB5_6:
	movw	r2, :lower16:(__MergedGlobals-(LPC5_2+8))
	movt	r2, :upper16:(__MergedGlobals-(LPC5_2+8))
LPC5_2:
	add	r2, pc, r2
	movw	r1, :lower16:(L_anon.[ID].0-(LPC5_3+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC5_3+8))
LPC5_3:
	add	r1, pc, r1
	mov	r6, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r5, r0
	mov	r0, r6
	ldr	r6, [r8, #4]
	cmp	r6, #0
	bne	LBB5_3
LBB5_7:
	add	r2, r8, #4
	movw	r1, :lower16:(L_anon.[ID].2-(LPC5_4+8))
	movt	r1, :upper16:(L_anon.[ID].2-(LPC5_4+8))
LPC5_4:
	add	r1, pc, r1
	mov	r10, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r6, r0
	mov	r0, r10
	ldr	r1, [r8, #12]
	cmp	r1, #0
	bne	LBB5_4
LBB5_8:
	add	r2, r8, #12
	movw	r1, :lower16:(L_anon.[ID].4-(LPC5_5+8))
	movt	r1, :upper16:(L_anon.[ID].4-(LPC5_5+8))
LPC5_5:
	add	r1, pc, r1
	mov	r8, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r1, r0
	mov	r0, r8
	stm	r0, {r4, r5, r6}
	str	r1, [r0, #12]
	pop	{r8, r10}
	pop	{r4, r5, r6, r7, pc}

	.globl	_fn7_use_same_twice
	.p2align	2
	.code	32
_fn7_use_same_twice:
	push	{r4, r5, r6, r7, lr}
	add	r7, sp, #12
	movw	r5, :lower16:(__MergedGlobals-(LPC6_0+8))
	movt	r5, :upper16:(__MergedGlobals-(LPC6_0+8))
LPC6_0:
	add	r5, pc, r5
	ldr	r4, [r5, #8]
	cmp	r4, #0
	beq	LBB6_3
	ldr	r1, [r5, #8]
	cmp	r1, #0
	beq	LBB6_4
LBB6_2:
	str	r4, [r0]
	str	r1, [r0, #4]
	pop	{r4, r5, r6, r7, pc}
LBB6_3:
	add	r2, r5, #8
	movw	r1, :lower16:(L_anon.[ID].0-(LPC6_1+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC6_1+8))
LPC6_1:
	add	r1, pc, r1
	mov	r6, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r4, r0
	mov	r0, r6
	ldr	r1, [r5, #8]
	cmp	r1, #0
	bne	LBB6_2
LBB6_4:
	add	r2, r5, #8
	movw	r1, :lower16:(L_anon.[ID].0-(LPC6_2+8))
	movt	r1, :upper16:(L_anon.[ID].0-(LPC6_2+8))
LPC6_2:
	add	r1, pc, r1
	mov	r5, r0
	mov	r0, r2
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r1, r0
	mov	r0, r5
	str	r4, [r0]
	str	r1, [r0, #4]
	pop	{r4, r5, r6, r7, pc}

	.globl	_fn8_use_in_loop
	.p2align	2
	.code	32
_fn8_use_in_loop:
	cmp	r0, #0
	bxeq	lr
LBB7_1:
	push	{r4, r5, r6, r7, lr}
	add	r7, sp, #12
	movw	r4, :lower16:(SYM(test_dynamic_sel[CRATE_ID]::use_in_loop::CACHED_SEL, 0)-(LPC7_0+8))
	movt	r4, :upper16:(SYM(test_dynamic_sel[CRATE_ID]::use_in_loop::CACHED_SEL, 0)-(LPC7_0+8))
LPC7_0:
	add	r4, pc, r4
	movw	r5, :lower16:(L_anon.[ID].5-(LPC7_1+8))
	movt	r5, :upper16:(L_anon.[ID].5-(LPC7_1+8))
LPC7_1:
	add	r5, pc, r5
LBB7_2:
	ldr	r1, [r4]
	cmp	r1, #0
	beq	LBB7_4
	subs	r0, r0, #1
	bne	LBB7_2
	b	LBB7_5
LBB7_4:
	mov	r6, r0
	mov	r0, r4
	mov	r1, r5
	bl	SYM(objc2::__macro_helpers::cache::CachedSel::fetch::GENERATED_ID, 0)
	mov	r0, r6
	subs	r0, r0, #1
	bne	LBB7_2
LBB7_5:
	pop	{r4, r5, r6, r7, lr}
	bx	lr

.zerofill __DATA,__bss,SYM(test_dynamic_sel[CRATE_ID]::unused_sel::CACHED_SEL, 0),4,2
.zerofill __DATA,__bss,SYM(test_dynamic_sel[CRATE_ID]::use_in_loop::CACHED_SEL, 0),4,2
	.section	__TEXT,__cstring,cstring_literals
L_anon.[ID].0:
	.asciz	"simple"

L_anon.[ID].1:
	.asciz	"alloc"

L_anon.[ID].2:
	.asciz	"i:am:different:"

L_anon.[ID].3:
	.asciz	"unused"

L_anon.[ID].4:
	.asciz	"fourthSel"

L_anon.[ID].5:
	.asciz	"loopedSelector"

.zerofill __DATA,__bss,__MergedGlobals,16,2
	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2, 0x0
LSYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)$non_lazy_ptr:
	.indirect_symbol	SYM(objc2::__macro_helpers::common_selectors::alloc_sel::CACHED_SEL::GENERATED_ID, 0)
	.long	0

.subsections_via_symbols
