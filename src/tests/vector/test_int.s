
test_int:	file format elf64-littleriscv

Disassembly of section .plt:

00000000000005f0 <.plt>:
     5f0: 97 23 00 00  	auipc	t2, 2
     5f4: 33 03 c3 41  	sub	t1, t1, t3
     5f8: 03 be 83 a1  	ld	t3, -1512(t2)
     5fc: 13 03 43 fd  	addi	t1, t1, -44
     600: 93 82 83 a1  	addi	t0, t2, -1512
     604: 13 53 13 00  	srli	t1, t1, 1
     608: 83 b2 82 00  	ld	t0, 8(t0)
     60c: 67 00 0e 00  	jr	t3
     610: 17 2e 00 00  	auipc	t3, 2
     614: 03 3e 8e a0  	ld	t3, -1528(t3)
     618: 67 03 0e 00  	jalr	t1, t3
     61c: 13 00 00 00  	nop
     620: 17 2e 00 00  	auipc	t3, 2
     624: 03 3e 0e a0  	ld	t3, -1536(t3)
     628: 67 03 0e 00  	jalr	t1, t3
     62c: 13 00 00 00  	nop
     630: 17 2e 00 00  	auipc	t3, 2
     634: 03 3e 8e 9f  	ld	t3, -1544(t3)
     638: 67 03 0e 00  	jalr	t1, t3
     63c: 13 00 00 00  	nop
     640: 17 2e 00 00  	auipc	t3, 2
     644: 03 3e 0e 9f  	ld	t3, -1552(t3)
     648: 67 03 0e 00  	jalr	t1, t3
     64c: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000650 <_start>:
     650: ef 00 20 02  	jal	0x672 <load_gp>
     654: aa 87        	mv	a5, a0
     656: 17 25 00 00  	auipc	a0, 2
     65a: 03 35 25 9f  	ld	a0, -1550(a0)
     65e: 82 65        	ld	a1, 0(sp)
     660: 30 00        	addi	a2, sp, 8
     662: 13 71 01 ff  	andi	sp, sp, -16
     666: 81 46        	li	a3, 0
     668: 01 47        	li	a4, 0
     66a: 0a 88        	mv	a6, sp
     66c: ef f0 5f fa  	jal	0x610 <.plt+0x20>
     670: 02 90        	ebreak

0000000000000672 <load_gp>:
     672: 97 21 00 00  	auipc	gp, 2
     676: 93 81 e1 18  	addi	gp, gp, 398
     67a: 82 80        	ret
     67c: 00 00        	unimp

000000000000067e <deregister_tm_clones>:
     67e: 17 25 00 00  	auipc	a0, 2
     682: 13 05 a5 98  	addi	a0, a0, -1654
     686: 97 27 00 00  	auipc	a5, 2
     68a: 93 87 27 98  	addi	a5, a5, -1662
     68e: 63 88 a7 00  	beq	a5, a0, 0x69e <deregister_tm_clones+0x20>
     692: 97 27 00 00  	auipc	a5, 2
     696: 83 b7 e7 9a  	ld	a5, -1618(a5)
     69a: 91 c3        	beqz	a5, 0x69e <deregister_tm_clones+0x20>
     69c: 82 87        	jr	a5
     69e: 82 80        	ret

00000000000006a0 <register_tm_clones>:
     6a0: 17 25 00 00  	auipc	a0, 2
     6a4: 13 05 85 96  	addi	a0, a0, -1688
     6a8: 97 25 00 00  	auipc	a1, 2
     6ac: 93 85 05 96  	addi	a1, a1, -1696
     6b0: 89 8d        	sub	a1, a1, a0
     6b2: 93 d7 35 40  	srai	a5, a1, 3
     6b6: fd 91        	srli	a1, a1, 63
     6b8: be 95        	add	a1, a1, a5
     6ba: 85 85        	srai	a1, a1, 1
     6bc: 99 c5        	beqz	a1, 0x6ca <register_tm_clones+0x2a>
     6be: 97 27 00 00  	auipc	a5, 2
     6c2: 83 b7 a7 99  	ld	a5, -1638(a5)
     6c6: 91 c3        	beqz	a5, 0x6ca <register_tm_clones+0x2a>
     6c8: 82 87        	jr	a5
     6ca: 82 80        	ret

