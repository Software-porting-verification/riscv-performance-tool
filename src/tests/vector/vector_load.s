
test:	file format elf64-littleriscv

Disassembly of section .plt:

00000000000005e0 <.plt>:
     5e0: 97 33 00 00  	auipc	t2, 3
     5e4: 33 03 c3 41  	sub	t1, t1, t3
     5e8: 03 be 83 a2  	ld	t3, -1496(t2)
     5ec: 13 03 43 fd  	addi	t1, t1, -44
     5f0: 93 82 83 a2  	addi	t0, t2, -1496
     5f4: 13 53 13 00  	srli	t1, t1, 1
     5f8: 83 b2 82 00  	ld	t0, 8(t0)
     5fc: 67 00 0e 00  	jr	t3
     600: 17 3e 00 00  	auipc	t3, 3
     604: 03 3e 8e a1  	ld	t3, -1512(t3)
     608: 67 03 0e 00  	jalr	t1, t3
     60c: 13 00 00 00  	nop
     610: 17 3e 00 00  	auipc	t3, 3
     614: 03 3e 0e a1  	ld	t3, -1520(t3)
     618: 67 03 0e 00  	jalr	t1, t3
     61c: 13 00 00 00  	nop
     620: 17 3e 00 00  	auipc	t3, 3
     624: 03 3e 8e a0  	ld	t3, -1528(t3)
     628: 67 03 0e 00  	jalr	t1, t3
     62c: 13 00 00 00  	nop
     630: 17 3e 00 00  	auipc	t3, 3
     634: 03 3e 0e a0  	ld	t3, -1536(t3)
     638: 67 03 0e 00  	jalr	t1, t3
     63c: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000640 <_start>:
     640: ef 00 20 02  	jal	0x662 <load_gp>
     644: aa 87        	mv	a5, a0
     646: 17 35 00 00  	auipc	a0, 3
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
     662: 97 31 00 00  	auipc	gp, 3
     666: 93 81 e1 19  	addi	gp, gp, 414
     66a: 82 80        	ret
     66c: 00 00        	unimp

000000000000066e <deregister_tm_clones>:
     66e: 17 35 00 00  	auipc	a0, 3
     672: 13 05 a5 99  	addi	a0, a0, -1638
     676: 97 37 00 00  	auipc	a5, 3
     67a: 93 87 27 99  	addi	a5, a5, -1646
     67e: 63 88 a7 00  	beq	a5, a0, 0x68e <deregister_tm_clones+0x20>
     682: 97 37 00 00  	auipc	a5, 3
     686: 83 b7 e7 9b  	ld	a5, -1602(a5)
     68a: 91 c3        	beqz	a5, 0x68e <deregister_tm_clones+0x20>
     68c: 82 87        	jr	a5
     68e: 82 80        	ret

0000000000000690 <register_tm_clones>:
     690: 17 35 00 00  	auipc	a0, 3
     694: 13 05 85 97  	addi	a0, a0, -1672
     698: 97 35 00 00  	auipc	a1, 3
     69c: 93 85 05 97  	addi	a1, a1, -1680
     6a0: 89 8d        	sub	a1, a1, a0
     6a2: 93 d7 35 40  	srai	a5, a1, 3
     6a6: fd 91        	srli	a1, a1, 63
     6a8: be 95        	add	a1, a1, a5
     6aa: 85 85        	srai	a1, a1, 1
     6ac: 99 c5        	beqz	a1, 0x6ba <register_tm_clones+0x2a>
     6ae: 97 37 00 00  	auipc	a5, 3
     6b2: 83 b7 a7 9a  	ld	a5, -1622(a5)
     6b6: 91 c3        	beqz	a5, 0x6ba <register_tm_clones+0x2a>
     6b8: 82 87        	jr	a5
     6ba: 82 80        	ret

00000000000006bc <__do_global_dtors_aux>:
     6bc: 41 11        	addi	sp, sp, -16
     6be: 22 e0        	sd	s0, 0(sp)
     6c0: 17 34 00 00  	auipc	s0, 3
     6c4: 13 04 04 9a  	addi	s0, s0, -1632
     6c8: 83 47 04 00  	lbu	a5, 0(s0)
     6cc: 06 e4        	sd	ra, 8(sp)
     6ce: 85 e3        	bnez	a5, 0x6ee <__do_global_dtors_aux+0x32>
     6d0: 97 37 00 00  	auipc	a5, 3
     6d4: 83 b7 07 98  	ld	a5, -1664(a5)
     6d8: 91 c7        	beqz	a5, 0x6e4 <__do_global_dtors_aux+0x28>
     6da: 17 35 00 00  	auipc	a0, 3
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

