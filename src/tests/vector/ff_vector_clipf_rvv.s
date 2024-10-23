
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

00000000000006b8 <vector_clipf_c>:
     6b8: 63 57 c0 0a  	blez	a2, 0x766 <vector_clipf_c+0xae>
     6bc: f3 26 20 c2  	csrr	a3, vlenb
     6c0: 13 d7 16 00  	srli	a4, a3, 1
     6c4: a1 47        	li	a5, 8
     6c6: 63 e3 e7 00  	bltu	a5, a4, 0x6cc <vector_clipf_c+0x14>
     6ca: 21 47        	li	a4, 8
     6cc: 63 68 e6 00  	bltu	a2, a4, 0x6dc <vector_clipf_c+0x24>
     6d0: 93 92 16 00  	slli	t0, a3, 1
     6d4: 33 07 b5 40  	sub	a4, a0, a1
     6d8: 63 7f 57 02  	bgeu	a4, t0, 0x716 <vector_clipf_c+0x5e>
     6dc: 01 48        	li	a6, 0
     6de: 93 16 28 00  	slli	a3, a6, 2
     6e2: 36 95        	add	a0, a0, a3
     6e4: b6 95        	add	a1, a1, a3
     6e6: 33 06 06 41  	sub	a2, a2, a6
     6ea: 39 a0        	j	0x6f8 <vector_clipf_c+0x40>
     6ec: 27 20 e5 00  	fsw	fa4, 0(a0)
     6f0: 11 05        	addi	a0, a0, 4
     6f2: 7d 16        	addi	a2, a2, -1
     6f4: 91 05        	addi	a1, a1, 4
     6f6: 25 ca        	beqz	a2, 0x766 <vector_clipf_c+0xae>
     6f8: 87 a7 05 00  	flw	fa5, 0(a1)
     6fc: d3 96 a7 a0  	flt.s	a3, fa5, fa0
     700: 53 07 a5 20  	fmv.s	fa4, fa0
     704: e5 f6        	bnez	a3, 0x6ec <vector_clipf_c+0x34>
     706: d3 96 f5 a0  	flt.s	a3, fa1, fa5
     70a: 53 87 b5 20  	fmv.s	fa4, fa1
     70e: f9 fe        	bnez	a3, 0x6ec <vector_clipf_c+0x34>
     710: 53 87 f7 20  	fmv.s	fa4, fa5
     714: e1 bf        	j	0x6ec <vector_clipf_c+0x34>
     716: 13 d7 36 00  	srli	a4, a3, 3
     71a: 93 17 27 00  	slli	a5, a4, 2
     71e: 02 17        	slli	a4, a4, 32
     720: 1d 8f        	sub	a4, a4, a5
     722: 33 78 c7 00  	and	a6, a4, a2
     726: 57 77 10 0d  	vsetvli	a4, zero, e32, m2, ta, ma
     72a: 57 55 05 5e  	vfmv.v.f	v10, fa0
     72e: 57 d6 05 5e  	vfmv.v.f	v12, fa1
     732: 93 d8 16 00  	srli	a7, a3, 1
     736: c2 86        	mv	a3, a6
     738: 2a 87        	mv	a4, a0
     73a: ae 87        	mv	a5, a1
     73c: 07 e7 87 22  	vl2re32.v	v14, (a5)
     740: 57 10 c7 6e  	vmflt.vv	v0, v12, v14
     744: 57 14 e5 6e  	vmflt.vv	v8, v14, v10
     748: 57 07 e6 5c  	vmerge.vvm	v14, v14, v12, v0
     74c: 57 30 80 9e  	vmv1r.v	v0, v8
     750: 57 04 e5 5c  	vmerge.vvm	v8, v14, v10, v0
     754: 27 04 87 22  	vs2r.v	v8, (a4)
     758: 96 97        	add	a5, a5, t0
     75a: b3 86 16 41  	sub	a3, a3, a7
     75e: 16 97        	add	a4, a4, t0
     760: f1 fe        	bnez	a3, 0x73c <vector_clipf_c+0x84>
     762: e3 1e c8 f6  	bne	a6, a2, 0x6de <vector_clipf_c+0x26>
     766: 82 80        	ret

