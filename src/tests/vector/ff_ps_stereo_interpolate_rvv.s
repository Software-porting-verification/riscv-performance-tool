
ff_ps_stereo_interpolate_rvv:	file format elf64-littleriscv

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

00000000000006b8 <ps_stereo_interpolate_c>:
     6b8: 63 5e e0 06  	blez	a4, 0x734 <ps_stereo_interpolate_c+0x7c>
     6bc: 57 70 02 cd  	vsetivli	zero, 4, e32, m1, ta, ma
     6c0: 07 e4 06 02  	vle32.v	v8, (a3)
     6c4: 87 64 06 02  	vle32.v	v9, (a2)
     6c8: 91 05        	addi	a1, a1, 4
     6ca: 11 05        	addi	a0, a0, 4
     6cc: 87 27 c5 ff  	flw	fa5, -4(a0)
     6d0: 07 27 05 00  	flw	fa4, 0(a0)
     6d4: 87 a6 c5 ff  	flw	fa3, -4(a1)
     6d8: 07 a6 05 00  	flw	fa2, 0(a1)
     6dc: d7 94 84 02  	vfadd.vv	v9, v8, v9
     6e0: 57 35 91 3e  	vslidedown.vi	v10, v9, 2
     6e4: d7 15 a0 42  	vfmv.f.s	fa1, v10
     6e8: 53 f5 d5 10  	fmul.s	fa0, fa1, fa3
     6ec: 57 10 90 42  	vfmv.f.s	ft0, v9
     6f0: 43 75 f0 50  	fmadd.s	fa0, ft0, fa5, fa0
     6f4: d3 f5 c5 10  	fmul.s	fa1, fa1, fa2
     6f8: c3 75 e0 58  	fmadd.s	fa1, ft0, fa4, fa1
     6fc: 57 b5 91 3e  	vslidedown.vi	v10, v9, 3
     700: 57 10 a0 42  	vfmv.f.s	ft0, v10
     704: d3 76 d0 10  	fmul.s	fa3, ft0, fa3
     708: 57 b5 90 3e  	vslidedown.vi	v10, v9, 1
     70c: d7 10 a0 42  	vfmv.f.s	ft1, v10
     710: c3 f7 f0 68  	fmadd.s	fa5, ft1, fa5, fa3
     714: d3 76 c0 10  	fmul.s	fa3, ft0, fa2
     718: 43 f7 e0 68  	fmadd.s	fa4, ft1, fa4, fa3
     71c: 27 2e a5 fe  	fsw	fa0, -4(a0)
     720: 27 20 b5 00  	fsw	fa1, 0(a0)
     724: 27 ae f5 fe  	fsw	fa5, -4(a1)
     728: 27 a0 e5 00  	fsw	fa4, 0(a1)
     72c: a1 05        	addi	a1, a1, 8
     72e: 7d 17        	addi	a4, a4, -1
     730: 21 05        	addi	a0, a0, 8
     732: 49 ff        	bnez	a4, 0x6cc <ps_stereo_interpolate_c+0x14>
     734: 82 80        	ret

