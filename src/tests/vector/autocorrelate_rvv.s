
test:	file format elf64-littleriscv

Disassembly of section .plt:

0000000000000620 <.plt>:
     620: 97 23 00 00  	auipc	t2, 2
     624: 33 03 c3 41  	sub	t1, t1, t3
     628: 03 be 83 9e  	ld	t3, -1560(t2)
     62c: 13 03 43 fd  	addi	t1, t1, -44
     630: 93 82 83 9e  	addi	t0, t2, -1560
     634: 13 53 13 00  	srli	t1, t1, 1
     638: 83 b2 82 00  	ld	t0, 8(t0)
     63c: 67 00 0e 00  	jr	t3
     640: 17 2e 00 00  	auipc	t3, 2
     644: 03 3e 8e 9d  	ld	t3, -1576(t3)
     648: 67 03 0e 00  	jalr	t1, t3
     64c: 13 00 00 00  	nop
     650: 17 2e 00 00  	auipc	t3, 2
     654: 03 3e 0e 9d  	ld	t3, -1584(t3)
     658: 67 03 0e 00  	jalr	t1, t3
     65c: 13 00 00 00  	nop
     660: 17 2e 00 00  	auipc	t3, 2
     664: 03 3e 8e 9c  	ld	t3, -1592(t3)
     668: 67 03 0e 00  	jalr	t1, t3
     66c: 13 00 00 00  	nop
     670: 17 2e 00 00  	auipc	t3, 2
     674: 03 3e 0e 9c  	ld	t3, -1600(t3)
     678: 67 03 0e 00  	jalr	t1, t3
     67c: 13 00 00 00  	nop
     680: 17 2e 00 00  	auipc	t3, 2
     684: 03 3e 8e 9b  	ld	t3, -1608(t3)
     688: 67 03 0e 00  	jalr	t1, t3
     68c: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000690 <_start>:
     690: ef 00 20 02  	jal	0x6b2 <load_gp>
     694: aa 87        	mv	a5, a0
     696: 17 25 00 00  	auipc	a0, 2
     69a: 03 35 a5 9b  	ld	a0, -1606(a0)
     69e: 82 65        	ld	a1, 0(sp)
     6a0: 30 00        	addi	a2, sp, 8
     6a2: 13 71 01 ff  	andi	sp, sp, -16
     6a6: 81 46        	li	a3, 0
     6a8: 01 47        	li	a4, 0
     6aa: 0a 88        	mv	a6, sp
     6ac: ef f0 5f f9  	jal	0x640 <.plt+0x20>
     6b0: 02 90        	ebreak

00000000000006b2 <load_gp>:
     6b2: 97 21 00 00  	auipc	gp, 2
     6b6: 93 81 e1 14  	addi	gp, gp, 334
     6ba: 82 80        	ret
     6bc: 00 00        	unimp

00000000000006be <deregister_tm_clones>:
     6be: 17 25 00 00  	auipc	a0, 2
     6c2: 13 05 a5 94  	addi	a0, a0, -1718
     6c6: 97 27 00 00  	auipc	a5, 2
     6ca: 93 87 27 94  	addi	a5, a5, -1726
     6ce: 63 88 a7 00  	beq	a5, a0, 0x6de <deregister_tm_clones+0x20>
     6d2: 97 27 00 00  	auipc	a5, 2
     6d6: 83 b7 67 97  	ld	a5, -1674(a5)
     6da: 91 c3        	beqz	a5, 0x6de <deregister_tm_clones+0x20>
     6dc: 82 87        	jr	a5
     6de: 82 80        	ret

00000000000006e0 <register_tm_clones>:
     6e0: 17 25 00 00  	auipc	a0, 2
     6e4: 13 05 85 92  	addi	a0, a0, -1752
     6e8: 97 25 00 00  	auipc	a1, 2
     6ec: 93 85 05 92  	addi	a1, a1, -1760
     6f0: 89 8d        	sub	a1, a1, a0
     6f2: 93 d7 35 40  	srai	a5, a1, 3
     6f6: fd 91        	srli	a1, a1, 63
     6f8: be 95        	add	a1, a1, a5
     6fa: 85 85        	srai	a1, a1, 1
     6fc: 99 c5        	beqz	a1, 0x70a <register_tm_clones+0x2a>
     6fe: 97 27 00 00  	auipc	a5, 2
     702: 83 b7 27 96  	ld	a5, -1694(a5)
     706: 91 c3        	beqz	a5, 0x70a <register_tm_clones+0x2a>
     708: 82 87        	jr	a5
     70a: 82 80        	ret

