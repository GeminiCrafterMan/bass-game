; ---------------------------------------------------------------------------
; Test events
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

VideoMan_ScreenInit:
		jsr	(Reset_TileOffsetPositionActual).w
		jmp	(Refresh_PlaneFull).w

; =============== S U B R O U T I N E =======================================

VideoMan_ScreenEvent:
		tst.b (Screen_event_flag).w
		bne.s	VideoMan_ScreenEvent_RefreshPlane
		move.w	(Screen_shaking_flag+2).w,d0
		add.w	d0,(Camera_Y_pos_copy).w
		jmp	(DrawTilesAsYouMove).w
; ---------------------------------------------------------------------------

VideoMan_ScreenEvent_RefreshPlane:
		clr.b	(Screen_event_flag).w
		jmp	(Refresh_PlaneScreenDirect).w

; =============== S U B R O U T I N E =======================================

VideoMan_BackgroundInit:
		bsr.s	VideoMan_Deform
		jsr	(Reset_TileOffsetPositionEff).w
		jsr	(Refresh_PlaneFull).w
		bra.s	VideoMan_BackgroundEvent.deform

; =============== S U B R O U T I N E =======================================

VideoMan_BackgroundEvent:
		tst.b (Background_event_flag).w
		bne.s	VideoMan_Transition
		bsr.s	VideoMan_Deform

.deform:
		lea	VideoMan_BGDeformArray(pc),a4
		lea	(H_scroll_table).w,a5
		jsr	(ApplyDeformation).w
		jmp	(ShakeScreen_Setup).w
; ---------------------------------------------------------------------------

VideoMan_Transition:
		clr.b	(Background_event_flag).w
		rts
; ---------------------------------------------------------------------------

VideoMan_BGDeformArray:
	rept 15
		dc.w 16
	endr
		dc.w $7FFF
; ---------------------------------------------------------------------------

VideoMan_Deform:
		lea	(H_scroll_table).w,a1
		move.l	(Camera_X_pos_copy).w,d0
		neg.l	d0
		move.w	(Level_frame_counter).w,d1
		swap	d1
		clr.w	d1

	rept 16/2

; Star 1
		move.l	d0,d2
		move.l	d1,d3
		asr.l	#7,d2
		asr.l	#1,d3
		add.l	d3,d2
		swap	d2
		move.w	d2,(a1)+

; Star 2
		swap	d2
		asr.l	#3,d2
		asr.l	#1,d3
		add.l	d3,d2
		swap	d2
		move.w	d2,(a1)+

	endr

		rts