0000000000000736 <main>:
     736: 41 11        	addi	sp, sp, -16
     738: 06 e4        	sd	ra, 8(sp)
     73a: 22 e0        	sd	s0, 0(sp)
     73c: 17 05 00 00  	auipc	a0, 0
     740: 13 05 25 16  	addi	a0, a0, 354
     744: ef f0 df e9  	jal	0x5e0 <.plt+0x30>
     748: 17 05 00 00  	auipc	a0, 0
     74c: 13 04 45 13  	addi	s0, a0, 308
     750: 37 d5 cc fd  	lui	a0, 1039565
     754: 1b 05 d5 cc  	addiw	a0, a0, -819
     758: 7e 05        	slli	a0, a0, 31
     75a: 13 56 25 00  	srli	a2, a0, 2
     75e: 22 85        	mv	a0, s0
     760: 81 45        	li	a1, 0
     762: b2 86        	mv	a3, a2
     764: 01 47        	li	a4, 0
     766: b2 87        	mv	a5, a2
     768: 32 88        	mv	a6, a2
     76a: ef f0 7f e8  	jal	0x5f0 <.plt+0x40>
     76e: 37 d5 8c ff  	lui	a0, 1046733
     772: 1b 05 d5 cc  	addiw	a0, a0, -819
     776: 02 15        	slli	a0, a0, 32
     778: 13 56 25 00  	srli	a2, a0, 2
     77c: 85 45        	li	a1, 1
     77e: 05 47        	li	a4, 1
     780: 22 85        	mv	a0, s0
     782: b2 86        	mv	a3, a2
     784: b2 87        	mv	a5, a2
     786: 32 88        	mv	a6, a2
     788: ef f0 9f e6  	jal	0x5f0 <.plt+0x40>
     78c: 13 06 f0 7f  	li	a2, 2047
     790: 4e 16        	slli	a2, a2, 51
     792: 89 45        	li	a1, 2
     794: 09 47        	li	a4, 2
     796: 22 85        	mv	a0, s0
     798: b2 86        	mv	a3, a2
     79a: b2 87        	mv	a5, a2
     79c: 32 88        	mv	a6, a2
     79e: ef f0 3f e5  	jal	0x5f0 <.plt+0x40>
     7a2: 37 05 20 00  	lui	a0, 512
     7a6: 1b 05 35 33  	addiw	a0, a0, 819
     7aa: 32 05        	slli	a0, a0, 12
     7ac: 13 06 35 33  	addi	a2, a0, 819
     7b0: 76 06        	slli	a2, a2, 29
     7b2: 8d 45        	li	a1, 3
     7b4: 0d 47        	li	a4, 3
     7b6: 22 85        	mv	a0, s0
     7b8: b2 86        	mv	a3, a2
     7ba: b2 87        	mv	a5, a2
     7bc: 32 88        	mv	a6, a2
     7be: ef f0 3f e3  	jal	0x5f0 <.plt+0x40>
     7c2: 37 96 00 02  	lui	a2, 8201
     7c6: 16 16        	slli	a2, a2, 37
     7c8: 91 45        	li	a1, 4
     7ca: 11 47        	li	a4, 4
     7cc: 22 85        	mv	a0, s0
     7ce: b2 86        	mv	a3, a2
     7d0: b2 87        	mv	a5, a2
     7d2: 32 88        	mv	a6, a2
     7d4: ef f0 df e1  	jal	0x5f0 <.plt+0x40>
     7d8: 37 d5 34 80  	lui	a0, 525133
     7dc: 1b 05 d5 cc  	addiw	a0, a0, -819
     7e0: 02 15        	slli	a0, a0, 32
     7e2: 13 56 15 00  	srli	a2, a0, 1
     7e6: 95 45        	li	a1, 5
     7e8: 15 47        	li	a4, 5
     7ea: 22 85        	mv	a0, s0
     7ec: b2 86        	mv	a3, a2
     7ee: b2 87        	mv	a5, a2
     7f0: 32 88        	mv	a6, a2
     7f2: ef f0 ff df  	jal	0x5f0 <.plt+0x40>
     7f6: 37 15 10 00  	lui	a0, 257
     7fa: 1b 05 d5 88  	addiw	a0, a0, -1907
     7fe: 32 05        	slli	a0, a0, 12
     800: 13 06 d5 cc  	addi	a2, a0, -819
     804: 7a 06        	slli	a2, a2, 30
     806: 99 45        	li	a1, 6
     808: 19 47        	li	a4, 6
     80a: 22 85        	mv	a0, s0
     80c: b2 86        	mv	a3, a2
     80e: b2 87        	mv	a5, a2
     810: 32 88        	mv	a6, a2
     812: ef f0 ff dd  	jal	0x5f0 <.plt+0x40>
     816: 37 55 80 00  	lui	a0, 2053
     81a: 2a 05        	slli	a0, a0, 10
     81c: 05 05        	addi	a0, a0, 1
     81e: 13 16 d5 01  	slli	a2, a0, 29
     822: 9d 45        	li	a1, 7
     824: 1d 47        	li	a4, 7
     826: 22 85        	mv	a0, s0
     828: b2 86        	mv	a3, a2
     82a: b2 87        	mv	a5, a2
     82c: 32 88        	mv	a6, a2
     82e: ef f0 3f dc  	jal	0x5f0 <.plt+0x40>
     832: 37 05 08 00  	lui	a0, 128
     836: 1b 05 35 5d  	addiw	a0, a0, 1491
     83a: 36 05        	slli	a0, a0, 13
     83c: 13 06 75 66  	addi	a2, a0, 1639
     840: 7a 06        	slli	a2, a2, 30
     842: a1 45        	li	a1, 8
     844: 21 47        	li	a4, 8
     846: 22 85        	mv	a0, s0
     848: b2 86        	mv	a3, a2
     84a: b2 87        	mv	a5, a2
     84c: 32 88        	mv	a6, a2
     84e: ef f0 3f da  	jal	0x5f0 <.plt+0x40>
     852: 37 35 03 04  	lui	a0, 16435
     856: 1e 05        	slli	a0, a0, 7
     858: 05 05        	addi	a0, a0, 1
     85a: 13 16 d5 01  	slli	a2, a0, 29
     85e: a5 45        	li	a1, 9
     860: 25 47        	li	a4, 9
     862: 22 85        	mv	a0, s0
     864: b2 86        	mv	a3, a2
     866: b2 87        	mv	a5, a2
     868: 32 88        	mv	a6, a2
     86a: ef f0 7f d8  	jal	0x5f0 <.plt+0x40>
     86e: 01 45        	li	a0, 0
     870: a2 60        	ld	ra, 8(sp)
     872: 02 64        	ld	s0, 0(sp)
     874: 41 01        	addi	sp, sp, 16
     876: 82 80        	ret
