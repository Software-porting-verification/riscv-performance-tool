
ff_ps_hybrid_analysis_rvv:	file format elf64-littleriscv

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

0000000000000668 <ps_hybrid_analysis_c>:
     668: 51 71        	addi	sp, sp, -240
     66a: 86 f5        	sd	ra, 232(sp)
     66c: a2 f1        	sd	s0, 224(sp)
     66e: a6 ed        	sd	s1, 216(sp)
     670: ca e9        	sd	s2, 208(sp)
     672: ce e5        	sd	s3, 200(sp)
     674: d2 e1        	sd	s4, 192(sp)
     676: 56 fd        	sd	s5, 184(sp)
     678: 5a f9        	sd	s6, 176(sp)
     67a: 5e f5        	sd	s7, 168(sp)
     67c: 22 b1        	fsd	fs0, 160(sp)
     67e: 26 ad        	fsd	fs1, 152(sp)
     680: 4a a9        	fsd	fs2, 144(sp)
     682: 4e a5        	fsd	fs3, 136(sp)
     684: 52 a1        	fsd	fs4, 128(sp)
     686: d6 bc        	fsd	fs5, 120(sp)
     688: da b8        	fsd	fs6, 112(sp)
     68a: de b4        	fsd	fs7, 104(sp)
     68c: e2 b0        	fsd	fs8, 96(sp)
     68e: e6 ac        	fsd	fs9, 88(sp)
     690: ea a8        	fsd	fs10, 80(sp)
     692: ee a4        	fsd	fs11, 72(sp)
     694: f3 27 20 c2  	csrr	a5, vlenb
     698: 19 48        	li	a6, 6
     69a: b3 87 07 03  	mul	a5, a5, a6
     69e: 33 01 f1 40  	sub	sp, sp, a5
     6a2: ae 89        	mv	s3, a1
     6a4: 93 85 05 04  	addi	a1, a1, 64
     6a8: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     6ac: 07 e4 05 02  	vle32.v	v8, (a1)
     6b0: 97 05 00 00  	auipc	a1, 0
     6b4: 93 85 05 51  	addi	a1, a1, 1296
     6b8: 07 e5 05 02  	vle32.v	v10, (a1)
     6bc: 07 e7 09 02  	vle32.v	v14, (s3)
     6c0: 57 08 85 32  	vrgather.vv	v16, v8, v10
     6c4: 57 16 07 03  	vfadd.vv	v12, v16, v14
     6c8: 57 15 e8 0a  	vfsub.vv	v10, v14, v16
     6cc: 57 a7 08 52  	vid.v	v14
     6d0: 57 b8 e0 02  	vadd.vi	v16, v14, 1
     6d4: 57 04 c8 32  	vrgather.vv	v8, v12, v16
     6d8: 57 b7 ef 02  	vadd.vi	v14, v14, -1
     6dc: 93 05 a0 0a  	li	a1, 170
     6e0: 57 f0 50 cc  	vsetivli	zero, 1, e8, mf8, ta, ma
     6e4: 57 c0 05 5e  	vmv.v.x	v0, a1
     6e8: 57 70 14 c5  	vsetivli	zero, 8, e32, m2, ta, mu
     6ec: 57 04 a7 30  	vrgather.vv	v8, v10, v14, v0.t
     6f0: 63 57 e0 24  	blez	a4, 0x93e <ps_hybrid_analysis_c+0x2d6>
     6f4: 3a 8a        	mv	s4, a4
     6f6: 36 89        	mv	s2, a3
     6f8: 32 84        	mv	s0, a2
     6fa: 01 4b        	li	s6, 0
     6fc: d7 17 c0 42  	vfmv.f.s	fa5, v12
     700: d3 87 07 42  	fcvt.d.s	fa5, fa5
     704: 3e b8        	fsd	fa5, 48(sp)
     706: 57 f0 10 cd  	vsetivli	zero, 1, e32, m2, ta, ma
     70a: 57 b7 a0 3e  	vslidedown.vi	v14, v10, 1
     70e: d7 17 e0 42  	vfmv.f.s	fa5, v14
     712: d3 87 07 42  	fcvt.d.s	fa5, fa5
     716: 3e b4        	fsd	fa5, 40(sp)
     718: 57 37 c1 3e  	vslidedown.vi	v14, v12, 2
     71c: d7 17 e0 42  	vfmv.f.s	fa5, v14
     720: d3 87 07 42  	fcvt.d.s	fa5, fa5
     724: 3e b0        	fsd	fa5, 32(sp)
     726: 57 b7 a1 3e  	vslidedown.vi	v14, v10, 3
     72a: d7 17 e0 42  	vfmv.f.s	fa5, v14
     72e: d3 87 07 42  	fcvt.d.s	fa5, fa5
     732: 3e ac        	fsd	fa5, 24(sp)
     734: 57 37 c2 3e  	vslidedown.vi	v14, v12, 4
     738: d7 17 e0 42  	vfmv.f.s	fa5, v14
     73c: 53 8a 07 42  	fcvt.d.s	fs4, fa5
     740: 57 b7 a2 3e  	vslidedown.vi	v14, v10, 5
     744: d7 17 e0 42  	vfmv.f.s	fa5, v14
     748: d3 8a 07 42  	fcvt.d.s	fs5, fa5
     74c: 57 36 c3 3e  	vslidedown.vi	v12, v12, 6
     750: d7 17 c0 42  	vfmv.f.s	fa5, v12
     754: 53 8b 07 42  	fcvt.d.s	fs6, fa5
     758: 57 b5 a3 3e  	vslidedown.vi	v10, v10, 7
     75c: d7 17 a0 42  	vfmv.f.s	fa5, v10
     760: d3 8b 07 42  	fcvt.d.s	fs7, fa5
     764: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     768: 87 a7 09 02  	flw	fa5, 32(s3)
     76c: 07 a7 89 03  	flw	fa4, 56(s3)
     770: 87 a6 49 02  	flw	fa3, 36(s3)
     774: 07 a6 c9 03  	flw	fa2, 60(s3)
     778: 57 16 86 4a  	vfwcvt.f.f.v	v12, v8
     77c: f3 25 20 c2  	csrr	a1, vlenb
     780: 8a 95        	add	a1, a1, sp
     782: 93 85 05 04  	addi	a1, a1, 64
     786: 27 86 85 62  	vs4r.v	v12, (a1)
     78a: d3 75 f7 00  	fadd.s	fa1, fa4, fa5
     78e: 53 8c 05 42  	fcvt.d.s	fs8, fa1
     792: d3 f5 c6 08  	fsub.s	fa1, fa3, fa2
     796: d3 8c 05 42  	fcvt.d.s	fs9, fa1
     79a: d3 76 d6 00  	fadd.s	fa3, fa2, fa3
     79e: 53 8d 06 42  	fcvt.d.s	fs10, fa3
     7a2: d3 f7 e7 08  	fsub.s	fa5, fa5, fa4
     7a6: 07 a7 89 02  	flw	fa4, 40(s3)
     7aa: 87 a6 09 03  	flw	fa3, 48(s3)
     7ae: 07 a6 c9 02  	flw	fa2, 44(s3)
     7b2: 87 a5 49 03  	flw	fa1, 52(s3)
     7b6: d3 8d 07 42  	fcvt.d.s	fs11, fa5
     7ba: d3 f7 e6 00  	fadd.s	fa5, fa3, fa4
     7be: 53 84 07 42  	fcvt.d.s	fs0, fa5
     7c2: d3 77 b6 08  	fsub.s	fa5, fa2, fa1
     7c6: d3 84 07 42  	fcvt.d.s	fs1, fa5
     7ca: d3 f7 c5 00  	fadd.s	fa5, fa1, fa2
     7ce: 53 89 07 42  	fcvt.d.s	fs2, fa5
     7d2: d3 77 d7 08  	fsub.s	fa5, fa4, fa3
     7d6: d3 89 07 42  	fcvt.d.s	fs3, fa5
     7da: 93 04 45 00  	addi	s1, a0, 4
     7de: 93 9b 36 00  	slli	s7, a3, 3
     7e2: 57 70 84 cd  	vsetivli	zero, 8, e64, m1, ta, ma
     7e6: 57 64 00 42  	vmv.s.x	v8, zero
     7ea: 88 00        	addi	a0, sp, 64
     7ec: 27 04 85 02  	vs1r.v	v8, (a0)
     7f0: 17 05 00 00  	auipc	a0, 0
     7f4: 93 0a 05 45  	addi	s5, a0, 1104
     7f8: 87 27 04 03  	flw	fa5, 48(s0)
     7fc: 07 a7 09 03  	flw	fa4, 48(s3)
     800: d3 87 07 42  	fcvt.d.s	fa5, fa5
     804: 53 07 07 42  	fcvt.d.s	fa4, fa4
     808: 87 26 44 03  	flw	fa3, 52(s0)
     80c: 07 a6 49 03  	flw	fa2, 52(s3)
     810: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     814: 07 64 04 02  	vle32.v	v8, (s0)
     818: d3 77 f7 12  	fmul.d	fa5, fa4, fa5
     81c: 53 87 06 42  	fcvt.d.s	fa4, fa3
     820: d3 06 06 42  	fcvt.d.s	fa3, fa2
     824: 57 16 86 4a  	vfwcvt.f.f.v	v12, v8
     828: 57 70 a0 0d  	vsetvli	zero, zero, e64, m4, ta, ma
     82c: 57 16 c0 42  	vfmv.f.s	fa2, v12
     830: c2 35        	fld	fa1, 48(sp)
     832: c3 77 b6 7a  	fmadd.d	fa5, fa2, fa1, fa5
     836: 57 f0 a0 cd  	vsetivli	zero, 1, e64, m4, ta, ma
     83a: 57 b4 c0 3e  	vslidedown.vi	v8, v12, 1
     83e: 57 16 80 42  	vfmv.f.s	fa2, v8
     842: 57 70 a4 cd  	vsetivli	zero, 8, e64, m4, ta, ma
     846: 73 25 20 c2  	csrr	a0, vlenb
     84a: 0a 95        	add	a0, a0, sp
     84c: 13 05 05 04  	addi	a0, a0, 64
     850: 07 04 85 62  	vl4r.v	v8, (a0)
     854: 57 14 86 92  	vfmul.vv	v8, v8, v12
     858: 57 f0 a0 cd  	vsetivli	zero, 1, e64, m4, ta, ma
     85c: 57 38 c1 3e  	vslidedown.vi	v16, v12, 2
     860: d7 15 00 43  	vfmv.f.s	fa1, v16
     864: 57 b8 c1 3e  	vslidedown.vi	v16, v12, 3
     868: 57 15 00 43  	vfmv.f.s	fa0, v16
     86c: 62 20        	fld	ft0, 24(sp)
     86e: 53 75 05 12  	fmul.d	fa0, fa0, ft0
     872: 02 30        	fld	ft0, 32(sp)
     874: c3 f7 05 7a  	fmadd.d	fa5, fa1, ft0, fa5
     878: a2 35        	fld	fa1, 40(sp)
     87a: 43 76 b6 52  	fmadd.d	fa2, fa2, fa1, fa0
     87e: 57 38 c2 3e  	vslidedown.vi	v16, v12, 4
     882: d7 15 00 43  	vfmv.f.s	fa1, v16
     886: 57 b8 c2 3e  	vslidedown.vi	v16, v12, 5
     88a: 57 15 00 43  	vfmv.f.s	fa0, v16
     88e: c3 f7 45 7b  	fmadd.d	fa5, fa1, fs4, fa5
     892: 43 76 55 63  	fmadd.d	fa2, fa0, fs5, fa2
     896: 57 38 c3 3e  	vslidedown.vi	v16, v12, 6
     89a: d7 15 00 43  	vfmv.f.s	fa1, v16
     89e: 57 b6 c3 3e  	vslidedown.vi	v12, v12, 7
     8a2: 57 15 c0 42  	vfmv.f.s	fa0, v12
     8a6: 07 20 04 02  	flw	ft0, 32(s0)
     8aa: 87 20 44 02  	flw	ft1, 36(s0)
     8ae: c3 f7 65 7b  	fmadd.d	fa5, fa1, fs6, fa5
     8b2: 43 76 75 63  	fmadd.d	fa2, fa0, fs7, fa2
     8b6: d3 05 00 42  	fcvt.d.s	fa1, ft0
     8ba: 53 85 00 42  	fcvt.d.s	fa0, ft1
     8be: 07 20 84 02  	flw	ft0, 40(s0)
     8c2: 87 20 c4 02  	flw	ft1, 44(s0)
     8c6: c3 77 bc 7a  	fmadd.d	fa5, fs8, fa1, fa5
     8ca: 43 f6 ac 62  	fmadd.d	fa2, fs9, fa0, fa2
     8ce: 53 00 00 42  	fcvt.d.s	ft0, ft0
     8d2: d3 80 00 42  	fcvt.d.s	ft1, ft1
     8d6: c3 77 04 7a  	fmadd.d	fa5, fs0, ft0, fa5
     8da: 43 f6 14 62  	fmadd.d	fa2, fs1, ft1, fa2
     8de: d3 f7 c7 0a  	fsub.d	fa5, fa5, fa2
     8e2: 57 70 a4 cd  	vsetivli	zero, 8, e64, m4, ta, ma
     8e6: 88 00        	addi	a0, sp, 64
     8e8: 07 06 85 02  	vl1r.v	v12, (a0)
     8ec: 57 14 86 06  	vfredusum.vs	v8, v8, v12
     8f0: 57 16 80 42  	vfmv.f.s	fa2, v8
     8f4: 43 f7 e6 62  	fmadd.d	fa4, fa3, fa4, fa2
     8f8: 43 f7 ad 72  	fmadd.d	fa4, fs11, fa0, fa4
     8fc: 43 77 bd 72  	fmadd.d	fa4, fs10, fa1, fa4
     900: 43 f7 19 72  	fmadd.d	fa4, fs3, ft1, fa4
     904: 43 77 09 72  	fmadd.d	fa4, fs2, ft0, fa4
     908: d3 f7 17 40  	fcvt.s.d	fa5, fa5
     90c: 27 ae f4 fe  	fsw	fa5, -4(s1)
     910: 53 77 17 40  	fcvt.s.d	fa4, fa4
     914: 27 a0 e4 00  	fsw	fa4, 0(s1)
     918: d3 87 07 42  	fcvt.d.s	fa5, fa5
     91c: 53 07 07 42  	fcvt.d.s	fa4, fa4
     920: 53 86 07 e2  	fmv.x.d	a2, fa5
     924: d3 06 07 e2  	fmv.x.d	a3, fa4
     928: 56 85        	mv	a0, s5
     92a: da 85        	mv	a1, s6
     92c: ef f0 5f c7  	jal	0x5a0 <.plt+0x30>
     930: 7d 1a        	addi	s4, s4, -1
     932: 4a 9b        	add	s6, s6, s2
     934: de 94        	add	s1, s1, s7
     936: 13 04 04 04  	addi	s0, s0, 64
     93a: e3 1f 0a ea  	bnez	s4, 0x7f8 <ps_hybrid_analysis_c+0x190>
     93e: 73 25 20 c2  	csrr	a0, vlenb
     942: 99 45        	li	a1, 6
     944: 33 05 b5 02  	mul	a0, a0, a1
     948: 2a 91        	add	sp, sp, a0
     94a: ae 70        	ld	ra, 232(sp)
     94c: 0e 74        	ld	s0, 224(sp)
     94e: ee 64        	ld	s1, 216(sp)
     950: 4e 69        	ld	s2, 208(sp)
     952: ae 69        	ld	s3, 200(sp)
     954: 0e 6a        	ld	s4, 192(sp)
     956: ea 7a        	ld	s5, 184(sp)
     958: 4a 7b        	ld	s6, 176(sp)
     95a: aa 7b        	ld	s7, 168(sp)
     95c: 0a 34        	fld	fs0, 160(sp)
     95e: ea 24        	fld	fs1, 152(sp)
     960: 4a 29        	fld	fs2, 144(sp)
     962: aa 29        	fld	fs3, 136(sp)
     964: 0a 2a        	fld	fs4, 128(sp)
     966: e6 3a        	fld	fs5, 120(sp)
     968: 46 3b        	fld	fs6, 112(sp)
     96a: a6 3b        	fld	fs7, 104(sp)
     96c: 06 3c        	fld	fs8, 96(sp)
     96e: e6 2c        	fld	fs9, 88(sp)
     970: 46 2d        	fld	fs10, 80(sp)
     972: a6 2d        	fld	fs11, 72(sp)
     974: 6d 61        	addi	sp, sp, 240
     976: 82 80        	ret

