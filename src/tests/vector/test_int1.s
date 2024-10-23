
test_int1:	file format elf64-littleriscv

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
     708: 01 11        	addi	sp, sp, -32
     70a: 06 ec        	sd	ra, 24(sp)
     70c: 22 e8        	sd	s0, 16(sp)
     70e: 26 e4        	sd	s1, 8(sp)
     710: 4a e0        	sd	s2, 0(sp)
     712: 21 47        	li	a4, 8
     714: b6 84        	mv	s1, a3
     716: 32 89        	mv	s2, a2
     718: 2e 84        	mv	s0, a1
     71a: 63 e3 e6 00  	bltu	a3, a4, 0x720 <vector_operations+0x18>
     71e: a1 44        	li	s1, 8
     720: 95 cc        	beqz	s1, 0x75c <vector_operations+0x54>
     722: 97 05 00 00  	auipc	a1, 0
     726: 93 85 a5 18  	addi	a1, a1, 394
     72a: 26 86        	mv	a2, s1
     72c: ef f0 5f f0  	jal	0x630 <.plt+0x40>
     730: 13 96 14 00  	slli	a2, s1, 1
     734: 17 05 00 00  	auipc	a0, 0
     738: 93 05 05 18  	addi	a1, a0, 384
     73c: 22 85        	mv	a0, s0
     73e: ef f0 3f ef  	jal	0x630 <.plt+0x40>
     742: 13 96 34 00  	slli	a2, s1, 3
     746: 17 05 00 00  	auipc	a0, 0
     74a: 93 05 25 18  	addi	a1, a0, 386
     74e: 4a 85        	mv	a0, s2
     750: e2 60        	ld	ra, 24(sp)
     752: 42 64        	ld	s0, 16(sp)
     754: a2 64        	ld	s1, 8(sp)
     756: 02 69        	ld	s2, 0(sp)
     758: 05 61        	addi	sp, sp, 32
     75a: d9 bd        	j	0x630 <.plt+0x40>
     75c: e2 60        	ld	ra, 24(sp)
     75e: 42 64        	ld	s0, 16(sp)
     760: a2 64        	ld	s1, 8(sp)
     762: 02 69        	ld	s2, 0(sp)
     764: 05 61        	addi	sp, sp, 32
     766: 82 80        	ret

