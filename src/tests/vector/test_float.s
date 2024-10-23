
test:	file format elf64-littleriscv

Disassembly of section .plt:

0000000000000570 <.plt>:
     570: 97 23 00 00  	auipc	t2, 2
     574: 33 03 c3 41  	sub	t1, t1, t3
     578: 03 be 83 a9  	ld	t3, -1384(t2)
     57c: 13 03 43 fd  	addi	t1, t1, -44
     580: 93 82 83 a9  	addi	t0, t2, -1384
     584: 13 53 13 00  	srli	t1, t1, 1
     588: 83 b2 82 00  	ld	t0, 8(t0)
     58c: 67 00 0e 00  	jr	t3
     590: 17 2e 00 00  	auipc	t3, 2
     594: 03 3e 8e a8  	ld	t3, -1400(t3)
     598: 67 03 0e 00  	jalr	t1, t3
     59c: 13 00 00 00  	nop
     5a0: 17 2e 00 00  	auipc	t3, 2
     5a4: 03 3e 0e a8  	ld	t3, -1408(t3)
     5a8: 67 03 0e 00  	jalr	t1, t3
     5ac: 13 00 00 00  	nop

Disassembly of section .text:

00000000000005b0 <_start>:
     5b0: ef 00 20 02  	jal	0x5d2 <load_gp>
     5b4: aa 87        	mv	a5, a0
     5b6: 17 25 00 00  	auipc	a0, 2
     5ba: 03 35 25 a8  	ld	a0, -1406(a0)
     5be: 82 65        	ld	a1, 0(sp)
     5c0: 30 00        	addi	a2, sp, 8
     5c2: 13 71 01 ff  	andi	sp, sp, -16
     5c6: 81 46        	li	a3, 0
     5c8: 01 47        	li	a4, 0
     5ca: 0a 88        	mv	a6, sp
     5cc: ef f0 5f fc  	jal	0x590 <.plt+0x20>
     5d0: 02 90        	ebreak

00000000000005d2 <load_gp>:
     5d2: 97 21 00 00  	auipc	gp, 2
     5d6: 93 81 e1 22  	addi	gp, gp, 558
     5da: 82 80        	ret
     5dc: 00 00        	unimp

00000000000005de <deregister_tm_clones>:
     5de: 17 25 00 00  	auipc	a0, 2
     5e2: 13 05 a5 a2  	addi	a0, a0, -1494
     5e6: 97 27 00 00  	auipc	a5, 2
     5ea: 93 87 27 a2  	addi	a5, a5, -1502
     5ee: 63 88 a7 00  	beq	a5, a0, 0x5fe <deregister_tm_clones+0x20>
     5f2: 97 27 00 00  	auipc	a5, 2
     5f6: 83 b7 e7 a3  	ld	a5, -1474(a5)
     5fa: 91 c3        	beqz	a5, 0x5fe <deregister_tm_clones+0x20>
     5fc: 82 87        	jr	a5
     5fe: 82 80        	ret

0000000000000600 <register_tm_clones>:
     600: 17 25 00 00  	auipc	a0, 2
     604: 13 05 85 a0  	addi	a0, a0, -1528
     608: 97 25 00 00  	auipc	a1, 2
     60c: 93 85 05 a0  	addi	a1, a1, -1536
     610: 89 8d        	sub	a1, a1, a0
     612: 93 d7 35 40  	srai	a5, a1, 3
     616: fd 91        	srli	a1, a1, 63
     618: be 95        	add	a1, a1, a5
     61a: 85 85        	srai	a1, a1, 1
     61c: 99 c5        	beqz	a1, 0x62a <register_tm_clones+0x2a>
     61e: 97 27 00 00  	auipc	a5, 2
     622: 83 b7 a7 a2  	ld	a5, -1494(a5)
     626: 91 c3        	beqz	a5, 0x62a <register_tm_clones+0x2a>
     628: 82 87        	jr	a5
     62a: 82 80        	ret

000000000000062c <__do_global_dtors_aux>:
     62c: 41 11        	addi	sp, sp, -16
     62e: 22 e0        	sd	s0, 0(sp)
     630: 17 24 00 00  	auipc	s0, 2
     634: 13 04 04 a2  	addi	s0, s0, -1504
     638: 83 47 04 00  	lbu	a5, 0(s0)
     63c: 06 e4        	sd	ra, 8(sp)
     63e: 85 e3        	bnez	a5, 0x65e <__do_global_dtors_aux+0x32>
     640: 97 27 00 00  	auipc	a5, 2
     644: 83 b7 07 a0  	ld	a5, -1536(a5)
     648: 91 c7        	beqz	a5, 0x654 <__do_global_dtors_aux+0x28>
     64a: 17 25 00 00  	auipc	a0, 2
     64e: 03 35 65 9b  	ld	a0, -1610(a0)
     652: 82 97        	jalr	a5
     654: ef f0 bf f8  	jal	0x5de <deregister_tm_clones>
     658: 85 47        	li	a5, 1
     65a: 23 00 f4 00  	sb	a5, 0(s0)
     65e: a2 60        	ld	ra, 8(sp)
     660: 02 64        	ld	s0, 0(sp)
     662: 41 01        	addi	sp, sp, 16
     664: 82 80        	ret

0000000000000666 <frame_dummy>:
     666: 69 bf        	j	0x600 <register_tm_clones>

