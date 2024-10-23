
h263_h_loop_filter_rvv:	file format elf64-littleriscv

Disassembly of section .plt:

00000000000005e0 <.plt>:
     5e0: 97 23 00 00  	auipc	t2, 2
     5e4: 33 03 c3 41  	sub	t1, t1, t3
     5e8: 03 be 83 a2  	ld	t3, -1496(t2)
     5ec: 13 03 43 fd  	addi	t1, t1, -44
     5f0: 93 82 83 a2  	addi	t0, t2, -1496
     5f4: 13 53 13 00  	srli	t1, t1, 1
     5f8: 83 b2 82 00  	ld	t0, 8(t0)
     5fc: 67 00 0e 00  	jr	t3
     600: 17 2e 00 00  	auipc	t3, 2
     604: 03 3e 8e a1  	ld	t3, -1512(t3)
     608: 67 03 0e 00  	jalr	t1, t3
     60c: 13 00 00 00  	nop
     610: 17 2e 00 00  	auipc	t3, 2
     614: 03 3e 0e a1  	ld	t3, -1520(t3)
     618: 67 03 0e 00  	jalr	t1, t3
     61c: 13 00 00 00  	nop
     620: 17 2e 00 00  	auipc	t3, 2
     624: 03 3e 8e a0  	ld	t3, -1528(t3)
     628: 67 03 0e 00  	jalr	t1, t3
     62c: 13 00 00 00  	nop
     630: 17 2e 00 00  	auipc	t3, 2
     634: 03 3e 0e a0  	ld	t3, -1536(t3)
     638: 67 03 0e 00  	jalr	t1, t3
     63c: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000640 <_start>:
     640: ef 00 20 02  	jal	0x662 <load_gp>
     644: aa 87        	mv	a5, a0
     646: 17 25 00 00  	auipc	a0, 2
     64a: 03 35 25 a0  	ld	a0, -1534(a0)
     64e: 82 65        	ld	a1, 0(sp)
     650: 30 00        	addi	a2, sp, 8
     652: 13 71 01 ff  	andi	sp, sp, -16
     656: 81 46        	li	a3, 0
     658: 01 47        	li	a4, 0
     65a: 0a 88        	mv	a6, sp
     65c: ef f0 5f fa  	jal	0x600 <.plt+0x20>
     660: 02 90        	ebreak

0000000000000662 <load_gp>:
     662: 97 21 00 00  	auipc	gp, 2
     666: 93 81 e1 19  	addi	gp, gp, 414
     66a: 82 80        	ret
     66c: 00 00        	unimp

000000000000066e <deregister_tm_clones>:
     66e: 17 25 00 00  	auipc	a0, 2
     672: 13 05 a5 99  	addi	a0, a0, -1638
     676: 97 27 00 00  	auipc	a5, 2
     67a: 93 87 27 99  	addi	a5, a5, -1646
     67e: 63 88 a7 00  	beq	a5, a0, 0x68e <deregister_tm_clones+0x20>
     682: 97 27 00 00  	auipc	a5, 2
     686: 83 b7 e7 9b  	ld	a5, -1602(a5)
     68a: 91 c3        	beqz	a5, 0x68e <deregister_tm_clones+0x20>
     68c: 82 87        	jr	a5
     68e: 82 80        	ret

0000000000000690 <register_tm_clones>:
     690: 17 25 00 00  	auipc	a0, 2
     694: 13 05 85 97  	addi	a0, a0, -1672
     698: 97 25 00 00  	auipc	a1, 2
     69c: 93 85 05 97  	addi	a1, a1, -1680
     6a0: 89 8d        	sub	a1, a1, a0
     6a2: 93 d7 35 40  	srai	a5, a1, 3
     6a6: fd 91        	srli	a1, a1, 63
     6a8: be 95        	add	a1, a1, a5
     6aa: 85 85        	srai	a1, a1, 1
     6ac: 99 c5        	beqz	a1, 0x6ba <register_tm_clones+0x2a>
     6ae: 97 27 00 00  	auipc	a5, 2
     6b2: 83 b7 a7 9a  	ld	a5, -1622(a5)
     6b6: 91 c3        	beqz	a5, 0x6ba <register_tm_clones+0x2a>
     6b8: 82 87        	jr	a5
     6ba: 82 80        	ret

