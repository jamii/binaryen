	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/strncmp-1.c"
	.section	.text.test,"ax",@progbits
	.hidden	test
	.globl	test
	.type	test,@function
test:                                   # @test
	.param  	i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.call	$2=, strncmp@FUNCTION, $0, $1, $2
	block
	block
	i32.const	$push0=, -1
	i32.gt_s	$push1=, $3, $pop0
	br_if   	0, $pop1        # 0: down to label1
# BB#1:                                 # %entry
	i32.const	$push2=, 0
	i32.ge_s	$push3=, $2, $pop2
	br_if   	1, $pop3        # 1: down to label0
.LBB0_2:                                # %if.else
	end_block                       # label1:
	block
	br_if   	0, $3           # 0: down to label2
# BB#3:                                 # %if.else
	br_if   	1, $2           # 1: down to label0
.LBB0_4:                                # %if.else6
	end_block                       # label2:
	block
	i32.const	$push4=, 1
	i32.lt_s	$push5=, $3, $pop4
	br_if   	0, $pop5        # 0: down to label3
# BB#5:                                 # %if.else6
	i32.const	$push6=, 0
	i32.le_s	$push7=, $2, $pop6
	br_if   	1, $pop7        # 1: down to label0
.LBB0_6:                                # %if.end12
	end_block                       # label3:
	return
.LBB0_7:                                # %if.then10
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	test, .Lfunc_end0-test

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$1=, u1
.LBB1_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	block
	block
	loop                            # label6:
	i32.const	$2=, 0
	i32.const	$3=, u2
.LBB1_2:                                # %for.cond4.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	loop                            # label8:
	i32.const	$4=, 0
.LBB1_3:                                # %for.cond7.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	loop                            # label10:
	i32.const	$5=, u1
	block
	i32.const	$push63=, 0
	i32.eq  	$push64=, $0, $pop63
	br_if   	0, $pop64       # 0: down to label12
# BB#4:                                 # %for.body9.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push36=, u1
	i32.const	$push35=, 0
	i32.call	$discard=, memset@FUNCTION, $pop36, $pop35, $0
	copy_local	$5=, $1
.LBB1_5:                                # %for.cond10.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label12:
	copy_local	$6=, $5
	block
	i32.const	$push65=, 0
	i32.eq  	$push66=, $4, $pop65
	br_if   	0, $pop66       # 0: down to label13
# BB#6:                                 # %for.body12.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push37=, 97
	i32.call	$push0=, memset@FUNCTION, $5, $pop37, $4
	i32.add 	$6=, $pop0, $4
.LBB1_7:                                # %for.cond17.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label13:
	i64.const	$push38=, 8680820740569200760
	i64.store	$9=, 0($6):p2align=0, $pop38
	i32.const	$7=, u2
	block
	i32.const	$push67=, 0
	i32.eq  	$push68=, $2, $pop67
	br_if   	0, $pop68       # 0: down to label14
# BB#8:                                 # %for.body26.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push40=, u2
	i32.const	$push39=, 0
	i32.call	$discard=, memset@FUNCTION, $pop40, $pop39, $2
	copy_local	$7=, $3
.LBB1_9:                                # %for.cond31.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label14:
	copy_local	$8=, $7
	block
	i32.const	$push69=, 0
	i32.eq  	$push70=, $4, $pop69
	br_if   	0, $pop70       # 0: down to label15
# BB#10:                                # %for.body33.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push41=, 97
	i32.call	$push1=, memset@FUNCTION, $7, $pop41, $4
	i32.add 	$8=, $pop1, $4
.LBB1_11:                               # %for.cond38.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label15:
	i64.store	$discard=, 0($8):p2align=0, $9
	i32.const	$push43=, 0
	i32.store8	$push2=, 0($6), $pop43
	i32.store8	$11=, 0($8), $pop2
	i32.const	$push42=, 80
	i32.call	$push3=, strncmp@FUNCTION, $5, $7, $pop42
	br_if   	6, $pop3        # 6: down to label5
# BB#12:                                # %test.exit
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push4=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop4        # 6: down to label5
# BB#13:                                # %test.exit185
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store8	$discard=, 0($8), $11
	i32.const	$push45=, 97
	i32.store16	$10=, 0($6):p2align=0, $pop45
	i32.const	$push44=, 80
	i32.call	$push5=, strncmp@FUNCTION, $5, $7, $pop44
	i32.le_s	$push6=, $pop5, $11
	br_if   	6, $pop6        # 6: down to label5
# BB#14:                                # %test.exit190
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push7=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop7        # 6: down to label5
# BB#15:                                # %test.exit196
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($8):p2align=0, $10
	i32.store8	$discard=, 0($6), $11
	i32.const	$push46=, 80
	i32.call	$push8=, strncmp@FUNCTION, $5, $7, $pop46
	i32.ge_s	$push9=, $pop8, $11
	br_if   	6, $pop9        # 6: down to label5