0000000000000668 <vector_divide>:
     668: 63 57 d0 0a  	blez	a3, 0x716 <vector_divide+0xae>
     66c: 13 87 f6 ff  	addi	a4, a3, -1
     670: 13 58 27 00  	srli	a6, a4, 2
     674: 73 2e 20 c2  	csrr	t3, vlenb
     678: 13 57 1e 00  	srli	a4, t3, 1
     67c: a1 47        	li	a5, 8
     67e: 05 08        	addi	a6, a6, 1
     680: 63 e3 e7 00  	bltu	a5, a4, 0x686 <vector_divide+0x1e>
     684: 21 47        	li	a4, 8
     686: 63 6b e8 02  	bltu	a6, a4, 0x6bc <vector_divide+0x54>
     68a: 13 97 26 00  	slli	a4, a3, 2
     68e: 71 17        	addi	a4, a4, -4
     690: 41 9b        	andi	a4, a4, -16
     692: 41 07        	addi	a4, a4, 16
     694: b3 07 e6 00  	add	a5, a2, a4
     698: b3 08 e5 00  	add	a7, a0, a4
     69c: b3 82 e5 00  	add	t0, a1, a4
     6a0: b3 38 16 01  	sltu	a7, a2, a7
     6a4: 33 37 f5 00  	sltu	a4, a0, a5
     6a8: b3 f8 e8 00  	and	a7, a7, a4
     6ac: 33 37 56 00  	sltu	a4, a2, t0
     6b0: b3 b7 f5 00  	sltu	a5, a1, a5
     6b4: 7d 8f        	and	a4, a4, a5
     6b6: 33 e7 e8 00  	or	a4, a7, a4
     6ba: 39 cf        	beqz	a4, 0x718 <vector_divide+0xb0>
     6bc: 01 47        	li	a4, 0
     6be: 93 17 27 00  	slli	a5, a4, 2
     6c2: a1 07        	addi	a5, a5, 8
     6c4: be 95        	add	a1, a1, a5
     6c6: 3e 96        	add	a2, a2, a5
     6c8: 3e 95        	add	a0, a0, a5
     6ca: 87 27 85 ff  	flw	fa5, -8(a0)
     6ce: 07 a7 85 ff  	flw	fa4, -8(a1)
     6d2: d3 f7 e7 18  	fdiv.s	fa5, fa5, fa4
     6d6: 27 2c f6 fe  	fsw	fa5, -8(a2)
     6da: 87 27 c5 ff  	flw	fa5, -4(a0)
     6de: 07 a7 c5 ff  	flw	fa4, -4(a1)
     6e2: d3 f7 e7 18  	fdiv.s	fa5, fa5, fa4
     6e6: 27 2e f6 fe  	fsw	fa5, -4(a2)
     6ea: 87 27 05 00  	flw	fa5, 0(a0)
     6ee: 07 a7 05 00  	flw	fa4, 0(a1)
     6f2: d3 f7 e7 18  	fdiv.s	fa5, fa5, fa4
     6f6: 27 20 f6 00  	fsw	fa5, 0(a2)
     6fa: 87 27 45 00  	flw	fa5, 4(a0)
     6fe: 07 a7 45 00  	flw	fa4, 4(a1)
     702: d3 f7 e7 18  	fdiv.s	fa5, fa5, fa4
     706: 27 22 f6 00  	fsw	fa5, 4(a2)
     70a: 11 07        	addi	a4, a4, 4
     70c: c1 05        	addi	a1, a1, 16
     70e: 41 06        	addi	a2, a2, 16
     710: 41 05        	addi	a0, a0, 16
     712: e3 6c d7 fa  	bltu	a4, a3, 0x6ca <vector_divide+0x62>
     716: 82 80        	ret
     718: 93 52 1e 00  	srli	t0, t3, 1
     71c: 33 07 50 40  	neg	a4, t0
     720: b3 78 e8 00  	and	a7, a6, a4
     724: 13 97 28 00  	slli	a4, a7, 2
     728: d7 77 a0 0d  	vsetvli	a5, zero, e64, m4, ta, ma
     72c: 57 a4 08 52  	vid.v	v8
     730: 57 34 81 96  	vsll.vi	v8, v8, 2
     734: 13 13 1e 00  	slli	t1, t3, 1
     738: 0e 0e        	slli	t3, t3, 3
     73a: c1 43        	li	t2, 16
     73c: b2 8e        	mv	t4, a2
     73e: 2e 8f        	mv	t5, a1
     740: aa 8f        	mv	t6, a0
     742: c6 87        	mv	a5, a7
     744: 07 e6 7f 0a  	vlse32.v	v12, (t6), t2
     748: 07 67 7f 0a  	vlse32.v	v14, (t5), t2
     74c: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     750: 57 16 c7 82  	vfdiv.vv	v12, v12, v14
     754: 27 e6 7e 0a  	vsse32.v	v12, (t4), t2
     758: 57 70 a0 0d  	vsetvli	zero, zero, e64, m4, ta, ma
     75c: 57 36 81 96  	vsll.vi	v12, v8, 2
     760: 57 38 c2 2a  	vor.vi	v16, v12, 4
     764: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     768: 07 7a 05 07  	vluxei64.v	v20, (a0), v16
     76c: 07 fb 05 07  	vluxei64.v	v22, (a1), v16
     770: 57 1a 4b 83  	vfdiv.vv	v20, v20, v22
     774: 27 7a 06 0f  	vsoxei64.v	v20, (a2), v16
     778: 57 70 a0 0d  	vsetvli	zero, zero, e64, m4, ta, ma
     77c: 57 38 c4 2a  	vor.vi	v16, v12, 8
     780: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     784: 07 7a 05 07  	vluxei64.v	v20, (a0), v16
     788: 07 fb 05 07  	vluxei64.v	v22, (a1), v16
     78c: 57 1a 4b 83  	vfdiv.vv	v20, v20, v22
     790: 27 7a 06 0f  	vsoxei64.v	v20, (a2), v16
     794: 57 70 a0 0d  	vsetvli	zero, zero, e64, m4, ta, ma
     798: 57 36 c6 2a  	vor.vi	v12, v12, 12
     79c: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     7a0: 07 78 c5 06  	vluxei64.v	v16, (a0), v12
     7a4: 07 f9 c5 06  	vluxei64.v	v18, (a1), v12
     7a8: 57 18 09 83  	vfdiv.vv	v16, v16, v18
     7ac: 27 78 c6 0e  	vsoxei64.v	v16, (a2), v12
     7b0: 57 70 a0 0d  	vsetvli	zero, zero, e64, m4, ta, ma
     7b4: 57 44 83 02  	vadd.vx	v8, v8, t1
     7b8: b3 87 57 40  	sub	a5, a5, t0
     7bc: f2 9f        	add	t6, t6, t3
     7be: 72 9f        	add	t5, t5, t3
     7c0: f2 9e        	add	t4, t4, t3
     7c2: c9 f3        	bnez	a5, 0x744 <vector_divide+0xdc>
     7c4: e3 09 18 f5  	beq	a6, a7, 0x716 <vector_divide+0xae>
     7c8: dd bd        	j	0x6be <vector_divide+0x56>