00000000000006bc <__do_global_dtors_aux>:
     6bc: 41 11        	addi	sp, sp, -16
     6be: 22 e0        	sd	s0, 0(sp)
     6c0: 17 24 00 00  	auipc	s0, 2
     6c4: 13 04 04 9a  	addi	s0, s0, -1632
     6c8: 83 47 04 00  	lbu	a5, 0(s0)
     6cc: 06 e4        	sd	ra, 8(sp)
     6ce: 85 e3        	bnez	a5, 0x6ee <__do_global_dtors_aux+0x32>
     6d0: 97 27 00 00  	auipc	a5, 2
     6d4: 83 b7 07 98  	ld	a5, -1664(a5)
     6d8: 91 c7        	beqz	a5, 0x6e4 <__do_global_dtors_aux+0x28>
     6da: 17 25 00 00  	auipc	a0, 2
     6de: 03 35 65 92  	ld	a0, -1754(a0)
     6e2: 82 97        	jalr	a5
     6e4: ef f0 bf f8  	jal	0x66e <deregister_tm_clones>
     6e8: 85 47        	li	a5, 1
     6ea: 23 00 f4 00  	sb	a5, 0(s0)
     6ee: a2 60        	ld	ra, 8(sp)
     6f0: 02 64        	ld	s0, 0(sp)
     6f2: 41 01        	addi	sp, sp, 16
     6f4: 82 80        	ret

00000000000006f6 <frame_dummy>:
     6f6: 69 bf        	j	0x690 <register_tm_clones>

