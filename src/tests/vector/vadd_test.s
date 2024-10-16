
vadd_test:	file format elf64-littleriscv

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

0000000000000668 <vector_add>:
     668: 63 5d d0 04  	blez	a3, 0x6c2 <vector_add+0x5a>
     66c: f3 28 20 c2  	csrr	a7, vlenb
     670: 93 d7 18 00  	srli	a5, a7, 1
     674: 41 47        	li	a4, 16
     676: 63 63 f7 00  	bltu	a4, a5, 0x67c <vector_add+0x14>
     67a: c1 47        	li	a5, 16
     67c: 63 ee f6 00  	bltu	a3, a5, 0x698 <vector_add+0x30>
     680: 93 92 18 00  	slli	t0, a7, 1
     684: 33 07 a6 40  	sub	a4, a2, a0
     688: 33 37 57 00  	sltu	a4, a4, t0
     68c: b3 07 b6 40  	sub	a5, a2, a1
     690: b3 b7 57 00  	sltu	a5, a5, t0
     694: 5d 8f        	or	a4, a4, a5
     696: 1d c7        	beqz	a4, 0x6c4 <vector_add+0x5c>
     698: 01 48        	li	a6, 0
     69a: 13 17 28 00  	slli	a4, a6, 2
     69e: 3a 96        	add	a2, a2, a4
     6a0: ba 95        	add	a1, a1, a4
     6a2: 3a 95        	add	a0, a0, a4
     6a4: b3 86 06 41  	sub	a3, a3, a6
     6a8: 87 27 05 00  	flw	fa5, 0(a0)
     6ac: 07 a7 05 00  	flw	fa4, 0(a1)
     6b0: d3 f7 e7 00  	fadd.s	fa5, fa5, fa4
     6b4: 27 20 f6 00  	fsw	fa5, 0(a2)
     6b8: 11 06        	addi	a2, a2, 4
     6ba: 91 05        	addi	a1, a1, 4
     6bc: fd 16        	addi	a3, a3, -1
     6be: 11 05        	addi	a0, a0, 4
     6c0: e5 f6        	bnez	a3, 0x6a8 <vector_add+0x40>
     6c2: 82 80        	ret
     6c4: 13 d7 38 00  	srli	a4, a7, 3
     6c8: 93 17 27 00  	slli	a5, a4, 2
     6cc: 02 17        	slli	a4, a4, 32
     6ce: 1d 8f        	sub	a4, a4, a5
     6d0: 33 78 d7 00  	and	a6, a4, a3
     6d4: 93 d8 18 00  	srli	a7, a7, 1
     6d8: 57 77 10 0d  	vsetvli	a4, zero, e32, m2, ta, ma
     6dc: 42 83        	mv	t1, a6
     6de: b2 83        	mv	t2, a2
     6e0: 2e 87        	mv	a4, a1
     6e2: aa 87        	mv	a5, a0
     6e4: 07 e4 87 22  	vl2re32.v	v8, (a5)
     6e8: 07 65 87 22  	vl2re32.v	v10, (a4)
     6ec: 57 14 85 02  	vfadd.vv	v8, v8, v10
     6f0: 27 84 83 22  	vs2r.v	v8, (t2)
     6f4: 96 97        	add	a5, a5, t0
     6f6: 16 97        	add	a4, a4, t0
     6f8: 33 03 13 41  	sub	t1, t1, a7
     6fc: 96 93        	add	t2, t2, t0
     6fe: e3 13 03 fe  	bnez	t1, 0x6e4 <vector_add+0x7c>
     702: e3 00 d8 fc  	beq	a6, a3, 0x6c2 <vector_add+0x5a>
     706: 51 bf        	j	0x69a <vector_add+0x32>

0000000000000708 <main>:
     708: 41 11        	addi	sp, sp, -16
     70a: 06 e4        	sd	ra, 8(sp)
     70c: 22 e0        	sd	s0, 0(sp)
     70e: 17 05 00 00  	auipc	a0, 0
     712: 13 04 65 08  	addi	s0, a0, 134
     716: 05 46        	li	a2, 1
     718: 7a 16        	slli	a2, a2, 62
     71a: 22 85        	mv	a0, s0
     71c: 81 45        	li	a1, 0
     71e: ef f0 3f e8  	jal	0x5a0 <.plt+0x30>
     722: 37 16 80 00  	lui	a2, 2049
     726: 1e 16        	slli	a2, a2, 39
     728: 85 45        	li	a1, 1
     72a: 22 85        	mv	a0, s0
     72c: ef f0 5f e7  	jal	0x5a0 <.plt+0x30>
     730: 13 06 10 40  	li	a2, 1025
     734: 52 16        	slli	a2, a2, 52
     736: 89 45        	li	a1, 2
     738: 22 85        	mv	a0, s0
     73a: ef f0 7f e6  	jal	0x5a0 <.plt+0x30>
     73e: 37 56 00 01  	lui	a2, 4101
     742: 1a 16        	slli	a2, a2, 38
     744: 8d 45        	li	a1, 3
     746: 22 85        	mv	a0, s0
     748: ef f0 9f e5  	jal	0x5a0 <.plt+0x30>
     74c: 37 36 80 00  	lui	a2, 2051
     750: 1e 16        	slli	a2, a2, 39
     752: 91 45        	li	a1, 4
     754: 22 85        	mv	a0, s0
     756: ef f0 bf e4  	jal	0x5a0 <.plt+0x30>
     75a: 37 76 00 01  	lui	a2, 4103
     75e: 1a 16        	slli	a2, a2, 38
     760: 95 45        	li	a1, 5
     762: 22 85        	mv	a0, s0
     764: ef f0 df e3  	jal	0x5a0 <.plt+0x30>
     768: 13 06 10 20  	li	a2, 513
     76c: 56 16        	slli	a2, a2, 53
     76e: 99 45        	li	a1, 6
     770: 22 85        	mv	a0, s0
     772: ef f0 ff e2  	jal	0x5a0 <.plt+0x30>
     776: 37 16 01 02  	lui	a2, 8209
     77a: 16 16        	slli	a2, a2, 37
     77c: 9d 45        	li	a1, 7
     77e: 22 85        	mv	a0, s0
     780: ef f0 1f e2  	jal	0x5a0 <.plt+0x30>
     784: 01 45        	li	a0, 0
     786: a2 60        	ld	ra, 8(sp)
     788: 02 64        	ld	s0, 0(sp)
     78a: 41 01        	addi	sp, sp, 16
     78c: 82 80        	ret