000000000000070c <__do_global_dtors_aux>:
     70c: 41 11        	addi	sp, sp, -16
     70e: 22 e0        	sd	s0, 0(sp)
     710: 17 24 00 00  	auipc	s0, 2
     714: 13 04 84 95  	addi	s0, s0, -1704
     718: 83 47 04 00  	lbu	a5, 0(s0)
     71c: 06 e4        	sd	ra, 8(sp)
     71e: 85 e3        	bnez	a5, 0x73e <__do_global_dtors_aux+0x32>
     720: 97 27 00 00  	auipc	a5, 2
     724: 83 b7 87 93  	ld	a5, -1736(a5)
     728: 91 c7        	beqz	a5, 0x734 <__do_global_dtors_aux+0x28>
     72a: 17 25 00 00  	auipc	a0, 2
     72e: 03 35 65 8d  	ld	a0, -1834(a0)
     732: 82 97        	jalr	a5
     734: ef f0 bf f8  	jal	0x6be <deregister_tm_clones>
     738: 85 47        	li	a5, 1
     73a: 23 00 f4 00  	sb	a5, 0(s0)
     73e: a2 60        	ld	ra, 8(sp)
     740: 02 64        	ld	s0, 0(sp)
     742: 41 01        	addi	sp, sp, 16
     744: 82 80        	ret

0000000000000746 <frame_dummy>:
     746: 69 bf        	j	0x6e0 <register_tm_clones>

