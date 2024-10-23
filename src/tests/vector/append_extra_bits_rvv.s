
append_extra_bits_rvv:	file format elf64-littleriscv

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

00000000000006b8 <append_extra_bits>:
     6b8: 41 11        	addi	sp, sp, -16
     6ba: 22 e4        	sd	s0, 8(sp)
     6bc: 26 e0        	sd	s1, 0(sp)
     6be: 93 a7 16 00  	slti	a5, a3, 1
     6c2: 13 24 17 00  	slti	s0, a4, 1
     6c6: c1 8f        	or	a5, a5, s0
     6c8: cd ef        	bnez	a5, 0x782 <append_extra_bits+0xca>
     6ca: 73 2f 20 c2  	csrr	t5, vlenb
     6ce: 93 58 1f 00  	srli	a7, t5, 1
     6d2: 21 44        	li	s0, 8
     6d4: 46 88        	mv	a6, a7
     6d6: 63 63 14 01  	bltu	s0, a7, 0x6dc <append_extra_bits+0x24>
     6da: 21 48        	li	a6, 8
     6dc: 01 43        	li	t1, 0
     6de: 93 57 3f 00  	srli	a5, t5, 3
     6e2: 13 94 27 00  	slli	s0, a5, 2
     6e6: 82 17        	slli	a5, a5, 32
     6e8: 81 8f        	sub	a5, a5, s0
     6ea: 93 12 27 00  	slli	t0, a4, 2
     6ee: 06 0f        	slli	t5, t5, 1
     6f0: b3 f3 e7 00  	and	t2, a5, a4
     6f4: 21 a0        	j	0x6fc <append_extra_bits+0x44>
     6f6: 05 03        	addi	t1, t1, 1
     6f8: 63 05 d3 08  	beq	t1, a3, 0x782 <append_extra_bits+0xca>
     6fc: 13 14 33 00  	slli	s0, t1, 3
     700: b3 07 85 00  	add	a5, a0, s0
     704: 03 be 07 00  	ld	t3, 0(a5)
     708: 2e 94        	add	s0, s0, a1
     70a: 83 3e 04 00  	ld	t4, 0(s0)
     70e: 63 6c 07 01  	bltu	a4, a6, 0x726 <append_extra_bits+0x6e>
     712: b3 07 5e 00  	add	a5, t3, t0
     716: 33 84 5e 00  	add	s0, t4, t0
     71a: 33 34 8e 00  	sltu	s0, t3, s0
     71e: b3 b7 fe 00  	sltu	a5, t4, a5
     722: e1 8f        	and	a5, a5, s0
     724: 95 c7        	beqz	a5, 0x750 <append_extra_bits+0x98>
     726: 01 44        	li	s0, 0
     728: 93 17 24 00  	slli	a5, s0, 2
     72c: 3e 9e        	add	t3, t3, a5
     72e: be 9e        	add	t4, t4, a5
     730: b3 07 87 40  	sub	a5, a4, s0
     734: 83 2f 0e 00  	lw	t6, 0(t3)
     738: 83 a4 0e 00  	lw	s1, 0(t4)
     73c: 3b 94 cf 00  	sllw	s0, t6, a2
     740: 45 8c        	or	s0, s0, s1
     742: 23 20 8e 00  	sw	s0, 0(t3)
     746: 11 0e        	addi	t3, t3, 4
     748: fd 17        	addi	a5, a5, -1
     74a: 91 0e        	addi	t4, t4, 4
     74c: e5 f7        	bnez	a5, 0x734 <append_extra_bits+0x7c>
     74e: 65 b7        	j	0x6f6 <append_extra_bits+0x3e>
     750: d7 77 10 0d  	vsetvli	a5, zero, e32, m2, ta, ma
     754: 9e 8f        	mv	t6, t2
     756: f6 87        	mv	a5, t4
     758: 72 84        	mv	s0, t3
     75a: 07 64 84 22  	vl2re32.v	v8, (s0)
     75e: 07 e5 87 22  	vl2re32.v	v10, (a5)
     762: 57 44 86 96  	vsll.vx	v8, v8, a2
     766: 57 04 a4 2a  	vor.vv	v8, v10, v8
     76a: 27 04 84 22  	vs2r.v	v8, (s0)
     76e: 7a 94        	add	s0, s0, t5
     770: b3 8f 1f 41  	sub	t6, t6, a7
     774: fa 97        	add	a5, a5, t5
     776: e3 92 0f fe  	bnez	t6, 0x75a <append_extra_bits+0xa2>
     77a: 1e 84        	mv	s0, t2
     77c: e3 8d e3 f6  	beq	t2, a4, 0x6f6 <append_extra_bits+0x3e>
     780: 65 b7        	j	0x728 <append_extra_bits+0x70>
     782: 22 64        	ld	s0, 8(sp)
     784: 82 64        	ld	s1, 0(sp)
     786: 41 01        	addi	sp, sp, 16
     788: 82 80        	ret