00000000000006f8 <load_vectors>:
     6f8: 63 09 06 5a  	beqz	a2, 0xcaa <load_vectors+0x5b2>
     6fc: 59 71        	addi	sp, sp, -112
     6fe: a2 f4        	sd	s0, 104(sp)
     700: a6 f0        	sd	s1, 96(sp)
     702: ca ec        	sd	s2, 88(sp)
     704: ce e8        	sd	s3, 80(sp)
     706: d2 e4        	sd	s4, 72(sp)
     708: d6 e0        	sd	s5, 64(sp)
     70a: 5a fc        	sd	s6, 56(sp)
     70c: 5e f8        	sd	s7, 48(sp)
     70e: 62 f4        	sd	s8, 40(sp)
     710: f3 26 20 c2  	csrr	a3, vlenb
     714: 92 06        	slli	a3, a3, 4
     716: 33 01 d1 40  	sub	sp, sp, a3
     71a: 93 06 00 10  	li	a3, 256
     71e: 63 f0 c6 02  	bgeu	a3, a2, 0x73e <load_vectors+0x46>
     722: 93 06 f6 ff  	addi	a3, a2, -1
     726: 13 f7 86 ff  	andi	a4, a3, -8
     72a: 21 07        	addi	a4, a4, 8
     72c: b3 87 e5 00  	add	a5, a1, a4
     730: 2a 97        	add	a4, a4, a0
     732: 33 b7 e5 00  	sltu	a4, a1, a4
     736: b3 37 f5 00  	sltu	a5, a0, a5
     73a: 7d 8f        	and	a4, a4, a5
     73c: 19 c3        	beqz	a4, 0x742 <load_vectors+0x4a>
     73e: 01 48        	li	a6, 0
     740: 51 a9        	j	0xbd4 <load_vectors+0x4dc>
     742: 8d 82        	srli	a3, a3, 3
     744: 93 84 16 00  	addi	s1, a3, 1
     748: 93 f7 f4 01  	andi	a5, s1, 31
     74c: 93 06 00 02  	li	a3, 32
     750: 99 e3        	bnez	a5, 0x756 <load_vectors+0x5e>
     752: 93 07 00 02  	li	a5, 32
     756: 01 44        	li	s0, 0
     758: b3 8b f4 40  	sub	s7, s1, a5
     75c: 97 17 00 00  	auipc	a5, 1
     760: 93 87 47 82  	addi	a5, a5, -2012
     764: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     768: 07 fc 07 02  	vle64.v	v24, (a5)
     76c: 57 a8 08 52  	vid.v	v16
     770: 57 b4 01 97  	vsll.vi	v8, v16, 3
     774: 73 27 20 c2  	csrr	a4, vlenb
     778: 0e 07        	slli	a4, a4, 3
     77a: 0a 97        	add	a4, a4, sp
     77c: 13 07 07 02  	addi	a4, a4, 32
     780: 27 04 87 e2  	vs8r.v	v8, (a4)
     784: 13 98 3b 00  	slli	a6, s7, 3
     788: 93 08 00 08  	li	a7, 128
     78c: 93 02 80 02  	li	t0, 40
     790: 13 03 00 03  	li	t1, 48
     794: 93 03 80 03  	li	t2, 56
     798: 13 0e 00 04  	li	t3, 64
     79c: 93 0e 80 04  	li	t4, 72
     7a0: 13 0f 00 05  	li	t5, 80
     7a4: 93 0f 80 05  	li	t6, 88
     7a8: 13 09 00 06  	li	s2, 96
     7ac: 93 09 80 06  	li	s3, 104
     7b0: 13 0a 00 07  	li	s4, 112
     7b4: 93 0a 80 07  	li	s5, 120
     7b8: 21 4c        	li	s8, 8
     7ba: 13 0b 00 10  	li	s6, 256
     7be: 18 10        	addi	a4, sp, 32
     7c0: 27 0c 87 e2  	vs8r.v	v24, (a4)
     7c4: 33 07 85 00  	add	a4, a0, s0
     7c8: 57 f0 38 0c  	vsetvli	zero, a7, e8, m8, ta, ma
     7cc: 07 00 07 02  	vle8.v	v0, (a4)
     7d0: 93 04 07 08  	addi	s1, a4, 128
     7d4: 07 8c 04 02  	vle8.v	v24, (s1)
     7d8: d7 24 00 42  	vmv.x.s	s1, v0
     7dc: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     7e0: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     7e4: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     7e8: 57 38 04 3e  	vslidedown.vi	v16, v0, 8
     7ec: d7 24 00 43  	vmv.x.s	s1, v16
     7f0: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     7f4: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     7f8: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     7fc: 57 38 08 3e  	vslidedown.vi	v16, v0, 16
     800: d7 24 00 43  	vmv.x.s	s1, v16
     804: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     808: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     80c: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     810: 57 38 0c 3e  	vslidedown.vi	v16, v0, 24
     814: d7 24 00 43  	vmv.x.s	s1, v16
     818: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     81c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     820: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     824: 57 c8 06 3e  	vslidedown.vx	v16, v0, a3
     828: d7 24 00 43  	vmv.x.s	s1, v16
     82c: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     830: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     834: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     838: 57 c8 02 3e  	vslidedown.vx	v16, v0, t0
     83c: d7 24 00 43  	vmv.x.s	s1, v16
     840: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     844: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     848: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     84c: 57 48 03 3e  	vslidedown.vx	v16, v0, t1
     850: d7 24 00 43  	vmv.x.s	s1, v16
     854: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     858: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     85c: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     860: 57 c8 03 3e  	vslidedown.vx	v16, v0, t2
     864: d7 24 00 43  	vmv.x.s	s1, v16
     868: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     86c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     870: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     874: 57 48 0e 3e  	vslidedown.vx	v16, v0, t3
     878: d7 24 00 43  	vmv.x.s	s1, v16
     87c: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     880: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     884: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     888: 57 c8 0e 3e  	vslidedown.vx	v16, v0, t4
     88c: d7 24 00 43  	vmv.x.s	s1, v16
     890: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     894: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     898: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     89c: 57 48 0f 3e  	vslidedown.vx	v16, v0, t5
     8a0: d7 24 00 43  	vmv.x.s	s1, v16
     8a4: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     8a8: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     8ac: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     8b0: 57 c8 0f 3e  	vslidedown.vx	v16, v0, t6
     8b4: d7 24 00 43  	vmv.x.s	s1, v16
     8b8: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     8bc: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     8c0: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     8c4: 57 48 09 3e  	vslidedown.vx	v16, v0, s2
     8c8: d7 24 00 43  	vmv.x.s	s1, v16
     8cc: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     8d0: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     8d4: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     8d8: 57 c8 09 3e  	vslidedown.vx	v16, v0, s3
     8dc: d7 24 00 43  	vmv.x.s	s1, v16
     8e0: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     8e4: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     8e8: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     8ec: 57 48 0a 3e  	vslidedown.vx	v16, v0, s4
     8f0: d7 24 00 43  	vmv.x.s	s1, v16
     8f4: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     8f8: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     8fc: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     900: 57 c8 0a 3e  	vslidedown.vx	v16, v0, s5
     904: d7 24 00 43  	vmv.x.s	s1, v16
     908: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     90c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     910: d7 24 80 43  	vmv.x.s	s1, v24
     914: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     918: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     91c: 57 38 84 3f  	vslidedown.vi	v16, v24, 8
     920: d7 24 00 43  	vmv.x.s	s1, v16
     924: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     928: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     92c: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     930: 57 38 88 3f  	vslidedown.vi	v16, v24, 16
     934: d7 24 00 43  	vmv.x.s	s1, v16
     938: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     93c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     940: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     944: 57 38 8c 3f  	vslidedown.vi	v16, v24, 24
     948: d7 24 00 43  	vmv.x.s	s1, v16
     94c: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     950: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     954: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     958: 57 c8 86 3f  	vslidedown.vx	v16, v24, a3
     95c: d7 24 00 43  	vmv.x.s	s1, v16
     960: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     964: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     968: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     96c: 57 c8 82 3f  	vslidedown.vx	v16, v24, t0
     970: d7 24 00 43  	vmv.x.s	s1, v16
     974: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     978: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     97c: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     980: 57 48 83 3f  	vslidedown.vx	v16, v24, t1
     984: d7 24 00 43  	vmv.x.s	s1, v16
     988: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     98c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     990: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     994: 57 c8 83 3f  	vslidedown.vx	v16, v24, t2
     998: d7 24 00 43  	vmv.x.s	s1, v16
     99c: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     9a0: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     9a4: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     9a8: 57 48 8e 3f  	vslidedown.vx	v16, v24, t3
     9ac: d7 24 00 43  	vmv.x.s	s1, v16
     9b0: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     9b4: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     9b8: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     9bc: 57 c8 8e 3f  	vslidedown.vx	v16, v24, t4
     9c0: d7 24 00 43  	vmv.x.s	s1, v16
     9c4: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     9c8: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     9cc: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     9d0: 57 48 8f 3f  	vslidedown.vx	v16, v24, t5
     9d4: d7 24 00 43  	vmv.x.s	s1, v16
     9d8: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     9dc: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     9e0: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     9e4: 57 c8 8f 3f  	vslidedown.vx	v16, v24, t6
     9e8: d7 24 00 43  	vmv.x.s	s1, v16
     9ec: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     9f0: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     9f4: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     9f8: 57 48 89 3f  	vslidedown.vx	v16, v24, s2
     9fc: d7 24 00 43  	vmv.x.s	s1, v16
     a00: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     a04: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     a08: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     a0c: 57 c8 89 3f  	vslidedown.vx	v16, v24, s3
     a10: d7 24 00 43  	vmv.x.s	s1, v16
     a14: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     a18: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     a1c: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     a20: 57 48 8a 3f  	vslidedown.vx	v16, v24, s4
     a24: d7 24 00 43  	vmv.x.s	s1, v16
     a28: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     a2c: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     a30: 57 f0 30 cc  	vsetivli	zero, 1, e8, m8, ta, ma
     a34: 57 c8 8a 3f  	vslidedown.vx	v16, v24, s5
     a38: 1c 10        	addi	a5, sp, 32
     a3a: 07 8c 87 e2  	vl8r.v	v24, (a5)
     a3e: d7 24 00 43  	vmv.x.s	s1, v16
     a42: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     a46: 57 e4 84 3e  	vslide1down.vx	v8, v8, s1
     a4a: b3 84 85 00  	add	s1, a1, s0
     a4e: 27 84 84 0b  	vsse8.v	v8, (s1), s8
     a52: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     a56: 57 b4 80 2b  	vor.vi	v8, v24, 1
     a5a: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     a5e: f3 27 20 c2  	csrr	a5, vlenb
     a62: 8e 07        	slli	a5, a5, 3
     a64: 8a 97        	add	a5, a5, sp
     a66: 93 87 07 02  	addi	a5, a5, 32
     a6a: 07 88 87 e2  	vl8r.v	v16, (a5)
     a6e: 57 b4 00 2b  	vor.vi	v8, v16, 1
     a72: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     a76: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     a7a: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     a7e: 93 07 17 00  	addi	a5, a4, 1
     a82: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     a86: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     a8a: 93 87 14 00  	addi	a5, s1, 1
     a8e: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     a92: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     a96: 57 34 81 2b  	vor.vi	v8, v24, 2
     a9a: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     a9e: 57 34 01 2b  	vor.vi	v8, v16, 2
     aa2: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     aa6: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     aaa: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     aae: 93 07 27 00  	addi	a5, a4, 2
     ab2: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     ab6: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     aba: 93 87 24 00  	addi	a5, s1, 2
     abe: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     ac2: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     ac6: 57 b4 81 2b  	vor.vi	v8, v24, 3
     aca: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     ace: 57 b4 01 2b  	vor.vi	v8, v16, 3
     ad2: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     ad6: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     ada: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     ade: 93 07 37 00  	addi	a5, a4, 3
     ae2: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     ae6: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     aea: 93 87 34 00  	addi	a5, s1, 3
     aee: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     af2: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     af6: 57 34 82 2b  	vor.vi	v8, v24, 4
     afa: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     afe: 57 34 02 2b  	vor.vi	v8, v16, 4
     b02: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     b06: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     b0a: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     b0e: 93 07 47 00  	addi	a5, a4, 4
     b12: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     b16: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     b1a: 93 87 44 00  	addi	a5, s1, 4
     b1e: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     b22: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     b26: 57 b4 82 2b  	vor.vi	v8, v24, 5
     b2a: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     b2e: 57 b4 02 2b  	vor.vi	v8, v16, 5
     b32: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     b36: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     b3a: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     b3e: 93 07 57 00  	addi	a5, a4, 5
     b42: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     b46: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     b4a: 93 87 54 00  	addi	a5, s1, 5
     b4e: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     b52: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     b56: 57 34 83 2b  	vor.vi	v8, v24, 6
     b5a: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     b5e: 57 34 03 2b  	vor.vi	v8, v16, 6
     b62: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     b66: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     b6a: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     b6e: 93 07 67 00  	addi	a5, a4, 6
     b72: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     b76: 07 84 87 09  	vlse8.v	v8, (a5), s8, v0.t
     b7a: 93 87 64 00  	addi	a5, s1, 6
     b7e: 27 84 87 09  	vsse8.v	v8, (a5), s8, v0.t
     b82: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     b86: 57 b4 83 2b  	vor.vi	v8, v24, 7
     b8a: d7 40 86 6a  	vmsltu.vx	v1, v8, a2
     b8e: 57 b4 03 2b  	vor.vi	v8, v16, 7
     b92: 57 40 86 6a  	vmsltu.vx	v0, v8, a2
     b96: 57 70 62 cc  	vsetivli	zero, 4, e8, mf4, ta, ma
     b9a: 57 30 11 3a  	vslideup.vi	v0, v1, 2
     b9e: 1d 07        	addi	a4, a4, 7
     ba0: 57 f0 16 0c  	vsetvli	zero, a3, e8, m2, ta, ma
     ba4: 07 04 87 09  	vlse8.v	v8, (a4), s8, v0.t
     ba8: 9d 04        	addi	s1, s1, 7
     baa: 27 84 84 09  	vsse8.v	v8, (s1), s8, v0.t
     bae: 13 04 04 10  	addi	s0, s0, 256
     bb2: 57 70 b8 cd  	vsetivli	zero, 16, e64, m8, ta, ma
     bb6: 57 48 0b 03  	vadd.vx	v16, v16, s6
     bba: 73 27 20 c2  	csrr	a4, vlenb
     bbe: 0e 07        	slli	a4, a4, 3
     bc0: 0a 97        	add	a4, a4, sp
     bc2: 13 07 07 02  	addi	a4, a4, 32
     bc6: 27 08 87 e2  	vs8r.v	v16, (a4)
     bca: 81 1b        	addi	s7, s7, -32
     bcc: 57 4c 8b 03  	vadd.vx	v24, v24, s6
     bd0: e3 97 0b be  	bnez	s7, 0x7be <load_vectors+0xc6>
     bd4: 1d 08        	addi	a6, a6, 7
     bd6: 31 a0        	j	0xbe2 <load_vectors+0x4ea>
     bd8: 93 06 18 00  	addi	a3, a6, 1
     bdc: 21 08        	addi	a6, a6, 8
     bde: 63 f8 c6 0a  	bgeu	a3, a2, 0xc8e <load_vectors+0x596>
     be2: b3 06 05 01  	add	a3, a0, a6
     be6: 83 c7 96 ff  	lbu	a5, -7(a3)
     bea: 33 87 05 01  	add	a4, a1, a6
     bee: 93 04 a8 ff  	addi	s1, a6, -6
     bf2: a3 0c f7 fe  	sb	a5, -7(a4)
     bf6: 63 e9 c4 02  	bltu	s1, a2, 0xc28 <load_vectors+0x530>
     bfa: 93 07 b8 ff  	addi	a5, a6, -5
     bfe: 63 ed c7 02  	bltu	a5, a2, 0xc38 <load_vectors+0x540>
     c02: 93 07 c8 ff  	addi	a5, a6, -4
     c06: 63 e1 c7 04  	bltu	a5, a2, 0xc48 <load_vectors+0x550>
     c0a: 93 07 d8 ff  	addi	a5, a6, -3
     c0e: 63 e5 c7 04  	bltu	a5, a2, 0xc58 <load_vectors+0x560>
     c12: 93 07 e8 ff  	addi	a5, a6, -2
     c16: 63 e9 c7 04  	bltu	a5, a2, 0xc68 <load_vectors+0x570>
     c1a: 93 07 f8 ff  	addi	a5, a6, -1
     c1e: 63 ed c7 04  	bltu	a5, a2, 0xc78 <load_vectors+0x580>
     c22: e3 7b c8 fa  	bgeu	a6, a2, 0xbd8 <load_vectors+0x4e0>
     c26: b9 a8        	j	0xc84 <load_vectors+0x58c>
     c28: 83 c7 a6 ff  	lbu	a5, -6(a3)
     c2c: 23 0d f7 fe  	sb	a5, -6(a4)
     c30: 93 07 b8 ff  	addi	a5, a6, -5
     c34: e3 f7 c7 fc  	bgeu	a5, a2, 0xc02 <load_vectors+0x50a>
     c38: 83 c7 b6 ff  	lbu	a5, -5(a3)
     c3c: a3 0d f7 fe  	sb	a5, -5(a4)
     c40: 93 07 c8 ff  	addi	a5, a6, -4
     c44: e3 f3 c7 fc  	bgeu	a5, a2, 0xc0a <load_vectors+0x512>
     c48: 83 c7 c6 ff  	lbu	a5, -4(a3)
     c4c: 23 0e f7 fe  	sb	a5, -4(a4)
     c50: 93 07 d8 ff  	addi	a5, a6, -3
     c54: e3 ff c7 fa  	bgeu	a5, a2, 0xc12 <load_vectors+0x51a>
     c58: 83 c7 d6 ff  	lbu	a5, -3(a3)
     c5c: a3 0e f7 fe  	sb	a5, -3(a4)
     c60: 93 07 e8 ff  	addi	a5, a6, -2
     c64: e3 fb c7 fa  	bgeu	a5, a2, 0xc1a <load_vectors+0x522>
     c68: 83 c7 e6 ff  	lbu	a5, -2(a3)
     c6c: 23 0f f7 fe  	sb	a5, -2(a4)
     c70: 93 07 f8 ff  	addi	a5, a6, -1
     c74: e3 f7 c7 fa  	bgeu	a5, a2, 0xc22 <load_vectors+0x52a>
     c78: 83 c7 f6 ff  	lbu	a5, -1(a3)
     c7c: a3 0f f7 fe  	sb	a5, -1(a4)
     c80: e3 7c c8 f4  	bgeu	a6, a2, 0xbd8 <load_vectors+0x4e0>
     c84: 83 c6 06 00  	lbu	a3, 0(a3)
     c88: 23 00 d7 00  	sb	a3, 0(a4)
     c8c: b1 b7        	j	0xbd8 <load_vectors+0x4e0>
     c8e: 73 25 20 c2  	csrr	a0, vlenb
     c92: 12 05        	slli	a0, a0, 4
     c94: 2a 91        	add	sp, sp, a0
     c96: 26 74        	ld	s0, 104(sp)
     c98: 86 74        	ld	s1, 96(sp)
     c9a: 66 69        	ld	s2, 88(sp)
     c9c: c6 69        	ld	s3, 80(sp)
     c9e: 26 6a        	ld	s4, 72(sp)
     ca0: 86 6a        	ld	s5, 64(sp)
     ca2: 62 7b        	ld	s6, 56(sp)
     ca4: c2 7b        	ld	s7, 48(sp)
     ca6: 22 7c        	ld	s8, 40(sp)
     ca8: 65 61        	addi	sp, sp, 112
     caa: 82 80        	ret