00000000000007ca <vector_abs>:
     7ca: 63 53 c0 04  	blez	a2, 0x810 <vector_abs+0x46>
     7ce: f3 26 20 c2  	csrr	a3, vlenb
     7d2: 13 d7 16 00  	srli	a4, a3, 1
     7d6: a1 47        	li	a5, 8
     7d8: 63 e3 e7 00  	bltu	a5, a4, 0x7de <vector_abs+0x14>
     7dc: 21 47        	li	a4, 8
     7de: 63 68 e6 00  	bltu	a2, a4, 0x7ee <vector_abs+0x24>
     7e2: 93 92 16 00  	slli	t0, a3, 1
     7e6: 33 87 a5 40  	sub	a4, a1, a0
     7ea: 63 74 57 02  	bgeu	a4, t0, 0x812 <vector_abs+0x48>
     7ee: 01 48        	li	a6, 0
     7f0: 93 16 28 00  	slli	a3, a6, 2
     7f4: b6 95        	add	a1, a1, a3
     7f6: 36 95        	add	a0, a0, a3
     7f8: 33 06 06 41  	sub	a2, a2, a6
     7fc: 87 27 05 00  	flw	fa5, 0(a0)
     800: d3 a7 f7 20  	fabs.s	fa5, fa5
     804: 27 a0 f5 00  	fsw	fa5, 0(a1)
     808: 91 05        	addi	a1, a1, 4
     80a: 7d 16        	addi	a2, a2, -1
     80c: 11 05        	addi	a0, a0, 4
     80e: 7d f6        	bnez	a2, 0x7fc <vector_abs+0x32>
     810: 82 80        	ret
     812: 13 d7 36 00  	srli	a4, a3, 3
     816: 93 17 27 00  	slli	a5, a4, 2
     81a: 02 17        	slli	a4, a4, 32
     81c: 1d 8f        	sub	a4, a4, a5
     81e: 33 78 c7 00  	and	a6, a4, a2
     822: 93 d8 16 00  	srli	a7, a3, 1
     826: d7 76 10 0d  	vsetvli	a3, zero, e32, m2, ta, ma
     82a: c2 86        	mv	a3, a6
     82c: 2e 87        	mv	a4, a1
     82e: aa 87        	mv	a5, a0
     830: 07 e4 87 22  	vl2re32.v	v8, (a5)
     834: 57 14 84 2a  	vfabs.v	v8, v8
     838: 27 04 87 22  	vs2r.v	v8, (a4)
     83c: 96 97        	add	a5, a5, t0
     83e: b3 86 16 41  	sub	a3, a3, a7
     842: 16 97        	add	a4, a4, t0
     844: f5 f6        	bnez	a3, 0x830 <vector_abs+0x66>
     846: e3 05 c8 fc  	beq	a6, a2, 0x810 <vector_abs+0x46>
     84a: 5d b7        	j	0x7f0 <vector_abs+0x26>

000000000000084c <float_to_int_convert>:
     84c: 63 54 c0 06  	blez	a2, 0x8b4 <float_to_int_convert+0x68>
     850: f3 22 20 c2  	csrr	t0, vlenb
     854: 93 d8 12 00  	srli	a7, t0, 1
     858: 63 74 16 01  	bgeu	a2, a7, 0x860 <float_to_int_convert+0x14>
     85c: 01 48        	li	a6, 0
     85e: 25 a8        	j	0x896 <float_to_int_convert+0x4a>
     860: 93 d6 32 00  	srli	a3, t0, 3
     864: 13 97 26 00  	slli	a4, a3, 2
     868: 82 16        	slli	a3, a3, 32
     86a: 99 8e        	sub	a3, a3, a4
     86c: 33 f8 c6 00  	and	a6, a3, a2
     870: 86 02        	slli	t0, t0, 1
     872: d7 76 10 0d  	vsetvli	a3, zero, e32, m2, ta, ma
     876: c2 86        	mv	a3, a6
     878: ae 87        	mv	a5, a1
     87a: 2a 87        	mv	a4, a0
     87c: 07 64 87 22  	vl2re32.v	v8, (a4)
     880: 57 94 83 4a  	vfcvt.rtz.x.f.v	v8, v8
     884: 27 84 87 22  	vs2r.v	v8, (a5)
     888: 16 97        	add	a4, a4, t0
     88a: b3 86 16 41  	sub	a3, a3, a7
     88e: 96 97        	add	a5, a5, t0
     890: f5 f6        	bnez	a3, 0x87c <float_to_int_convert+0x30>
     892: 63 01 c8 02  	beq	a6, a2, 0x8b4 <float_to_int_convert+0x68>
     896: 93 16 28 00  	slli	a3, a6, 2
     89a: b6 95        	add	a1, a1, a3
     89c: 36 95        	add	a0, a0, a3
     89e: 33 06 06 41  	sub	a2, a2, a6
     8a2: 87 27 05 00  	flw	fa5, 0(a0)
     8a6: d3 96 07 c0  	fcvt.w.s	a3, fa5, rtz
     8aa: 94 c1        	sw	a3, 0(a1)
     8ac: 91 05        	addi	a1, a1, 4
     8ae: 7d 16        	addi	a2, a2, -1
     8b0: 11 05        	addi	a0, a0, 4
     8b2: 65 fa        	bnez	a2, 0x8a2 <float_to_int_convert+0x56>
     8b4: 82 80        	ret

