
ff_scalarproduct_rvv:	file format elf64-littleriscv

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

0000000000000668 <ff_scalarproduct_double_c>:
     668: 19 ca        	beqz	a2, 0x67e <ff_scalarproduct_double_c+0x16>
     66a: f3 22 20 c2  	csrr	t0, vlenb
     66e: 93 d8 22 00  	srli	a7, t0, 2
     672: 63 79 16 01  	bgeu	a2, a7, 0x684 <ff_scalarproduct_double_c+0x1c>
     676: 01 48        	li	a6, 0
     678: d3 07 00 f2  	fmv.d.x	fa5, zero
     67c: 99 a0        	j	0x6c2 <ff_scalarproduct_double_c+0x5a>
     67e: 53 05 00 f2  	fmv.d.x	fa0, zero
     682: 82 80        	ret
     684: b3 06 10 41  	neg	a3, a7
     688: 33 f8 c6 00  	and	a6, a3, a2
     68c: 86 02        	slli	t0, t0, 1
     68e: d3 07 00 f2  	fmv.d.x	fa5, zero
     692: d7 76 90 0d  	vsetvli	a3, zero, e64, m2, ta, ma
     696: c2 86        	mv	a3, a6
     698: ae 87        	mv	a5, a1
     69a: 2a 87        	mv	a4, a0
     69c: 07 74 87 22  	vl2re64.v	v8, (a4)
     6a0: 07 f5 87 22  	vl2re64.v	v10, (a5)
     6a4: 57 14 85 92  	vfmul.vv	v8, v8, v10
     6a8: 57 d5 07 42  	vfmv.s.f	v10, fa5
     6ac: 57 14 85 0e  	vfredosum.vs	v8, v8, v10
     6b0: d7 17 80 42  	vfmv.f.s	fa5, v8
     6b4: 16 97        	add	a4, a4, t0
     6b6: b3 86 16 41  	sub	a3, a3, a7
     6ba: 96 97        	add	a5, a5, t0
     6bc: e5 f2        	bnez	a3, 0x69c <ff_scalarproduct_double_c+0x34>
     6be: 63 0f c8 00  	beq	a6, a2, 0x6dc <ff_scalarproduct_double_c+0x74>
     6c2: 33 06 06 41  	sub	a2, a2, a6
     6c6: 0e 08        	slli	a6, a6, 3
     6c8: c2 95        	add	a1, a1, a6
     6ca: 42 95        	add	a0, a0, a6
     6cc: 18 21        	fld	fa4, 0(a0)
     6ce: 94 21        	fld	fa3, 0(a1)
     6d0: c3 77 d7 7a  	fmadd.d	fa5, fa4, fa3, fa5
     6d4: 7d 16        	addi	a2, a2, -1
     6d6: a1 05        	addi	a1, a1, 8
     6d8: 21 05        	addi	a0, a0, 8
     6da: 6d fa        	bnez	a2, 0x6cc <ff_scalarproduct_double_c+0x64>
     6dc: 53 07 00 f2  	fmv.d.x	fa4, zero
     6e0: 53 f5 e7 02  	fadd.d	fa0, fa5, fa4
     6e4: 82 80        	ret

00000000000006e6 <main>:
     6e6: 41 11        	addi	sp, sp, -16
     6e8: 06 e4        	sd	ra, 8(sp)
     6ea: 17 05 00 00  	auipc	a0, 0
     6ee: 13 05 e5 01  	addi	a0, a0, 30
     6f2: b7 f5 02 02  	lui	a1, 8239
     6f6: 96 15        	slli	a1, a1, 37
     6f8: ef f0 9f ea  	jal	0x5a0 <.plt+0x30>
     6fc: 01 45        	li	a0, 0
     6fe: a2 60        	ld	ra, 8(sp)
     700: 41 01        	addi	sp, sp, 16
     702: 82 80        	ret
