
nsse8_rvv:	file format elf64-littleriscv

Disassembly of section .plt:

00000000000005b0 <.plt>:
     5b0: 97 23 00 00  	auipc	t2, 2
     5b4: 33 03 c3 41  	sub	t1, t1, t3
     5b8: 03 be 83 a5  	ld	t3, -1448(t2)
     5bc: 13 03 43 fd  	addi	t1, t1, -44
     5c0: 93 82 83 a5  	addi	t0, t2, -1448
     5c4: 13 53 13 00  	srli	t1, t1, 1
     5c8: 83 b2 82 00  	ld	t0, 8(t0)
     5cc: 67 00 0e 00  	jr	t3
     5d0: 17 2e 00 00  	auipc	t3, 2
     5d4: 03 3e 8e a4  	ld	t3, -1464(t3)
     5d8: 67 03 0e 00  	jalr	t1, t3
     5dc: 13 00 00 00  	nop
     5e0: 17 2e 00 00  	auipc	t3, 2
     5e4: 03 3e 0e a4  	ld	t3, -1472(t3)
     5e8: 67 03 0e 00  	jalr	t1, t3
     5ec: 13 00 00 00  	nop
     5f0: 17 2e 00 00  	auipc	t3, 2
     5f4: 03 3e 8e a3  	ld	t3, -1480(t3)
     5f8: 67 03 0e 00  	jalr	t1, t3
     5fc: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000600 <_start>:
     600: ef 00 20 02  	jal	0x622 <load_gp>
     604: aa 87        	mv	a5, a0
     606: 17 25 00 00  	auipc	a0, 2
     60a: 03 35 a5 a3  	ld	a0, -1478(a0)
     60e: 82 65        	ld	a1, 0(sp)
     610: 30 00        	addi	a2, sp, 8
     612: 13 71 01 ff  	andi	sp, sp, -16
     616: 81 46        	li	a3, 0
     618: 01 47        	li	a4, 0
     61a: 0a 88        	mv	a6, sp
     61c: ef f0 5f fb  	jal	0x5d0 <.plt+0x20>
     620: 02 90        	ebreak

0000000000000622 <load_gp>:
     622: 97 21 00 00  	auipc	gp, 2
     626: 93 81 e1 1d  	addi	gp, gp, 478
     62a: 82 80        	ret
     62c: 00 00        	unimp

000000000000062e <deregister_tm_clones>:
     62e: 17 25 00 00  	auipc	a0, 2
     632: 13 05 a5 9d  	addi	a0, a0, -1574
     636: 97 27 00 00  	auipc	a5, 2
     63a: 93 87 27 9d  	addi	a5, a5, -1582
     63e: 63 88 a7 00  	beq	a5, a0, 0x64e <deregister_tm_clones+0x20>
     642: 97 27 00 00  	auipc	a5, 2
     646: 83 b7 67 9f  	ld	a5, -1546(a5)
     64a: 91 c3        	beqz	a5, 0x64e <deregister_tm_clones+0x20>
     64c: 82 87        	jr	a5
     64e: 82 80        	ret

0000000000000650 <register_tm_clones>:
     650: 17 25 00 00  	auipc	a0, 2
     654: 13 05 85 9b  	addi	a0, a0, -1608
     658: 97 25 00 00  	auipc	a1, 2
     65c: 93 85 05 9b  	addi	a1, a1, -1616
     660: 89 8d        	sub	a1, a1, a0
     662: 93 d7 35 40  	srai	a5, a1, 3
     666: fd 91        	srli	a1, a1, 63
     668: be 95        	add	a1, a1, a5
     66a: 85 85        	srai	a1, a1, 1
     66c: 99 c5        	beqz	a1, 0x67a <register_tm_clones+0x2a>
     66e: 97 27 00 00  	auipc	a5, 2
     672: 83 b7 27 9e  	ld	a5, -1566(a5)
     676: 91 c3        	beqz	a5, 0x67a <register_tm_clones+0x2a>
     678: 82 87        	jr	a5
     67a: 82 80        	ret

