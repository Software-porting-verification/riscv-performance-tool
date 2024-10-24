
h263_h_loop_filter_rvv:	file format elf64-littleriscv

Disassembly of section .plt:

0000000000000620 <.plt>:
     620: 97 23 00 00  	auipc	t2, 2
     624: 33 03 c3 41  	sub	t1, t1, t3
     628: 03 be 83 9e  	ld	t3, -1560(t2)
     62c: 13 03 43 fd  	addi	t1, t1, -44
     630: 93 82 83 9e  	addi	t0, t2, -1560
     634: 13 53 13 00  	srli	t1, t1, 1
     638: 83 b2 82 00  	ld	t0, 8(t0)
     63c: 67 00 0e 00  	jr	t3
     640: 17 2e 00 00  	auipc	t3, 2
     644: 03 3e 8e 9d  	ld	t3, -1576(t3)
     648: 67 03 0e 00  	jalr	t1, t3
     64c: 13 00 00 00  	nop
     650: 17 2e 00 00  	auipc	t3, 2
     654: 03 3e 0e 9d  	ld	t3, -1584(t3)
     658: 67 03 0e 00  	jalr	t1, t3
     65c: 13 00 00 00  	nop
     660: 17 2e 00 00  	auipc	t3, 2
     664: 03 3e 8e 9c  	ld	t3, -1592(t3)
     668: 67 03 0e 00  	jalr	t1, t3
     66c: 13 00 00 00  	nop
     670: 17 2e 00 00  	auipc	t3, 2
     674: 03 3e 0e 9c  	ld	t3, -1600(t3)
     678: 67 03 0e 00  	jalr	t1, t3
     67c: 13 00 00 00  	nop
     680: 17 2e 00 00  	auipc	t3, 2
     684: 03 3e 8e 9b  	ld	t3, -1608(t3)
     688: 67 03 0e 00  	jalr	t1, t3
     68c: 13 00 00 00  	nop

Disassembly of section .text:

0000000000000690 <_start>:
     690: ef 00 20 02  	jal	0x6b2 <load_gp>
     694: aa 87        	mv	a5, a0
     696: 17 25 00 00  	auipc	a0, 2
     69a: 03 35 a5 9b  	ld	a0, -1606(a0)
     69e: 82 65        	ld	a1, 0(sp)
     6a0: 30 00        	addi	a2, sp, 8
     6a2: 13 71 01 ff  	andi	sp, sp, -16
     6a6: 81 46        	li	a3, 0
     6a8: 01 47        	li	a4, 0
     6aa: 0a 88        	mv	a6, sp
     6ac: ef f0 5f f9  	jal	0x640 <.plt+0x20>
     6b0: 02 90        	ebreak

00000000000006b2 <load_gp>:
     6b2: 97 21 00 00  	auipc	gp, 2
     6b6: 93 81 e1 14  	addi	gp, gp, 334
     6ba: 82 80        	ret
     6bc: 00 00        	unimp

00000000000006be <deregister_tm_clones>:
     6be: 17 25 00 00  	auipc	a0, 2
     6c2: 13 05 a5 94  	addi	a0, a0, -1718
     6c6: 97 27 00 00  	auipc	a5, 2
     6ca: 93 87 27 94  	addi	a5, a5, -1726
     6ce: 63 88 a7 00  	beq	a5, a0, 0x6de <deregister_tm_clones+0x20>
     6d2: 97 27 00 00  	auipc	a5, 2
     6d6: 83 b7 67 97  	ld	a5, -1674(a5)
     6da: 91 c3        	beqz	a5, 0x6de <deregister_tm_clones+0x20>
     6dc: 82 87        	jr	a5
     6de: 82 80        	ret

00000000000006e0 <register_tm_clones>:
     6e0: 17 25 00 00  	auipc	a0, 2
     6e4: 13 05 85 92  	addi	a0, a0, -1752
     6e8: 97 25 00 00  	auipc	a1, 2
     6ec: 93 85 05 92  	addi	a1, a1, -1760
     6f0: 89 8d        	sub	a1, a1, a0
     6f2: 93 d7 35 40  	srai	a5, a1, 3
     6f6: fd 91        	srli	a1, a1, 63
     6f8: be 95        	add	a1, a1, a5
     6fa: 85 85        	srai	a1, a1, 1
     6fc: 99 c5        	beqz	a1, 0x70a <register_tm_clones+0x2a>
     6fe: 97 27 00 00  	auipc	a5, 2
     702: 83 b7 27 96  	ld	a5, -1694(a5)
     706: 91 c3        	beqz	a5, 0x70a <register_tm_clones+0x2a>
     708: 82 87        	jr	a5
     70a: 82 80        	ret

