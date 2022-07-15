	.text
	.file	"void.c"
	.globl	foo                             # -- Begin function foo
	.p2align	1
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:
	subi16	sp, sp, 4
	.cfi_def_cfa_offset 4
	st32.w	l4, (sp, 0)                     # 4-byte Folded Spill
	.cfi_offset l4, -4
	mov16	l4, sp
	.cfi_def_cfa_register l4
	subi16	sp, sp, 4
	mov16	sp, l4
	ld32.w	l4, (sp, 0)                     # 4-byte Folded Reload
	addi16	sp, sp, 4
	rts16
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        # -- End function
	.ident	"Debian clang version 11.0.1-2"
	.section	".note.GNU-stack","",@progbits