00000000000008b6 <vector_sgnj>:
     8b6: 63 5d d0 04  	blez	a3, 0x910 <vector_sgnj+0x5a>
     8ba: f3 28 20 c2  	csrr	a7, vlenb
     8be: 93 d7 18 00  	srli	a5, a7, 1
     8c2: 41 47        	li	a4, 16
     8c4: 63 63 f7 00  	bltu	a4, a5, 0x8ca <vector_sgnj+0x14>
     8c8: c1 47        	li	a5, 16
     8ca: 63 ee f6 00  	bltu	a3, a5, 0x8e6 <vector_sgnj+0x30>
     8ce: 93 92 18 00  	slli	t0, a7, 1
     8d2: 33 07 a6 40  	sub	a4, a2, a0
     8d6: 33 37 57 00  	sltu	a4, a4, t0
     8da: b3 07 b6 40  	sub	a5, a2, a1
     8de: b3 b7 57 00  	sltu	a5, a5, t0
     8e2: 5d 8f        	or	a4, a4, a5
     8e4: 1d c7        	beqz	a4, 0x912 <vector_sgnj+0x5c>
     8e6: 01 48        	li	a6, 0
     8e8: 13 17 28 00  	slli	a4, a6, 2
     8ec: 3a 96        	add	a2, a2, a4
     8ee: ba 95        	add	a1, a1, a4
     8f0: 3a 95        	add	a0, a0, a4
     8f2: b3 86 06 41  	sub	a3, a3, a6
     8f6: 87 27 05 00  	flw	fa5, 0(a0)
     8fa: 07 a7 05 00  	flw	fa4, 0(a1)
     8fe: d3 87 e7 20  	fsgnj.s	fa5, fa5, fa4
     902: 27 20 f6 00  	fsw	fa5, 0(a2)
     906: 11 06        	addi	a2, a2, 4
     908: 91 05        	addi	a1, a1, 4
     90a: fd 16        	addi	a3, a3, -1
     90c: 11 05        	addi	a0, a0, 4
     90e: e5 f6        	bnez	a3, 0x8f6 <vector_sgnj+0x40>
     910: 82 80        	ret
     912: 13 d7 38 00  	srli	a4, a7, 3
     916: 93 17 27 00  	slli	a5, a4, 2
     91a: 02 17        	slli	a4, a4, 32
     91c: 1d 8f        	sub	a4, a4, a5
     91e: 33 78 d7 00  	and	a6, a4, a3
     922: 93 d8 18 00  	srli	a7, a7, 1
     926: 57 77 10 0d  	vsetvli	a4, zero, e32, m2, ta, ma
     92a: 42 83        	mv	t1, a6
     92c: b2 83        	mv	t2, a2
     92e: 2e 87        	mv	a4, a1
     930: aa 87        	mv	a5, a0
     932: 07 e4 87 22  	vl2re32.v	v8, (a5)
     936: 07 65 87 22  	vl2re32.v	v10, (a4)
     93a: 57 14 85 22  	vfsgnj.vv	v8, v8, v10
     93e: 27 84 83 22  	vs2r.v	v8, (t2)
     942: 96 97        	add	a5, a5, t0
     944: 16 97        	add	a4, a4, t0
     946: 33 03 13 41  	sub	t1, t1, a7
     94a: 96 93        	add	t2, t2, t0
     94c: e3 13 03 fe  	bnez	t1, 0x932 <vector_sgnj+0x7c>
     950: e3 00 d8 fc  	beq	a6, a3, 0x910 <vector_sgnj+0x5a>
     954: 51 bf        	j	0x8e8 <vector_sgnj+0x32>