# BB#16:                                # %test.exit201
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push10=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop10       # 6: down to label5
# BB#17:                                # %test.exit207
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push49=, 98
	i32.store16	$10=, 0($6):p2align=0, $pop49
	i32.const	$push48=, 99
	i32.store16	$12=, 0($8):p2align=0, $pop48
	i32.const	$push47=, 80
	i32.call	$push11=, strncmp@FUNCTION, $5, $7, $pop47
	i32.ge_s	$push12=, $pop11, $11
	br_if   	6, $pop12       # 6: down to label5
# BB#18:                                # %test.exit213
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push13=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop13       # 6: down to label5
# BB#19:                                # %test.exit219
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($6):p2align=0, $12
	i32.store16	$discard=, 0($8):p2align=0, $10
	i32.const	$push50=, 80
	i32.call	$push14=, strncmp@FUNCTION, $5, $7, $pop50
	i32.le_s	$push15=, $pop14, $11
	br_if   	6, $pop15       # 6: down to label5
# BB#20:                                # %test.exit225
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push16=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop16       # 6: down to label5
# BB#21:                                # %test.exit231
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($6):p2align=0, $10
	i32.const	$push52=, 169
	i32.store16	$12=, 0($8):p2align=0, $pop52
	i32.const	$push51=, 80
	i32.call	$push17=, strncmp@FUNCTION, $5, $7, $pop51
	i32.ge_s	$push18=, $pop17, $11
	br_if   	6, $pop18       # 6: down to label5
# BB#22:                                # %test.exit237
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push19=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop19       # 6: down to label5
# BB#23:                                # %test.exit243
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($8):p2align=0, $10
	i32.store16	$10=, 0($6):p2align=0, $12
	i32.const	$push53=, 80
	i32.call	$push20=, strncmp@FUNCTION, $5, $7, $pop53
	i32.le_s	$push21=, $pop20, $11
	br_if   	6, $pop21       # 6: down to label5
# BB#24:                                # %test.exit249
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push22=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop22       # 6: down to label5
# BB#25:                                # %test.exit255
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($6):p2align=0, $10
	i32.const	$push55=, 170
	i32.store16	$12=, 0($8):p2align=0, $pop55
	i32.const	$push54=, 80
	i32.call	$push23=, strncmp@FUNCTION, $5, $7, $pop54
	i32.ge_s	$push24=, $pop23, $11
	br_if   	6, $pop24       # 6: down to label5
# BB#26:                                # %test.exit261
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push25=, strncmp@FUNCTION, $5, $7, $4
	br_if   	6, $pop25       # 6: down to label5
# BB#27:                                # %test.exit267
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.store16	$discard=, 0($6):p2align=0, $12
	i32.store16	$discard=, 0($8):p2align=0, $10
	i32.const	$push56=, 80
	i32.call	$push26=, strncmp@FUNCTION, $5, $7, $pop56
	i32.le_s	$push27=, $pop26, $11
	br_if   	6, $pop27       # 6: down to label5
# BB#28:                                # %test.exit273
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.call	$push28=, strncmp@FUNCTION, $5, $7, $4
	br_if   	7, $pop28       # 7: down to label4
# BB#29:                                # %for.cond4
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push34=, 1
	i32.add 	$4=, $4, $pop34
	i32.const	$push33=, 63
	i32.le_u	$push29=, $4, $pop33
	br_if   	0, $pop29       # 0: up to label10
# BB#30:                                # %for.inc79
                                        #   in Loop: Header=BB1_2 Depth=2
	end_loop                        # label11:
	i32.const	$push59=, 1
	i32.add 	$2=, $2, $pop59
	i32.const	$push58=, 1
	i32.add 	$3=, $3, $pop58
	i32.const	$push57=, 8
	i32.lt_u	$push30=, $2, $pop57
	br_if   	0, $pop30       # 0: up to label8
# BB#31:                                # %for.inc82
                                        #   in Loop: Header=BB1_1 Depth=1
	end_loop                        # label9:
	i32.const	$push62=, 1
	i32.add 	$0=, $0, $pop62
	i32.const	$push61=, 1
	i32.add 	$1=, $1, $pop61
	i32.const	$push60=, 8
	i32.lt_u	$push31=, $0, $pop60
	br_if   	0, $pop31       # 0: up to label6
# BB#32:                                # %for.end84
	end_loop                        # label7:
	i32.const	$push32=, 0
	call    	exit@FUNCTION, $pop32
	unreachable
.LBB1_33:                               # %if.then10.i272
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
.LBB1_34:                               # %if.then5.i277
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	u1,@object              # @u1
	.lcomm	u1,80,4
	.type	u2,@object              # @u2
	.lcomm	u2,80,4

	.ident	"clang version 3.9.0 "
