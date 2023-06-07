; ---------------------------------------------------------------------------
; Path Swapper (Object)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_GravSwap:
		move.l	#Map_PathSwap,mappings(a0)
		move.w	#make_art_tile(ArtTile_BusterShots,1,0),art_tile(a0)
		ori.b	#4,render_flags(a0)
		move.w	#bytes_to_word(128/2,128/2),height_pixels(a0)	; set height and width
		move.w	#$280,priority(a0)
		move.b	subtype(a0),d0
		btst	#2,d0
		beq.s	locg_1CD3C
		andi.w	#7,d0
		move.b	d0,mapping_frame(a0)
		andi.w	#3,d0
		add.w	d0,d0
		move.w	wordg_1CD34(pc,d0.w),objoff_32(a0)
		move.w	y_pos(a0),d1
		lea	(Player_1).w,a1
		cmp.w	y_pos(a1),d1
		bcc.s	+
		move.b	#1,objoff_34(a0)
+		move.l	#locg_1CEF2,address(a0)
		bra.w	locg_1CEF2
; ---------------------------------------------------------------------------

wordg_1CD34:
		dc.w $20
		dc.w $40
		dc.w $80
		dc.w $100
; ---------------------------------------------------------------------------

locg_1CD3C:
		andi.w	#3,d0
		move.b	d0,mapping_frame(a0)
		add.w	d0,d0
		move.w	wordg_1CD34(pc,d0.w),objoff_32(a0)
		move.w	x_pos(a0),d1
		lea	(Player_1).w,a1
		cmp.w	x_pos(a1),d1
		bcc.s	+
		move.b	#1,objoff_34(a0)
+		move.l	#+,address(a0)
+		tst.w	(Debug_placement_mode).w
		bne.s	+
		move.w	x_pos(a0),d1
		lea	objoff_34(a0),a2
		lea	(Player_1).w,a1
		bsr.s	subg_1CDDA
		jmp	(Delete_Sprite_If_Not_In_Range).w
; ---------------------------------------------------------------------------
+		jmp	(Sprite_OnScreen_Test).w

; =============== S U B R O U T I N E =======================================

subg_1CDDA:
		tst.b	(a2)+
		bne.s	locg_1CE6C
		cmp.w	x_pos(a1),d1
		bhi.s	locretg_1CE6A
		move.b	#1,-1(a2)
		move.w	y_pos(a0),d2
		move.w	d2,d3
		move.w	objoff_32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	y_pos(a1),d4
		cmp.w	d2,d4
		blt.s		locretg_1CE6A
		cmp.w	d3,d4
		bge.s	locretg_1CE6A
		move.b	subtype(a0),d0
		bpl.s	locg_1CE1C
		btst	#Status_InAir,status(a1)
		bne.s	locretg_1CE6A

locg_1CE1C:
		move.w	x_pos(a1),d2
		sub.w	d1,d2
		bcc.s	locg_1CE26
		neg.w	d2

locg_1CE26:
		cmpi.w	#$40,d2
		bcc.s	locretg_1CE6A
		btst	#0,render_flags(a0)
		bne.s	locg_1CE54
		bclr	#1,(Reverse_gravity_flag).w		; toggle reverse gravity off
		btst	#3,d0
		beq.s	locg_1CE54
		bset	#1,(Reverse_gravity_flag).w		; toggle reverse gravity on

locg_1CE54:
		andi.w	#$7FFF,art_tile(a1)
		btst	#5,d0
		beq.s	locretg_1CE6A
		ori.w	#$8000,art_tile(a1)

locretg_1CE6A:
		rts
; ---------------------------------------------------------------------------

locg_1CE6C:
		cmp.w	x_pos(a1),d1
		bls.s		locretg_1CEF0
		clr.b	-1(a2)
		move.w	y_pos(a0),d2
		move.w	d2,d3
		move.w	objoff_32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	y_pos(a1),d4
		cmp.w	d2,d4
		blt.s		locretg_1CEF0
		cmp.w	d3,d4
		bge.s	locretg_1CEF0
		move.b	subtype(a0),d0
		bpl.s	locg_1CEA8
		btst	#Status_InAir,status(a1)
		bne.s	locretg_1CEF0

