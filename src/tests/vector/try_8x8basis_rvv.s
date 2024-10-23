
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

00000000000006b8 <try_8x8basis_c>:
     6b8: f3 23 20 c2  	csrr	t2, vlenb
     6bc: 13 d7 33 00  	srli	a4, t2, 3
     6c0: c1 47        	li	a5, 16
     6c2: 63 f5 e7 00  	bgeu	a5, a4, 0x6cc <try_8x8basis_c+0x14>
     6c6: 01 48        	li	a6, 0
     6c8: 81 48        	li	a7, 0
     6ca: 45 a0        	j	0x76a <try_8x8basis_c+0xb2>
     6cc: 93 07 c0 07  	li	a5, 124
     6d0: 33 07 f7 02  	mul	a4, a4, a5
     6d4: 13 78 07 04  	andi	a6, a4, 64
     6d8: 93 d8 13 00  	srli	a7, t2, 1
     6dc: 57 77 10 0d  	vsetvli	a4, zero, e32, m2, ta, ma
     6e0: 57 34 00 5e  	vmv.v.i	v8, 0
     6e4: 13 07 00 08  	li	a4, 128
     6e8: 57 45 07 5e  	vmv.v.x	v10, a4
     6ec: 21 67        	lui	a4, 8
     6ee: 9b 02 07 fc  	addiw	t0, a4, -64
     6f2: 41 67        	lui	a4, 16
     6f4: 1b 03 07 fc  	addiw	t1, a4, -64
     6f8: 42 8e        	mv	t3, a6
     6fa: ae 8e        	mv	t4, a1
     6fc: 32 87        	mv	a4, a2
     6fe: aa 87        	mv	a5, a0
     700: 07 56 87 02  	vl1re16.v	v12, (a4)
     704: 87 d6 87 02  	vl1re16.v	v13, (a5)
     708: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     70c: 57 a7 c3 4a  	vsext.vf2	v14, v12
     710: 57 e7 a6 a6  	vmadd.vx	v14, a3, v10
     714: 57 37 e4 a6  	vsra.vi	v14, v14, 8
     718: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     71c: 57 a7 e6 d6  	vwadd.wv	v14, v14, v13
     720: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     724: 57 c6 e2 02  	vadd.vx	v12, v14, t0
     728: 57 40 c3 6a  	vmsltu.vx	v0, v12, t1
     72c: 07 d6 0e 00  	vle16.v	v12, (t4), v0.t
     730: 57 37 e3 a6  	vsra.vi	v14, v14, 6
     734: 57 a8 c3 4a  	vsext.vf2	v16, v12
     738: 57 26 e8 96  	vmul.vv	v12, v14, v16
     73c: 57 26 c6 96  	vmul.vv	v12, v12, v12
     740: 57 36 c2 a2  	vsrl.vi	v12, v12, 4
     744: 57 70 10 05  	vsetvli	zero, zero, e32, m2, ta, mu
     748: 57 04 86 00  	vadd.vv	v8, v8, v12, v0.t
     74c: 9e 97        	add	a5, a5, t2
     74e: 1e 97        	add	a4, a4, t2
     750: 33 0e 1e 41  	sub	t3, t3, a7
     754: 9e 9e        	add	t4, t4, t2
     756: e3 15 0e fa  	bnez	t3, 0x700 <try_8x8basis_c+0x48>
     75a: 57 65 00 42  	vmv.s.x	v10, zero
     75e: 57 24 85 02  	vredsum.vs	v8, v8, v10
     762: d7 28 80 42  	vmv.x.s	a7, v8
     766: 63 12 08 06  	bnez	a6, 0x7ca <try_8x8basis_c+0x112>
     76a: 13 17 18 00  	slli	a4, a6, 1
     76e: ba 95        	add	a1, a1, a4
     770: 3a 96        	add	a2, a2, a4
     772: 3a 95        	add	a0, a0, a4
     774: 13 07 08 fc  	addi	a4, a6, -64
     778: a1 67        	lui	a5, 8
     77a: 9b 82 07 fc  	addiw	t0, a5, -64
     77e: 13 08 e0 3f  	li	a6, 1022
     782: 31 a0        	j	0x78e <try_8x8basis_c+0xd6>
     784: 89 05        	addi	a1, a1, 2
     786: 09 06        	addi	a2, a2, 2
     788: 05 07        	addi	a4, a4, 1
     78a: 09 05        	addi	a0, a0, 2
     78c: 1d cf        	beqz	a4, 0x7ca <try_8x8basis_c+0x112>
     78e: 83 17 06 00  	lh	a5, 0(a2)
     792: 03 13 05 00  	lh	t1, 0(a0)
     796: b3 87 d7 02  	mul	a5, a5, a3
     79a: 9b 87 07 08  	addiw	a5, a5, 128
     79e: 9b d7 87 40  	sraiw	a5, a5, 8
     7a2: 3b 83 67 00  	addw	t1, a5, t1
     7a6: b3 07 53 00  	add	a5, t1, t0
     7aa: 9b d7 67 00  	srliw	a5, a5, 6
     7ae: e3 6b f8 fc  	bltu	a6, a5, 0x784 <try_8x8basis_c+0xcc>
     7b2: 83 93 05 00  	lh	t2, 0(a1)
     7b6: 93 57 63 00  	srli	a5, t1, 6
     7ba: b3 87 77 02  	mul	a5, a5, t2
     7be: b3 87 f7 02  	mul	a5, a5, a5
     7c2: 9b d7 47 00  	srliw	a5, a5, 4
     7c6: be 98        	add	a7, a7, a5
     7c8: 75 bf        	j	0x784 <try_8x8basis_c+0xcc>
     7ca: 1b d5 28 00  	srliw	a0, a7, 2
     7ce: 82 80        	ret