00000000000006f8 <main>:
     6f8: 59 71        	addi	sp, sp, -112
     6fa: 86 f4        	sd	ra, 104(sp)
     6fc: a2 f0        	sd	s0, 96(sp)
     6fe: a6 ec        	sd	s1, 88(sp)
     700: ca e8        	sd	s2, 80(sp)
     702: ce e4        	sd	s3, 72(sp)
     704: 17 05 00 00  	auipc	a0, 0
     708: 13 05 c5 23  	addi	a0, a0, 572
     70c: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     710: 07 74 05 02  	vle64.v	v8, (a0)
     714: 24 00        	addi	s1, sp, 8
     716: 27 f4 04 02  	vse64.v	v8, (s1)
     71a: 93 05 61 00  	addi	a1, sp, 6
     71e: 21 45        	li	a0, 8
     720: 87 85 a5 0a  	vlse8.v	v11, (a1), a0
     724: 93 06 71 00  	addi	a3, sp, 7
     728: 07 84 a4 0a  	vlse8.v	v8, (s1), a0
     72c: 13 06 91 00  	addi	a2, sp, 9
     730: 07 06 a6 0a  	vlse8.v	v12, (a2), a0
     734: 87 84 a6 0a  	vlse8.v	v9, (a3), a0
     738: 57 28 82 4a  	vzext.vf4	v16, v8
     73c: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     740: 57 25 c3 4a  	vzext.vf2	v10, v12
     744: d7 26 b3 4a  	vzext.vf2	v13, v11
     748: 57 27 d5 ca  	vwsubu.vv	v14, v13, v10
     74c: 57 25 83 4a  	vzext.vf2	v10, v8
     750: d7 26 93 4a  	vzext.vf2	v13, v9
     754: 57 a4 a6 ca  	vwsubu.vv	v8, v10, v13
     758: 57 70 10 05  	vsetvli	zero, zero, e32, m2, ta, mu
     75c: 57 34 81 96  	vsll.vi	v8, v8, 2
     760: 57 09 e4 02  	vadd.vv	v18, v14, v8
     764: 57 b4 2e a3  	vsrl.vi	v8, v18, 29
     768: 57 04 24 03  	vadd.vv	v8, v18, v8
     76c: 57 bb 81 a6  	vsra.vi	v22, v8, 3
     770: 13 07 80 fc  	li	a4, -56
     774: 57 44 27 7f  	vmsgt.vx	v8, v18, a4
     778: 13 07 00 03  	li	a4, 48
     77c: 57 40 27 6b  	vmsltu.vx	v0, v18, a4
     780: 5d 47        	li	a4, 23
     782: 57 3a 00 5e  	vmv.v.i	v20, 0
     786: d7 44 27 7f  	vmsgt.vx	v9, v18, a4
     78a: 57 3c 00 5e  	vmv.v.i	v24, 0
     78e: 57 3c 63 0d  	vrsub.vi	v24, v22, 6, v0.t
     792: 7d 47        	li	a4, 31
     794: 57 49 27 03  	vadd.vx	v18, v18, a4
     798: 13 07 70 03  	li	a4, 55
     79c: 57 45 27 6b  	vmsltu.vx	v10, v18, a4
     7a0: 57 39 00 5e  	vmv.v.i	v18, 0
     7a4: 57 30 80 9e  	vmv1r.v	v0, v8
     7a8: 57 39 6d 0d  	vrsub.vi	v18, v22, -6, v0.t
     7ac: 57 30 a0 9e  	vmv1r.v	v0, v10
     7b0: 57 09 2b 5d  	vmerge.vvm	v18, v18, v22, v0
     7b4: 57 30 90 9e  	vmv1r.v	v0, v9
     7b8: 57 09 2c 5d  	vmerge.vvm	v18, v18, v24, v0
     7bc: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     7c0: 57 ab 26 d3  	vwaddu.wv	v22, v18, v13
     7c4: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     7c8: 57 08 09 0b  	vsub.vv	v16, v16, v18
     7cc: 13 07 00 10  	li	a4, 256
     7d0: 57 4c 67 27  	vand.vx	v24, v22, a4
     7d4: 57 b0 6f 7f  	vmsgt.vi	v0, v22, -1
     7d8: 57 34 80 63  	vmseq.vi	v8, v24, 0
     7dc: 57 bc 4f 5d  	vmerge.vim	v24, v20, -1, v0
     7e0: 57 30 80 9e  	vmv1r.v	v0, v8
     7e4: 57 0b 8b 5d  	vmerge.vvm	v22, v24, v22, v0
     7e8: 57 4c 07 27  	vand.vx	v24, v16, a4
     7ec: 57 b0 0f 7f  	vmsgt.vi	v0, v16, -1
     7f0: 57 34 80 63  	vmseq.vi	v8, v24, 0
     7f4: 57 ba 4f 5d  	vmerge.vim	v20, v20, -1, v0
     7f8: 57 30 80 9e  	vmv1r.v	v0, v8
     7fc: 57 04 48 5d  	vmerge.vvm	v8, v20, v16, v0
     800: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     804: 57 35 60 b3  	vnsrl.wi	v10, v22, 0
     808: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     80c: 57 35 a0 b2  	vnsrl.wi	v10, v10, 0
     810: 27 85 a6 0a  	vsse8.v	v10, (a3), a0
     814: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     818: 57 35 80 b2  	vnsrl.wi	v10, v8, 0
     81c: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     820: 57 34 a0 b2  	vnsrl.wi	v8, v10, 0
     824: 27 84 a4 0a  	vsse8.v	v8, (s1), a0
     828: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     82c: 57 34 20 0f  	vrsub.vi	v8, v18, 0
     830: 57 04 24 1f  	vmax.vv	v8, v18, v8
     834: 57 b4 80 a2  	vsrl.vi	v8, v8, 1
     838: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     83c: 57 35 e0 b2  	vnsrl.wi	v10, v14, 0
     840: d7 36 a7 a2  	vsrl.vi	v13, v10, 14
     844: 57 85 a6 02  	vadd.vv	v10, v10, v13
     848: 57 35 a1 a6  	vsra.vi	v10, v10, 2
     84c: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     850: 57 a7 a3 4a  	vsext.vf2	v14, v10
     854: 57 38 80 0e  	vrsub.vi	v16, v8, 0
     858: 57 00 e8 6e  	vmslt.vv	v0, v14, v16
     85c: 57 04 e4 16  	vmin.vv	v8, v14, v8
     860: 57 04 88 5c  	vmerge.vvm	v8, v8, v16, v0
     864: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     868: 57 35 80 b2  	vnsrl.wi	v10, v8, 0
     86c: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     870: 57 34 a0 b2  	vnsrl.wi	v8, v10, 0
     874: d7 04 b4 0a  	vsub.vv	v9, v11, v8
     878: a7 84 a5 0a  	vsse8.v	v9, (a1), a0
     87c: 57 04 c4 02  	vadd.vv	v8, v12, v8
     880: 27 04 a6 0a  	vsse8.v	v8, (a2), a0
     884: 17 05 00 00  	auipc	a0, 0
     888: 13 05 15 16  	addi	a0, a0, 353
     88c: ef f0 5f d9  	jal	0x620 <.plt+0x40>
     890: 05 44        	li	s0, 1
     892: 17 05 00 00  	auipc	a0, 0
     896: 13 09 e5 14  	addi	s2, a0, 334
     89a: 93 09 10 04  	li	s3, 65
     89e: 29 a0        	j	0x8a8 <main+0x1b0>
     8a0: 05 04        	addi	s0, s0, 1
     8a2: 85 04        	addi	s1, s1, 1
     8a4: 63 0e 34 01  	beq	s0, s3, 0x8c0 <main+0x1c8>
     8a8: 83 c5 04 00  	lbu	a1, 0(s1)
     8ac: 4a 85        	mv	a0, s2
     8ae: ef f0 3f d8  	jal	0x630 <.plt+0x50>
     8b2: 13 75 74 00  	andi	a0, s0, 7
     8b6: 6d f5        	bnez	a0, 0x8a0 <main+0x1a8>
     8b8: 29 45        	li	a0, 10
     8ba: ef f0 7f d5  	jal	0x610 <.plt+0x30>
     8be: cd b7        	j	0x8a0 <main+0x1a8>
     8c0: 01 45        	li	a0, 0
     8c2: a6 70        	ld	ra, 104(sp)
     8c4: 06 74        	ld	s0, 96(sp)
     8c6: e6 64        	ld	s1, 88(sp)
     8c8: 46 69        	ld	s2, 80(sp)
     8ca: a6 69        	ld	s3, 72(sp)
     8cc: 65 61        	addi	sp, sp, 112
     8ce: 82 80        	ret