locg_1CEA8:
		move.w	x_pos(a1),d2
		sub.w	d1,d2
		bcc.s	locg_1CEB2
		neg.w	d2

locg_1CEB2:
		cmpi.w	#$40,d2
		bcc.s	locretg_1CEF0
		btst	#0,render_flags(a0)
		bne.s	locg_1CEDE
		bclr	#1,(Reverse_gravity_flag).w		; toggle reverse gravity off
		btst	#4,d0
		beq.s	locg_1CEDE
		bset	#1,(Reverse_gravity_flag).w		; toggle reverse gravity on

locg_1CEDE:
		andi.w	#$7FFF,art_tile(a1)
		btst	#6,d0
		beq.s	locretg_1CEF0
		ori.w	#$8000,art_tile(a1)

locretg_1CEF0:
		rts
; ---------------------------------------------------------------------------

locg_1CEF2:
		tst.w	(Debug_placement_mode).w
		bne.s	+
		move.w	y_pos(a0),d1
		lea	objoff_34(a0),a2
		lea	(Player_1).w,a1
		bsr.s	subg_1CF42
		jmp	(Delete_Sprite_If_Not_In_Range).w
; ---------------------------------------------------------------------------
+		jmp	(Sprite_OnScreen_Test).w

; =============== S U B R O U T I N E =======================================

subg_1CF42:
		tst.b	(a2)+
		bne.s	locg_1CFD4
		cmp.w	y_pos(a1),d1
		bhi.s	locretg_1CFD2
		move.b	#1,-1(a2)
		move.w	x_pos(a0),d2
		move.w	d2,d3
		move.w	objoff_32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	x_pos(a1),d4
		cmp.w	d2,d4
		blt.s		locretg_1CFD2
		cmp.w	d3,d4
		bge.s	locretg_1CFD2
		move.b	subtype(a0),d0
		bpl.s	locg_1CF84
		btst	#Status_InAir,status(a1)
		bne.s	locretg_1CFD2

locg_1CF84:
		move.w	y_pos(a1),d2
		sub.w	d1,d2
		bcc.s	locg_1CF8E
		neg.w	d2

locg_1CF8E:
		cmpi.w	#$40,d2
		bcc.s	locretg_1CFD2
		btst	#0,render_flags(a0)
		bne.s	locg_1CFBC
		bclr	#1,(Reverse_gravity_flag).w		; toggle reverse gravity off
		btst	#3,d0
		beq.s	locg_1CFBC
		bset	#1,(Reverse_gravity_flag).w		; toggle reverse gravity on

locg_1CFBC:
		andi.w	#$7FFF,art_tile(a1)
		btst	#5,d0
		beq.s	locretg_1CFD2
		ori.w	#$8000,art_tile(a1)

locretg_1CFD2:
		rts
; ---------------------------------------------------------------------------

locg_1CFD4:
		cmp.w	y_pos(a1),d1
		bls.s		locretg_1D058
		clr.b	-1(a2)
		move.w	x_pos(a0),d2
		move.w	d2,d3
		move.w	objoff_32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	x_pos(a1),d4
		cmp.w	d2,d4
		blt.s		locretg_1D058
		cmp.w	d3,d4
		bge.s	locretg_1D058
		move.b	subtype(a0),d0
		bpl.s	locg_1D010
		btst	#Status_InAir,status(a1)
		bne.s	locretg_1D058

locg_1D010:
		move.w	y_pos(a1),d2
		sub.w	d1,d2
		bcc.s	locg_1D01A
		neg.w	d2

locg_1D01A:
		cmpi.w	#$40,d2
		bcc.s	locretg_1D058
		btst	#0,render_flags(a0)
		bne.s	locg_1D046
		bclr	#1,(Reverse_gravity_flag).w		; toggle reverse gravity off
		btst	#4,d0
		beq.s	locg_1D046
		bset	#1,(Reverse_gravity_flag).w		; toggle reverse gravity on

locg_1D046:
		andi.w	#$7FFF,art_tile(a1)
		btst	#6,d0
		beq.s	locretg_1D058
		ori.w	#$8000,art_tile(a1)

locretg_1D058:
		rts