000000000000067c <__do_global_dtors_aux>:
     67c: 41 11        	addi	sp, sp, -16
     67e: 22 e0        	sd	s0, 0(sp)
     680: 17 24 00 00  	auipc	s0, 2
     684: 13 04 84 9d  	addi	s0, s0, -1576
     688: 83 47 04 00  	lbu	a5, 0(s0)
     68c: 06 e4        	sd	ra, 8(sp)
     68e: 85 e3        	bnez	a5, 0x6ae <__do_global_dtors_aux+0x32>
     690: 97 27 00 00  	auipc	a5, 2
     694: 83 b7 87 9b  	ld	a5, -1608(a5)
     698: 91 c7        	beqz	a5, 0x6a4 <__do_global_dtors_aux+0x28>
     69a: 17 25 00 00  	auipc	a0, 2
     69e: 03 35 65 96  	ld	a0, -1690(a0)
     6a2: 82 97        	jalr	a5
     6a4: ef f0 bf f8  	jal	0x62e <deregister_tm_clones>
     6a8: 85 47        	li	a5, 1
     6aa: 23 00 f4 00  	sb	a5, 0(s0)
     6ae: a2 60        	ld	ra, 8(sp)
     6b0: 02 64        	ld	s0, 0(sp)
     6b2: 41 01        	addi	sp, sp, 16
     6b4: 82 80        	ret

00000000000006b6 <frame_dummy>:
     6b6: 69 bf        	j	0x650 <register_tm_clones>