000000000000070c <__do_global_dtors_aux>:
     70c: 41 11        	addi	sp, sp, -16
     70e: 22 e0        	sd	s0, 0(sp)
     710: 17 24 00 00  	auipc	s0, 2
     714: 13 04 84 95  	addi	s0, s0, -1704
     718: 83 47 04 00  	lbu	a5, 0(s0)
     71c: 06 e4        	sd	ra, 8(sp)
     71e: 85 e3        	bnez	a5, 0x73e <__do_global_dtors_aux+0x32>
     720: 97 27 00 00  	auipc	a5, 2
     724: 83 b7 87 93  	ld	a5, -1736(a5)
     728: 91 c7        	beqz	a5, 0x734 <__do_global_dtors_aux+0x28>
     72a: 17 25 00 00  	auipc	a0, 2
     72e: 03 35 65 8d  	ld	a0, -1834(a0)
     732: 82 97        	jalr	a5
     734: ef f0 bf f8  	jal	0x6be <deregister_tm_clones>
     738: 85 47        	li	a5, 1
     73a: 23 00 f4 00  	sb	a5, 0(s0)
     73e: a2 60        	ld	ra, 8(sp)
     740: 02 64        	ld	s0, 0(sp)
     742: 41 01        	addi	sp, sp, 16
     744: 82 80        	ret

0000000000000746 <frame_dummy>:
     746: 69 bf        	j	0x6e0 <register_tm_clones>

