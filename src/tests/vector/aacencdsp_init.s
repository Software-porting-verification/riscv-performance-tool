
aacencdsp_init:	file format elf64-littleriscv

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

00000000000006b8 <main>:
     6b8: 5d 71        	addi	sp, sp, -80
     6ba: 86 e4        	sd	ra, 72(sp)
     6bc: a2 e0        	sd	s0, 64(sp)
     6be: 17 05 00 00  	auipc	a0, 0
     6c2: 13 05 25 1a  	addi	a0, a0, 418
     6c6: 57 70 92 cd  	vsetivli	zero, 4, e64, m2, ta, ma
     6ca: 07 74 05 02  	vle64.v	v8, (a0)
     6ce: 08 10        	addi	a0, sp, 32
     6d0: 27 74 05 02  	vse64.v	v8, (a0)
     6d4: 0a 85        	mv	a0, sp
     6d6: 0c 10        	addi	a1, sp, 32
     6d8: 21 46        	li	a2, 8
     6da: ef 00 20 0c  	jal	0x79c <ff_abs_pow34_rvv>
     6de: 17 05 00 00  	auipc	a0, 0
     6e2: 13 05 35 1b  	addi	a0, a0, 435
     6e6: ef f0 bf ef  	jal	0x5e0 <.plt+0x30>
     6ea: 87 27 01 00  	flw	fa5, 0(sp)
     6ee: d3 87 07 42  	fcvt.d.s	fa5, fa5
     6f2: 53 86 07 e2  	fmv.x.d	a2, fa5
     6f6: 17 05 00 00  	auipc	a0, 0
     6fa: 13 04 a5 18  	addi	s0, a0, 394
     6fe: 22 85        	mv	a0, s0
     700: 81 45        	li	a1, 0
     702: ef f0 ff ee  	jal	0x5f0 <.plt+0x40>
     706: 87 27 41 00  	flw	fa5, 4(sp)
     70a: d3 87 07 42  	fcvt.d.s	fa5, fa5
     70e: 53 86 07 e2  	fmv.x.d	a2, fa5
     712: 85 45        	li	a1, 1
     714: 22 85        	mv	a0, s0
     716: ef f0 bf ed  	jal	0x5f0 <.plt+0x40>
     71a: 87 27 81 00  	flw	fa5, 8(sp)
     71e: d3 87 07 42  	fcvt.d.s	fa5, fa5
     722: 53 86 07 e2  	fmv.x.d	a2, fa5
     726: 89 45        	li	a1, 2
     728: 22 85        	mv	a0, s0
     72a: ef f0 7f ec  	jal	0x5f0 <.plt+0x40>
     72e: 87 27 c1 00  	flw	fa5, 12(sp)
     732: d3 87 07 42  	fcvt.d.s	fa5, fa5
     736: 53 86 07 e2  	fmv.x.d	a2, fa5
     73a: 8d 45        	li	a1, 3
     73c: 22 85        	mv	a0, s0
     73e: ef f0 3f eb  	jal	0x5f0 <.plt+0x40>
     742: 87 27 01 01  	flw	fa5, 16(sp)
     746: d3 87 07 42  	fcvt.d.s	fa5, fa5
     74a: 53 86 07 e2  	fmv.x.d	a2, fa5
     74e: 91 45        	li	a1, 4
     750: 22 85        	mv	a0, s0
     752: ef f0 ff e9  	jal	0x5f0 <.plt+0x40>
     756: 87 27 41 01  	flw	fa5, 20(sp)
     75a: d3 87 07 42  	fcvt.d.s	fa5, fa5
     75e: 53 86 07 e2  	fmv.x.d	a2, fa5
     762: 95 45        	li	a1, 5
     764: 22 85        	mv	a0, s0
     766: ef f0 bf e8  	jal	0x5f0 <.plt+0x40>
     76a: 87 27 81 01  	flw	fa5, 24(sp)
     76e: d3 87 07 42  	fcvt.d.s	fa5, fa5
     772: 53 86 07 e2  	fmv.x.d	a2, fa5
     776: 99 45        	li	a1, 6
     778: 22 85        	mv	a0, s0
     77a: ef f0 7f e7  	jal	0x5f0 <.plt+0x40>
     77e: 87 27 c1 01  	flw	fa5, 28(sp)
     782: d3 87 07 42  	fcvt.d.s	fa5, fa5
     786: 53 86 07 e2  	fmv.x.d	a2, fa5
     78a: 9d 45        	li	a1, 7
     78c: 22 85        	mv	a0, s0
     78e: ef f0 3f e6  	jal	0x5f0 <.plt+0x40>
     792: 01 45        	li	a0, 0
     794: a6 60        	ld	ra, 72(sp)
     796: 06 64        	ld	s0, 64(sp)
     798: 61 61        	addi	sp, sp, 80
     79a: 82 80        	ret

