
ff_ac3_sum_square_butterfly_float_rvv:	file format elf64-littleriscv

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

00000000000006b8 <ac3_sum_square_butterfly_float_c>:
     6b8: 8d c2        	beqz	a3, 0x6da <ac3_sum_square_butterfly_float_c+0x22>
     6ba: f3 22 20 c2  	csrr	t0, vlenb
     6be: 93 d8 12 00  	srli	a7, t0, 1
     6c2: 63 f5 16 03  	bgeu	a3, a7, 0x6ec <ac3_sum_square_butterfly_float_c+0x34>
     6c6: d3 07 00 f0  	fmv.w.x	fa5, zero
     6ca: 01 48        	li	a6, 0
     6cc: 53 86 f7 20  	fmv.s	fa2, fa5
     6d0: d3 86 f7 20  	fmv.s	fa3, fa5
     6d4: 53 87 f7 20  	fmv.s	fa4, fa5
     6d8: 61 a8        	j	0x770 <ac3_sum_square_butterfly_float_c+0xb8>
     6da: 53 07 00 f0  	fmv.w.x	fa4, zero
     6de: d3 06 e7 20  	fmv.s	fa3, fa4
     6e2: 53 06 e7 20  	fmv.s	fa2, fa4
     6e6: d3 07 e7 20  	fmv.s	fa5, fa4
     6ea: 65 a8        	j	0x7a2 <ac3_sum_square_butterfly_float_c+0xea>
     6ec: 33 07 10 41  	neg	a4, a7
     6f0: 33 78 d7 00  	and	a6, a4, a3
     6f4: 86 02        	slli	t0, t0, 1
     6f6: d3 07 00 f0  	fmv.w.x	fa5, zero
     6fa: 57 77 10 0d  	vsetvli	a4, zero, e32, m2, ta, ma
     6fe: 42 83        	mv	t1, a6
     700: 32 87        	mv	a4, a2
     702: ae 87        	mv	a5, a1
     704: 53 86 f7 20  	fmv.s	fa2, fa5
     708: d3 86 f7 20  	fmv.s	fa3, fa5
     70c: 53 87 f7 20  	fmv.s	fa4, fa5
     710: 07 e4 87 22  	vl2re32.v	v8, (a5)
     714: 07 65 87 22  	vl2re32.v	v10, (a4)
     718: 57 16 85 02  	vfadd.vv	v12, v8, v10
     71c: 57 17 85 0a  	vfsub.vv	v14, v8, v10
     720: 57 14 84 92  	vfmul.vv	v8, v8, v8
     724: 57 15 a5 92  	vfmul.vv	v10, v10, v10
     728: 57 16 c6 92  	vfmul.vv	v12, v12, v12
     72c: 57 17 e7 92  	vfmul.vv	v14, v14, v14
     730: 57 d8 07 42  	vfmv.s.f	v16, fa5
     734: 57 14 88 0e  	vfredosum.vs	v8, v8, v16
     738: d7 17 80 42  	vfmv.f.s	fa5, v8
     73c: 57 54 06 42  	vfmv.s.f	v8, fa2
     740: 57 14 a4 0e  	vfredosum.vs	v8, v10, v8
     744: 57 16 80 42  	vfmv.f.s	fa2, v8
     748: 57 d4 06 42  	vfmv.s.f	v8, fa3
     74c: 57 14 c4 0e  	vfredosum.vs	v8, v12, v8
     750: d7 16 80 42  	vfmv.f.s	fa3, v8
     754: 57 54 07 42  	vfmv.s.f	v8, fa4
     758: 57 14 e4 0e  	vfredosum.vs	v8, v14, v8
     75c: 57 17 80 42  	vfmv.f.s	fa4, v8
     760: 96 97        	add	a5, a5, t0
     762: 33 03 13 41  	sub	t1, t1, a7
     766: 16 97        	add	a4, a4, t0
     768: e3 14 03 fa  	bnez	t1, 0x710 <ac3_sum_square_butterfly_float_c+0x58>
     76c: 63 0b d8 02  	beq	a6, a3, 0x7a2 <ac3_sum_square_butterfly_float_c+0xea>
     770: b3 86 06 41  	sub	a3, a3, a6
     774: 0a 08        	slli	a6, a6, 2
     776: 42 96        	add	a2, a2, a6
     778: c2 95        	add	a1, a1, a6
     77a: 87 a5 05 00  	flw	fa1, 0(a1)
     77e: 07 25 06 00  	flw	fa0, 0(a2)
     782: 53 f0 a5 00  	fadd.s	ft0, fa1, fa0
     786: d3 f0 a5 08  	fsub.s	ft1, fa1, fa0
     78a: c3 f7 b5 78  	fmadd.s	fa5, fa1, fa1, fa5
     78e: 43 76 a5 60  	fmadd.s	fa2, fa0, fa0, fa2
     792: c3 76 00 68  	fmadd.s	fa3, ft0, ft0, fa3
     796: 43 f7 10 70  	fmadd.s	fa4, ft1, ft1, fa4
     79a: fd 16        	addi	a3, a3, -1
     79c: 11 06        	addi	a2, a2, 4
     79e: 91 05        	addi	a1, a1, 4
     7a0: e9 fe        	bnez	a3, 0x77a <ac3_sum_square_butterfly_float_c+0xc2>
     7a2: 27 20 f5 00  	fsw	fa5, 0(a0)
     7a6: 27 22 c5 00  	fsw	fa2, 4(a0)
     7aa: 27 24 d5 00  	fsw	fa3, 8(a0)
     7ae: 27 26 e5 00  	fsw	fa4, 12(a0)
     7b2: 82 80        	ret

00000000000007b4 <main>:
     7b4: 41 11        	addi	sp, sp, -16
     7b6: 06 e4        	sd	ra, 8(sp)
     7b8: 22 e0        	sd	s0, 0(sp)
     7ba: 17 05 00 00  	auipc	a0, 0
     7be: 13 05 25 09  	addi	a0, a0, 146
     7c2: ef f0 ff e1  	jal	0x5e0 <.plt+0x30>
     7c6: 17 05 00 00  	auipc	a0, 0
     7ca: 13 05 65 05  	addi	a0, a0, 86
     7ce: 37 34 0d 08  	lui	s0, 32979
     7d2: 0e 14        	slli	s0, s0, 35
     7d4: a2 85        	mv	a1, s0
     7d6: ef f0 bf e1  	jal	0x5f0 <.plt+0x40>
     7da: 17 05 00 00  	auipc	a0, 0
     7de: 13 05 e5 04  	addi	a0, a0, 78
     7e2: a2 85        	mv	a1, s0
     7e4: ef f0 df e0  	jal	0x5f0 <.plt+0x40>
     7e8: 17 05 00 00  	auipc	a0, 0
     7ec: 13 05 c5 04  	addi	a0, a0, 76
     7f0: b7 15 21 10  	lui	a1, 66065
     7f4: 8a 15        	slli	a1, a1, 34
     7f6: ef f0 bf df  	jal	0x5f0 <.plt+0x40>
     7fa: 17 05 00 00  	auipc	a0, 0
     7fe: 13 05 65 04  	addi	a0, a0, 70
     802: b7 55 06 04  	lui	a1, 16485
     806: 92 15        	slli	a1, a1, 36
     808: ef f0 9f de  	jal	0x5f0 <.plt+0x40>
     80c: 01 45        	li	a0, 0
     80e: a2 60        	ld	ra, 8(sp)
     810: 02 64        	ld	s0, 0(sp)
     812: 41 01        	addi	sp, sp, 16
     814: 82 80        	ret
