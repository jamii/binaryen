	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr54985.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
	block
	block
	block
	i32.const	$push5=, 0
	i32.eq  	$push6=, $1, $pop5
	br_if   	0, $pop6        # 0: down to label2
# BB#1:                                 # %while.body.preheader
	i32.load	$4=, 0($0)
	i32.const	$push0=, 4
	i32.add 	$0=, $0, $pop0
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label3:
	i32.const	$push1=, -1
	i32.add 	$1=, $1, $pop1
	i32.const	$push7=, 0
	i32.eq  	$push8=, $1, $pop7
	br_if   	3, $pop8        # 3: down to label1
# BB#3:                                 # %while.cond.while.body_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push4=, 4
	i32.add 	$2=, $0, $pop4
	i32.load	$push3=, 0($0)
	tee_local	$push2=, $5=, $pop3
	i32.lt_s	$3=, $pop2, $4
	copy_local	$0=, $2
	copy_local	$4=, $5
	i32.const	$2=, 1
	br_if   	0, $3           # 0: up to label3
	br      	4               # 4: down to label0
.LBB0_4:
	end_loop                        # label4:
	end_block                       # label2:
	i32.const	$2=, 0
	br      	1               # 1: down to label0
.LBB0_5:
	end_block                       # label1:
	i32.const	$2=, 0
.LBB0_6:                                # %cleanup
	end_block                       # label0:
	return  	$2
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, __stack_pointer
	i32.load	$0=, 0($0)
	i32.const	$1=, 16
	i32.sub 	$4=, $0, $1
	i32.const	$1=, __stack_pointer
	i32.store	$4=, 0($1), $4
	i64.const	$push0=, 4294967298
	i64.store	$discard=, 8($4), $pop0
	i32.const	$push1=, 2
	i32.const	$3=, 8
	i32.add 	$3=, $4, $3
	block
	i32.call	$push2=, foo@FUNCTION, $3, $pop1
	br_if   	0, $pop2        # 0: down to label5
# BB#1:                                 # %if.end
	i32.const	$push3=, 0
	i32.const	$2=, 16
	i32.add 	$4=, $4, $2
	i32.const	$2=, __stack_pointer
	i32.store	$4=, 0($2), $4
	return  	$pop3
.LBB1_2:                                # %if.then
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
