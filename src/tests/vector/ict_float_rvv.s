
test:	file format elf64-littleriscv

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

00000000000006b8 <ict_float>:
     6b8: 63 54 e0 0a  	blez	a4, 0x760 <ict_float+0xa8>
     6bc: 73 28 20 c2  	csrr	a6, vlenb
     6c0: 93 58 18 00  	srli	a7, a6, 1
     6c4: a1 47        	li	a5, 8
     6c6: 63 e3 17 01  	bltu	a5, a7, 0x6cc <ict_float+0x14>
     6ca: a1 48        	li	a7, 8
     6cc: 87 a7 06 00  	flw	fa5, 0(a3)
     6d0: 07 a7 46 00  	flw	fa4, 4(a3)
     6d4: 87 a6 86 00  	flw	fa3, 8(a3)
     6d8: 07 a6 c6 00  	flw	fa2, 12(a3)
     6dc: 63 6f 17 03  	bltu	a4, a7, 0x71a <ict_float+0x62>
     6e0: 93 16 27 00  	slli	a3, a4, 2
     6e4: b3 07 d5 00  	add	a5, a0, a3
     6e8: b3 88 d5 00  	add	a7, a1, a3
     6ec: 33 03 d6 00  	add	t1, a2, a3
     6f0: b3 32 15 01  	sltu	t0, a0, a7
     6f4: b3 b6 f5 00  	sltu	a3, a1, a5
     6f8: b3 f2 d2 00  	and	t0, t0, a3
     6fc: b3 36 65 00  	sltu	a3, a0, t1
     700: b3 37 f6 00  	sltu	a5, a2, a5
     704: fd 8e        	and	a3, a3, a5
     706: b3 e2 d2 00  	or	t0, t0, a3
     70a: b3 b7 65 00  	sltu	a5, a1, t1
     70e: b3 36 16 01  	sltu	a3, a2, a7
     712: fd 8e        	and	a3, a3, a5
     714: b3 e6 d2 00  	or	a3, t0, a3
     718: a9 c6        	beqz	a3, 0x762 <ict_float+0xaa>
     71a: 81 48        	li	a7, 0
     71c: 93 96 28 00  	slli	a3, a7, 2
     720: b6 95        	add	a1, a1, a3
     722: 36 96        	add	a2, a2, a3
     724: 36 95        	add	a0, a0, a3
     726: b3 06 17 41  	sub	a3, a4, a7
     72a: 87 25 05 00  	flw	fa1, 0(a0)
     72e: 07 25 06 00  	flw	fa0, 0(a2)
     732: 07 a0 05 00  	flw	ft0, 0(a1)
     736: c3 70 f5 58  	fmadd.s	ft1, fa0, fa5, fa1
     73a: 53 75 d5 10  	fmul.s	fa0, fa0, fa3
     73e: 43 75 e0 50  	fmadd.s	fa0, ft0, fa4, fa0
     742: 53 f5 a5 08  	fsub.s	fa0, fa1, fa0
     746: c3 75 c0 58  	fmadd.s	fa1, ft0, fa2, fa1
     74a: 27 20 15 00  	fsw	ft1, 0(a0)
     74e: 27 a0 a5 00  	fsw	fa0, 0(a1)
     752: 27 20 b6 00  	fsw	fa1, 0(a2)
     756: 91 05        	addi	a1, a1, 4
     758: 11 06        	addi	a2, a2, 4
     75a: fd 16        	addi	a3, a3, -1
     75c: 11 05        	addi	a0, a0, 4
     75e: f1 f6        	bnez	a3, 0x72a <ict_float+0x72>
     760: 82 80        	ret
     762: 93 56 38 00  	srli	a3, a6, 3
     766: 93 97 26 00  	slli	a5, a3, 2
     76a: 82 16        	slli	a3, a3, 32
     76c: 9d 8e        	sub	a3, a3, a5
     76e: b3 f8 e6 00  	and	a7, a3, a4
     772: 93 52 18 00  	srli	t0, a6, 1
     776: 06 08        	slli	a6, a6, 1
     778: d7 76 10 0d  	vsetvli	a3, zero, e32, m2, ta, ma
     77c: 46 83        	mv	t1, a7
     77e: ae 83        	mv	t2, a1
     780: b2 86        	mv	a3, a2
     782: aa 87        	mv	a5, a0
     784: 07 e4 86 22  	vl2re32.v	v8, (a3)
     788: 07 e5 87 22  	vl2re32.v	v10, (a5)
     78c: 07 e6 83 22  	vl2re32.v	v12, (t2)
     790: 57 d7 86 92  	vfmul.vf	v14, v8, fa3
     794: 57 d4 a7 a2  	vfmadd.vf	v8, fa5, v10
     798: 57 57 c7 b2  	vfmacc.vf	v14, fa4, v12
     79c: 57 17 a7 0a  	vfsub.vv	v14, v10, v14
     7a0: 57 56 a6 a2  	vfmadd.vf	v12, fa2, v10
     7a4: 27 84 87 22  	vs2r.v	v8, (a5)
     7a8: 27 87 83 22  	vs2r.v	v14, (t2)
     7ac: 27 86 86 22  	vs2r.v	v12, (a3)
     7b0: c2 97        	add	a5, a5, a6
     7b2: c2 96        	add	a3, a3, a6
     7b4: 33 03 53 40  	sub	t1, t1, t0
     7b8: c2 93        	add	t2, t2, a6
     7ba: e3 15 03 fc  	bnez	t1, 0x784 <ict_float+0xcc>
     7be: e3 81 e8 fa  	beq	a7, a4, 0x760 <ict_float+0xa8>
     7c2: a9 bf        	j	0x71c <ict_float+0x64>