0000000000000956 <vector_sqrt>:
     956: 63 56 c0 06  	blez	a2, 0x9c2 <vector_sqrt+0x6c>
     95a: d5 46        	li	a3, 21
     95c: 63 60 d6 02  	bltu	a2, a3, 0x97c <vector_sqrt+0x26>
     960: 93 16 26 00  	slli	a3, a2, 2
     964: f1 16        	addi	a3, a3, -4
     966: c1 9a        	andi	a3, a3, -16
     968: c1 06        	addi	a3, a3, 16
     96a: 33 87 d5 00  	add	a4, a1, a3
     96e: aa 96        	add	a3, a3, a0
     970: b3 b6 d5 00  	sltu	a3, a1, a3
     974: 33 37 e5 00  	sltu	a4, a0, a4
     978: f9 8e        	and	a3, a3, a4
     97a: a9 c6        	beqz	a3, 0x9c4 <vector_sqrt+0x6e>
     97c: 81 46        	li	a3, 0
     97e: 13 97 26 00  	slli	a4, a3, 2
     982: 21 07        	addi	a4, a4, 8
     984: ba 95        	add	a1, a1, a4
     986: 3a 95        	add	a0, a0, a4
     988: 87 27 85 ff  	flw	fa5, -8(a0)
     98c: d3 f7 07 58  	fsqrt.s	fa5, fa5
     990: 27 ac f5 fe  	fsw	fa5, -8(a1)
     994: 87 27 c5 ff  	flw	fa5, -4(a0)
     998: d3 f7 07 58  	fsqrt.s	fa5, fa5
     99c: 27 ae f5 fe  	fsw	fa5, -4(a1)
     9a0: 87 27 05 00  	flw	fa5, 0(a0)
     9a4: d3 f7 07 58  	fsqrt.s	fa5, fa5
     9a8: 27 a0 f5 00  	fsw	fa5, 0(a1)
     9ac: 87 27 45 00  	flw	fa5, 4(a0)
     9b0: d3 f7 07 58  	fsqrt.s	fa5, fa5
     9b4: 27 a2 f5 00  	fsw	fa5, 4(a1)
     9b8: 91 06        	addi	a3, a3, 4
     9ba: c1 05        	addi	a1, a1, 16
     9bc: 41 05        	addi	a0, a0, 16
     9be: e3 e5 c6 fc  	bltu	a3, a2, 0x988 <vector_sqrt+0x32>
     9c2: 82 80        	ret
     9c4: 93 06 f6 ff  	addi	a3, a2, -1
     9c8: 89 82        	srli	a3, a3, 2
     9ca: 13 88 16 00  	addi	a6, a3, 1
     9ce: 93 78 e8 ff  	andi	a7, a6, -2
     9d2: 93 96 28 00  	slli	a3, a7, 2
     9d6: 57 70 71 cd  	vsetivli	zero, 2, e32, mf2, ta, ma
     9da: c6 82        	mv	t0, a7
     9dc: 2e 87        	mv	a4, a1
     9de: aa 87        	mv	a5, a0
     9e0: 07 e4 07 62  	vlseg4e32.v	v8, (a5)
     9e4: 57 14 80 4e  	vfsqrt.v	v8, v8
     9e8: d7 14 90 4e  	vfsqrt.v	v9, v9
     9ec: 57 15 a0 4e  	vfsqrt.v	v10, v10
     9f0: d7 15 b0 4e  	vfsqrt.v	v11, v11
     9f4: 27 64 07 62  	vsseg4e32.v	v8, (a4)
     9f8: 93 87 07 02  	addi	a5, a5, 32
     9fc: f9 12        	addi	t0, t0, -2
     9fe: 13 07 07 02  	addi	a4, a4, 32
     a02: e3 9f 02 fc  	bnez	t0, 0x9e0 <vector_sqrt+0x8a>
     a06: e3 0e 18 fb  	beq	a6, a7, 0x9c2 <vector_sqrt+0x6c>
     a0a: 95 bf        	j	0x97e <vector_sqrt+0x28>

0000000000000a0c <print_array>:
     a0c: 79 71        	addi	sp, sp, -48
     a0e: 06 f4        	sd	ra, 40(sp)
     a10: 22 f0        	sd	s0, 32(sp)
     a12: 26 ec        	sd	s1, 24(sp)
     a14: 4a e8        	sd	s2, 16(sp)
     a16: 4e e4        	sd	s3, 8(sp)
     a18: 52 e0        	sd	s4, 0(sp)
     a1a: b2 89        	mv	s3, a2
     a1c: ae 84        	mv	s1, a1
     a1e: 2a 89        	mv	s2, a0
     a20: 17 05 00 00  	auipc	a0, 0
     a24: 13 05 45 36  	addi	a0, a0, 868
     a28: ca 85        	mv	a1, s2
     a2a: ef f0 7f b7  	jal	0x5a0 <.plt+0x30>
     a2e: 63 57 30 03  	blez	s3, 0xa5c <print_array+0x50>
     a32: 01 44        	li	s0, 0
     a34: 17 05 00 00  	auipc	a0, 0
     a38: 13 0a 05 36  	addi	s4, a0, 864
     a3c: 87 a7 04 00  	flw	fa5, 0(s1)
     a40: d3 87 07 42  	fcvt.d.s	fa5, fa5
     a44: d3 86 07 e2  	fmv.x.d	a3, fa5
     a48: 52 85        	mv	a0, s4
     a4a: ca 85        	mv	a1, s2
     a4c: 22 86        	mv	a2, s0
     a4e: ef f0 3f b5  	jal	0x5a0 <.plt+0x30>
     a52: 05 24        	addiw	s0, s0, 1
     a54: fd 19        	addi	s3, s3, -1
     a56: 91 04        	addi	s1, s1, 4
     a58: e3 92 09 fe  	bnez	s3, 0xa3c <print_array+0x30>
     a5c: a2 70        	ld	ra, 40(sp)
     a5e: 02 74        	ld	s0, 32(sp)
     a60: e2 64        	ld	s1, 24(sp)
     a62: 42 69        	ld	s2, 16(sp)
     a64: a2 69        	ld	s3, 8(sp)
     a66: 02 6a        	ld	s4, 0(sp)
     a68: 45 61        	addi	sp, sp, 48
     a6a: 82 80        	ret

