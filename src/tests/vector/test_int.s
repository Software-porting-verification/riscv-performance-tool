
test2:	file format elf64-littleriscv

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

00000000000006b8 <vector_operations>:
     6b8: 21 47        	li	a4, 8
     6ba: 63 e3 e6 00  	bltu	a3, a4, 0x6c0 <vector_operations+0x8>
     6be: a1 46        	li	a3, 8
     6c0: f9 c2        	beqz	a3, 0x786 <vector_operations+0xce>
     6c2: 01 47        	li	a4, 0
     6c4: 73 28 20 c2  	csrr	a6, vlenb
     6c8: d7 77 b0 0d  	vsetvli	a5, zero, e64, m8, ta, ma
     6cc: 57 a8 08 52  	vid.v	v16
     6d0: 57 4c 08 03  	vadd.vx	v24, v16, a6
     6d4: d7 c4 86 6b  	vmsltu.vx	v9, v24, a3
     6d8: 93 52 38 00  	srli	t0, a6, 3
     6dc: b3 88 52 00  	add	a7, t0, t0
     6e0: 57 c4 06 6b  	vmsltu.vx	v8, v16, a3
     6e4: 57 f0 68 08  	vsetvli	zero, a7, e8, mf4, tu, ma
     6e8: 57 30 80 9e  	vmv1r.v	v0, v8
     6ec: 57 c0 92 3a  	vslideup.vx	v0, v9, t0
     6f0: d7 77 20 0d  	vsetvli	a5, zero, e32, m4, ta, ma
     6f4: 57 36 80 b3  	vnsrl.wi	v12, v24, 0
     6f8: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     6fc: 57 35 c0 b2  	vnsrl.wi	v10, v12, 0
     700: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     704: d7 36 a0 b2  	vnsrl.wi	v13, v10, 0
     708: 57 70 20 0d  	vsetvli	zero, zero, e32, m4, ta, ma
     70c: 57 3c 00 b3  	vnsrl.wi	v24, v16, 0
     710: 57 70 90 0c  	vsetvli	zero, zero, e16, m2, ta, ma
     714: 57 35 80 b3  	vnsrl.wi	v10, v24, 0
     718: 57 70 00 0c  	vsetvli	zero, zero, e8, m1, ta, ma
     71c: 57 36 a0 b2  	vnsrl.wi	v12, v10, 0
     720: d7 77 10 0c  	vsetvli	a5, zero, e8, m2, ta, ma
     724: 57 b6 c0 02  	vadd.vi	v12, v12, 1
     728: 27 06 05 00  	vse8.v	v12, (a0), v0.t
     72c: 57 75 90 0c  	vsetvli	a0, zero, e16, m2, ta, ma
     730: 57 b5 a0 02  	vadd.vi	v10, v10, 1
     734: 57 30 80 9e  	vmv1r.v	v0, v8
     738: 27 d5 05 00  	vse16.v	v10, (a1), v0.t
     73c: 86 02        	slli	t0, t0, 1
     73e: b3 05 50 40  	neg	a1, t0
     742: 13 55 28 00  	srli	a0, a6, 2
     746: b3 07 d5 00  	add	a5, a0, a3
     74a: fd 17        	addi	a5, a5, -1
     74c: fd 8d        	and	a1, a1, a5
     74e: d7 77 90 0d  	vsetvli	a5, zero, e64, m2, ta, ma
     752: 57 a6 08 52  	vid.v	v12
     756: 93 17 18 00  	slli	a5, a6, 1
     75a: 57 a4 08 52  	vid.v	v8
     75e: 13 08 40 06  	li	a6, 100
     762: 57 45 08 5e  	vmv.v.x	v10, a6
     766: 57 47 87 82  	vsaddu.vx	v14, v8, a4
     76a: 57 c0 e6 6a  	vmsltu.vx	v0, v14, a3
     76e: 57 47 c5 02  	vadd.vx	v14, v12, a0
     772: 57 66 a8 a6  	vmadd.vx	v12, a6, v10
     776: 27 76 06 00  	vse64.v	v12, (a2), v0.t
     77a: 2a 97        	add	a4, a4, a0
     77c: 3e 96        	add	a2, a2, a5
     77e: 57 b6 e0 9e  	vmv2r.v	v12, v14
     782: e3 92 e5 fe  	bne	a1, a4, 0x766 <vector_operations+0xae>
     786: 82 80        	ret