0000000000000978 <main>:
     978: 13 01 01 d2  	addi	sp, sp, -736
     97c: 23 3c 11 2c  	sd	ra, 728(sp)
     980: 23 38 81 2c  	sd	s0, 720(sp)
     984: 23 34 91 2c  	sd	s1, 712(sp)
     988: 23 30 21 2d  	sd	s2, 704(sp)
     98c: 23 3c 31 2b  	sd	s3, 696(sp)
     990: 23 38 41 2b  	sd	s4, 688(sp)
     994: 23 34 51 2b  	sd	s5, 680(sp)
     998: 17 05 00 00  	auipc	a0, 0
     99c: 13 05 85 24  	addi	a0, a0, 584
     9a0: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     9a4: 07 64 05 02  	vle32.v	v8, (a0)
     9a8: a8 04        	addi	a0, sp, 584
     9aa: 27 64 05 02  	vse32.v	v8, (a0)
     9ae: 17 05 00 00  	auipc	a0, 0
     9b2: 13 05 25 25  	addi	a0, a0, 594
     9b6: 07 64 05 02  	vle32.v	v8, (a0)
     9ba: 17 05 00 00  	auipc	a0, 0
     9be: 13 05 65 26  	addi	a0, a0, 614
     9c2: 07 65 05 02  	vle32.v	v10, (a0)
     9c6: a8 14        	addi	a0, sp, 616
     9c8: 27 64 05 02  	vse32.v	v8, (a0)
     9cc: 28 05        	addi	a0, sp, 648
     9ce: 27 65 05 02  	vse32.v	v10, (a0)
     9d2: e9 54        	li	s1, -6
     9d4: 21 49        	li	s2, 8
     9d6: 20 10        	addi	s0, sp, 40
     9d8: 17 05 00 00  	auipc	a0, 0
     9dc: 93 09 c5 27  	addi	s3, a0, 636
     9e0: 1b 85 74 00  	addiw	a0, s1, 7
     9e4: d3 77 05 d0  	fcvt.s.w	fa5, a0
     9e8: 27 20 f4 fe  	fsw	fa5, -32(s0)
     9ec: 27 22 f4 fe  	fsw	fa5, -28(s0)
     9f0: d3 87 07 42  	fcvt.d.s	fa5, fa5
     9f4: 1b 8a 64 00  	addiw	s4, s1, 6
     9f8: d3 86 07 e2  	fmv.x.d	a3, fa5
     9fc: 4e 85        	mv	a0, s3
     9fe: d2 85        	mv	a1, s4
     a00: 01 46        	li	a2, 0
     a02: 36 87        	mv	a4, a3
     a04: ef f0 df b9  	jal	0x5a0 <.plt+0x30>
     a08: 1b 85 84 00  	addiw	a0, s1, 8
     a0c: d3 77 05 d0  	fcvt.s.w	fa5, a0
     a10: 27 24 f4 fe  	fsw	fa5, -24(s0)
     a14: 53 77 0a d0  	fcvt.s.w	fa4, s4
     a18: 27 26 e4 fe  	fsw	fa4, -20(s0)
     a1c: d3 87 07 42  	fcvt.d.s	fa5, fa5
     a20: 53 07 07 42  	fcvt.d.s	fa4, fa4
     a24: d3 86 07 e2  	fmv.x.d	a3, fa5
     a28: 53 07 07 e2  	fmv.x.d	a4, fa4
     a2c: 05 46        	li	a2, 1
     a2e: 4e 85        	mv	a0, s3
     a30: d2 85        	mv	a1, s4
     a32: ef f0 ff b6  	jal	0x5a0 <.plt+0x30>
     a36: 1b 85 94 00  	addiw	a0, s1, 9
     a3a: d3 77 05 d0  	fcvt.s.w	fa5, a0
     a3e: 27 28 f4 fe  	fsw	fa5, -16(s0)
     a42: 1b 85 54 00  	addiw	a0, s1, 5
     a46: 53 77 05 d0  	fcvt.s.w	fa4, a0
     a4a: 27 2a e4 fe  	fsw	fa4, -12(s0)
     a4e: d3 87 07 42  	fcvt.d.s	fa5, fa5
     a52: 53 07 07 42  	fcvt.d.s	fa4, fa4
     a56: d3 86 07 e2  	fmv.x.d	a3, fa5
     a5a: 53 07 07 e2  	fmv.x.d	a4, fa4
     a5e: 09 46        	li	a2, 2
     a60: 4e 85        	mv	a0, s3
     a62: d2 85        	mv	a1, s4
     a64: ef f0 df b3  	jal	0x5a0 <.plt+0x30>
     a68: 1b 85 a4 00  	addiw	a0, s1, 10
     a6c: d3 77 05 d0  	fcvt.s.w	fa5, a0
     a70: 27 2c f4 fe  	fsw	fa5, -8(s0)
     a74: 1b 85 44 00  	addiw	a0, s1, 4
     a78: 53 77 05 d0  	fcvt.s.w	fa4, a0
     a7c: 27 2e e4 fe  	fsw	fa4, -4(s0)
     a80: d3 87 07 42  	fcvt.d.s	fa5, fa5
     a84: 53 07 07 42  	fcvt.d.s	fa4, fa4
     a88: d3 86 07 e2  	fmv.x.d	a3, fa5
     a8c: 53 07 07 e2  	fmv.x.d	a4, fa4
     a90: 0d 46        	li	a2, 3
     a92: 4e 85        	mv	a0, s3
     a94: d2 85        	mv	a1, s4
     a96: ef f0 bf b0  	jal	0x5a0 <.plt+0x30>
     a9a: 1b 85 b4 00  	addiw	a0, s1, 11
     a9e: d3 77 05 d0  	fcvt.s.w	fa5, a0
     aa2: 27 20 f4 00  	fsw	fa5, 0(s0)
     aa6: 1b 85 34 00  	addiw	a0, s1, 3
     aaa: 53 77 05 d0  	fcvt.s.w	fa4, a0
     aae: 27 22 e4 00  	fsw	fa4, 4(s0)
     ab2: d3 87 07 42  	fcvt.d.s	fa5, fa5
     ab6: 53 07 07 42  	fcvt.d.s	fa4, fa4
     aba: d3 86 07 e2  	fmv.x.d	a3, fa5
     abe: 53 07 07 e2  	fmv.x.d	a4, fa4
     ac2: 11 46        	li	a2, 4
     ac4: 4e 85        	mv	a0, s3
     ac6: d2 85        	mv	a1, s4
     ac8: ef f0 9f ad  	jal	0x5a0 <.plt+0x30>
     acc: 1b 85 c4 00  	addiw	a0, s1, 12
     ad0: d3 77 05 d0  	fcvt.s.w	fa5, a0
     ad4: 27 24 f4 00  	fsw	fa5, 8(s0)
     ad8: 1b 85 24 00  	addiw	a0, s1, 2
     adc: 53 77 05 d0  	fcvt.s.w	fa4, a0
     ae0: 27 26 e4 00  	fsw	fa4, 12(s0)
     ae4: d3 87 07 42  	fcvt.d.s	fa5, fa5
     ae8: 53 07 07 42  	fcvt.d.s	fa4, fa4
     aec: d3 86 07 e2  	fmv.x.d	a3, fa5
     af0: 53 07 07 e2  	fmv.x.d	a4, fa4
     af4: 15 46        	li	a2, 5
     af6: 4e 85        	mv	a0, s3
     af8: d2 85        	mv	a1, s4
     afa: ef f0 7f aa  	jal	0x5a0 <.plt+0x30>
     afe: 1b 85 d4 00  	addiw	a0, s1, 13
     b02: d3 77 05 d0  	fcvt.s.w	fa5, a0
     b06: 27 28 f4 00  	fsw	fa5, 16(s0)
     b0a: 9b 8a 14 00  	addiw	s5, s1, 1
     b0e: 53 f7 0a d0  	fcvt.s.w	fa4, s5
     b12: 27 2a e4 00  	fsw	fa4, 20(s0)
     b16: d3 87 07 42  	fcvt.d.s	fa5, fa5
     b1a: 53 07 07 42  	fcvt.d.s	fa4, fa4
     b1e: d3 86 07 e2  	fmv.x.d	a3, fa5
     b22: 53 07 07 e2  	fmv.x.d	a4, fa4
     b26: 19 46        	li	a2, 6
     b28: 4e 85        	mv	a0, s3
     b2a: d2 85        	mv	a1, s4
     b2c: ef f0 5f a7  	jal	0x5a0 <.plt+0x30>
     b30: 1b 85 e4 00  	addiw	a0, s1, 14
     b34: d3 77 05 d0  	fcvt.s.w	fa5, a0
     b38: 27 2c f4 00  	fsw	fa5, 24(s0)
     b3c: 53 f7 04 d0  	fcvt.s.w	fa4, s1
     b40: 27 2e e4 00  	fsw	fa4, 28(s0)
     b44: d3 87 07 42  	fcvt.d.s	fa5, fa5
     b48: 53 07 07 42  	fcvt.d.s	fa4, fa4
     b4c: 53 07 07 e2  	fmv.x.d	a4, fa4
     b50: d3 86 07 e2  	fmv.x.d	a3, fa5
     b54: 1d 46        	li	a2, 7
     b56: 4e 85        	mv	a0, s3
     b58: d2 85        	mv	a1, s4
     b5a: ef f0 7f a4  	jal	0x5a0 <.plt+0x30>
     b5e: 7d 19        	addi	s2, s2, -1
     b60: 13 04 04 04  	addi	s0, s0, 64
     b64: d6 84        	mv	s1, s5
     b66: e3 1d 09 e6  	bnez	s2, 0x9e0 <main+0x68>
     b6a: 28 04        	addi	a0, sp, 520
     b6c: ac 04        	addi	a1, sp, 584
     b6e: 30 00        	addi	a2, sp, 8
     b70: 85 46        	li	a3, 1
     b72: 21 47        	li	a4, 8
     b74: ef f0 5f af  	jal	0x668 <ps_hybrid_analysis_c>
     b78: 01 45        	li	a0, 0
     b7a: 83 30 81 2d  	ld	ra, 728(sp)
     b7e: 03 34 01 2d  	ld	s0, 720(sp)
     b82: 83 34 81 2c  	ld	s1, 712(sp)
     b86: 03 39 01 2c  	ld	s2, 704(sp)
     b8a: 83 39 81 2b  	ld	s3, 696(sp)
     b8e: 03 3a 01 2b  	ld	s4, 688(sp)
     b92: 83 3a 81 2a  	ld	s5, 680(sp)
     b96: 13 01 01 2e  	addi	sp, sp, 736
     b9a: 82 80        	ret
