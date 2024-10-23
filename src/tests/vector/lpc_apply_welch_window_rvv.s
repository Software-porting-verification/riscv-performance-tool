
test:	file format elf64-littleriscv

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
     6c4: 13 04 04 9f  	addi	s0, s0, -1552
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

00000000000006f8 <lpc_apply_welch_window_c>:
     6f8: 63 5e b0 08  	blez	a1, 0x794 <lpc_apply_welch_window_c+0x9c>
     6fc: 97 26 00 00  	auipc	a3, 2
     700: 87 b7 46 96  	fld	fa5, -1692(a3)
     704: 53 f7 25 d2  	fcvt.d.l	fa4, a1
     708: d3 77 f7 02  	fadd.d	fa5, fa4, fa5
     70c: 13 d3 15 00  	srli	t1, a1, 1
     710: f3 28 20 c2  	csrr	a7, vlenb
     714: 93 d3 28 00  	srli	t2, a7, 2
     718: 17 28 00 00  	auipc	a6, 2
     71c: 63 f4 75 00  	bgeu	a1, t2, 0x724 <lpc_apply_welch_window_c+0x2c>
     720: 01 4e        	li	t3, 0
     722: 95 a8        	j	0x796 <lpc_apply_welch_window_c+0x9e>
     724: b3 06 70 40  	neg	a3, t2
     728: 07 37 08 95  	fld	fa4, -1712(a6)
     72c: 33 fe b6 00  	and	t3, a3, a1
     730: d7 76 90 0d  	vsetvli	a3, zero, e64, m2, ta, ma
     734: 57 a4 08 52  	vid.v	v8
     738: 53 77 f7 1a  	fdiv.d	fa4, fa4, fa5
     73c: 57 55 07 5e  	vfmv.v.f	v10, fa4
     740: 93 92 18 00  	slli	t0, a7, 1
     744: 57 15 a5 02  	vfadd.vv	v10, v10, v10
     748: 72 87        	mv	a4, t3
     74a: b2 87        	mv	a5, a2
     74c: aa 86        	mv	a3, a0
     74e: 57 40 83 6a  	vmsltu.vx	v0, v8, t1
     752: 57 b6 8f 2e  	vnot.v	v12, v8
     756: 57 c6 c5 02  	vadd.vx	v12, v12, a1
     75a: 57 06 c4 5c  	vmerge.vvm	v12, v12, v8, v0
     75e: 57 96 c1 4a  	vfcvt.f.x.v	v12, v12
     762: 07 e7 86 02  	vl1re32.v	v14, (a3)
     766: 57 16 c5 92  	vfmul.vv	v12, v12, v10
     76a: 57 16 c6 92  	vfmul.vv	v12, v12, v12
     76e: 57 70 00 0d  	vsetvli	zero, zero, e32, m1, ta, ma
     772: 57 98 e5 4a  	vfwcvt.f.x.v	v16, v14
     776: 57 70 90 0d  	vsetvli	zero, zero, e64, m2, ta, ma
     77a: 57 18 06 af  	vfnmsub.vv	v16, v12, v16
     77e: 27 88 87 22  	vs2r.v	v16, (a5)
     782: 57 c4 83 02  	vadd.vx	v8, v8, t2
     786: c6 96        	add	a3, a3, a7
     788: 33 07 77 40  	sub	a4, a4, t2
     78c: 96 97        	add	a5, a5, t0
     78e: 61 f3        	bnez	a4, 0x74e <lpc_apply_welch_window_c+0x56>
     790: 63 13 be 00  	bne	t3, a1, 0x796 <lpc_apply_welch_window_c+0x9e>
     794: 82 80        	ret
     796: 07 37 08 95  	fld	fa4, -1712(a6)
     79a: d3 77 f7 1a  	fdiv.d	fa5, fa4, fa5
     79e: b3 07 b0 40  	neg	a5, a1
     7a2: 93 16 3e 00  	slli	a3, t3, 3
     7a6: 36 96        	add	a2, a2, a3
     7a8: 93 16 2e 00  	slli	a3, t3, 2
     7ac: 36 95        	add	a0, a0, a3
     7ae: 93 46 fe ff  	not	a3, t3
     7b2: b6 95        	add	a1, a1, a3
     7b4: d3 f7 f7 02  	fadd.d	fa5, fa5, fa5
     7b8: 25 a0        	j	0x7e0 <lpc_apply_welch_window_c+0xe8>
     7ba: 18 41        	lw	a4, 0(a0)
     7bc: 53 f7 26 d2  	fcvt.d.l	fa4, a3
     7c0: 53 77 f7 12  	fmul.d	fa4, fa4, fa5
     7c4: 53 77 e7 12  	fmul.d	fa4, fa4, fa4
     7c8: d3 06 07 d2  	fcvt.d.w	fa3, a4
     7cc: 4b 77 d7 6a  	fnmsub.d	fa4, fa4, fa3, fa3
     7d0: 18 a2        	fsd	fa4, 0(a2)
     7d2: 05 0e        	addi	t3, t3, 1
     7d4: b3 86 c7 01  	add	a3, a5, t3
     7d8: 21 06        	addi	a2, a2, 8
     7da: 11 05        	addi	a0, a0, 4
     7dc: fd 15        	addi	a1, a1, -1
     7de: dd da        	beqz	a3, 0x794 <lpc_apply_welch_window_c+0x9c>
     7e0: f2 86        	mv	a3, t3
     7e2: e3 6c 6e fc  	bltu	t3, t1, 0x7ba <lpc_apply_welch_window_c+0xc2>
     7e6: ae 86        	mv	a3, a1
     7e8: c9 bf        	j	0x7ba <lpc_apply_welch_window_c+0xc2>