0000000000000788 <main>:
     788: 41 11        	addi	sp, sp, -16
     78a: 06 e4        	sd	ra, 8(sp)
     78c: 22 e0        	sd	s0, 0(sp)
     78e: 17 05 00 00  	auipc	a0, 0
     792: 13 05 65 12  	addi	a0, a0, 294
     796: ef f0 bf e5  	jal	0x5f0 <.plt+0x40>
     79a: 17 05 00 00  	auipc	a0, 0
     79e: 13 04 25 12  	addi	s0, a0, 290
     7a2: 85 45        	li	a1, 1
     7a4: 22 85        	mv	a0, s0
     7a6: ef f0 bf e4  	jal	0x5f0 <.plt+0x40>
     7aa: 89 45        	li	a1, 2
     7ac: 22 85        	mv	a0, s0
     7ae: ef f0 3f e4  	jal	0x5f0 <.plt+0x40>
     7b2: 8d 45        	li	a1, 3
     7b4: 22 85        	mv	a0, s0
     7b6: ef f0 bf e3  	jal	0x5f0 <.plt+0x40>
     7ba: 91 45        	li	a1, 4
     7bc: 22 85        	mv	a0, s0
     7be: ef f0 3f e3  	jal	0x5f0 <.plt+0x40>
     7c2: 95 45        	li	a1, 5
     7c4: 22 85        	mv	a0, s0
     7c6: ef f0 bf e2  	jal	0x5f0 <.plt+0x40>
     7ca: 99 45        	li	a1, 6
     7cc: 22 85        	mv	a0, s0
     7ce: ef f0 3f e2  	jal	0x5f0 <.plt+0x40>
     7d2: 9d 45        	li	a1, 7
     7d4: 22 85        	mv	a0, s0
     7d6: ef f0 bf e1  	jal	0x5f0 <.plt+0x40>
     7da: a1 45        	li	a1, 8
     7dc: 22 85        	mv	a0, s0
     7de: ef f0 3f e1  	jal	0x5f0 <.plt+0x40>
     7e2: 29 45        	li	a0, 10
     7e4: ef f0 df df  	jal	0x5e0 <.plt+0x30>
     7e8: 17 05 00 00  	auipc	a0, 0
     7ec: 13 05 85 0d  	addi	a0, a0, 216
     7f0: ef f0 1f e0  	jal	0x5f0 <.plt+0x40>
     7f4: 85 45        	li	a1, 1
     7f6: 22 85        	mv	a0, s0
     7f8: ef f0 9f df  	jal	0x5f0 <.plt+0x40>
     7fc: 89 45        	li	a1, 2
     7fe: 22 85        	mv	a0, s0
     800: ef f0 1f df  	jal	0x5f0 <.plt+0x40>
     804: 8d 45        	li	a1, 3
     806: 22 85        	mv	a0, s0
     808: ef f0 9f de  	jal	0x5f0 <.plt+0x40>
     80c: 91 45        	li	a1, 4
     80e: 22 85        	mv	a0, s0
     810: ef f0 1f de  	jal	0x5f0 <.plt+0x40>
     814: 95 45        	li	a1, 5
     816: 22 85        	mv	a0, s0
     818: ef f0 9f dd  	jal	0x5f0 <.plt+0x40>
     81c: 99 45        	li	a1, 6
     81e: 22 85        	mv	a0, s0
     820: ef f0 1f dd  	jal	0x5f0 <.plt+0x40>
     824: 9d 45        	li	a1, 7
     826: 22 85        	mv	a0, s0
     828: ef f0 9f dc  	jal	0x5f0 <.plt+0x40>
     82c: a1 45        	li	a1, 8
     82e: 22 85        	mv	a0, s0
     830: ef f0 1f dc  	jal	0x5f0 <.plt+0x40>
     834: 29 45        	li	a0, 10
     836: ef f0 bf da  	jal	0x5e0 <.plt+0x30>
     83a: 17 05 00 00  	auipc	a0, 0
     83e: 13 05 f5 08  	addi	a0, a0, 143
     842: ef f0 ff da  	jal	0x5f0 <.plt+0x40>
     846: 17 05 00 00  	auipc	a0, 0
     84a: 13 04 c5 08  	addi	s0, a0, 140
     84e: 93 05 40 06  	li	a1, 100
     852: 22 85        	mv	a0, s0
     854: ef f0 df d9  	jal	0x5f0 <.plt+0x40>
     858: 93 05 80 0c  	li	a1, 200
     85c: 22 85        	mv	a0, s0
     85e: ef f0 3f d9  	jal	0x5f0 <.plt+0x40>
     862: 93 05 c0 12  	li	a1, 300
     866: 22 85        	mv	a0, s0
     868: ef f0 9f d8  	jal	0x5f0 <.plt+0x40>
     86c: 93 05 00 19  	li	a1, 400
     870: 22 85        	mv	a0, s0
     872: ef f0 ff d7  	jal	0x5f0 <.plt+0x40>
     876: 93 05 40 1f  	li	a1, 500
     87a: 22 85        	mv	a0, s0
     87c: ef f0 5f d7  	jal	0x5f0 <.plt+0x40>
     880: 93 05 80 25  	li	a1, 600
     884: 22 85        	mv	a0, s0
     886: ef f0 bf d6  	jal	0x5f0 <.plt+0x40>
     88a: 93 05 c0 2b  	li	a1, 700
     88e: 22 85        	mv	a0, s0
     890: ef f0 1f d6  	jal	0x5f0 <.plt+0x40>
     894: 93 05 00 32  	li	a1, 800
     898: 22 85        	mv	a0, s0
     89a: ef f0 7f d5  	jal	0x5f0 <.plt+0x40>
     89e: 29 45        	li	a0, 10
     8a0: ef f0 1f d4  	jal	0x5e0 <.plt+0x30>
     8a4: 01 45        	li	a0, 0
     8a6: a2 60        	ld	ra, 8(sp)
     8a8: 02 64        	ld	s0, 0(sp)
     8aa: 41 01        	addi	sp, sp, 16
     8ac: 82 80        	ret