0000000000000748 <main>:
     748: 51 71        	addi	sp, sp, -240
     74a: 86 f5        	sd	ra, 232(sp)
     74c: a2 f1        	sd	s0, 224(sp)
     74e: a6 ed        	sd	s1, 216(sp)
     750: ca e9        	sd	s2, 208(sp)
     752: ce e5        	sd	s3, 200(sp)
     754: 17 05 00 00  	auipc	a0, 0
     758: 13 05 c5 36  	addi	a0, a0, 876
     75c: 57 70 a4 cd  	vsetivli	zero, 8, e64, m4, ta, ma
     760: 07 74 05 02  	vle64.v	v8, (a0)
     764: 24 01        	addi	s1, sp, 136
     766: 27 f4 04 02  	vse64.v	v8, (s1)
     76a: 17 05 00 00  	auipc	a0, 0
     76e: 93 05 65 3f  	addi	a1, a0, 1014
     772: 28 00        	addi	a0, sp, 8
     774: 13 06 00 08  	li	a2, 128
     778: 13 09 81 00  	addi	s2, sp, 8
     77c: ef f0 5f ee  	jal	0x660 <.plt+0x40>
     780: 93 05 61 08  	addi	a1, sp, 134
     784: 21 45        	li	a0, 8
     786: 57 70 14 cd  	vsetivli	zero, 8, e32, m2, ta, ma
     78a: 07 84 a5 0a  	vlse8.v	v8, (a1), a0
     78e: 57 27 82 4a  	vzext.vf4	v14, v8
     792: 13 06 71 08  	addi	a2, sp, 135
     796: 87 84 a4 0a  	vlse8.v	v9, (s1), a0
     79a: 07 05 a6 0a  	vlse8.v	v10, (a2), a0
     79e: 93 07 91 08  	addi	a5, sp, 137
     7a2: 07 86 a7 0a  	vlse8.v	v12, (a5), a0
     7a6: 57 29 92 4a  	vzext.vf4	v18, v9
     7aa: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     7ae: d7 26 83 4a  	vzext.vf2	v13, v8
     7b2: d7 25 c3 4a  	vzext.vf2	v11, v12
     7b6: 57 a8 d5 ca  	vwsubu.vv	v16, v13, v11
     7ba: 57 24 93 4a  	vzext.vf2	v8, v9
     7be: 57 2a a3 4a  	vzext.vf2	v20, v10
     7c2: 57 26 8a ca  	vwsubu.vv	v12, v8, v20
     7c6: 57 70 10 05  	vsetvli	zero, zero, e32, m2, ta, mu
     7ca: 57 34 c1 96  	vsll.vi	v8, v12, 2
     7ce: 57 0b 04 03  	vadd.vv	v22, v16, v8
     7d2: 57 b4 6e a3  	vsrl.vi	v8, v22, 29
     7d6: 57 04 64 03  	vadd.vv	v8, v22, v8
     7da: 57 bc 81 a6  	vsra.vi	v24, v8, 3
     7de: 93 08 80 fc  	li	a7, -56
     7e2: 57 c4 68 7f  	vmsgt.vx	v8, v22, a7
     7e6: 5d 48        	li	a6, 23
     7e8: 93 02 00 03  	li	t0, 48
     7ec: 57 c0 62 6b  	vmsltu.vx	v0, v22, t0
     7f0: 57 36 00 5e  	vmv.v.i	v12, 0
     7f4: d7 44 68 7f  	vmsgt.vx	v9, v22, a6
     7f8: 57 3d 00 5e  	vmv.v.i	v26, 0
     7fc: 57 3d 83 0d  	vrsub.vi	v26, v24, 6, v0.t
     800: 7d 47        	li	a4, 31
     802: 57 4b 67 03  	vadd.vx	v22, v22, a4
     806: 13 04 70 03  	li	s0, 55
     80a: 57 45 64 6b  	vmsltu.vx	v10, v22, s0
     80e: 57 3b 00 5e  	vmv.v.i	v22, 0
     812: 57 30 80 9e  	vmv1r.v	v0, v8
     816: 57 3b 8d 0d  	vrsub.vi	v22, v24, -6, v0.t
     81a: 57 30 a0 9e  	vmv1r.v	v0, v10
     81e: 57 0b 6c 5d  	vmerge.vvm	v22, v22, v24, v0
     822: 57 30 90 9e  	vmv1r.v	v0, v9
     826: 57 04 6d 5d  	vmerge.vvm	v8, v22, v26, v0
     82a: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     82e: 57 2b 8a d2  	vwaddu.wv	v22, v8, v20
     832: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     836: 57 09 24 0b  	vsub.vv	v18, v18, v8
     83a: 93 06 f0 0f  	li	a3, 255
     83e: 57 ca 66 17  	vmin.vx	v20, v22, a3
     842: 57 4a 40 1f  	vmax.vx	v20, v20, zero
     846: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     84a: 57 35 40 b3  	vnsrl.wi	v10, v20, 0
     84e: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     852: 57 35 a0 b2  	vnsrl.wi	v10, v10, 0
     856: 27 05 a6 0a  	vsse8.v	v10, (a2), a0
     85a: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     85e: 57 c9 26 17  	vmin.vx	v18, v18, a3
     862: 57 49 20 1f  	vmax.vx	v18, v18, zero
     866: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     86a: 57 35 20 b3  	vnsrl.wi	v10, v18, 0
     86e: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     872: 57 35 a0 b2  	vnsrl.wi	v10, v10, 0
     876: 27 85 a4 0a  	vsse8.v	v10, (s1), a0
     87a: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     87e: 57 39 80 0e  	vrsub.vi	v18, v8, 0
     882: 57 04 89 1e  	vmax.vv	v8, v8, v18
     886: 57 b4 80 a2  	vsrl.vi	v8, v8, 1
     88a: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     88e: 57 35 00 b3  	vnsrl.wi	v10, v16, 0
     892: 57 38 a7 a2  	vsrl.vi	v16, v10, 14
     896: 57 05 a8 02  	vadd.vv	v10, v10, v16
     89a: 57 35 a1 a6  	vsra.vi	v10, v10, 2
     89e: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     8a2: 57 a8 a3 4a  	vsext.vf2	v16, v10
     8a6: 57 39 80 0e  	vrsub.vi	v18, v8, 0
     8aa: 57 00 09 6f  	vmslt.vv	v0, v16, v18
     8ae: 57 04 04 17  	vmin.vv	v8, v16, v8
     8b2: 57 04 89 5c  	vmerge.vvm	v8, v8, v18, v0
     8b6: 57 07 e4 0a  	vsub.vv	v14, v14, v8
     8ba: 57 c7 e6 16  	vmin.vx	v14, v14, a3
     8be: 57 47 e0 1e  	vmax.vx	v14, v14, zero
     8c2: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     8c6: 57 35 e0 b2  	vnsrl.wi	v10, v14, 0
     8ca: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     8ce: 57 35 a0 b2  	vnsrl.wi	v10, v10, 0
     8d2: 27 85 a5 0a  	vsse8.v	v10, (a1), a0
     8d6: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     8da: 57 a4 85 d2  	vwaddu.wv	v8, v8, v11
     8de: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     8e2: 57 c4 86 16  	vmin.vx	v8, v8, a3
     8e6: 57 44 80 1e  	vmax.vx	v8, v8, zero
     8ea: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     8ee: 57 35 80 b2  	vnsrl.wi	v10, v8, 0
     8f2: 57 70 70 0c  	vsetvli	zero, zero, e8, mf2, ta, ma
     8f6: 57 34 a0 b2  	vnsrl.wi	v8, v10, 0
     8fa: 27 84 a7 0a  	vsse8.v	v8, (a5), a0
     8fe: 5c 00        	addi	a5, sp, 4
     900: 41 45        	li	a0, 16
     902: 07 d4 a7 0a  	vlse16.v	v8, (a5), a0
     906: 13 06 61 00  	addi	a2, sp, 6
     90a: 87 55 a6 0a  	vlse16.v	v11, (a2), a0
     90e: 07 59 a9 0a  	vlse16.v	v18, (s2), a0
     912: 93 05 a1 00  	addi	a1, sp, 10
     916: 87 d9 a5 0a  	vlse16.v	v19, (a1), a0
     91a: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     91e: 57 27 83 4a  	vzext.vf2	v14, v8
     922: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     926: 57 a8 89 ca  	vwsubu.vv	v16, v8, v19
     92a: 57 a4 25 cb  	vwsubu.vv	v8, v18, v11
     92e: 57 70 10 05  	vsetvli	zero, zero, e32, m2, ta, mu
     932: 57 34 81 96  	vsll.vi	v8, v8, 2
     936: 57 0a 04 03  	vadd.vv	v20, v16, v8
     93a: 57 b4 4e a3  	vsrl.vi	v8, v20, 29
     93e: 57 04 44 03  	vadd.vv	v8, v20, v8
     942: 57 bb 81 a6  	vsra.vi	v22, v8, 3
     946: 57 c4 48 7f  	vmsgt.vx	v8, v20, a7
     94a: 57 c0 42 6b  	vmsltu.vx	v0, v20, t0
     94e: d7 44 48 7f  	vmsgt.vx	v9, v20, a6
     952: 57 3c 00 5e  	vmv.v.i	v24, 0
     956: 57 3c 63 0d  	vrsub.vi	v24, v22, 6, v0.t
     95a: 57 4a 47 03  	vadd.vx	v20, v20, a4
     95e: 57 45 44 6b  	vmsltu.vx	v10, v20, s0
     962: 57 30 80 9e  	vmv1r.v	v0, v8
     966: 57 36 6d 0d  	vrsub.vi	v12, v22, -6, v0.t
     96a: 57 30 a0 9e  	vmv1r.v	v0, v10
     96e: 57 06 cb 5c  	vmerge.vvm	v12, v12, v22, v0
     972: 57 30 90 9e  	vmv1r.v	v0, v9
     976: 57 04 cc 5c  	vmerge.vvm	v8, v12, v24, v0
     97a: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     97e: 57 35 80 b2  	vnsrl.wi	v10, v8, 0
     982: d7 05 b5 02  	vadd.vv	v11, v11, v10
     986: 57 05 25 0b  	vsub.vv	v10, v18, v10
     98a: a7 55 a6 0a  	vsse16.v	v11, (a2), a0
     98e: 27 55 a9 0a  	vsse16.v	v10, (s2), a0
     992: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     996: 57 35 80 0e  	vrsub.vi	v10, v8, 0
     99a: 57 04 85 1e  	vmax.vv	v8, v8, v10
     99e: 57 b4 80 a2  	vsrl.vi	v8, v8, 1
     9a2: 57 35 0f a3  	vsrl.vi	v10, v16, 30
     9a6: 57 05 05 03  	vadd.vv	v10, v16, v10
     9aa: 57 35 a1 a6  	vsra.vi	v10, v10, 2
     9ae: 57 36 80 0e  	vrsub.vi	v12, v8, 0
     9b2: 57 00 a6 6e  	vmslt.vv	v0, v10, v12
     9b6: 57 04 a4 16  	vmin.vv	v8, v10, v8
     9ba: 57 04 86 5c  	vmerge.vvm	v8, v8, v12, v0
     9be: 57 05 e4 0a  	vsub.vv	v10, v14, v8
     9c2: 41 66        	lui	a2, 16
     9c4: 7d 36        	addiw	a2, a2, -1
     9c6: 57 45 a6 16  	vmin.vx	v10, v10, a2
     9ca: 57 45 a0 1e  	vmax.vx	v10, v10, zero
     9ce: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     9d2: 57 36 a0 b2  	vnsrl.wi	v12, v10, 0
     9d6: 27 d6 a7 0a  	vsse16.v	v12, (a5), a0
     9da: 57 a4 89 d2  	vwaddu.wv	v8, v8, v19
     9de: 57 70 10 0d  	vsetvli	zero, zero, e32, m2, ta, ma
     9e2: 57 44 86 16  	vmin.vx	v8, v8, a2
     9e6: 57 44 80 1e  	vmax.vx	v8, v8, zero
     9ea: 57 70 80 0c  	vsetvli	zero, zero, e16, m1, ta, ma
     9ee: 57 35 80 b2  	vnsrl.wi	v10, v8, 0
     9f2: 27 d5 a5 0a  	vsse16.v	v10, (a1), a0
     9f6: 17 05 00 00  	auipc	a0, 0
     9fa: 13 05 45 1f  	addi	a0, a0, 500
     9fe: ef f0 3f c7  	jal	0x670 <.plt+0x50>
     a02: 05 44        	li	s0, 1
     a04: 17 05 00 00  	auipc	a0, 0
     a08: 13 09 c5 1d  	addi	s2, a0, 476
     a0c: 93 09 10 04  	li	s3, 65
     a10: 29 a0        	j	0xa1a <main+0x2d2>
     a12: 05 04        	addi	s0, s0, 1
     a14: 85 04        	addi	s1, s1, 1
     a16: 63 0e 34 01  	beq	s0, s3, 0xa32 <main+0x2ea>
     a1a: 83 c5 04 00  	lbu	a1, 0(s1)
     a1e: 4a 85        	mv	a0, s2
     a20: ef f0 1f c6  	jal	0x680 <.plt+0x60>
     a24: 13 75 74 00  	andi	a0, s0, 7
     a28: 6d f5        	bnez	a0, 0xa12 <main+0x2ca>
     a2a: 29 45        	li	a0, 10
     a2c: ef f0 5f c2  	jal	0x650 <.plt+0x30>
     a30: cd b7        	j	0xa12 <main+0x2ca>
     a32: 17 05 00 00  	auipc	a0, 0
     a36: 13 05 15 1d  	addi	a0, a0, 465
     a3a: ef f0 7f c3  	jal	0x670 <.plt+0x50>
     a3e: 24 00        	addi	s1, sp, 8
     a40: 05 44        	li	s0, 1
     a42: 17 05 00 00  	auipc	a0, 0
     a46: 13 09 35 1a  	addi	s2, a0, 419
     a4a: 93 09 10 04  	li	s3, 65
     a4e: 29 a0        	j	0xa58 <main+0x310>
     a50: 05 04        	addi	s0, s0, 1
     a52: 89 04        	addi	s1, s1, 2
     a54: 63 0e 34 01  	beq	s0, s3, 0xa70 <main+0x328>
     a58: 83 d5 04 00  	lhu	a1, 0(s1)
     a5c: 4a 85        	mv	a0, s2
     a5e: ef f0 3f c2  	jal	0x680 <.plt+0x60>
     a62: 13 75 74 00  	andi	a0, s0, 7
     a66: 6d f5        	bnez	a0, 0xa50 <main+0x308>
     a68: 29 45        	li	a0, 10
     a6a: ef f0 7f be  	jal	0x650 <.plt+0x30>
     a6e: cd b7        	j	0xa50 <main+0x308>
     a70: 01 45        	li	a0, 0
     a72: ae 70        	ld	ra, 232(sp)
     a74: 0e 74        	ld	s0, 224(sp)
     a76: ee 64        	ld	s1, 216(sp)
     a78: 4e 69        	ld	s2, 208(sp)
     a7a: ae 69        	ld	s3, 200(sp)
     a7c: 6d 61        	addi	sp, sp, 240
     a7e: 82 80        	ret