00000000000007ea <main>:
     7ea: 41 11        	addi	sp, sp, -16
     7ec: 06 e4        	sd	ra, 8(sp)
     7ee: 22 e0        	sd	s0, 0(sp)
     7f0: 17 05 00 00  	auipc	a0, 0
     7f4: 13 05 c5 11  	addi	a0, a0, 284
     7f8: ef f0 9f e2  	jal	0x620 <.plt+0x40>
     7fc: 17 05 00 00  	auipc	a0, 0
     800: 13 04 85 10  	addi	s0, a0, 264
     804: 85 45        	li	a1, 1
     806: 22 85        	mv	a0, s0
     808: ef f0 9f e2  	jal	0x630 <.plt+0x50>
     80c: 89 45        	li	a1, 2
     80e: 22 85        	mv	a0, s0
     810: ef f0 1f e2  	jal	0x630 <.plt+0x50>
     814: 8d 45        	li	a1, 3
     816: 22 85        	mv	a0, s0
     818: ef f0 9f e1  	jal	0x630 <.plt+0x50>
     81c: 91 45        	li	a1, 4
     81e: 22 85        	mv	a0, s0
     820: ef f0 1f e1  	jal	0x630 <.plt+0x50>
     824: 95 45        	li	a1, 5
     826: 22 85        	mv	a0, s0
     828: ef f0 9f e0  	jal	0x630 <.plt+0x50>
     82c: 99 45        	li	a1, 6
     82e: 22 85        	mv	a0, s0
     830: ef f0 1f e0  	jal	0x630 <.plt+0x50>
     834: 9d 45        	li	a1, 7
     836: 22 85        	mv	a0, s0
     838: ef f0 9f df  	jal	0x630 <.plt+0x50>
     83c: a1 45        	li	a1, 8
     83e: 22 85        	mv	a0, s0
     840: ef f0 1f df  	jal	0x630 <.plt+0x50>
     844: a5 45        	li	a1, 9
     846: 22 85        	mv	a0, s0
     848: ef f0 9f de  	jal	0x630 <.plt+0x50>
     84c: a9 45        	li	a1, 10
     84e: 22 85        	mv	a0, s0
     850: ef f0 1f de  	jal	0x630 <.plt+0x50>
     854: 17 05 00 00  	auipc	a0, 0
     858: 13 05 45 0c  	addi	a0, a0, 196
     85c: ef f0 5f dc  	jal	0x620 <.plt+0x40>
     860: 17 05 00 00  	auipc	a0, 0
     864: 13 04 85 0a  	addi	s0, a0, 168
     868: 93 05 f0 3f  	li	a1, 1023
     86c: d2 15        	slli	a1, a1, 52
     86e: 22 85        	mv	a0, s0
     870: ef f0 1f dc  	jal	0x630 <.plt+0x50>
     874: 17 15 00 00  	auipc	a0, 1
     878: 83 35 c5 7f  	ld	a1, 2044(a0)
     87c: 22 85        	mv	a0, s0
     87e: ef f0 3f db  	jal	0x630 <.plt+0x50>
     882: 17 15 00 00  	auipc	a0, 1
     886: 83 35 65 7f  	ld	a1, 2038(a0)
     88a: 22 85        	mv	a0, s0
     88c: ef f0 5f da  	jal	0x630 <.plt+0x50>
     890: 17 15 00 00  	auipc	a0, 1
     894: 83 35 05 7f  	ld	a1, 2032(a0)
     898: 22 85        	mv	a0, s0
     89a: ef f0 7f d9  	jal	0x630 <.plt+0x50>
     89e: 17 15 00 00  	auipc	a0, 1
     8a2: 83 35 a5 7e  	ld	a1, 2026(a0)
     8a6: 22 85        	mv	a0, s0
     8a8: ef f0 9f d8  	jal	0x630 <.plt+0x50>
     8ac: 17 15 00 00  	auipc	a0, 1
     8b0: 83 35 45 7e  	ld	a1, 2020(a0)
     8b4: 22 85        	mv	a0, s0
     8b6: ef f0 bf d7  	jal	0x630 <.plt+0x50>
     8ba: 17 15 00 00  	auipc	a0, 1
     8be: 83 35 e5 7d  	ld	a1, 2014(a0)
     8c2: 22 85        	mv	a0, s0
     8c4: ef f0 df d6  	jal	0x630 <.plt+0x50>
     8c8: 17 15 00 00  	auipc	a0, 1
     8cc: 83 35 85 7d  	ld	a1, 2008(a0)
     8d0: 22 85        	mv	a0, s0
     8d2: ef f0 ff d5  	jal	0x630 <.plt+0x50>
     8d6: 17 15 00 00  	auipc	a0, 1
     8da: 83 35 25 7d  	ld	a1, 2002(a0)
     8de: 22 85        	mv	a0, s0
     8e0: ef f0 1f d5  	jal	0x630 <.plt+0x50>
     8e4: b7 95 00 01  	lui	a1, 4105
     8e8: 9a 15        	slli	a1, a1, 38
     8ea: 22 85        	mv	a0, s0
     8ec: ef f0 5f d4  	jal	0x630 <.plt+0x50>
     8f0: 29 45        	li	a0, 10
     8f2: ef f0 ff d1  	jal	0x610 <.plt+0x30>
     8f6: 01 45        	li	a0, 0
     8f8: a2 60        	ld	ra, 8(sp)
     8fa: 02 64        	ld	s0, 0(sp)
     8fc: 41 01        	addi	sp, sp, 16
     8fe: 82 80        	ret