00000000000006b8 <nsse8_c>:
     6b8: 19 71        	addi	sp, sp, -128
     6ba: 86 fc        	sd	ra, 120(sp)
     6bc: a2 f8        	sd	s0, 112(sp)
     6be: a6 f4        	sd	s1, 104(sp)
     6c0: ca f0        	sd	s2, 96(sp)
     6c2: ce ec        	sd	s3, 88(sp)
     6c4: d2 e8        	sd	s4, 80(sp)
     6c6: d6 e4        	sd	s5, 72(sp)
     6c8: da e0        	sd	s6, 64(sp)
     6ca: 5e fc        	sd	s7, 56(sp)
     6cc: 62 f8        	sd	s8, 48(sp)
     6ce: 66 f4        	sd	s9, 40(sp)
     6d0: 6a f0        	sd	s10, 32(sp)
     6d2: 6e ec        	sd	s11, 24(sp)
     6d4: 2a e4        	sd	a0, 8(sp)
     6d6: 63 58 e0 24  	blez	a4, 0x926 <nsse8_c+0x26e>
     6da: b2 83        	mv	t2, a2
     6dc: 01 4d        	li	s10, 0
     6de: 81 48        	li	a7, 0
     6e0: 01 48        	li	a6, 0
     6e2: 33 85 d5 00  	add	a0, a1, a3
     6e6: 2a e8        	sd	a0, 16(sp)
     6e8: 3b 03 e0 40  	negw	t1, a4
     6ec: b3 02 d6 00  	add	t0, a2, a3
     6f0: 85 47        	li	a5, 1
     6f2: 85 4e        	li	t4, 1
     6f4: 9d a8        	j	0x76a <nsse8_c+0xb2>
     6f6: 57 70 71 cd  	vsetivli	zero, 2, e32, mf2, ta, ma
     6fa: 87 04 09 02  	vle8.v	v9, (s2)
     6fe: 57 27 92 4a  	vzext.vf4	v14, v9
     702: 03 c5 7f 00  	lbu	a0, 7(t6)
     706: 03 46 76 00  	lbu	a2, 7(a2)
     70a: 57 e8 09 42  	vmv.s.x	v16, s3
     70e: 57 f0 12 c9  	vsetivli	zero, 5, e32, m2, tu, ma
     712: 57 34 02 3b  	vslideup.vi	v8, v16, 4
     716: 57 f0 13 c9  	vsetivli	zero, 7, e32, m2, tu, ma
     71a: 57 b4 c2 3a  	vslideup.vi	v8, v12, 5
     71e: 57 66 05 42  	vmv.s.x	v12, a0
     722: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     726: 57 b4 c3 3a  	vslideup.vi	v8, v12, 7
     72a: 57 66 0f 42  	vmv.s.x	v12, t5
     72e: 57 f0 12 c9  	vsetivli	zero, 5, e32, m2, tu, ma
     732: 57 35 c2 3a  	vslideup.vi	v10, v12, 4
     736: 57 f0 13 c9  	vsetivli	zero, 7, e32, m2, tu, ma
     73a: 57 b5 e2 3a  	vslideup.vi	v10, v14, 5
     73e: 57 66 06 42  	vmv.s.x	v12, a2
     742: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     746: 57 b5 c3 3a  	vslideup.vi	v10, v12, 7
     74a: 57 04 85 0a  	vsub.vv	v8, v8, v10
     74e: 57 24 84 96  	vmul.vv	v8, v8, v8
     752: 57 65 08 42  	vmv.s.x	v10, a6
     756: 57 24 85 02  	vredsum.vs	v8, v8, v10
     75a: 57 28 80 42  	vmv.x.s	a6, v8
     75e: 85 2e        	addiw	t4, t4, 1
     760: 3b 05 d3 01  	addw	a0, t1, t4
     764: 36 9d        	add	s10, s10, a3
     766: 63 02 f5 1c  	beq	a0, a5, 0x92a <nsse8_c+0x272>
     76a: b3 8f a5 01  	add	t6, a1, s10
     76e: 33 86 a3 01  	add	a2, t2, s10
     772: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     776: 87 84 0f 02  	vle8.v	v9, (t6)
     77a: 87 05 06 02  	vle8.v	v11, (a2)
     77e: 57 24 92 4a  	vzext.vf4	v8, v9
     782: 57 25 b2 4a  	vzext.vf4	v10, v11
     786: 83 c9 4f 00  	lbu	s3, 4(t6)
     78a: 03 4f 46 00  	lbu	t5, 4(a2)
     78e: 93 8a 5f 00  	addi	s5, t6, 5
     792: 57 70 71 cd  	vsetivli	zero, 2, e32, mf2, ta, ma
     796: 87 84 0a 02  	vle8.v	v9, (s5)
     79a: 13 09 56 00  	addi	s2, a2, 5
     79e: 57 26 92 4a  	vzext.vf4	v12, v9
     7a2: e3 da ee f4  	bge	t4, a4, 0x6f6 <nsse8_c+0x3e>
     7a6: 42 6b        	ld	s6, 16(sp)
     7a8: 6a 9b        	add	s6, s6, s10
     7aa: 33 8a a2 01  	add	s4, t0, s10
     7ae: 93 04 2b 00  	addi	s1, s6, 2
     7b2: 93 0b 2a 00  	addi	s7, s4, 2
     7b6: 87 84 04 02  	vle8.v	v9, (s1)
     7ba: 87 85 0b 02  	vle8.v	v11, (s7)
     7be: d7 26 92 4a  	vzext.vf4	v13, v9
     7c2: 57 27 b2 4a  	vzext.vf4	v14, v11
     7c6: 83 4b 4b 00  	lbu	s7, 4(s6)
     7ca: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     7ce: 87 04 0b 02  	vle8.v	v9, (s6)
     7d2: d7 25 92 4a  	vzext.vf4	v11, v9
     7d6: d7 b4 80 3e  	vslidedown.vi	v9, v8, 1
     7da: d7 e7 09 42  	vmv.s.x	v15, s3
     7de: d7 b4 f1 3a  	vslideup.vi	v9, v15, 3
     7e2: d7 84 95 02  	vadd.vv	v9, v9, v11
     7e6: d7 84 84 0a  	vsub.vv	v9, v8, v9
     7ea: d7 b7 b0 32  	vrgather.vi	v15, v11, 1
     7ee: 57 f0 01 c9  	vsetivli	zero, 3, e32, m1, tu, ma
     7f2: d7 b7 d0 3a  	vslideup.vi	v15, v13, 1
     7f6: d7 e5 0b 42  	vmv.s.x	v11, s7
     7fa: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     7fe: d7 b7 b1 3a  	vslideup.vi	v15, v11, 3
     802: d7 84 97 02  	vadd.vv	v9, v9, v15
     806: 87 05 0a 02  	vle8.v	v11, (s4)
     80a: d7 36 90 0e  	vrsub.vi	v13, v9, 0
     80e: d7 84 96 1e  	vmax.vv	v9, v9, v13
     812: 03 4c 4a 00  	lbu	s8, 4(s4)
     816: d7 26 b2 4a  	vzext.vf4	v13, v11
     81a: d7 b5 a0 3e  	vslidedown.vi	v11, v10, 1
     81e: d7 67 0f 42  	vmv.s.x	v15, t5
     822: d7 b5 f1 3a  	vslideup.vi	v11, v15, 3
     826: d7 85 b6 02  	vadd.vv	v11, v11, v13
     82a: d7 85 a5 0a  	vsub.vv	v11, v10, v11
     82e: d7 b7 d0 32  	vrgather.vi	v15, v13, 1
     832: 57 f0 01 c9  	vsetivli	zero, 3, e32, m1, tu, ma
     836: d7 b7 e0 3a  	vslideup.vi	v15, v14, 1
     83a: d7 66 0c 42  	vmv.s.x	v13, s8
     83e: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     842: d7 b7 d1 3a  	vslideup.vi	v15, v13, 3
     846: 83 4c 5b 00  	lbu	s9, 5(s6)
     84a: d7 24 c0 42  	vmv.x.s	s1, v12
     84e: bb 87 79 41  	subw	a5, s3, s7
     852: 85 9f        	subw	a5, a5, s1
     854: bb 87 97 01  	addw	a5, a5, s9
     858: 9b d4 f7 41  	sraiw	s1, a5, 31
     85c: b3 cb 97 00  	xor	s7, a5, s1
     860: 83 47 46 00  	lbu	a5, 4(a2)
     864: 83 4d 09 00  	lbu	s11, 0(s2)
     868: 83 40 5a 00  	lbu	ra, 5(s4)
     86c: b3 8b 9b 40  	sub	s7, s7, s1
     870: b3 87 87 41  	sub	a5, a5, s8
     874: b3 87 b7 41  	sub	a5, a5, s11
     878: bb 87 17 00  	addw	a5, a5, ra
     87c: 9b d4 f7 41  	sraiw	s1, a5, 31
     880: 33 cc 97 00  	xor	s8, a5, s1
     884: 83 c7 6f 00  	lbu	a5, 6(t6)
     888: 83 ca 0a 00  	lbu	s5, 0(s5)
     88c: 03 4e 6b 00  	lbu	t3, 6(s6)
     890: 33 0c 9c 40  	sub	s8, s8, s1
     894: be 9c        	add	s9, s9, a5
     896: 33 85 9a 41  	sub	a0, s5, s9
     89a: 72 95        	add	a0, a0, t3
     89c: 9b 54 f5 41  	sraiw	s1, a0, 31
     8a0: 25 8d        	xor	a0, a0, s1
     8a2: 83 4a 66 00  	lbu	s5, 6(a2)
     8a6: bb 0c 95 40  	subw	s9, a0, s1
     8aa: 83 44 6a 00  	lbu	s1, 6(s4)
     8ae: d7 85 b7 02  	vadd.vv	v11, v11, v15
     8b2: d6 90        	add	ra, ra, s5
     8b4: 33 85 1d 40  	sub	a0, s11, ra
     8b8: 26 95        	add	a0, a0, s1
     8ba: 1b 54 f5 41  	sraiw	s0, a0, 31
     8be: 21 8d        	xor	a0, a0, s0
     8c0: bb 0d 85 40  	subw	s11, a0, s0
     8c4: 03 c4 7f 00  	lbu	s0, 7(t6)
     8c8: 03 45 7b 00  	lbu	a0, 7(s6)
     8cc: d7 36 b0 0e  	vrsub.vi	v13, v11, 0
     8d0: d7 85 b6 1e  	vmax.vv	v11, v11, v13
     8d4: 22 9e        	add	t3, t3, s0
     8d6: 3e 95        	add	a0, a0, a5
     8d8: 33 05 c5 41  	sub	a0, a0, t3
     8dc: 9b 57 f5 41  	sraiw	a5, a0, 31
     8e0: 03 44 76 00  	lbu	s0, 7(a2)
     8e4: 03 4e 7a 00  	lbu	t3, 7(s4)
     8e8: 3d 8d        	xor	a0, a0, a5
     8ea: 1d 9d        	subw	a0, a0, a5
     8ec: 26 94        	add	s0, s0, s1
     8ee: 56 9e        	add	t3, t3, s5
     8f0: b3 07 8e 40  	sub	a5, t3, s0
     8f4: 9b d4 f7 41  	sraiw	s1, a5, 31
     8f8: a5 8f        	xor	a5, a5, s1
     8fa: 85 9f        	subw	a5, a5, s1
     8fc: d7 e6 0b 42  	vmv.s.x	v13, s7
     900: d7 a4 96 02  	vredsum.vs	v9, v9, v13
     904: d7 24 90 42  	vmv.x.s	s1, v9
     908: 66 95        	add	a0, a0, s9
     90a: 46 95        	add	a0, a0, a7
     90c: 26 95        	add	a0, a0, s1
     90e: d7 64 0c 42  	vmv.s.x	v9, s8
     912: d7 a4 b4 02  	vredsum.vs	v9, v11, v9
     916: d7 24 90 42  	vmv.x.s	s1, v9
     91a: ee 97        	add	a5, a5, s11
     91c: a6 97        	add	a5, a5, s1
     91e: bb 08 f5 40  	subw	a7, a0, a5
     922: 85 47        	li	a5, 1
     924: c9 bb        	j	0x6f6 <nsse8_c+0x3e>
     926: 01 48        	li	a6, 0
     928: 81 48        	li	a7, 0
     92a: 9b d5 f8 41  	sraiw	a1, a7, 31
     92e: 33 c6 b8 00  	xor	a2, a7, a1
     932: bb 05 b6 40  	subw	a1, a2, a1
     936: 22 65        	ld	a0, 8(sp)
     938: 11 c5        	beqz	a0, 0x944 <nsse8_c+0x28c>
     93a: 08 61        	ld	a0, 0(a0)
     93c: 08 41        	lw	a0, 0(a0)
     93e: b3 05 b5 02  	mul	a1, a0, a1
     942: 11 a0        	j	0x946 <nsse8_c+0x28e>
     944: 8e 05        	slli	a1, a1, 3
     946: 3b 85 05 01  	addw	a0, a1, a6
     94a: e6 70        	ld	ra, 120(sp)
     94c: 46 74        	ld	s0, 112(sp)
     94e: a6 74        	ld	s1, 104(sp)
     950: 06 79        	ld	s2, 96(sp)
     952: e6 69        	ld	s3, 88(sp)
     954: 46 6a        	ld	s4, 80(sp)
     956: a6 6a        	ld	s5, 72(sp)
     958: 06 6b        	ld	s6, 64(sp)
     95a: e2 7b        	ld	s7, 56(sp)
     95c: 42 7c        	ld	s8, 48(sp)
     95e: a2 7c        	ld	s9, 40(sp)
     960: 02 7d        	ld	s10, 32(sp)
     962: e2 6d        	ld	s11, 24(sp)
     964: 09 61        	addi	sp, sp, 128
     966: 82 80        	ret