000000000000078a <main>:
     78a: 41 11        	addi	sp, sp, -16
     78c: 06 e4        	sd	ra, 8(sp)
     78e: 22 e0        	sd	s0, 0(sp)
     790: 17 05 00 00  	auipc	a0, 0
     794: 13 05 85 11  	addi	a0, a0, 280
     798: ef f0 9f e4  	jal	0x5e0 <.plt+0x30>
     79c: 17 05 00 00  	auipc	a0, 0
     7a0: 13 04 85 0f  	addi	s0, a0, 248
     7a4: 93 06 00 05  	li	a3, 80
     7a8: 22 85        	mv	a0, s0
     7aa: 81 45        	li	a1, 0
     7ac: 01 46        	li	a2, 0
     7ae: ef f0 3f e4  	jal	0x5f0 <.plt+0x40>
     7b2: 05 46        	li	a2, 1
     7b4: 93 06 90 05  	li	a3, 89
     7b8: 22 85        	mv	a0, s0
     7ba: 81 45        	li	a1, 0
     7bc: ef f0 5f e3  	jal	0x5f0 <.plt+0x40>
     7c0: 09 46        	li	a2, 2
     7c2: 93 06 20 06  	li	a3, 98
     7c6: 22 85        	mv	a0, s0
     7c8: 81 45        	li	a1, 0
     7ca: ef f0 7f e2  	jal	0x5f0 <.plt+0x40>
     7ce: 0d 46        	li	a2, 3
     7d0: 93 06 b0 06  	li	a3, 107
     7d4: 22 85        	mv	a0, s0
     7d6: 81 45        	li	a1, 0
     7d8: ef f0 9f e1  	jal	0x5f0 <.plt+0x40>
     7dc: 11 46        	li	a2, 4
     7de: 93 06 40 07  	li	a3, 116
     7e2: 22 85        	mv	a0, s0
     7e4: 81 45        	li	a1, 0
     7e6: ef f0 bf e0  	jal	0x5f0 <.plt+0x40>
     7ea: 15 46        	li	a2, 5
     7ec: 93 06 d0 07  	li	a3, 125
     7f0: 22 85        	mv	a0, s0
     7f2: 81 45        	li	a1, 0
     7f4: ef f0 df df  	jal	0x5f0 <.plt+0x40>
     7f8: 19 46        	li	a2, 6
     7fa: 93 06 60 08  	li	a3, 134
     7fe: 22 85        	mv	a0, s0
     800: 81 45        	li	a1, 0
     802: ef f0 ff de  	jal	0x5f0 <.plt+0x40>
     806: 1d 46        	li	a2, 7
     808: 93 06 f0 08  	li	a3, 143
     80c: 22 85        	mv	a0, s0
     80e: 81 45        	li	a1, 0
     810: ef f0 1f de  	jal	0x5f0 <.plt+0x40>
     814: 85 45        	li	a1, 1
     816: 93 06 00 0a  	li	a3, 160
     81a: 22 85        	mv	a0, s0
     81c: 01 46        	li	a2, 0
     81e: ef f0 3f dd  	jal	0x5f0 <.plt+0x40>
     822: 85 45        	li	a1, 1
     824: 05 46        	li	a2, 1
     826: 93 06 90 0a  	li	a3, 169
     82a: 22 85        	mv	a0, s0
     82c: ef f0 5f dc  	jal	0x5f0 <.plt+0x40>
     830: 85 45        	li	a1, 1
     832: 09 46        	li	a2, 2
     834: 93 06 20 0b  	li	a3, 178
     838: 22 85        	mv	a0, s0
     83a: ef f0 7f db  	jal	0x5f0 <.plt+0x40>
     83e: 85 45        	li	a1, 1
     840: 0d 46        	li	a2, 3
     842: 93 06 b0 0b  	li	a3, 187
     846: 22 85        	mv	a0, s0
     848: ef f0 9f da  	jal	0x5f0 <.plt+0x40>
     84c: 85 45        	li	a1, 1
     84e: 11 46        	li	a2, 4
     850: 93 06 40 0c  	li	a3, 196
     854: 22 85        	mv	a0, s0
     856: ef f0 bf d9  	jal	0x5f0 <.plt+0x40>
     85a: 85 45        	li	a1, 1
     85c: 15 46        	li	a2, 5
     85e: 93 06 d0 0c  	li	a3, 205
     862: 22 85        	mv	a0, s0
     864: ef f0 df d8  	jal	0x5f0 <.plt+0x40>
     868: 85 45        	li	a1, 1
     86a: 19 46        	li	a2, 6
     86c: 93 06 60 0d  	li	a3, 214
     870: 22 85        	mv	a0, s0
     872: ef f0 ff d7  	jal	0x5f0 <.plt+0x40>
     876: 85 45        	li	a1, 1
     878: 1d 46        	li	a2, 7
     87a: 93 06 f0 0d  	li	a3, 223
     87e: 22 85        	mv	a0, s0
     880: ef f0 1f d7  	jal	0x5f0 <.plt+0x40>
     884: 01 45        	li	a0, 0
     886: a2 60        	ld	ra, 8(sp)
     888: 02 64        	ld	s0, 0(sp)
     88a: 41 01        	addi	sp, sp, 16
     88c: 82 80        	ret