00000000000007c4 <main>:
     7c4: 79 71        	addi	sp, sp, -48
     7c6: 06 f4        	sd	ra, 40(sp)
     7c8: 22 f0        	sd	s0, 32(sp)
     7ca: 26 ec        	sd	s1, 24(sp)
     7cc: 4a e8        	sd	s2, 16(sp)
     7ce: 4e e4        	sd	s3, 8(sp)
     7d0: 17 05 00 00  	auipc	a0, 0
     7d4: 13 05 d5 22  	addi	a0, a0, 557
     7d8: ef f0 9f e0  	jal	0x5e0 <.plt+0x30>
     7dc: 17 05 00 00  	auipc	a0, 0
     7e0: 13 04 45 1f  	addi	s0, a0, 500
     7e4: 22 85        	mv	a0, s0
     7e6: 81 45        	li	a1, 0
     7e8: 01 46        	li	a2, 0
     7ea: 81 46        	li	a3, 0
     7ec: 01 47        	li	a4, 0
     7ee: 81 47        	li	a5, 0
     7f0: 01 48        	li	a6, 0
     7f2: ef f0 ff df  	jal	0x5f0 <.plt+0x40>
     7f6: 37 f5 e9 3f  	lui	a0, 261791
     7fa: 1b 07 55 b8  	addiw	a4, a0, -1147
     7fe: 02 17        	slli	a4, a4, 32
     800: 37 d5 8c ff  	lui	a0, 1046733
     804: 1b 05 d5 cc  	addiw	a0, a0, -819
     808: 7e 05        	slli	a0, a0, 31
     80a: 13 56 25 00  	srli	a2, a0, 2
     80e: 37 35 c3 ff  	lui	a0, 1047603
     812: 1b 05 35 33  	addiw	a0, a0, 819
     816: 02 15        	slli	a0, a0, 32
     818: 13 58 25 00  	srli	a6, a0, 2
     81c: 85 45        	li	a1, 1
     81e: 85 46        	li	a3, 1
     820: 85 47        	li	a5, 1
     822: 22 85        	mv	a0, s0
     824: ef f0 df dc  	jal	0x5f0 <.plt+0x40>
     828: 37 f5 f9 3f  	lui	a0, 262047
     82c: 1b 07 55 b8  	addiw	a4, a0, -1147
     830: 02 17        	slli	a4, a4, 32
     832: b7 04 20 00  	lui	s1, 512
     836: 1b 85 d4 0c  	addiw	a0, s1, 205
     83a: 32 05        	slli	a0, a0, 12
     83c: 13 06 d5 cc  	addi	a2, a0, -819
     840: 76 06        	slli	a2, a2, 29
     842: b7 09 10 00  	lui	s3, 256
     846: 1b 85 39 03  	addiw	a0, s3, 51
     84a: 32 05        	slli	a0, a0, 12
     84c: 13 08 35 33  	addi	a6, a0, 819
     850: 7a 08        	slli	a6, a6, 30
     852: 89 45        	li	a1, 2
     854: 89 46        	li	a3, 2
     856: 89 47        	li	a5, 2
     858: 22 85        	mv	a0, s0
     85a: ef f0 7f d9  	jal	0x5f0 <.plt+0x40>
     85e: 37 75 03 40  	lui	a0, 262199
     862: 0e 05        	slli	a0, a0, 3
     864: 13 07 f5 51  	addi	a4, a0, 1311
     868: 76 07        	slli	a4, a4, 29
     86a: 1b 85 34 53  	addiw	a0, s1, 1331
     86e: 32 05        	slli	a0, a0, 12
     870: 13 06 35 33  	addi	a2, a0, 819
     874: 76 06        	slli	a2, a2, 29
     876: 1b 85 d9 24  	addiw	a0, s3, 589
     87a: 32 05        	slli	a0, a0, 12
     87c: 13 08 d5 cc  	addi	a6, a0, -819
     880: 7a 08        	slli	a6, a6, 30
     882: 8d 45        	li	a1, 3
     884: 8d 46        	li	a3, 3
     886: 8d 47        	li	a5, 3
     888: 22 85        	mv	a0, s0
     88a: ef f0 7f d6  	jal	0x5f0 <.plt+0x40>
     88e: 37 f5 09 40  	lui	a0, 262303
     892: 1b 07 55 b8  	addiw	a4, a0, -1147
     896: 02 17        	slli	a4, a4, 32
     898: 37 19 20 00  	lui	s2, 513
     89c: 1b 05 d9 8c  	addiw	a0, s2, -1843
     8a0: 32 05        	slli	a0, a0, 12
     8a2: 13 06 d5 cc  	addi	a2, a0, -819
     8a6: 76 06        	slli	a2, a2, 29
     8a8: 1b 85 39 43  	addiw	a0, s3, 1075
     8ac: 32 05        	slli	a0, a0, 12
     8ae: 13 08 35 33  	addi	a6, a0, 819
     8b2: 7a 08        	slli	a6, a6, 30
     8b4: 91 45        	li	a1, 4
     8b6: 91 46        	li	a3, 4
     8b8: 91 47        	li	a5, 4
     8ba: 22 85        	mv	a0, s0
     8bc: ef f0 5f d3  	jal	0x5f0 <.plt+0x40>
     8c0: 37 b6 00 02  	lui	a2, 8203
     8c4: 16 16        	slli	a2, a2, 37
     8c6: 37 58 01 04  	lui	a6, 16405
     8ca: 12 18        	slli	a6, a6, 36
     8cc: 1b 85 d9 40  	addiw	a0, s3, 1037
     8d0: 32 05        	slli	a0, a0, 12
     8d2: 13 07 d5 cc  	addi	a4, a0, -819
     8d6: 7a 07        	slli	a4, a4, 30
     8d8: 95 45        	li	a1, 5
     8da: 95 46        	li	a3, 5
     8dc: 95 47        	li	a5, 5
     8de: 22 85        	mv	a0, s0
     8e0: ef f0 1f d1  	jal	0x5f0 <.plt+0x40>
     8e4: 37 75 13 40  	lui	a0, 262455
     8e8: 0e 05        	slli	a0, a0, 3
     8ea: 13 07 f5 51  	addi	a4, a0, 1311
     8ee: 76 07        	slli	a4, a4, 29
     8f0: 1b 05 39 d3  	addiw	a0, s2, -717
     8f4: 32 05        	slli	a0, a0, 12
     8f6: 13 06 35 33  	addi	a2, a0, 819
     8fa: 76 06        	slli	a2, a2, 29
     8fc: 1b 85 d9 64  	addiw	a0, s3, 1613
     900: 32 05        	slli	a0, a0, 12
     902: 13 08 d5 cc  	addi	a6, a0, -819
     906: 7a 08        	slli	a6, a6, 30
     908: 99 45        	li	a1, 6
     90a: 99 46        	li	a3, 6
     90c: 99 47        	li	a5, 6
     90e: 22 85        	mv	a0, s0
     910: ef f0 1f ce  	jal	0x5f0 <.plt+0x40>
     914: 1b 85 39 7b  	addiw	a0, s3, 1971
     918: 32 05        	slli	a0, a0, 12
     91a: 13 06 35 33  	addi	a2, a0, 819
     91e: 7a 06        	slli	a2, a2, 30
     920: 1b 05 79 b5  	addiw	a0, s2, -1193
     924: 32 05        	slli	a0, a0, 12
     926: 13 07 35 0a  	addi	a4, a0, 163
     92a: 76 07        	slli	a4, a4, 29
     92c: 1b 05 39 eb  	addiw	a0, s2, -333
     930: 32 05        	slli	a0, a0, 12
     932: 13 08 35 33  	addi	a6, a0, 819
     936: 76 08        	slli	a6, a6, 29
     938: 9d 45        	li	a1, 7
     93a: 9d 46        	li	a3, 7
     93c: 9d 47        	li	a5, 7
     93e: 22 85        	mv	a0, s0
     940: ef f0 1f cb  	jal	0x5f0 <.plt+0x40>
     944: 37 f5 19 40  	lui	a0, 262559
     948: 1b 07 55 b8  	addiw	a4, a0, -1147
     94c: 02 17        	slli	a4, a4, 32
     94e: 1b 05 d9 0c  	addiw	a0, s2, 205
     952: 32 05        	slli	a0, a0, 12
     954: 13 06 d5 cc  	addi	a2, a0, -819
     958: 76 06        	slli	a2, a2, 29
     95a: b7 14 10 00  	lui	s1, 257
     95e: 1b 85 34 83  	addiw	a0, s1, -1997
     962: 32 05        	slli	a0, a0, 12
     964: 13 08 35 33  	addi	a6, a0, 819
     968: 7a 08        	slli	a6, a6, 30
     96a: a1 45        	li	a1, 8
     96c: a1 46        	li	a3, 8
     96e: a1 47        	li	a5, 8
     970: 22 85        	mv	a0, s0
     972: ef f0 ff c7  	jal	0x5f0 <.plt+0x40>
     976: 1b 85 34 8f  	addiw	a0, s1, -1805
     97a: 32 05        	slli	a0, a0, 12
     97c: 13 06 35 33  	addi	a2, a0, 819
     980: 7a 06        	slli	a2, a2, 30
     982: 37 05 08 00  	lui	a0, 128
     986: 1b 05 55 3a  	addiw	a0, a0, 933
     98a: 3a 05        	slli	a0, a0, 14
     98c: 13 07 f5 7a  	addi	a4, a0, 1967
     990: 76 07        	slli	a4, a4, 29
     992: 1b 05 39 17  	addiw	a0, s2, 371
     996: 32 05        	slli	a0, a0, 12
     998: 13 08 35 33  	addi	a6, a0, 819
     99c: 76 08        	slli	a6, a6, 29
     99e: a5 45        	li	a1, 9
     9a0: a5 46        	li	a3, 9
     9a2: a5 47        	li	a5, 9
     9a4: 22 85        	mv	a0, s0
     9a6: ef f0 bf c4  	jal	0x5f0 <.plt+0x40>
     9aa: 01 45        	li	a0, 0
     9ac: a2 70        	ld	ra, 40(sp)
     9ae: 02 74        	ld	s0, 32(sp)
     9b0: e2 64        	ld	s1, 24(sp)
     9b2: 42 69        	ld	s2, 16(sp)
     9b4: a2 69        	ld	s3, 8(sp)
     9b6: 45 61        	addi	sp, sp, 48
     9b8: 82 80        	ret