0000000000000748 <autocorrelate>:
     748: 63 0f 06 36  	beqz	a2, 0xac6 <autocorrelate+0x37e>
     74c: 93 13 36 00  	slli	t2, a2, 3
     750: b3 0e 75 00  	add	t4, a0, t2
     754: 13 88 8e 10  	addi	a6, t4, 264
     758: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     75c: 93 88 8e 0e  	addi	a7, t4, 232
     760: 93 82 8e 0c  	addi	t0, t4, 200
     764: 13 83 8e 0a  	addi	t1, t4, 168
     768: 13 8e 8e 08  	addi	t3, t4, 136
     76c: 13 87 8e 06  	addi	a4, t4, 104
     770: 93 87 8e 04  	addi	a5, t4, 72
     774: 07 e5 07 22  	vlseg2e32.v	v10, (a5)
     778: 93 87 8e 02  	addi	a5, t4, 40
     77c: 07 e6 07 22  	vlseg2e32.v	v12, (a5)
     780: 93 87 8e 00  	addi	a5, t4, 8
     784: 07 e8 07 22  	vlseg2e32.v	v16, (a5)
     788: 93 07 85 00  	addi	a5, a0, 8
     78c: 07 e9 07 22  	vlseg2e32.v	v18, (a5)
     790: 93 07 85 02  	addi	a5, a0, 40
     794: 07 ea 07 22  	vlseg2e32.v	v20, (a5)
     798: 93 07 85 04  	addi	a5, a0, 72
     79c: 57 a4 19 ef  	vwmul.vv	v8, v17, v19
     7a0: 57 24 28 f7  	vwmacc.vv	v8, v16, v18
     7a4: 57 24 46 f7  	vwmacc.vv	v8, v12, v20
     7a8: 57 a4 56 f7  	vwmacc.vv	v8, v13, v21
     7ac: 57 27 da ee  	vwmul.vv	v14, v13, v20
     7b0: 57 2b 56 ef  	vwmul.vv	v22, v21, v12
     7b4: 07 e6 07 22  	vlseg2e32.v	v12, (a5)
     7b8: 57 a7 28 f7  	vwmacc.vv	v14, v17, v18
     7bc: 57 ab 09 f7  	vwmacc.vv	v22, v19, v16
     7c0: 07 68 07 22  	vlseg2e32.v	v16, (a4)
     7c4: 13 07 85 06  	addi	a4, a0, 104
     7c8: 07 69 07 22  	vlseg2e32.v	v18, (a4)
     7cc: 57 24 c5 f6  	vwmacc.vv	v8, v10, v12
     7d0: 57 a4 d5 f6  	vwmacc.vv	v8, v11, v13
     7d4: 57 a7 c5 f6  	vwmacc.vv	v14, v11, v12
     7d8: 57 ab a6 f6  	vwmacc.vv	v22, v13, v10
     7dc: 07 65 0e 22  	vlseg2e32.v	v10, (t3)
     7e0: 13 07 85 08  	addi	a4, a0, 136
     7e4: 07 66 07 22  	vlseg2e32.v	v12, (a4)
     7e8: 57 24 28 f7  	vwmacc.vv	v8, v16, v18
     7ec: 57 a4 38 f7  	vwmacc.vv	v8, v17, v19
     7f0: 57 a7 28 f7  	vwmacc.vv	v14, v17, v18
     7f4: 57 ab 09 f7  	vwmacc.vv	v22, v19, v16
     7f8: 07 68 03 22  	vlseg2e32.v	v16, (t1)
     7fc: 13 07 85 0a  	addi	a4, a0, 168
     800: 07 69 07 22  	vlseg2e32.v	v18, (a4)
     804: 57 24 c5 f6  	vwmacc.vv	v8, v10, v12
     808: 57 a4 d5 f6  	vwmacc.vv	v8, v11, v13
     80c: 57 a7 c5 f6  	vwmacc.vv	v14, v11, v12
     810: 57 ab a6 f6  	vwmacc.vv	v22, v13, v10
     814: 07 e5 02 22  	vlseg2e32.v	v10, (t0)
     818: 13 07 85 0c  	addi	a4, a0, 200
     81c: 07 66 07 22  	vlseg2e32.v	v12, (a4)
     820: 57 24 28 f7  	vwmacc.vv	v8, v16, v18
     824: 57 a4 38 f7  	vwmacc.vv	v8, v17, v19
     828: 57 a7 28 f7  	vwmacc.vv	v14, v17, v18
     82c: 57 ab 09 f7  	vwmacc.vv	v22, v19, v16
     830: 07 e8 08 22  	vlseg2e32.v	v16, (a7)
     834: 13 07 85 0e  	addi	a4, a0, 232
     838: 07 69 07 22  	vlseg2e32.v	v18, (a4)
     83c: 57 24 c5 f6  	vwmacc.vv	v8, v10, v12
     840: 57 a4 d5 f6  	vwmacc.vv	v8, v11, v13
     844: 57 a7 c5 f6  	vwmacc.vv	v14, v11, v12
     848: 57 ab a6 f6  	vwmacc.vv	v22, v13, v10
     84c: 07 65 08 22  	vlseg2e32.v	v10, (a6)
     850: 13 07 85 10  	addi	a4, a0, 264
     854: 07 66 07 22  	vlseg2e32.v	v12, (a4)
     858: 57 24 28 f7  	vwmacc.vv	v8, v16, v18
     85c: 57 a4 38 f7  	vwmacc.vv	v8, v17, v19
     860: 57 a7 28 f7  	vwmacc.vv	v14, v17, v18
     864: 57 ab 09 f7  	vwmacc.vv	v22, v19, v16
     868: 57 24 c5 f6  	vwmacc.vv	v8, v10, v12
     86c: 57 a4 d5 f6  	vwmacc.vv	v8, v11, v13
     870: 57 ab a6 f6  	vwmacc.vv	v22, v13, v10
     874: 57 70 90 0d  	vsetvli	zero, zero, e64, m2, ta, ma
     878: 57 07 eb 0a  	vsub.vv	v14, v14, v22
     87c: 57 70 00 0d  	vsetvli	zero, zero, e32, m1, ta, ma
     880: 57 a7 c5 f6  	vwmacc.vv	v14, v11, v12
     884: 57 70 92 cd  	vsetivli	zero, 4, e64, m2, ta, ma
     888: 13 07 85 12  	addi	a4, a0, 296
     88c: 83 28 85 12  	lw	a7, 296(a0)
     890: 1e 97        	add	a4, a4, t2
     892: 03 23 07 00  	lw	t1, 0(a4)
     896: 57 65 00 42  	vmv.s.x	v10, zero
     89a: 57 25 e5 02  	vredsum.vs	v10, v14, v10
     89e: b3 07 13 03  	mul	a5, t1, a7
     8a2: d7 e5 07 42  	vmv.s.x	v11, a5
     8a6: 83 27 c5 12  	lw	a5, 300(a0)
     8aa: 58 43        	lw	a4, 4(a4)
     8ac: 57 a4 85 02  	vredsum.vs	v8, v8, v11
     8b0: d7 22 a0 42  	vmv.x.s	t0, v10
     8b4: 57 28 80 42  	vmv.x.s	a6, v8
     8b8: b3 06 f7 02  	mul	a3, a4, a5
     8bc: 36 98        	add	a6, a6, a3
     8be: b3 08 17 03  	mul	a7, a4, a7
     8c2: 33 83 67 02  	mul	t1, a5, t1
     8c6: 03 2f 05 00  	lw	t5, 0(a0)
     8ca: 83 a3 0e 00  	lw	t2, 0(t4)
     8ce: 58 41        	lw	a4, 4(a0)
     8d0: 83 a6 4e 00  	lw	a3, 4(t4)
     8d4: b3 07 13 41  	sub	a5, t1, a7
     8d8: b3 88 f2 40  	sub	a7, t0, a5
     8dc: b3 82 e3 03  	mul	t0, t2, t5
     8e0: b3 87 e6 02  	mul	a5, a3, a4
     8e4: 96 97        	add	a5, a5, t0
     8e6: 33 8e 07 01  	add	t3, a5, a6
     8ea: b3 86 e6 03  	mul	a3, a3, t5
     8ee: 33 07 77 02  	mul	a4, a4, t2
     8f2: 15 8f        	sub	a4, a4, a3
     8f4: b3 82 e8 40  	sub	t0, a7, a4
     8f8: 89 46        	li	a3, 2
     8fa: 91 9e        	subw	a3, a3, a2
     8fc: 96 06        	slli	a3, a3, 5
     8fe: 33 83 d5 00  	add	t1, a1, a3
     902: 93 03 03 01  	addi	t2, t1, 16
     906: 93 57 0e 02  	srli	a5, t3, 32
     90a: 05 4f        	li	t5, 1
     90c: 85 4f        	li	t6, 1
     90e: 8d cb        	beqz	a5, 0x940 <autocorrelate+0x1f8>
     910: 9b de f7 41  	sraiw	t4, a5, 31
     914: b3 c6 d7 01  	xor	a3, a5, t4
     918: bb 86 d6 41  	subw	a3, a3, t4
     91c: 9b de e6 01  	srliw	t4, a3, 30
     920: 93 0f 00 02  	li	t6, 32
     924: 63 9e 0e 00  	bnez	t4, 0x940 <autocorrelate+0x1f8>
     928: 93 0f 00 02  	li	t6, 32
     92c: 86 07        	slli	a5, a5, 1
     92e: 9b d6 f7 41  	sraiw	a3, a5, 31
     932: 33 c7 d7 00  	xor	a4, a5, a3
     936: 15 9f        	subw	a4, a4, a3
     938: 9b 56 e7 01  	srliw	a3, a4, 30
     93c: fd 3f        	addiw	t6, t6, -1
     93e: fd d6        	beqz	a3, 0x92c <autocorrelate+0x1e4>
     940: 9b 86 ff ff  	addiw	a3, t6, -1
     944: bb 16 df 00  	sllw	a3, t5, a3
     948: 82 16        	slli	a3, a3, 32
     94a: 81 92        	srli	a3, a3, 32
     94c: f2 96        	add	a3, a3, t3
     94e: b3 d6 f6 41  	sra	a3, a3, t6
     952: 81 26        	sext.w	a3, a3
     954: 93 86 06 04  	addi	a3, a3, 64
     958: 9d 82        	srli	a3, a3, 7
     95a: 9a 06        	slli	a3, a3, 6
     95c: bd 2f        	addiw	t6, t6, 15
     95e: d3 f7 06 d0  	fcvt.s.w	fa5, a3
     962: 53 f7 0f d0  	fcvt.s.w	fa4, t6
     966: 27 a0 f3 00  	fsw	fa5, 0(t2)
     96a: 27 a2 e3 00  	fsw	fa4, 4(t2)
     96e: 93 d6 02 02  	srli	a3, t0, 32
     972: 61 03        	addi	t1, t1, 24
     974: 9d c6        	beqz	a3, 0x9a2 <autocorrelate+0x25a>
     976: 1b d7 f6 41  	sraiw	a4, a3, 31
     97a: b3 c7 e6 00  	xor	a5, a3, a4
     97e: 99 9f        	subw	a5, a5, a4
     980: 1b d7 e7 01  	srliw	a4, a5, 30
     984: 13 0f 00 02  	li	t5, 32
     988: 09 ef        	bnez	a4, 0x9a2 <autocorrelate+0x25a>
     98a: 13 0f 00 02  	li	t5, 32
     98e: 86 06        	slli	a3, a3, 1
     990: 1b d7 f6 41  	sraiw	a4, a3, 31
     994: b3 c7 e6 00  	xor	a5, a3, a4
     998: 99 9f        	subw	a5, a5, a4
     99a: 1b d7 e7 01  	srliw	a4, a5, 30
     99e: 7d 3f        	addiw	t5, t5, -1
     9a0: 7d d7        	beqz	a4, 0x98e <autocorrelate+0x246>
     9a2: 1b 07 ff ff  	addiw	a4, t5, -1
     9a6: 85 46        	li	a3, 1
     9a8: 3b 97 e6 00  	sllw	a4, a3, a4
     9ac: 02 17        	slli	a4, a4, 32
     9ae: 01 93        	srli	a4, a4, 32
     9b0: 16 97        	add	a4, a4, t0
     9b2: 33 57 e7 41  	sra	a4, a4, t5
     9b6: 01 27        	sext.w	a4, a4
     9b8: 13 07 07 04  	addi	a4, a4, 64
     9bc: 1d 83        	srli	a4, a4, 7
     9be: 1a 07        	slli	a4, a4, 6
     9c0: 3d 2f        	addiw	t5, t5, 15
     9c2: d3 77 07 d0  	fcvt.s.w	fa5, a4
     9c6: 53 77 0f d0  	fcvt.s.w	fa4, t5
     9ca: 27 20 f3 00  	fsw	fa5, 0(t1)
     9ce: 27 22 e3 00  	fsw	fa4, 4(t1)
     9d2: 63 1b d6 28  	bne	a2, a3, 0xc68 <autocorrelate+0x520>
     9d6: 83 22 05 13  	lw	t0, 304(a0)
     9da: 83 27 85 13  	lw	a5, 312(a0)
     9de: 03 27 45 13  	lw	a4, 308(a0)
     9e2: 03 25 c5 13  	lw	a0, 316(a0)
     9e6: 33 86 57 02  	mul	a2, a5, t0
     9ea: 42 96        	add	a2, a2, a6
     9ec: 33 08 e5 02  	mul	a6, a0, a4
     9f0: 32 98        	add	a6, a6, a2
     9f2: 33 05 55 02  	mul	a0, a0, t0
     9f6: 33 06 f7 02  	mul	a2, a4, a5
     9fa: b3 87 c8 40  	sub	a5, a7, a2
     9fe: 13 56 08 02  	srli	a2, a6, 32
     a02: aa 97        	add	a5, a5, a0
     a04: 1d c6        	beqz	a2, 0xa32 <autocorrelate+0x2ea>
     a06: 1b 55 f6 41  	sraiw	a0, a2, 31
     a0a: b3 46 a6 00  	xor	a3, a2, a0
     a0e: 89 9e        	subw	a3, a3, a0
     a10: 1b d5 e6 01  	srliw	a0, a3, 30
     a14: 93 06 00 02  	li	a3, 32
     a18: 09 ed        	bnez	a0, 0xa32 <autocorrelate+0x2ea>
     a1a: 93 06 00 02  	li	a3, 32
     a1e: 06 06        	slli	a2, a2, 1
     a20: 1b 55 f6 41  	sraiw	a0, a2, 31
     a24: 33 47 a6 00  	xor	a4, a2, a0
     a28: 09 9f        	subw	a4, a4, a0
     a2a: 1b 55 e7 01  	srliw	a0, a4, 30
     a2e: fd 36        	addiw	a3, a3, -1
     a30: 7d d5        	beqz	a0, 0xa1e <autocorrelate+0x2d6>
     a32: 1b 85 f6 ff  	addiw	a0, a3, -1
     a36: 85 48        	li	a7, 1
     a38: 3b 95 a8 00  	sllw	a0, a7, a0
     a3c: 02 15        	slli	a0, a0, 32
     a3e: 01 91        	srli	a0, a0, 32
     a40: 42 95        	add	a0, a0, a6
     a42: 33 55 d5 40  	sra	a0, a0, a3
     a46: 01 25        	sext.w	a0, a0
     a48: 13 05 05 04  	addi	a0, a0, 64
     a4c: 1d 81        	srli	a0, a0, 7
     a4e: 1a 05        	slli	a0, a0, 6
     a50: bd 26        	addiw	a3, a3, 15
     a52: d3 77 05 d0  	fcvt.s.w	fa5, a0
     a56: 53 f7 06 d0  	fcvt.s.w	fa4, a3
     a5a: 27 a0 f5 00  	fsw	fa5, 0(a1)
     a5e: 27 a2 e5 00  	fsw	fa4, 4(a1)
     a62: 13 d7 07 02  	srli	a4, a5, 32
     a66: 85 46        	li	a3, 1
     a68: 1d c7        	beqz	a4, 0xa96 <autocorrelate+0x34e>
     a6a: 1b 55 f7 41  	sraiw	a0, a4, 31
     a6e: b3 46 a7 00  	xor	a3, a4, a0
     a72: 89 9e        	subw	a3, a3, a0
     a74: 1b d5 e6 01  	srliw	a0, a3, 30
     a78: 93 06 00 02  	li	a3, 32
     a7c: 09 ed        	bnez	a0, 0xa96 <autocorrelate+0x34e>
     a7e: 93 06 00 02  	li	a3, 32
     a82: 06 07        	slli	a4, a4, 1
     a84: 1b 56 f7 41  	sraiw	a2, a4, 31
     a88: 33 45 c7 00  	xor	a0, a4, a2
     a8c: 11 9d        	subw	a0, a0, a2
     a8e: 1b 55 e5 01  	srliw	a0, a0, 30
     a92: fd 36        	addiw	a3, a3, -1
     a94: 7d d5        	beqz	a0, 0xa82 <autocorrelate+0x33a>
     a96: 1b 85 f6 ff  	addiw	a0, a3, -1
     a9a: 3b 95 a8 00  	sllw	a0, a7, a0
     a9e: 02 15        	slli	a0, a0, 32
     aa0: 01 91        	srli	a0, a0, 32
     aa2: 3e 95        	add	a0, a0, a5
     aa4: 33 55 d5 40  	sra	a0, a0, a3
     aa8: 01 25        	sext.w	a0, a0
     aaa: 13 05 05 04  	addi	a0, a0, 64
     aae: 1d 81        	srli	a0, a0, 7
     ab0: 1a 05        	slli	a0, a0, 6
     ab2: bd 26        	addiw	a3, a3, 15
     ab4: d3 77 05 d0  	fcvt.s.w	fa5, a0
     ab8: 53 f7 06 d0  	fcvt.s.w	fa4, a3
     abc: 27 a4 f5 00  	fsw	fa5, 8(a1)
     ac0: 27 a6 e5 00  	fsw	fa4, 12(a1)
     ac4: 82 80        	ret
     ac6: 13 06 85 10  	addi	a2, a0, 264
     aca: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     ace: 07 64 06 22  	vlseg2e32.v	v8, (a2)
     ad2: 13 06 85 0e  	addi	a2, a0, 232
     ad6: 07 65 06 22  	vlseg2e32.v	v10, (a2)
     ada: 13 06 85 0c  	addi	a2, a0, 200
     ade: 07 67 06 22  	vlseg2e32.v	v14, (a2)
     ae2: 13 06 85 0a  	addi	a2, a0, 168
     ae6: 07 68 06 22  	vlseg2e32.v	v16, (a2)
     aea: 13 06 85 08  	addi	a2, a0, 136
     aee: 07 69 06 22  	vlseg2e32.v	v18, (a2)
     af2: 13 06 85 06  	addi	a2, a0, 104
     af6: 07 6a 06 22  	vlseg2e32.v	v20, (a2)
     afa: 13 06 85 04  	addi	a2, a0, 72
     afe: 93 06 85 00  	addi	a3, a0, 8
     b02: 07 eb 06 22  	vlseg2e32.v	v22, (a3)
     b06: 93 06 85 02  	addi	a3, a0, 40
     b0a: 07 ec 06 22  	vlseg2e32.v	v24, (a3)
     b0e: 07 6d 06 22  	vlseg2e32.v	v26, (a2)
     b12: 57 a6 7b ef  	vwmul.vv	v12, v23, v23
     b16: 57 26 6b f7  	vwmacc.vv	v12, v22, v22
     b1a: 57 26 8c f7  	vwmacc.vv	v12, v24, v24
     b1e: 57 a6 9c f7  	vwmacc.vv	v12, v25, v25
     b22: 57 26 ad f7  	vwmacc.vv	v12, v26, v26
     b26: 57 a6 bd f7  	vwmacc.vv	v12, v27, v27
     b2a: 57 26 4a f7  	vwmacc.vv	v12, v20, v20
     b2e: 57 a6 5a f7  	vwmacc.vv	v12, v21, v21
     b32: 57 26 29 f7  	vwmacc.vv	v12, v18, v18
     b36: 57 a6 39 f7  	vwmacc.vv	v12, v19, v19
     b3a: 57 26 08 f7  	vwmacc.vv	v12, v16, v16
     b3e: 57 a6 18 f7  	vwmacc.vv	v12, v17, v17
     b42: 57 26 e7 f6  	vwmacc.vv	v12, v14, v14
     b46: 57 a6 f7 f6  	vwmacc.vv	v12, v15, v15
     b4a: 57 26 a5 f6  	vwmacc.vv	v12, v10, v10
     b4e: 03 26 85 12  	lw	a2, 296(a0)
     b52: 57 a6 b5 f6  	vwmacc.vv	v12, v11, v11
     b56: 57 26 84 f6  	vwmacc.vv	v12, v8, v8
     b5a: 57 a6 94 f6  	vwmacc.vv	v12, v9, v9
     b5e: 33 06 c6 02  	mul	a2, a2, a2
     b62: 57 70 92 cd  	vsetivli	zero, 4, e64, m2, ta, ma
     b66: 57 64 06 42  	vmv.s.x	v8, a2
     b6a: 57 24 c4 02  	vredsum.vs	v8, v12, v8
     b6e: 03 26 c5 12  	lw	a2, 300(a0)
     b72: 57 28 80 42  	vmv.x.s	a6, v8
     b76: 14 41        	lw	a3, 0(a0)
     b78: 58 41        	lw	a4, 4(a0)
     b7a: 33 06 c6 02  	mul	a2, a2, a2
     b7e: 32 98        	add	a6, a6, a2
     b80: 33 86 d6 02  	mul	a2, a3, a3
     b84: b3 06 e7 02  	mul	a3, a4, a4
     b88: 36 96        	add	a2, a2, a3
     b8a: b3 08 06 01  	add	a7, a2, a6
     b8e: 13 d6 08 02  	srli	a2, a7, 32
     b92: 85 42        	li	t0, 1
     b94: 85 47        	li	a5, 1
     b96: 1d c6        	beqz	a2, 0xbc4 <autocorrelate+0x47c>
     b98: 9b 57 f6 41  	sraiw	a5, a2, 31
     b9c: 33 47 f6 00  	xor	a4, a2, a5
     ba0: 1d 9f        	subw	a4, a4, a5
     ba2: 1b 57 e7 01  	srliw	a4, a4, 30
     ba6: 93 07 00 02  	li	a5, 32
     baa: 09 ef        	bnez	a4, 0xbc4 <autocorrelate+0x47c>
     bac: 93 07 00 02  	li	a5, 32
     bb0: 06 06        	slli	a2, a2, 1
     bb2: 1b 57 f6 41  	sraiw	a4, a2, 31
     bb6: b3 46 e6 00  	xor	a3, a2, a4
     bba: 99 9e        	subw	a3, a3, a4
     bbc: 9b d6 e6 01  	srliw	a3, a3, 30
     bc0: fd 37        	addiw	a5, a5, -1
     bc2: fd d6        	beqz	a3, 0xbb0 <autocorrelate+0x468>
     bc4: 1b 86 f7 ff  	addiw	a2, a5, -1
     bc8: 3b 96 c2 00  	sllw	a2, t0, a2
     bcc: 02 16        	slli	a2, a2, 32
     bce: 01 92        	srli	a2, a2, 32
     bd0: 46 96        	add	a2, a2, a7
     bd2: 33 56 f6 40  	sra	a2, a2, a5
     bd6: 01 26        	sext.w	a2, a2
     bd8: 13 06 06 04  	addi	a2, a2, 64
     bdc: 1d 82        	srli	a2, a2, 7
     bde: 1a 06        	slli	a2, a2, 6
     be0: bd 27        	addiw	a5, a5, 15
     be2: d3 77 06 d0  	fcvt.s.w	fa5, a2
     be6: 53 f7 07 d0  	fcvt.s.w	fa4, a5
     bea: 27 a8 f5 04  	fsw	fa5, 80(a1)
     bee: 27 aa e5 04  	fsw	fa4, 84(a1)
     bf2: 03 26 05 13  	lw	a2, 304(a0)
     bf6: 03 25 45 13  	lw	a0, 308(a0)
     bfa: 33 06 c6 02  	mul	a2, a2, a2
     bfe: 42 96        	add	a2, a2, a6
     c00: 33 05 a5 02  	mul	a0, a0, a0
     c04: 32 95        	add	a0, a0, a2
     c06: 93 56 05 02  	srli	a3, a0, 32
     c0a: 9d c6        	beqz	a3, 0xc38 <autocorrelate+0x4f0>
     c0c: 1b d6 f6 41  	sraiw	a2, a3, 31
     c10: 33 c7 c6 00  	xor	a4, a3, a2
     c14: 11 9f        	subw	a4, a4, a2
     c16: 1b 56 e7 01  	srliw	a2, a4, 30
     c1a: 93 02 00 02  	li	t0, 32
     c1e: 09 ee        	bnez	a2, 0xc38 <autocorrelate+0x4f0>
     c20: 93 02 00 02  	li	t0, 32
     c24: 86 06        	slli	a3, a3, 1
     c26: 1b d6 f6 41  	sraiw	a2, a3, 31
     c2a: 33 c7 c6 00  	xor	a4, a3, a2
     c2e: 11 9f        	subw	a4, a4, a2
     c30: 1b 56 e7 01  	srliw	a2, a4, 30
     c34: fd 32        	addiw	t0, t0, -1
     c36: 7d d6        	beqz	a2, 0xc24 <autocorrelate+0x4dc>
     c38: 1b 86 f2 ff  	addiw	a2, t0, -1
     c3c: 85 46        	li	a3, 1
     c3e: 3b 96 c6 00  	sllw	a2, a3, a2
     c42: 02 16        	slli	a2, a2, 32
     c44: 01 92        	srli	a2, a2, 32
     c46: 32 95        	add	a0, a0, a2
     c48: 33 55 55 40  	sra	a0, a0, t0
     c4c: 01 25        	sext.w	a0, a0
     c4e: 13 05 05 04  	addi	a0, a0, 64
     c52: 1d 81        	srli	a0, a0, 7
     c54: 1a 05        	slli	a0, a0, 6
     c56: bd 22        	addiw	t0, t0, 15
     c58: d3 77 05 d0  	fcvt.s.w	fa5, a0
     c5c: 53 f7 02 d0  	fcvt.s.w	fa4, t0
     c60: 27 a0 f5 02  	fsw	fa5, 32(a1)
     c64: 27 a2 e5 02  	fsw	fa4, 36(a1)
     c68: 82 80        	ret