0000000000000cac <load_vectors1>:
     cac: 63 51 c0 04  	blez	a2, 0xcee <load_vectors1+0x42>
     cb0: 73 27 20 c2  	csrr	a4, vlenb
     cb4: 93 16 17 00  	slli	a3, a4, 1
     cb8: 93 07 00 02  	li	a5, 32
     cbc: 63 e4 d7 00  	bltu	a5, a3, 0xcc4 <load_vectors1+0x18>
     cc0: 93 06 00 02  	li	a3, 32
     cc4: 63 68 d6 00  	bltu	a2, a3, 0xcd4 <load_vectors1+0x28>
     cc8: 93 18 17 00  	slli	a7, a4, 1
     ccc: b3 86 a5 40  	sub	a3, a1, a0
     cd0: 63 f0 16 03  	bgeu	a3, a7, 0xcf0 <load_vectors1+0x44>
     cd4: 01 48        	li	a6, 0
     cd6: c2 95        	add	a1, a1, a6
     cd8: 42 95        	add	a0, a0, a6
     cda: 33 06 06 41  	sub	a2, a2, a6
     cde: 83 46 05 00  	lbu	a3, 0(a0)
     ce2: 23 80 d5 00  	sb	a3, 0(a1)
     ce6: 85 05        	addi	a1, a1, 1
     ce8: 7d 16        	addi	a2, a2, -1
     cea: 05 05        	addi	a0, a0, 1
     cec: 6d fa        	bnez	a2, 0xcde <load_vectors1+0x32>
     cee: 82 80        	ret
     cf0: 76 07        	slli	a4, a4, 29
     cf2: b3 06 17 41  	sub	a3, a4, a7
     cf6: 33 f8 c6 00  	and	a6, a3, a2
     cfa: c2 87        	mv	a5, a6
     cfc: 2e 87        	mv	a4, a1
     cfe: aa 86        	mv	a3, a0
     d00: 07 84 86 22  	vl2r.v	v8, (a3)
     d04: 27 04 87 22  	vs2r.v	v8, (a4)
     d08: c6 96        	add	a3, a3, a7
     d0a: b3 87 17 41  	sub	a5, a5, a7
     d0e: 46 97        	add	a4, a4, a7
     d10: e5 fb        	bnez	a5, 0xd00 <load_vectors1+0x54>
     d12: e3 0e c8 fc  	beq	a6, a2, 0xcee <load_vectors1+0x42>
     d16: c1 b7        	j	0xcd6 <load_vectors1+0x2a>

