; ---------------------------------------------------------------------------
; Background layer deformation subroutines
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

DeformBgLayer:
		tst.b	(Deform_lock).w
		bne.s	locret_1C0E6
		clr.l	(H_scroll_amount).w	; clear horizontal and vertical scroll amount
		tst.b	(Scroll_lock).w
		bne.s	.events
		lea	(Player_1).w,a0
		lea	(Camera_X_pos).w,a1
		lea	(Camera_min_X_pos).w,a2
		lea	(H_scroll_amount).w,a4
		lea	(H_scroll_frame_offset).w,a5
		lea	(Pos_table).w,a6
		bsr.s	MoveCameraX
		lea	(Camera_Y_pos).w,a1
		lea	(Camera_min_X_pos).w,a2
		lea	(V_scroll_amount).w,a4
		move.w	(Distance_from_screen_top).w,d3
		bsr.w	MoveCameraY

.events
		jmp	Do_ResizeEvents(pc)
; ---------------------------------------------------------------------------
; Subroutine to scroll the level horizontally as Sonic moves
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

MoveCameraX:
		move.w	(a1),d4
		move.w	(a5),d1
		beq.s	loc_1C0D2
		subi.w	#$100,d1
		move.w	d1,(a5)
		moveq	#0,d1
		move.b	(a5),d1
		lsl.b	#2,d1
		addq.b	#4,d1
		move.w	Pos_table_index-H_scroll_frame_offset(a5),d0
		sub.b	d1,d0
		move.w	(a6,d0.w),d0
		andi.w	#$7FFF,d0
		bra.s	loc_1C0D6
; ---------------------------------------------------------------------------

loc_1C0D2:
		move.w	x_pos(a0),d0

loc_1C0D6:
		sub.w	(a1),d0
		subi.w	#144,d0
		blt.s	loc_1C0E8
		subi.w	#16,d0
		bge.s	loc_1C0FC
		clr.w	(a4)

locret_1C0E6:
		rts
; ---------------------------------------------------------------------------

loc_1C0E8:
		cmpi.w	#-24,d0
		bgt.s	.skip
		move.w	#-24,d0

.skip
		add.w	(a1),d0
		cmp.w	(a2),d0
		bgt.s	loc_1C112
		move.w	(a2),d0
		bra.s	loc_1C112
; ---------------------------------------------------------------------------

loc_1C0FC:
		cmpi.w	#24,d0
		blo.s		.skip2
		move.w	#24,d0

.skip2
		add.w	(a1),d0
		cmp.w	Camera_max_X_pos-Camera_min_X_pos(a2),d0
		blt.s		loc_1C112
		move.w	Camera_max_X_pos-Camera_min_X_pos(a2),d0

loc_1C112:
		move.w	d0,d1
		sub.w	(a1),d1
		asl.w	#8,d1
		move.w	d0,(a1)
		move.w	d1,(a4)
		rts

; ---------------------------------------------------------------------------
; Subroutine to scroll the level vertically as Sonic moves
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

MoveCameraY:
		moveq	#0,d1
		move.w	y_pos(a0),d0
		sub.w	(a1),d0
		cmpi.w	#-$100,(Camera_min_Y_pos).w
		bne.s	.notwrap
		and.w	(Screen_Y_wrap_value).w,d0

.notwrap
		move.w	d3,d1
		btst	#Status_InAir,status(a0)
		beq.s	loc_1C164
		addi.w	#32,d0
		sub.w	d1,d0
		bcs.s	loc_1C1B0
		subi.w	#64,d0
		bcc.s	loc_1C1B0
		tst.b	(Camera_max_Y_pos_changing).w
		bne.s	loc_1C1C2
		bra.s	loc_1C16E
; ---------------------------------------------------------------------------

loc_1C164:
		sub.w	d1,d0
		bne.s	loc_1C172
		tst.b	(Camera_max_Y_pos_changing).w
		bne.s	loc_1C1C2

loc_1C16E:
		clr.w	(a4)
		rts
; ---------------------------------------------------------------------------

loc_1C172:
		cmpi.w	#$60,d3
		bne.s	loc_1C19E
		tst.b	(Fast_V_scroll_flag).w
		bne.s	loc_1C1B0
		move.w	ground_vel(a0),d1
		bpl.s	.ground
		neg.w	d1

.ground
		cmpi.w	#$800,d1
		bhs.s	loc_1C1B0
		move.w	#$600,d1
		cmpi.w	#6,d0
		bgt.s	loc_1C1FA
		cmpi.w	#-6,d0
		blt.s		loc_1C1D8
		bra.s	loc_1C1C8
; ---------------------------------------------------------------------------

loc_1C19E:
		move.w	#$200,d1
		cmpi.w	#2,d0
		bgt.s	loc_1C1FA
		cmpi.w	#-2,d0
		blt.s		loc_1C1D8
		bra.s	loc_1C1C8
; ---------------------------------------------------------------------------

loc_1C1B0:
		move.w	#$1800,d1
		cmpi.w	#24,d0
		bgt.s	loc_1C1FA
		cmpi.w	#-24,d0
		blt.s		loc_1C1D8
		bra.s	loc_1C1C8
; ---------------------------------------------------------------------------

loc_1C1C2:
		moveq	#0,d0
		move.b	d0,(Camera_max_Y_pos_changing).w

loc_1C1C8:
		moveq	#0,d1
		move.w	d0,d1
		add.w	(a1),d1
		tst.w	d0
		bpl.s	loc_1C202
		bra.s	loc_1C1E2
; ---------------------------------------------------------------------------

loc_1C1D8:
		neg.w	d1
		ext.l	d1
		asl.l	#8,d1
		add.l	(a1),d1
		swap	d1

loc_1C1E2:
		cmp.w	Camera_min_Y_pos-Camera_min_X_pos(a2),d1
		bgt.s	loc_1C21A
		cmpi.w	#-$100,d1
		bgt.s	loc_1C1F4
		and.w	(Screen_Y_wrap_value).w,d1
		bra.s	loc_1C21A
; ---------------------------------------------------------------------------

loc_1C1F4:
		move.w	Camera_min_Y_pos-Camera_min_X_pos(a2),d1
		bra.s	loc_1C21A
; ---------------------------------------------------------------------------

loc_1C1FA:
		ext.l	d1
		asl.l	#8,d1
		add.l	(a1),d1
		swap	d1

loc_1C202:
		cmp.w	Camera_max_Y_pos-Camera_min_X_pos(a2),d1
		blt.s		loc_1C21A
		move.w	(Screen_Y_wrap_value).w,d3
		addq.w	#1,d3
		sub.w	d3,d1
		bcs.s	loc_1C216
		sub.w	d3,(a1)
		bra.s	loc_1C21A
; ---------------------------------------------------------------------------

loc_1C216:
		move.w	Camera_max_Y_pos-Camera_min_X_pos(a2),d1

loc_1C21A:
		move.w	(a1),d4
		swap	d1
		move.l	d1,d3
		sub.l	(a1),d3
		ror.l	#8,d3
		move.w	d3,(a4)
		move.l	d1,(a1)
		rts