00000000000007d0 <main>:
     7d0: 61 71        	addi	sp, sp, -432
     7d2: 06 f7        	sd	ra, 424(sp)
     7d4: 22 f3        	sd	s0, 416(sp)
     7d6: 26 ef        	sd	s1, 408(sp)
     7d8: 4a eb        	sd	s2, 400(sp)
     7da: 4e e7        	sd	s3, 392(sp)
     7dc: 13 09 81 10  	addi	s2, sp, 264
     7e0: 28 02        	addi	a0, sp, 264
     7e2: 13 06 00 08  	li	a2, 128
     7e6: 93 09 00 08  	li	s3, 128
     7ea: 81 45        	li	a1, 0
     7ec: ef f0 5f e0  	jal	0x5f0 <.plt+0x40>
     7f0: 28 01        	addi	a0, sp, 136
     7f2: 13 06 00 08  	li	a2, 128
     7f6: 24 01        	addi	s1, sp, 136
     7f8: 81 45        	li	a1, 0
     7fa: ef f0 7f df  	jal	0x5f0 <.plt+0x40>
     7fe: 28 00        	addi	a0, sp, 8
     800: 13 06 00 08  	li	a2, 128
     804: 20 00        	addi	s0, sp, 8
     806: 81 45        	li	a1, 0
     808: ef f0 9f de  	jal	0x5f0 <.plt+0x40>
     80c: f3 25 20 c2  	csrr	a1, vlenb
     810: 13 d5 35 00  	srli	a0, a1, 3
     814: 41 46        	li	a2, 16
     816: 63 75 a6 00  	bgeu	a2, a0, 0x820 <main+0x50>
     81a: 01 45        	li	a0, 0
     81c: 81 48        	li	a7, 0
     81e: 71 a0        	j	0x8aa <main+0xda>
     820: 13 06 c0 07  	li	a2, 124
     824: 33 05 c5 02  	mul	a0, a0, a2
     828: 13 75 05 04  	andi	a0, a0, 64
     82c: 13 d6 15 00  	srli	a2, a1, 1
     830: d7 76 10 0d  	vsetvli	a3, zero, e32, m2, ta, ma
     834: 57 34 00 5e  	vmv.v.i	v8, 0
     838: 57 c5 09 5e  	vmv.v.x	v10, s3
     83c: a1 66        	lui	a3, 8
     83e: 9b 86 06 fc  	addiw	a3, a3, -64
     842: 41 67        	lui	a4, 16
     844: 1b 07 07 fc  	addiw	a4, a4, -64
     848: aa 87        	mv	a5, a0
     84a: 07 56 84 02  	vl1re16.v	v12, (s0)
     84e: 87 56 89 02  	vl1re16.v	v13, (s2)
     852: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     856: 57 27 a6 d6  	vwadd.wv	v14, v10, v12
     85a: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     85e: 57 37 e4 a6  	vsra.vi	v14, v14, 8
     862: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     866: 57 a7 e6 d6  	vwadd.wv	v14, v14, v13
     86a: 57 70 10 05  	vsetvli	zero, zero, e32, m2, ta, mu
     86e: 07 d6 84 02  	vl1re16.v	v12, (s1)
     872: 57 c8 e6 02  	vadd.vx	v16, v14, a3
     876: 57 40 07 6b  	vmsltu.vx	v0, v16, a4
     87a: 57 37 e3 a6  	vsra.vi	v14, v14, 6
     87e: 57 a8 c3 4a  	vsext.vf2	v16, v12
     882: 57 26 e8 96  	vmul.vv	v12, v14, v16
     886: 57 26 c6 96  	vmul.vv	v12, v12, v12
     88a: 57 36 c2 a2  	vsrl.vi	v12, v12, 4
     88e: 57 04 86 00  	vadd.vv	v8, v8, v12, v0.t
     892: 2e 99        	add	s2, s2, a1
     894: 2e 94        	add	s0, s0, a1
     896: 91 8f        	sub	a5, a5, a2
     898: ae 94        	add	s1, s1, a1
     89a: c5 fb        	bnez	a5, 0x84a <main+0x7a>
     89c: 57 65 00 42  	vmv.s.x	v10, zero
     8a0: 57 24 85 02  	vredsum.vs	v8, v8, v10
     8a4: d7 28 80 42  	vmv.x.s	a7, v8
     8a8: 39 ed        	bnez	a0, 0x906 <main+0x136>
     8aa: 13 17 15 00  	slli	a4, a0, 1
     8ae: 30 01        	addi	a2, sp, 136
     8b0: 3a 96        	add	a2, a2, a4
     8b2: 13 05 05 fc  	addi	a0, a0, -64
     8b6: 34 00        	addi	a3, sp, 8
     8b8: ba 96        	add	a3, a3, a4
     8ba: 3c 02        	addi	a5, sp, 264
     8bc: 3e 97        	add	a4, a4, a5
     8be: a1 67        	lui	a5, 8
     8c0: 9b 85 07 fc  	addiw	a1, a5, -64
     8c4: 13 08 e0 3f  	li	a6, 1022
     8c8: 31 a0        	j	0x8d4 <main+0x104>
     8ca: 09 06        	addi	a2, a2, 2
     8cc: 05 05        	addi	a0, a0, 1
     8ce: 89 06        	addi	a3, a3, 2
     8d0: 09 07        	addi	a4, a4, 2
     8d2: 15 c9        	beqz	a0, 0x906 <main+0x136>
     8d4: 03 94 06 00  	lh	s0, 0(a3)
     8d8: 83 14 07 00  	lh	s1, 0(a4)
     8dc: 13 04 04 08  	addi	s0, s0, 128
     8e0: 21 80        	srli	s0, s0, 8
     8e2: 25 9c        	addw	s0, s0, s1
     8e4: b3 07 b4 00  	add	a5, s0, a1
     8e8: 9b d7 67 00  	srliw	a5, a5, 6
     8ec: e3 6f f8 fc  	bltu	a6, a5, 0x8ca <main+0xfa>
     8f0: 83 17 06 00  	lh	a5, 0(a2)
     8f4: 19 80        	srli	s0, s0, 6
     8f6: b3 07 f4 02  	mul	a5, s0, a5
     8fa: b3 87 f7 02  	mul	a5, a5, a5
     8fe: 9b d7 47 00  	srliw	a5, a5, 4
     902: be 98        	add	a7, a7, a5
     904: d9 b7        	j	0x8ca <main+0xfa>
     906: 9b d5 28 00  	srliw	a1, a7, 2
     90a: 17 05 00 00  	auipc	a0, 0
     90e: 13 05 25 02  	addi	a0, a0, 34
     912: ef f0 ff cc  	jal	0x5e0 <.plt+0x30>
     916: 01 45        	li	a0, 0
     918: ba 70        	ld	ra, 424(sp)
     91a: 1a 74        	ld	s0, 416(sp)
     91c: fa 64        	ld	s1, 408(sp)
     91e: 5a 69        	ld	s2, 400(sp)
     920: ba 69        	ld	s3, 392(sp)
     922: 5d 61        	addi	sp, sp, 432
     924: 82 80        	ret