0000000000000d18 <vector_ssubu_vv>:
     d18: a9 c6        	beqz	a3, 0xd62 <vector_ssubu_vv+0x4a>
     d1a: f3 28 20 c2  	csrr	a7, vlenb
     d1e: 13 97 18 00  	slli	a4, a7, 1
     d22: 93 07 00 02  	li	a5, 32
     d26: 63 e4 e7 00  	bltu	a5, a4, 0xd2e <vector_ssubu_vv+0x16>
     d2a: 13 07 00 02  	li	a4, 32
     d2e: 63 e7 e6 00  	bltu	a3, a4, 0xd3c <vector_ssubu_vv+0x24>
     d32: 86 08        	slli	a7, a7, 1
     d34: 33 07 b5 40  	sub	a4, a0, a1
     d38: 63 76 17 03  	bgeu	a4, a7, 0xd64 <vector_ssubu_vv+0x4c>
     d3c: 01 48        	li	a6, 0
     d3e: b3 86 06 41  	sub	a3, a3, a6
     d42: 42 95        	add	a0, a0, a6
     d44: c2 95        	add	a1, a1, a6
     d46: 03 c7 05 00  	lbu	a4, 0(a1)
     d4a: b3 07 c7 40  	sub	a5, a4, a2
     d4e: 33 37 f7 00  	sltu	a4, a4, a5
     d52: 7d 37        	addiw	a4, a4, -1
     d54: 7d 8f        	and	a4, a4, a5
     d56: 23 00 e5 00  	sb	a4, 0(a0)
     d5a: fd 16        	addi	a3, a3, -1
     d5c: 05 05        	addi	a0, a0, 1
     d5e: 85 05        	addi	a1, a1, 1
     d60: fd f2        	bnez	a3, 0xd46 <vector_ssubu_vv+0x2e>
     d62: 82 80        	ret
     d64: 33 07 10 41  	neg	a4, a7
     d68: 33 78 d7 00  	and	a6, a4, a3
     d6c: 57 77 10 0c  	vsetvli	a4, zero, e8, m2, ta, ma
     d70: 57 44 06 5e  	vmv.v.x	v8, a2
     d74: c2 82        	mv	t0, a6
     d76: aa 87        	mv	a5, a0
     d78: 2e 87        	mv	a4, a1
     d7a: 07 05 87 22  	vl2r.v	v10, (a4)
     d7e: 57 05 a4 8a  	vssubu.vv	v10, v10, v8
     d82: 27 85 87 22  	vs2r.v	v10, (a5)
     d86: 46 97        	add	a4, a4, a7
     d88: b3 82 12 41  	sub	t0, t0, a7
     d8c: c6 97        	add	a5, a5, a7
     d8e: e3 96 02 fe  	bnez	t0, 0xd7a <vector_ssubu_vv+0x62>
     d92: e3 08 d8 fc  	beq	a6, a3, 0xd62 <vector_ssubu_vv+0x4a>
     d96: 65 b7        	j	0xd3e <vector_ssubu_vv+0x26>