0000000000000c6a <main>:
     c6a: 19 71        	addi	sp, sp, -128
     c6c: 86 fc        	sd	ra, 120(sp)
     c6e: a2 f8        	sd	s0, 112(sp)
     c70: a6 f4        	sd	s1, 104(sp)
     c72: ca f0        	sd	s2, 96(sp)
     c74: 0a 85        	mv	a0, sp
     c76: 13 06 00 06  	li	a2, 96
     c7a: 81 45        	li	a1, 0
     c7c: ef f0 5f a0  	jal	0x680 <.plt+0x60>
     c80: 17 05 00 00  	auipc	a0, 0
     c84: 13 04 45 0f  	addi	s0, a0, 244
     c88: 8a 85        	mv	a1, sp
     c8a: 22 85        	mv	a0, s0
     c8c: 01 46        	li	a2, 0
     c8e: ef f0 bf ab  	jal	0x748 <autocorrelate>
     c92: 8a 85        	mv	a1, sp
     c94: 05 46        	li	a2, 1
     c96: 22 85        	mv	a0, s0
     c98: ef f0 1f ab  	jal	0x748 <autocorrelate>
     c9c: 8a 85        	mv	a1, sp
     c9e: 09 46        	li	a2, 2
     ca0: 22 85        	mv	a0, s0
     ca2: ef f0 7f aa  	jal	0x748 <autocorrelate>
     ca6: 17 05 00 00  	auipc	a0, 0
     caa: 13 05 75 24  	addi	a0, a0, 583
     cae: ef f0 3f 9b  	jal	0x660 <.plt+0x40>
     cb2: 17 05 00 00  	auipc	a0, 0
     cb6: 13 09 25 20  	addi	s2, a0, 514
     cba: 4a 85        	mv	a0, s2
     cbc: 81 45        	li	a1, 0
     cbe: ef f0 3f 9b  	jal	0x670 <.plt+0x50>
     cc2: 87 27 01 05  	flw	fa5, 80(sp)
     cc6: d3 87 07 42  	fcvt.d.s	fa5, fa5
     cca: d3 85 07 e2  	fmv.x.d	a1, fa5
     cce: 17 05 00 00  	auipc	a0, 0
     cd2: 93 04 f5 1e  	addi	s1, a0, 495
     cd6: 26 85        	mv	a0, s1
     cd8: ef f0 9f 99  	jal	0x670 <.plt+0x50>
     cdc: 87 27 81 05  	flw	fa5, 88(sp)
     ce0: d3 87 07 42  	fcvt.d.s	fa5, fa5
     ce4: d3 85 07 e2  	fmv.x.d	a1, fa5
     ce8: 17 05 00 00  	auipc	a0, 0
     cec: 13 04 d5 1e  	addi	s0, a0, 493
     cf0: 22 85        	mv	a0, s0
     cf2: ef f0 ff 97  	jal	0x670 <.plt+0x50>
     cf6: 29 45        	li	a0, 10
     cf8: ef f0 9f 95  	jal	0x650 <.plt+0x30>
     cfc: 85 45        	li	a1, 1
     cfe: 4a 85        	mv	a0, s2
     d00: ef f0 1f 97  	jal	0x670 <.plt+0x50>
     d04: 87 27 01 03  	flw	fa5, 48(sp)
     d08: d3 87 07 42  	fcvt.d.s	fa5, fa5
     d0c: d3 85 07 e2  	fmv.x.d	a1, fa5
     d10: 26 85        	mv	a0, s1
     d12: ef f0 ff 95  	jal	0x670 <.plt+0x50>
     d16: 87 27 81 03  	flw	fa5, 56(sp)
     d1a: d3 87 07 42  	fcvt.d.s	fa5, fa5
     d1e: d3 85 07 e2  	fmv.x.d	a1, fa5
     d22: 22 85        	mv	a0, s0
     d24: ef f0 df 94  	jal	0x670 <.plt+0x50>
     d28: 29 45        	li	a0, 10
     d2a: ef f0 7f 92  	jal	0x650 <.plt+0x30>
     d2e: 89 45        	li	a1, 2
     d30: 4a 85        	mv	a0, s2
     d32: ef f0 ff 93  	jal	0x670 <.plt+0x50>
     d36: 87 27 01 01  	flw	fa5, 16(sp)
     d3a: d3 87 07 42  	fcvt.d.s	fa5, fa5
     d3e: d3 85 07 e2  	fmv.x.d	a1, fa5
     d42: 26 85        	mv	a0, s1
     d44: ef f0 df 92  	jal	0x670 <.plt+0x50>
     d48: 87 27 81 01  	flw	fa5, 24(sp)
     d4c: d3 87 07 42  	fcvt.d.s	fa5, fa5
     d50: d3 85 07 e2  	fmv.x.d	a1, fa5
     d54: 22 85        	mv	a0, s0
     d56: ef f0 bf 91  	jal	0x670 <.plt+0x50>
     d5a: 29 45        	li	a0, 10
     d5c: ef f0 5f 8f  	jal	0x650 <.plt+0x30>
     d60: 01 45        	li	a0, 0
     d62: e6 70        	ld	ra, 120(sp)
     d64: 46 74        	ld	s0, 112(sp)
     d66: a6 74        	ld	s1, 104(sp)
     d68: 06 79        	ld	s2, 96(sp)
     d6a: 09 61        	addi	sp, sp, 128
     d6c: 82 80        	ret