0000000000000a6c <main>:
     a6c: 59 71        	addi	sp, sp, -112
     a6e: 86 f4        	sd	ra, 104(sp)
     a70: a2 f0        	sd	s0, 96(sp)
     a72: a6 ec        	sd	s1, 88(sp)
     a74: ca e8        	sd	s2, 80(sp)
     a76: ce e4        	sd	s3, 72(sp)
     a78: d2 e0        	sd	s4, 64(sp)
     a7a: 56 fc        	sd	s5, 56(sp)
     a7c: 5a f8        	sd	s6, 48(sp)
     a7e: 5e f4        	sd	s7, 40(sp)
     a80: 62 f0        	sd	s8, 32(sp)
     a82: 66 ec        	sd	s9, 24(sp)
     a84: 6a e8        	sd	s10, 16(sp)
     a86: 6e e4        	sd	s11, 8(sp)
     a88: 17 05 00 00  	auipc	a0, 0
     a8c: 93 0d c5 2f  	addi	s11, a0, 764
     a90: 17 05 00 00  	auipc	a0, 0
     a94: 93 04 15 31  	addi	s1, a0, 785
     a98: 6e 85        	mv	a0, s11
     a9a: a6 85        	mv	a1, s1
     a9c: ef f0 5f b0  	jal	0x5a0 <.plt+0x30>
     aa0: 17 05 00 00  	auipc	a0, 0
     aa4: 13 04 45 2f  	addi	s0, a0, 756
     aa8: 85 49        	li	s3, 1
     aaa: fa 19        	slli	s3, s3, 62
     aac: 22 85        	mv	a0, s0
     aae: a6 85        	mv	a1, s1
     ab0: 01 46        	li	a2, 0
     ab2: ce 86        	mv	a3, s3
     ab4: ef f0 df ae  	jal	0x5a0 <.plt+0x30>
     ab8: 37 1a 01 fe  	lui	s4, 1040401
     abc: 16 1a        	slli	s4, s4, 37
     abe: 05 46        	li	a2, 1
     ac0: 22 85        	mv	a0, s0
     ac2: a6 85        	mv	a1, s1
     ac4: d2 86        	mv	a3, s4
     ac6: ef f0 bf ad  	jal	0x5a0 <.plt+0x30>
     aca: 37 15 20 00  	lui	a0, 513
     ace: 1b 05 b5 2a  	addiw	a0, a0, 683
     ad2: 32 05        	slli	a0, a0, 12
     ad4: 93 06 b5 aa  	addi	a3, a0, -1365
     ad8: f6 06        	slli	a3, a3, 29
     ada: 09 46        	li	a2, 2
     adc: 22 85        	mv	a0, s0
     ade: a6 85        	mv	a1, s1
     ae0: ef f0 1f ac  	jal	0x5a0 <.plt+0x30>
     ae4: b7 96 04 04  	lui	a3, 16457
     ae8: 92 16        	slli	a3, a3, 36
     aea: 0d 46        	li	a2, 3
     aec: 22 85        	mv	a0, s0
     aee: a6 85        	mv	a1, s1
     af0: ef f0 1f ab  	jal	0x5a0 <.plt+0x30>
     af4: 37 19 01 02  	lui	s2, 8209
     af8: 16 19        	slli	s2, s2, 37
     afa: 11 46        	li	a2, 4
     afc: 22 85        	mv	a0, s0
     afe: a6 85        	mv	a1, s1
     b00: ca 86        	mv	a3, s2
     b02: ef f0 ff a9  	jal	0x5a0 <.plt+0x30>
     b06: b7 16 07 f8  	lui	a3, 1015921
     b0a: 8e 16        	slli	a3, a3, 35
     b0c: 15 46        	li	a2, 5
     b0e: 22 85        	mv	a0, s0
     b10: a6 85        	mv	a1, s1
     b12: ef f0 ff a8  	jal	0x5a0 <.plt+0x30>
     b16: 37 25 20 00  	lui	a0, 514
     b1a: 1b 05 b5 aa  	addiw	a0, a0, -1365
     b1e: 32 05        	slli	a0, a0, 12
     b20: 93 06 b5 aa  	addi	a3, a0, -1365
     b24: f6 06        	slli	a3, a3, 29
     b26: 19 46        	li	a2, 6
     b28: 22 85        	mv	a0, s0
     b2a: a6 85        	mv	a1, s1
     b2c: ef f0 5f a7  	jal	0x5a0 <.plt+0x30>
     b30: 37 1b 15 f0  	lui	s6, 983377
     b34: 0a 1b        	slli	s6, s6, 34
     b36: 1d 46        	li	a2, 7
     b38: 22 85        	mv	a0, s0
     b3a: a6 85        	mv	a1, s1
     b3c: da 86        	mv	a3, s6
     b3e: ef f0 3f a6  	jal	0x5a0 <.plt+0x30>
     b42: 17 05 00 00  	auipc	a0, 0
     b46: 93 04 f5 26  	addi	s1, a0, 623
     b4a: 6e 85        	mv	a0, s11
     b4c: a6 85        	mv	a1, s1
     b4e: ef f0 3f a5  	jal	0x5a0 <.plt+0x30>
     b52: 93 0a 10 40  	li	s5, 1025
     b56: d2 1a        	slli	s5, s5, 52
     b58: 22 85        	mv	a0, s0
     b5a: a6 85        	mv	a1, s1
     b5c: 01 46        	li	a2, 0
     b5e: d6 86        	mv	a3, s5
     b60: ef f0 1f a4  	jal	0x5a0 <.plt+0x30>
     b64: 05 46        	li	a2, 1
     b66: 22 85        	mv	a0, s0
     b68: a6 85        	mv	a1, s1
     b6a: ca 86        	mv	a3, s2
     b6c: ef f0 5f a3  	jal	0x5a0 <.plt+0x30>
     b70: 93 0b 30 40  	li	s7, 1027
     b74: d2 1b        	slli	s7, s7, 52
     b76: 09 46        	li	a2, 2
     b78: 22 85        	mv	a0, s0
     b7a: a6 85        	mv	a1, s1
     b7c: de 86        	mv	a3, s7
     b7e: ef f0 3f a2  	jal	0x5a0 <.plt+0x30>
     b82: 37 9c 03 04  	lui	s8, 16441
     b86: 12 1c        	slli	s8, s8, 36
     b88: 0d 46        	li	a2, 3
     b8a: 22 85        	mv	a0, s0
     b8c: a6 85        	mv	a1, s1
     b8e: e2 86        	mv	a3, s8
     b90: ef f0 1f a1  	jal	0x5a0 <.plt+0x30>
     b94: b7 1c 02 02  	lui	s9, 8225
     b98: 96 1c        	slli	s9, s9, 37
     b9a: 11 46        	li	a2, 4
     b9c: 22 85        	mv	a0, s0
     b9e: a6 85        	mv	a1, s1
     ba0: e6 86        	mv	a3, s9
     ba2: ef f0 ff 9f  	jal	0x5a0 <.plt+0x30>
     ba6: b7 16 09 08  	lui	a3, 32913
     baa: 8e 16        	slli	a3, a3, 35
     bac: 15 46        	li	a2, 5
     bae: 22 85        	mv	a0, s0
     bb0: a6 85        	mv	a1, s1
     bb2: ef f0 ff 9e  	jal	0x5a0 <.plt+0x30>
     bb6: 13 0d 50 40  	li	s10, 1029
     bba: 52 1d        	slli	s10, s10, 52
     bbc: 19 46        	li	a2, 6
     bbe: 22 85        	mv	a0, s0
     bc0: a6 85        	mv	a1, s1
     bc2: ea 86        	mv	a3, s10
     bc4: ef f0 df 9d  	jal	0x5a0 <.plt+0x30>
     bc8: b7 16 15 10  	lui	a3, 65873
     bcc: 8a 16        	slli	a3, a3, 34
     bce: 1d 46        	li	a2, 7
     bd0: 22 85        	mv	a0, s0
     bd2: a6 85        	mv	a1, s1
     bd4: ef f0 df 9c  	jal	0x5a0 <.plt+0x30>
     bd8: 17 05 00 00  	auipc	a0, 0
     bdc: 93 04 95 1e  	addi	s1, a0, 489
     be0: 6e 85        	mv	a0, s11
     be2: a6 85        	mv	a1, s1
     be4: ef f0 df 9b  	jal	0x5a0 <.plt+0x30>
     be8: 93 06 b0 0d  	li	a3, 219
     bec: da 16        	slli	a3, a3, 54
     bee: 22 85        	mv	a0, s0
     bf0: a6 85        	mv	a1, s1
     bf2: 01 46        	li	a2, 0
     bf4: ef f0 df 9a  	jal	0x5a0 <.plt+0x30>
     bf8: b7 96 b6 01  	lui	a3, 7017
     bfc: 96 16        	slli	a3, a3, 37
     bfe: 05 46        	li	a2, 1
     c00: 22 85        	mv	a0, s0
     c02: a6 85        	mv	a1, s1
     c04: ef f0 df 99  	jal	0x5a0 <.plt+0x30>
     c08: 93 06 70 1b  	li	a3, 439
     c0c: d6 16        	slli	a3, a3, 53
     c0e: 09 46        	li	a2, 2
     c10: 22 85        	mv	a0, s0
     c12: a6 85        	mv	a1, s1
     c14: ef f0 df 98  	jal	0x5a0 <.plt+0x30>
     c18: b7 96 6e 03  	lui	a3, 14057
     c1c: 92 16        	slli	a3, a3, 36
     c1e: 0d 46        	li	a2, 3
     c20: 22 85        	mv	a0, s0
     c22: a6 85        	mv	a1, s1
     c24: ef f0 df 97  	jal	0x5a0 <.plt+0x30>
     c28: b7 96 b7 01  	lui	a3, 7033
     c2c: 96 16        	slli	a3, a3, 37
     c2e: 11 46        	li	a2, 4
     c30: 22 85        	mv	a0, s0
     c32: a6 85        	mv	a1, s1
     c34: ef f0 df 96  	jal	0x5a0 <.plt+0x30>
     c38: b7 16 df 06  	lui	a3, 28145
     c3c: 8e 16        	slli	a3, a3, 35
     c3e: 15 46        	li	a2, 5
     c40: 22 85        	mv	a0, s0
     c42: a6 85        	mv	a1, s1
     c44: ef f0 df 95  	jal	0x5a0 <.plt+0x30>
     c48: 93 06 70 03  	li	a3, 55
     c4c: e2 16        	slli	a3, a3, 56
     c4e: 19 46        	li	a2, 6
     c50: 22 85        	mv	a0, s0
     c52: a6 85        	mv	a1, s1
     c54: ef f0 df 94  	jal	0x5a0 <.plt+0x30>
     c58: b7 16 c1 0d  	lui	a3, 56337
     c5c: 8a 16        	slli	a3, a3, 34
     c5e: 1d 46        	li	a2, 7
     c60: 22 85        	mv	a0, s0
     c62: a6 85        	mv	a1, s1
     c64: ef f0 df 93  	jal	0x5a0 <.plt+0x30>
     c68: 17 05 00 00  	auipc	a0, 0
     c6c: 93 04 15 17  	addi	s1, a0, 369
     c70: 6e 85        	mv	a0, s11
     c72: a6 85        	mv	a1, s1
     c74: ef f0 df 92  	jal	0x5a0 <.plt+0x30>
     c78: 22 85        	mv	a0, s0
     c7a: a6 85        	mv	a1, s1
     c7c: 01 46        	li	a2, 0
     c7e: d6 86        	mv	a3, s5
     c80: ef f0 1f 92  	jal	0x5a0 <.plt+0x30>
     c84: 05 46        	li	a2, 1
     c86: 22 85        	mv	a0, s0
     c88: a6 85        	mv	a1, s1
     c8a: d2 86        	mv	a3, s4
     c8c: ef f0 5f 91  	jal	0x5a0 <.plt+0x30>
     c90: 09 46        	li	a2, 2
     c92: 22 85        	mv	a0, s0
     c94: a6 85        	mv	a1, s1
     c96: de 86        	mv	a3, s7
     c98: ef f0 9f 90  	jal	0x5a0 <.plt+0x30>
     c9c: 0d 46        	li	a2, 3
     c9e: 22 85        	mv	a0, s0
     ca0: a6 85        	mv	a1, s1
     ca2: e2 86        	mv	a3, s8
     ca4: ef f0 df 8f  	jal	0x5a0 <.plt+0x30>
     ca8: 11 46        	li	a2, 4
     caa: 22 85        	mv	a0, s0
     cac: a6 85        	mv	a1, s1
     cae: e6 86        	mv	a3, s9
     cb0: ef f0 1f 8f  	jal	0x5a0 <.plt+0x30>
     cb4: b7 16 09 f8  	lui	a3, 1015953
     cb8: 8e 16        	slli	a3, a3, 35
     cba: 15 46        	li	a2, 5
     cbc: 22 85        	mv	a0, s0
     cbe: a6 85        	mv	a1, s1
     cc0: ef f0 1f 8e  	jal	0x5a0 <.plt+0x30>
     cc4: 19 46        	li	a2, 6
     cc6: 22 85        	mv	a0, s0
     cc8: a6 85        	mv	a1, s1
     cca: ea 86        	mv	a3, s10
     ccc: ef f0 5f 8d  	jal	0x5a0 <.plt+0x30>
     cd0: 1d 46        	li	a2, 7
     cd2: 22 85        	mv	a0, s0
     cd4: a6 85        	mv	a1, s1
     cd6: da 86        	mv	a3, s6
     cd8: ef f0 9f 8c  	jal	0x5a0 <.plt+0x30>
     cdc: 17 05 00 00  	auipc	a0, 0
     ce0: 93 04 95 10  	addi	s1, a0, 265
     ce4: 6e 85        	mv	a0, s11
     ce6: a6 85        	mv	a1, s1
     ce8: ef f0 9f 8b  	jal	0x5a0 <.plt+0x30>
     cec: 22 85        	mv	a0, s0
     cee: a6 85        	mv	a1, s1
     cf0: 01 46        	li	a2, 0
     cf2: ce 86        	mv	a3, s3
     cf4: ef f0 df 8a  	jal	0x5a0 <.plt+0x30>
     cf8: b7 16 80 00  	lui	a3, 2049
     cfc: 9e 16        	slli	a3, a3, 39
     cfe: 05 46        	li	a2, 1
     d00: 22 85        	mv	a0, s0
     d02: a6 85        	mv	a1, s1
     d04: ef f0 df 89  	jal	0x5a0 <.plt+0x30>
     d08: 09 46        	li	a2, 2
     d0a: 22 85        	mv	a0, s0
     d0c: a6 85        	mv	a1, s1
     d0e: d6 86        	mv	a3, s5
     d10: ef f0 1f 89  	jal	0x5a0 <.plt+0x30>
     d14: b7 56 00 01  	lui	a3, 4101
     d18: 9a 16        	slli	a3, a3, 38
     d1a: 0d 46        	li	a2, 3
     d1c: 22 85        	mv	a0, s0
     d1e: a6 85        	mv	a1, s1
     d20: ef f0 1f 88  	jal	0x5a0 <.plt+0x30>
     d24: b7 36 80 00  	lui	a3, 2051
     d28: 9e 16        	slli	a3, a3, 39
     d2a: 11 46        	li	a2, 4
     d2c: 22 85        	mv	a0, s0
     d2e: a6 85        	mv	a1, s1
     d30: ef f0 1f 87  	jal	0x5a0 <.plt+0x30>
     d34: b7 76 00 01  	lui	a3, 4103
     d38: 9a 16        	slli	a3, a3, 38
     d3a: 15 46        	li	a2, 5
     d3c: 22 85        	mv	a0, s0
     d3e: a6 85        	mv	a1, s1
     d40: ef f0 1f 86  	jal	0x5a0 <.plt+0x30>
     d44: 93 06 10 20  	li	a3, 513
     d48: d6 16        	slli	a3, a3, 53
     d4a: 19 46        	li	a2, 6
     d4c: 22 85        	mv	a0, s0
     d4e: a6 85        	mv	a1, s1
     d50: ef f0 1f 85  	jal	0x5a0 <.plt+0x30>
     d54: 1d 46        	li	a2, 7
     d56: 22 85        	mv	a0, s0
     d58: a6 85        	mv	a1, s1
     d5a: ca 86        	mv	a3, s2
     d5c: ef f0 5f 84  	jal	0x5a0 <.plt+0x30>
     d60: 01 45        	li	a0, 0
     d62: a6 70        	ld	ra, 104(sp)
     d64: 06 74        	ld	s0, 96(sp)
     d66: e6 64        	ld	s1, 88(sp)
     d68: 46 69        	ld	s2, 80(sp)
     d6a: a6 69        	ld	s3, 72(sp)
     d6c: 06 6a        	ld	s4, 64(sp)
     d6e: e2 7a        	ld	s5, 56(sp)
     d70: 42 7b        	ld	s6, 48(sp)
     d72: a2 7b        	ld	s7, 40(sp)
     d74: 02 7c        	ld	s8, 32(sp)
     d76: e2 6c        	ld	s9, 24(sp)
     d78: 42 6d        	ld	s10, 16(sp)
     d7a: a2 6d        	ld	s11, 8(sp)
     d7c: 65 61        	addi	sp, sp, 112
     d7e: 82 80        	ret