0000000000000968 <main>:
     968: 31 71        	addi	sp, sp, -192
     96a: 06 fd        	sd	ra, 184(sp)
     96c: 22 f9        	sd	s0, 176(sp)
     96e: 26 f5        	sd	s1, 168(sp)
     970: 09 45        	li	a0, 2
     972: 2a f1        	sd	a0, 160(sp)
     974: 88 08        	addi	a0, sp, 80
     976: 13 06 00 05  	li	a2, 80
     97a: 80 08        	addi	s0, sp, 80
     97c: 81 45        	li	a1, 0
     97e: ef f0 3f c7  	jal	0x5f0 <.plt+0x40>
     982: 0a 85        	mv	a0, sp
     984: 13 06 00 05  	li	a2, 80
     988: 8a 84        	mv	s1, sp
     98a: 81 45        	li	a1, 0
     98c: ef f0 5f c6  	jal	0x5f0 <.plt+0x40>
     990: f3 25 20 c2  	csrr	a1, vlenb
     994: 13 d5 35 00  	srli	a0, a1, 3
     998: 15 46        	li	a2, 5
     99a: 63 75 a6 00  	bgeu	a2, a0, 0x9a4 <main+0x3c>
     99e: 01 45        	li	a0, 0
     9a0: 81 45        	li	a1, 0
     9a2: 69 a0        	j	0xa2c <main+0xc4>
     9a4: 39 45        	li	a0, 14
     9a6: 33 85 a5 02  	mul	a0, a1, a0
     9aa: 13 75 05 04  	andi	a0, a0, 64
     9ae: 57 76 b0 0d  	vsetvli	a2, zero, e64, m8, ta, ma
     9b2: 57 a4 08 52  	vid.v	v8
     9b6: 57 c8 85 02  	vadd.vx	v16, v8, a1
     9ba: 86 05        	slli	a1, a1, 1
     9bc: 57 76 10 0c  	vsetvli	a2, zero, e8, m2, ta, ma
     9c0: 57 ac 08 52  	vid.v	v24
     9c4: 2a 86        	mv	a2, a0
     9c6: 27 0c 84 22  	vs2r.v	v24, (s0)
     9ca: d7 76 20 0d  	vsetvli	a3, zero, e32, m4, ta, ma
     9ce: 57 3e 00 b3  	vnsrl.wi	v28, v16, 0
     9d2: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     9d6: 57 3d c0 b3  	vnsrl.wi	v26, v28, 0
     9da: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     9de: d7 3e a0 b3  	vnsrl.wi	v29, v26, 0
     9e2: 57 70 20 0d  	vsetvli	zero, zero, e32, m4, ta, ma
     9e6: 57 30 80 b2  	vnsrl.wi	v0, v8, 0
     9ea: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     9ee: 57 3d 00 b2  	vnsrl.wi	v26, v0, 0
     9f2: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     9f6: 57 3e a0 b3  	vnsrl.wi	v28, v26, 0
     9fa: d7 76 10 0c  	vsetvli	a3, zero, e8, m2, ta, ma
     9fe: 57 bd c0 03  	vadd.vi	v26, v28, 1
     a02: 27 8d 84 22  	vs2r.v	v26, (s1)
     a06: d7 76 b0 0d  	vsetvli	a3, zero, e64, m8, ta, ma
     a0a: 57 c4 85 02  	vadd.vx	v8, v8, a1
     a0e: 57 c8 05 03  	vadd.vx	v16, v16, a1
     a12: d7 76 10 0c  	vsetvli	a3, zero, e8, m2, ta, ma
     a16: 57 cc 85 03  	vadd.vx	v24, v24, a1
     a1a: 2e 94        	add	s0, s0, a1
     a1c: 0d 8e        	sub	a2, a2, a1
     a1e: ae 94        	add	s1, s1, a1
     a20: 5d f2        	bnez	a2, 0x9c6 <main+0x5e>
     a22: 13 06 00 05  	li	a2, 80
     a26: aa 85        	mv	a1, a0
     a28: 63 03 c5 02  	beq	a0, a2, 0xa4e <main+0xe6>
     a2c: 0a 86        	mv	a2, sp
     a2e: 2a 96        	add	a2, a2, a0
     a30: 94 08        	addi	a3, sp, 80
     a32: aa 96        	add	a3, a3, a0
     a34: 05 05        	addi	a0, a0, 1
     a36: 13 07 10 05  	li	a4, 81
     a3a: 23 80 b6 00  	sb	a1, 0(a3)
     a3e: 85 25        	addiw	a1, a1, 1
     a40: 23 00 a6 00  	sb	a0, 0(a2)
     a44: 05 06        	addi	a2, a2, 1
     a46: 05 05        	addi	a0, a0, 1
     a48: 85 06        	addi	a3, a3, 1
     a4a: e3 18 e5 fe  	bne	a0, a4, 0xa3a <main+0xd2>
     a4e: 08 11        	addi	a0, sp, 160
     a50: 8c 08        	addi	a1, sp, 80
     a52: 0a 86        	mv	a2, sp
     a54: a1 46        	li	a3, 8
     a56: 29 47        	li	a4, 10
     a58: ef f0 1f c6  	jal	0x6b8 <nsse8_c>
     a5c: aa 85        	mv	a1, a0
     a5e: 17 05 00 00  	auipc	a0, 0
     a62: 13 05 e5 01  	addi	a0, a0, 30
     a66: ef f0 bf b7  	jal	0x5e0 <.plt+0x30>
     a6a: 01 45        	li	a0, 0
     a6c: ea 70        	ld	ra, 184(sp)
     a6e: 4a 74        	ld	s0, 176(sp)
     a70: aa 74        	ld	s1, 168(sp)
     a72: 29 61        	addi	sp, sp, 192
     a74: 82 80        	ret