0000000000000768 <main>:
     768: 01 11        	addi	sp, sp, -32
     76a: 06 ec        	sd	ra, 24(sp)
     76c: 22 e8        	sd	s0, 16(sp)
     76e: 26 e4        	sd	s1, 8(sp)
     770: 17 05 00 00  	auipc	a0, 0
     774: 13 05 85 19  	addi	a0, a0, 408
     778: ef f0 9f ec  	jal	0x640 <.plt+0x50>
     77c: 17 05 00 00  	auipc	a0, 0
     780: 13 04 45 19  	addi	s0, a0, 404
     784: 85 45        	li	a1, 1
     786: 22 85        	mv	a0, s0
     788: ef f0 9f eb  	jal	0x640 <.plt+0x50>
     78c: 89 45        	li	a1, 2
     78e: 22 85        	mv	a0, s0
     790: ef f0 1f eb  	jal	0x640 <.plt+0x50>
     794: 8d 45        	li	a1, 3
     796: 22 85        	mv	a0, s0
     798: ef f0 9f ea  	jal	0x640 <.plt+0x50>
     79c: 91 45        	li	a1, 4
     79e: 22 85        	mv	a0, s0
     7a0: ef f0 1f ea  	jal	0x640 <.plt+0x50>
     7a4: 95 45        	li	a1, 5
     7a6: 22 85        	mv	a0, s0
     7a8: ef f0 9f e9  	jal	0x640 <.plt+0x50>
     7ac: 99 45        	li	a1, 6
     7ae: 22 85        	mv	a0, s0
     7b0: ef f0 1f e9  	jal	0x640 <.plt+0x50>
     7b4: 9d 45        	li	a1, 7
     7b6: 22 85        	mv	a0, s0
     7b8: ef f0 9f e8  	jal	0x640 <.plt+0x50>
     7bc: a1 45        	li	a1, 8
     7be: 22 85        	mv	a0, s0
     7c0: ef f0 1f e8  	jal	0x640 <.plt+0x50>
     7c4: 29 45        	li	a0, 10
     7c6: ef f0 bf e5  	jal	0x620 <.plt+0x30>
     7ca: 17 05 00 00  	auipc	a0, 0
     7ce: 13 05 a5 14  	addi	a0, a0, 330
     7d2: ef f0 ff e6  	jal	0x640 <.plt+0x50>
     7d6: 93 05 40 06  	li	a1, 100
     7da: 22 85        	mv	a0, s0
     7dc: ef f0 5f e6  	jal	0x640 <.plt+0x50>
     7e0: 93 05 80 0c  	li	a1, 200
     7e4: 22 85        	mv	a0, s0
     7e6: ef f0 bf e5  	jal	0x640 <.plt+0x50>
     7ea: 93 05 c0 12  	li	a1, 300
     7ee: 22 85        	mv	a0, s0
     7f0: ef f0 1f e5  	jal	0x640 <.plt+0x50>
     7f4: 93 05 00 19  	li	a1, 400
     7f8: 22 85        	mv	a0, s0
     7fa: ef f0 7f e4  	jal	0x640 <.plt+0x50>
     7fe: 93 05 40 1f  	li	a1, 500
     802: 22 85        	mv	a0, s0
     804: ef f0 df e3  	jal	0x640 <.plt+0x50>
     808: 93 05 80 25  	li	a1, 600
     80c: 22 85        	mv	a0, s0
     80e: ef f0 3f e3  	jal	0x640 <.plt+0x50>
     812: 93 05 c0 2b  	li	a1, 700
     816: 22 85        	mv	a0, s0
     818: ef f0 9f e2  	jal	0x640 <.plt+0x50>
     81c: 93 05 00 32  	li	a1, 800
     820: 22 85        	mv	a0, s0
     822: ef f0 ff e1  	jal	0x640 <.plt+0x50>
     826: 29 45        	li	a0, 10
     828: ef f0 9f df  	jal	0x620 <.plt+0x30>
     82c: 17 05 00 00  	auipc	a0, 0
     830: 13 05 15 0f  	addi	a0, a0, 241
     834: ef f0 df e0  	jal	0x640 <.plt+0x50>
     838: 17 05 00 00  	auipc	a0, 0
     83c: 13 04 e5 0e  	addi	s0, a0, 238
     840: 93 05 80 3e  	li	a1, 1000
     844: 22 85        	mv	a0, s0
     846: ef f0 bf df  	jal	0x640 <.plt+0x50>
     84a: 93 05 00 7d  	li	a1, 2000
     84e: 22 85        	mv	a0, s0
     850: ef f0 1f df  	jal	0x640 <.plt+0x50>
     854: 85 64        	lui	s1, 1
     856: 9b 85 84 bb  	addiw	a1, s1, -1096
     85a: 22 85        	mv	a0, s0
     85c: ef f0 5f de  	jal	0x640 <.plt+0x50>
     860: 9b 85 04 fa  	addiw	a1, s1, -96
     864: 22 85        	mv	a0, s0
     866: ef f0 bf dd  	jal	0x640 <.plt+0x50>
     86a: 9b 85 84 38  	addiw	a1, s1, 904
     86e: 22 85        	mv	a0, s0
     870: ef f0 1f dd  	jal	0x640 <.plt+0x50>
     874: 9b 85 04 77  	addiw	a1, s1, 1904
     878: 22 85        	mv	a0, s0
     87a: ef f0 7f dc  	jal	0x640 <.plt+0x50>
     87e: 89 64        	lui	s1, 2
     880: 9b 85 84 b5  	addiw	a1, s1, -1192
     884: 22 85        	mv	a0, s0
     886: ef f0 bf db  	jal	0x640 <.plt+0x50>
     88a: 9b 85 04 f4  	addiw	a1, s1, -192
     88e: 22 85        	mv	a0, s0
     890: ef f0 1f db  	jal	0x640 <.plt+0x50>
     894: 29 45        	li	a0, 10
     896: ef f0 bf d8  	jal	0x620 <.plt+0x30>
     89a: 01 45        	li	a0, 0
     89c: e2 60        	ld	ra, 24(sp)
     89e: 42 64        	ld	s0, 16(sp)
     8a0: a2 64        	ld	s1, 8(sp)
     8a2: 05 61        	addi	sp, sp, 32
     8a4: 82 80        	ret