0000000000000d98 <main>:
     d98: 41 11        	addi	sp, sp, -16
     d9a: 06 e4        	sd	ra, 8(sp)
     d9c: 22 e0        	sd	s0, 0(sp)
     d9e: 17 05 00 00  	auipc	a0, 0
     da2: 13 05 65 26  	addi	a0, a0, 614
     da6: ef f0 bf 87  	jal	0x620 <.plt+0x40>
     daa: 17 05 00 00  	auipc	a0, 0
     dae: 13 04 65 25  	addi	s0, a0, 598
     db2: 22 85        	mv	a0, s0
     db4: 81 45        	li	a1, 0
     db6: ef f0 bf 87  	jal	0x630 <.plt+0x50>
     dba: 22 85        	mv	a0, s0
     dbc: 81 45        	li	a1, 0
     dbe: ef f0 3f 87  	jal	0x630 <.plt+0x50>
     dc2: 22 85        	mv	a0, s0
     dc4: 81 45        	li	a1, 0
     dc6: ef f0 bf 86  	jal	0x630 <.plt+0x50>
     dca: 22 85        	mv	a0, s0
     dcc: 81 45        	li	a1, 0
     dce: ef f0 3f 86  	jal	0x630 <.plt+0x50>
     dd2: 22 85        	mv	a0, s0
     dd4: 81 45        	li	a1, 0
     dd6: ef f0 bf 85  	jal	0x630 <.plt+0x50>
     dda: 22 85        	mv	a0, s0
     ddc: 81 45        	li	a1, 0
     dde: ef f0 3f 85  	jal	0x630 <.plt+0x50>
     de2: 22 85        	mv	a0, s0
     de4: 81 45        	li	a1, 0
     de6: ef f0 bf 84  	jal	0x630 <.plt+0x50>
     dea: 22 85        	mv	a0, s0
     dec: 81 45        	li	a1, 0
     dee: ef f0 3f 84  	jal	0x630 <.plt+0x50>
     df2: 22 85        	mv	a0, s0
     df4: 81 45        	li	a1, 0
     df6: ef f0 bf 83  	jal	0x630 <.plt+0x50>
     dfa: 22 85        	mv	a0, s0
     dfc: 81 45        	li	a1, 0
     dfe: ef f0 3f 83  	jal	0x630 <.plt+0x50>
     e02: 22 85        	mv	a0, s0
     e04: 81 45        	li	a1, 0
     e06: ef f0 bf 82  	jal	0x630 <.plt+0x50>
     e0a: 22 85        	mv	a0, s0
     e0c: 81 45        	li	a1, 0
     e0e: ef f0 3f 82  	jal	0x630 <.plt+0x50>
     e12: 22 85        	mv	a0, s0
     e14: 81 45        	li	a1, 0
     e16: ef f0 bf 81  	jal	0x630 <.plt+0x50>
     e1a: 22 85        	mv	a0, s0
     e1c: 81 45        	li	a1, 0
     e1e: ef f0 3f 81  	jal	0x630 <.plt+0x50>
     e22: 22 85        	mv	a0, s0
     e24: 81 45        	li	a1, 0
     e26: ef f0 bf 80  	jal	0x630 <.plt+0x50>
     e2a: 22 85        	mv	a0, s0
     e2c: 81 45        	li	a1, 0
     e2e: ef f0 3f 80  	jal	0x630 <.plt+0x50>
     e32: 29 45        	li	a0, 10
     e34: ef f0 cf fd  	jal	0x610 <.plt+0x30>
     e38: 17 05 00 00  	auipc	a0, 0
     e3c: 13 05 f5 1d  	addi	a0, a0, 479
     e40: ef f0 0f fe  	jal	0x620 <.plt+0x40>
     e44: 22 85        	mv	a0, s0
     e46: 81 45        	li	a1, 0
     e48: ef f0 8f fe  	jal	0x630 <.plt+0x50>
     e4c: 22 85        	mv	a0, s0
     e4e: 81 45        	li	a1, 0
     e50: ef f0 0f fe  	jal	0x630 <.plt+0x50>
     e54: 22 85        	mv	a0, s0
     e56: 81 45        	li	a1, 0
     e58: ef f0 8f fd  	jal	0x630 <.plt+0x50>
     e5c: 22 85        	mv	a0, s0
     e5e: 81 45        	li	a1, 0
     e60: ef f0 0f fd  	jal	0x630 <.plt+0x50>
     e64: 22 85        	mv	a0, s0
     e66: 81 45        	li	a1, 0
     e68: ef f0 8f fc  	jal	0x630 <.plt+0x50>
     e6c: 22 85        	mv	a0, s0
     e6e: 81 45        	li	a1, 0
     e70: ef f0 0f fc  	jal	0x630 <.plt+0x50>
     e74: 22 85        	mv	a0, s0
     e76: 81 45        	li	a1, 0
     e78: ef f0 8f fb  	jal	0x630 <.plt+0x50>
     e7c: 22 85        	mv	a0, s0
     e7e: 81 45        	li	a1, 0
     e80: ef f0 0f fb  	jal	0x630 <.plt+0x50>
     e84: 22 85        	mv	a0, s0
     e86: 81 45        	li	a1, 0
     e88: ef f0 8f fa  	jal	0x630 <.plt+0x50>
     e8c: 22 85        	mv	a0, s0
     e8e: 81 45        	li	a1, 0
     e90: ef f0 0f fa  	jal	0x630 <.plt+0x50>
     e94: 22 85        	mv	a0, s0
     e96: 81 45        	li	a1, 0
     e98: ef f0 8f f9  	jal	0x630 <.plt+0x50>
     e9c: 22 85        	mv	a0, s0
     e9e: 81 45        	li	a1, 0
     ea0: ef f0 0f f9  	jal	0x630 <.plt+0x50>
     ea4: 22 85        	mv	a0, s0
     ea6: 81 45        	li	a1, 0
     ea8: ef f0 8f f8  	jal	0x630 <.plt+0x50>
     eac: 22 85        	mv	a0, s0
     eae: 81 45        	li	a1, 0
     eb0: ef f0 0f f8  	jal	0x630 <.plt+0x50>
     eb4: 22 85        	mv	a0, s0
     eb6: 81 45        	li	a1, 0
     eb8: ef f0 8f f7  	jal	0x630 <.plt+0x50>
     ebc: 22 85        	mv	a0, s0
     ebe: 81 45        	li	a1, 0
     ec0: ef f0 0f f7  	jal	0x630 <.plt+0x50>
     ec4: 29 45        	li	a0, 10
     ec6: ef f0 af f4  	jal	0x610 <.plt+0x30>
     eca: 01 45        	li	a0, 0
     ecc: a2 60        	ld	ra, 8(sp)
     ece: 02 64        	ld	s0, 0(sp)
     ed0: 41 01        	addi	sp, sp, 16
     ed2: 82 80        	ret