00000000000006cc <__do_global_dtors_aux>:
     6cc: 41 11        	addi	sp, sp, -16
     6ce: 22 e0        	sd	s0, 0(sp)
     6d0: 17 24 00 00  	auipc	s0, 2
     6d4: 13 04 04 99  	addi	s0, s0, -1648
     6d8: 83 47 04 00  	lbu	a5, 0(s0)
     6dc: 06 e4        	sd	ra, 8(sp)
     6de: 85 e3        	bnez	a5, 0x6fe <__do_global_dtors_aux+0x32>
     6e0: 97 27 00 00  	auipc	a5, 2
     6e4: 83 b7 07 97  	ld	a5, -1680(a5)
     6e8: 91 c7        	beqz	a5, 0x6f4 <__do_global_dtors_aux+0x28>
     6ea: 17 25 00 00  	auipc	a0, 2
     6ee: 03 35 65 91  	ld	a0, -1770(a0)
     6f2: 82 97        	jalr	a5
     6f4: ef f0 bf f8  	jal	0x67e <deregister_tm_clones>
     6f8: 85 47        	li	a5, 1
     6fa: 23 00 f4 00  	sb	a5, 0(s0)
     6fe: a2 60        	ld	ra, 8(sp)
     700: 02 64        	ld	s0, 0(sp)
     702: 41 01        	addi	sp, sp, 16
     704: 82 80        	ret

0000000000000706 <frame_dummy>:
     706: 69 bf        	j	0x6a0 <register_tm_clones>