0000000000000768 <main>:
     768: 01 11        	addi	sp, sp, -32
     76a: 06 ec        	sd	ra, 24(sp)
     76c: 22 e8        	sd	s0, 16(sp)
     76e: 26 e4        	sd	s1, 8(sp)
     770: 4a e0        	sd	s2, 0(sp)
     772: 17 05 00 00  	auipc	a0, 0
     776: 13 05 75 12  	addi	a0, a0, 295
     77a: ef f0 7f e6  	jal	0x5e0 <.plt+0x30>
     77e: 17 05 00 00  	auipc	a0, 0
     782: 13 04 e5 10  	addi	s0, a0, 270
     786: 22 85        	mv	a0, s0
     788: 81 45        	li	a1, 0
     78a: 01 46        	li	a2, 0
     78c: ef f0 5f e6  	jal	0x5f0 <.plt+0x40>
     790: 85 45        	li	a1, 1
     792: 05 49        	li	s2, 1
     794: 22 85        	mv	a0, s0
     796: 01 46        	li	a2, 0
     798: ef f0 9f e5  	jal	0x5f0 <.plt+0x40>
     79c: 37 56 00 01  	lui	a2, 4101
     7a0: 1a 16        	slli	a2, a2, 38
     7a2: 89 45        	li	a1, 2
     7a4: 22 85        	mv	a0, s0
     7a6: ef f0 bf e4  	jal	0x5f0 <.plt+0x40>
     7aa: b7 94 00 01  	lui	s1, 4105
     7ae: 9a 14        	slli	s1, s1, 38
     7b0: 8d 45        	li	a1, 3
     7b2: 22 85        	mv	a0, s0
     7b4: 26 86        	mv	a2, s1
     7b6: ef f0 bf e3  	jal	0x5f0 <.plt+0x40>
     7ba: 91 45        	li	a1, 4
     7bc: 22 85        	mv	a0, s0
     7be: 26 86        	mv	a2, s1
     7c0: ef f0 1f e3  	jal	0x5f0 <.plt+0x40>
     7c4: 95 45        	li	a1, 5
     7c6: 22 85        	mv	a0, s0
     7c8: 01 46        	li	a2, 0
     7ca: ef f0 7f e2  	jal	0x5f0 <.plt+0x40>
     7ce: 37 16 80 00  	lui	a2, 2049
     7d2: 1e 16        	slli	a2, a2, 39
     7d4: 99 45        	li	a1, 6
     7d6: 22 85        	mv	a0, s0
     7d8: ef f0 9f e1  	jal	0x5f0 <.plt+0x40>
     7dc: 37 16 01 02  	lui	a2, 8209
     7e0: 16 16        	slli	a2, a2, 37
     7e2: 9d 45        	li	a1, 7
     7e4: 22 85        	mv	a0, s0
     7e6: ef f0 bf e0  	jal	0x5f0 <.plt+0x40>
     7ea: a1 45        	li	a1, 8
     7ec: 22 85        	mv	a0, s0
     7ee: 26 86        	mv	a2, s1
     7f0: ef f0 1f e0  	jal	0x5f0 <.plt+0x40>
     7f4: 13 06 10 20  	li	a2, 513
     7f8: 56 16        	slli	a2, a2, 53
     7fa: a5 45        	li	a1, 9
     7fc: 22 85        	mv	a0, s0
     7fe: ef f0 3f df  	jal	0x5f0 <.plt+0x40>
     802: 37 76 00 01  	lui	a2, 4103
     806: 1a 16        	slli	a2, a2, 38
     808: a9 45        	li	a1, 10
     80a: 22 85        	mv	a0, s0
     80c: ef f0 5f de  	jal	0x5f0 <.plt+0x40>
     810: ad 45        	li	a1, 11
     812: 22 85        	mv	a0, s0
     814: 01 46        	li	a2, 0
     816: ef f0 bf dd  	jal	0x5f0 <.plt+0x40>
     81a: b1 45        	li	a1, 12
     81c: 22 85        	mv	a0, s0
     81e: 26 86        	mv	a2, s1
     820: ef f0 1f dd  	jal	0x5f0 <.plt+0x40>
     824: 13 06 f0 3f  	li	a2, 1023
     828: 52 16        	slli	a2, a2, 52
     82a: b5 45        	li	a1, 13
     82c: 22 85        	mv	a0, s0
     82e: ef f0 3f dc  	jal	0x5f0 <.plt+0x40>
     832: b9 45        	li	a1, 14
     834: 22 85        	mv	a0, s0
     836: 01 46        	li	a2, 0
     838: ef f0 9f db  	jal	0x5f0 <.plt+0x40>
     83c: 13 06 10 40  	li	a2, 1025
     840: 52 16        	slli	a2, a2, 52
     842: bd 45        	li	a1, 15
     844: 22 85        	mv	a0, s0
     846: ef f0 bf da  	jal	0x5f0 <.plt+0x40>
     84a: c1 45        	li	a1, 16
     84c: 22 85        	mv	a0, s0
     84e: 26 86        	mv	a2, s1
     850: ef f0 1f da  	jal	0x5f0 <.plt+0x40>
     854: c5 45        	li	a1, 17
     856: 22 85        	mv	a0, s0
     858: 26 86        	mv	a2, s1
     85a: ef f0 7f d9  	jal	0x5f0 <.plt+0x40>
     85e: 37 36 80 00  	lui	a2, 2051
     862: 1e 16        	slli	a2, a2, 39
     864: c9 45        	li	a1, 18
     866: 22 85        	mv	a0, s0
     868: ef f0 9f d8  	jal	0x5f0 <.plt+0x40>
     86c: 13 16 e9 03  	slli	a2, s2, 62
     870: cd 45        	li	a1, 19
     872: 22 85        	mv	a0, s0
     874: ef f0 df d7  	jal	0x5f0 <.plt+0x40>
     878: 01 45        	li	a0, 0
     87a: e2 60        	ld	ra, 24(sp)
     87c: 42 64        	ld	s0, 16(sp)
     87e: a2 64        	ld	s1, 8(sp)
     880: 02 69        	ld	s2, 0(sp)
     882: 05 61        	addi	sp, sp, 32
     884: 82 80        	ret