000000000000079c <ff_abs_pow34_rvv>:
     79c: 17 00 00 00  	auipc	zero, 0
     7a0: d7 72 36 0d  	vsetvli	t0, a2, e32, m8, ta, ma
     7a4: 33 06 56 40  	sub	a2, a2, t0
     7a8: 07 e0 05 02  	vle32.v	v0, (a1)
     7ac: 96 95        	add	a1, a1, t0
     7ae: 57 10 00 2a  	vfabs.v	v0, v0
     7b2: 57 14 00 4e  	vfsqrt.v	v8, v0
     7b6: 57 14 80 92  	vfmul.vv	v8, v8, v0
     7ba: 57 14 80 4e  	vfsqrt.v	v8, v8
     7be: 27 64 05 02  	vse32.v	v8, (a0)
     7c2: 16 95        	add	a0, a0, t0
     7c4: 71 fe        	bnez	a2, 0x7a0 <ff_abs_pow34_rvv+0x4>
     7c6: 82 80        	ret

00000000000007c8 <ff_aac_quant_bands_rvv>:
     7c8: 17 00 00 00  	auipc	zero, 0
     7cc: 53 f0 07 d0  	fcvt.s.w	ft0, a5
     7d0: 15 e7        	bnez	a4, 0x7fc <ff_aac_quant_bands_rvv+0x34>
     7d2: d7 f2 36 0d  	vsetvli	t0, a3, e32, m8, ta, ma
     7d6: 07 68 06 02  	vle32.v	v16, (a2)
     7da: b3 86 56 40  	sub	a3, a3, t0
     7de: 57 58 05 93  	vfmul.vf	v16, v16, fa0
     7e2: 33 c6 c2 20  	<unknown>
     7e6: 57 d8 05 03  	vfadd.vf	v16, v16, fa1
     7ea: 57 58 00 13  	vfmin.vf	v16, v16, ft0
     7ee: 57 98 03 4b  	vfcvt.rtz.x.f.v	v16, v16
     7f2: 27 68 05 02  	vse32.v	v16, (a0)
     7f6: 16 95        	add	a0, a0, t0
     7f8: e9 fe        	bnez	a3, 0x7d2 <ff_aac_quant_bands_rvv+0xa>
     7fa: 82 80        	ret
     7fc: d7 f2 36 0d  	vsetvli	t0, a3, e32, m8, ta, ma
     800: 07 68 06 02  	vle32.v	v16, (a2)
     804: b3 86 56 40  	sub	a3, a3, t0
     808: 07 e4 05 02  	vle32.v	v8, (a1)
     80c: 96 95        	add	a1, a1, t0
     80e: 57 58 05 93  	vfmul.vf	v16, v16, fa0
     812: 33 c6 c2 20  	<unknown>
     816: 57 d8 05 03  	vfadd.vf	v16, v16, fa1
     81a: 57 58 00 13  	vfmin.vf	v16, v16, ft0
     81e: 57 18 04 2b  	vfsgnjx.vv	v16, v16, v8
     822: 57 98 03 4b  	vfcvt.rtz.x.f.v	v16, v16
     826: 27 68 05 02  	vse32.v	v16, (a0)
     82a: 16 95        	add	a0, a0, t0
     82c: e1 fa        	bnez	a3, 0x7fc <ff_aac_quant_bands_rvv+0x34>
     82e: 82 80        	ret