0000000000000708 <vector_operations>:
     708: 1d 71        	addi	sp, sp, -96
     70a: 86 ec        	sd	ra, 88(sp)
     70c: a2 e8        	sd	s0, 80(sp)
     70e: a6 e4        	sd	s1, 72(sp)
     710: ca e0        	sd	s2, 64(sp)
     712: 4e fc        	sd	s3, 56(sp)
     714: 52 f8        	sd	s4, 48(sp)
     716: f3 26 20 c2  	csrr	a3, vlenb
     71a: 86 06        	slli	a3, a3, 1
     71c: 33 01 d1 40  	sub	sp, sp, a3
     720: a1 46        	li	a3, 8
     722: 32 8a        	mv	s4, a2
     724: 2e 89        	mv	s2, a1
     726: aa 89        	mv	s3, a0
     728: 63 63 d6 00  	bltu	a2, a3, 0x72e <vector_operations+0x26>
     72c: 21 4a        	li	s4, 8
     72e: 63 04 0a 0e  	beqz	s4, 0x816 <vector_operations+0x10e>
     732: 73 25 20 c2  	csrr	a0, vlenb
     736: d7 75 b0 0d  	vsetvli	a1, zero, e64, m8, ta, ma
     73a: 57 a4 08 52  	vid.v	v8
     73e: 57 48 85 02  	vadd.vx	v16, v8, a0
     742: 57 4c 0a 6b  	vmsltu.vx	v24, v16, s4
     746: 0d 81        	srli	a0, a0, 3
     748: b3 05 a5 00  	add	a1, a0, a0
     74c: 57 4e 8a 6a  	vmsltu.vx	v28, v8, s4
     750: 57 f0 65 08  	vsetvli	zero, a1, e8, mf4, tu, ma
     754: 57 30 c0 9f  	vmv1r.v	v0, v28
     758: 0c 18        	addi	a1, sp, 48
     75a: 27 8e 85 02  	vs1r.v	v28, (a1)
     75e: 57 40 85 3b  	vslideup.vx	v0, v24, a0
     762: 57 75 20 0d  	vsetvli	a0, zero, e32, m4, ta, ma
     766: 57 3c 00 b3  	vnsrl.wi	v24, v16, 0
     76a: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     76e: 57 38 80 b3  	vnsrl.wi	v16, v24, 0
     772: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     776: d7 39 00 b3  	vnsrl.wi	v19, v16, 0
     77a: 57 70 20 0d  	vsetvli	zero, zero, e32, m4, ta, ma
     77e: 57 3a 80 b2  	vnsrl.wi	v20, v8, 0
     782: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     786: 57 34 40 b3  	vnsrl.wi	v8, v20, 0
     78a: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     78e: 57 39 80 b2  	vnsrl.wi	v18, v8, 0
     792: 57 75 10 0c  	vsetvli	a0, zero, e8, m2, ta, ma
     796: 57 b5 20 03  	vadd.vi	v10, v18, 1
     79a: 27 85 09 00  	vse8.v	v10, (s3), v0.t
     79e: 57 75 90 0c  	vsetvli	a0, zero, e16, m2, ta, ma
     7a2: 57 b4 80 02  	vadd.vi	v8, v8, 1
     7a6: 57 30 c0 9f  	vmv1r.v	v0, v28
     7aa: 27 54 09 00  	vse16.v	v8, (s2), v0.t
     7ae: 02 f4        	sd	zero, 40(sp)
     7b0: 02 f0        	sd	zero, 32(sp)
     7b2: 02 ec        	sd	zero, 24(sp)
     7b4: 28 10        	addi	a0, sp, 40
     7b6: 24 10        	addi	s1, sp, 40
     7b8: ce 85        	mv	a1, s3
     7ba: 52 86        	mv	a2, s4
     7bc: ef f0 5f e7  	jal	0x630 <.plt+0x40>
     7c0: 13 16 1a 00  	slli	a2, s4, 1
     7c4: 28 08        	addi	a0, sp, 24
     7c6: 20 08        	addi	s0, sp, 24
     7c8: ca 85        	mv	a1, s2
     7ca: ef f0 7f e6  	jal	0x630 <.plt+0x40>
     7ce: 57 75 00 0c  	vsetvli	a0, zero, e8, m1, ta, ma
     7d2: 08 18        	addi	a0, sp, 48
     7d4: 07 00 85 02  	vl1r.v	v0, (a0)
     7d8: 07 84 04 00  	vle8.v	v8, (s1), v0.t
     7dc: 57 b4 80 02  	vadd.vi	v8, v8, 1
     7e0: 27 84 04 00  	vse8.v	v8, (s1), v0.t
     7e4: 57 35 00 9e  	vmv1r.v	v10, v0
     7e8: 07 54 04 00  	vle16.v	v8, (s0), v0.t
     7ec: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     7f0: 57 34 81 02  	vadd.vi	v8, v8, 2
     7f4: 27 54 04 00  	vse16.v	v8, (s0), v0.t
     7f8: 03 c5 04 00  	lbu	a0, 0(s1)
     7fc: 23 80 a9 00  	sb	a0, 0(s3)
     800: 03 15 04 00  	lh	a0, 0(s0)
     804: 23 10 a9 00  	sh	a0, 0(s2)
     808: 7d 1a        	addi	s4, s4, -1
     80a: 09 09        	addi	s2, s2, 2
     80c: 09 04        	addi	s0, s0, 2
     80e: 85 09        	addi	s3, s3, 1
     810: 85 04        	addi	s1, s1, 1
     812: e3 13 0a fe  	bnez	s4, 0x7f8 <vector_operations+0xf0>
     816: 73 25 20 c2  	csrr	a0, vlenb
     81a: 06 05        	slli	a0, a0, 1
     81c: 2a 91        	add	sp, sp, a0
     81e: e6 60        	ld	ra, 88(sp)
     820: 46 64        	ld	s0, 80(sp)
     822: a6 64        	ld	s1, 72(sp)
     824: 06 69        	ld	s2, 64(sp)
     826: e2 79        	ld	s3, 56(sp)
     828: 42 7a        	ld	s4, 48(sp)
     82a: 25 61        	addi	sp, sp, 96
     82c: 82 80        	ret

