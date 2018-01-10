.org 0x0
	.global _start


_start:
	lui x3, 0x80000		# (1) x3 = 0x80000000
	ori x1, x0, 0x1		# (1) x1 = 0x00000001
	j s1				# jump to s1

	1:
	ori x1, x0, 0x111
	ori x1, x0, 0x110

	s1:
	ori x1, x0, 0x002	# (2) x1 = 0x00000002
	jal x5, s2			# jump to s2 and set x5 = 0x1c

	ori x1, x0, 0x110
	ori x1, x0, 0x111
	bne x1, x0, s3
	ori x1, x0, 0x110
	ori x1, x0, 0x111

	s2:
	ori x1, x0, 0x003	# (3) x1 = 0x00000003
	or x2, x5, x0		# (3) x2 = 0x0000001c
	beq x3, x3, s3		# x3 == x3, jump to s3

	ori x1, x0, 0x111
	ori x1, x0, 0x110

	s4:
	ori x1, x0, 0x005	# (5) x1 = 0x00000005
	bge x3, x1, s3		# (5) s3 < 0, not jump
	or x1, x0, 0x006	# (6) x1 = 0x00000006
	bgeu x3, x1, s5		# (6) x3 > 0, jump to s5

	bad:
	ori x1, x0, 0x111

	s7:
	ori x1, x0, 0x010	# (10) x1 = 0x00000010
	bne x1, x3, s8		# (10) x1 != x3, jump to s8

	s6:
	ori x1, x0, 0x008	# (8) x1 = 0x00000008
	blt x1, x0, bad		# (8) x1 > 0, not jump
	ori x1, x0, 0x009	# (9) x1 = 0x00000009
	bltu x1, x3, s7		# (9) x1 < x3 jump to s7

	s5:
	ori x1, x0, 0x007	# (7) x1 = 0x00000007
	blt x3, x1, s6		# (7) x3 < 0, jump to s6


	s3:
	ori x1, x0, 0x004	# (4) x1 = 0x00000004
	bge	x1, x0, s4		# if x1 >= x0 then s4




	s8:
	ori x1, x0, 0x011	# (11) x1 = 0x00000011
	bne x1, x1, bad		# (11) x1 = x1, not jump
	ori x1, x0, 0x012	# (12) x1 = 0x00000012

	ori x3, x0, 0x014	# (12) x3 = 0x00000014

	_loop1:					# for x1 = 0x12 to 0x14
	addi x1, x1, 0x1	# x1++
	blt x1, x3, _loop1
# x1 = 0x00000014
	srli x3, x1, 0x1	# x3 = x1/2 =0x0000000a

	_loop2:					# for x1 = 0x14 to -0x0a
	sub x1, x1, x3		# x1 -= x3
	bge x1, x0, _loop2
# x1 = 0xfffffff6
	nop
	nop

# .org 0x0
# 	.global _start
# _start:
# 	ori x1, x0, 0x210 # x1 = 0210
# 	ori x2, x1, 0x021 # x2 = 0x231
# 	slli x3, x2, 1  # x3 = 0b010001100010 = 0x462
# 	andi x4, x3, 0x568 # x4 = 0b010001100000 = 0x460
# 	ori x5, x0, 0x68a # x5 = 0b011010001010 = 0x68a
# 	ori x7, x0, 22 # x7 = 22 = 0x16
# 	sll x5, x5, x7 # x5 = 0xa2800000
# 	ori x7, x0, 20 # x7 = 20 = 0x14
# 	sra x6, x5, x7 # x6 = 0xfffffa28
# 	ori x5, x0, 0x723 # x5 = 0b011100100011 = 0x723
# 	xor x5, x5, x4 # x5 = 0b001101000011 = 0x343
# 	add x6, x5, x4 # x6 = 0x7a3
# 	slti x7, x6, 0x7a4 # x7 = 1
# 	slti x8, x6, 0x7a3 # x8 = 0
# 	slt x8, x6, x5 # x8 = 0
# 	slt x8, x5, x6 # x8 = 1
# 	sub x9, x6, x5 # x9 = 0x460
# 	lui x10, 0x45b27 # x10 = 0x45b27000
# 	auipc x11, 0x21c43 # x11 = 0x21c43048
# 	es_j1:
# 	bge x10, x11, es_j2 # jump to es_j2
# 	ori x12, x0, 0x456 # x12 = 0x456
# 	ori x13, x0, 0x2bc # x13 = 0x2bc
# 	nop
# 	nop
# 	nop
# 	es_j2:
# 	ori x12, x0, 0x5ef # x12 = 0x5ef
# 	ori x13, x0, 0x123 # x13 = 0x123
# # j es_j1 # jump to es_j1, which makes an infinite loop
# 	sb x11, 2(x13) # store 0x48 to mem:0x125
# 	lb x14, 2(x13) # x14 = 0x48
# 	sb x12, 1(x13) # store 0xef to mem:0x124
# 	lh x14, 1(x13) # x14 = 0x48ef
# 	add x15, x14, x0 # x15 = 0x48ef				
# 	sh x5, 3(x13) # store 0x0343 to mem:0x126
# 	lw x15, 1(x13) # x15 = 0x034348ef
# 	add x17, x7, x15 # x17 = 0x03434A8f0	
# 	sw x11, 5(x13) # store 0x21c43048 to mem:0x128
# 	lw x16, 5(x13) # x16 = 0x21c43048