000000000000082e <main>:
     82e: 41 11        	addi	sp, sp, -16
     830: 06 e4        	sd	ra, 8(sp)
     832: 22 e0        	sd	s0, 0(sp)
     834: 17 05 00 00  	auipc	a0, 0
     838: 13 05 c5 0b  	addi	a0, a0, 188
     83c: ef f0 5f e0  	jal	0x640 <.plt+0x50>
     840: 17 05 00 00  	auipc	a0, 0
     844: 13 04 85 0b  	addi	s0, a0, 184
     848: 89 45        	li	a1, 2
     84a: 22 85        	mv	a0, s0
     84c: ef f0 5f df  	jal	0x640 <.plt+0x50>
     850: 8d 45        	li	a1, 3
     852: 22 85        	mv	a0, s0
     854: ef f0 df de  	jal	0x640 <.plt+0x50>
     858: 91 45        	li	a1, 4
     85a: 22 85        	mv	a0, s0
     85c: ef f0 5f de  	jal	0x640 <.plt+0x50>
     860: 95 45        	li	a1, 5
     862: 22 85        	mv	a0, s0
     864: ef f0 df dd  	jal	0x640 <.plt+0x50>
     868: 99 45        	li	a1, 6
     86a: 22 85        	mv	a0, s0
     86c: ef f0 5f dd  	jal	0x640 <.plt+0x50>
     870: 9d 45        	li	a1, 7
     872: 22 85        	mv	a0, s0
     874: ef f0 df dc  	jal	0x640 <.plt+0x50>
     878: a1 45        	li	a1, 8
     87a: 22 85        	mv	a0, s0
     87c: ef f0 5f dc  	jal	0x640 <.plt+0x50>
     880: a5 45        	li	a1, 9
     882: 22 85        	mv	a0, s0
     884: ef f0 df db  	jal	0x640 <.plt+0x50>
     888: 29 45        	li	a0, 10
     88a: ef f0 7f d9  	jal	0x620 <.plt+0x30>
     88e: 17 05 00 00  	auipc	a0, 0
     892: 13 05 e5 06  	addi	a0, a0, 110
     896: ef f0 bf da  	jal	0x640 <.plt+0x50>
     89a: 8d 45        	li	a1, 3
     89c: 22 85        	mv	a0, s0
     89e: ef f0 3f da  	jal	0x640 <.plt+0x50>
     8a2: 91 45        	li	a1, 4
     8a4: 22 85        	mv	a0, s0
     8a6: ef f0 bf d9  	jal	0x640 <.plt+0x50>
     8aa: 95 45        	li	a1, 5
     8ac: 22 85        	mv	a0, s0
     8ae: ef f0 3f d9  	jal	0x640 <.plt+0x50>
     8b2: 99 45        	li	a1, 6
     8b4: 22 85        	mv	a0, s0
     8b6: ef f0 bf d8  	jal	0x640 <.plt+0x50>
     8ba: 9d 45        	li	a1, 7
     8bc: 22 85        	mv	a0, s0
     8be: ef f0 3f d8  	jal	0x640 <.plt+0x50>
     8c2: a1 45        	li	a1, 8
     8c4: 22 85        	mv	a0, s0
     8c6: ef f0 bf d7  	jal	0x640 <.plt+0x50>
     8ca: a5 45        	li	a1, 9
     8cc: 22 85        	mv	a0, s0
     8ce: ef f0 3f d7  	jal	0x640 <.plt+0x50>
     8d2: a9 45        	li	a1, 10
     8d4: 22 85        	mv	a0, s0
     8d6: ef f0 bf d6  	jal	0x640 <.plt+0x50>
     8da: 29 45        	li	a0, 10
     8dc: ef f0 5f d4  	jal	0x620 <.plt+0x30>
     8e0: 01 45        	li	a0, 0
     8e2: a2 60        	ld	ra, 8(sp)
     8e4: 02 64        	ld	s0, 0(sp)
     8e6: 41 01        	addi	sp, sp, 16
     8e8: 82 80        	ret
