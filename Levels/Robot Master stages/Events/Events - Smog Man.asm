; ---------------------------------------------------------------------------
; Test events
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

SmogMan_ScreenInit:
		jsr	(Reset_TileOffsetPositionActual).w
		jmp	(Refresh_PlaneFull).w

; =============== S U B R O U T I N E =======================================

SmogMan_ScreenEvent:
		tst.b (Screen_event_flag).w
		bne.s	SmogMan_ScreenEvent_RefreshPlane
		move.w	(Screen_shaking_flag+2).w,d0
		add.w	d0,(Camera_Y_pos_copy).w
		jmp	(DrawTilesAsYouMove).w
; ---------------------------------------------------------------------------

SmogMan_ScreenEvent_RefreshPlane:
		clr.b	(Screen_event_flag).w
		jmp	(Refresh_PlaneScreenDirect).w

; =============== S U B R O U T I N E =======================================

SmogMan_BackgroundInit:
		bsr.s	SmogMan_Deform
		jsr	(Reset_TileOffsetPositionEff).w
		jsr	(Refresh_PlaneFull).w
		bra.s	SmogMan_BackgroundEvent.deform

; =============== S U B R O U T I N E =======================================

SmogMan_BackgroundEvent:
		tst.b (Background_event_flag).w
		bne.s	SmogMan_Transition
		bsr.s	SmogMan_Deform

.deform:
		jsr	(DrawBGAsYouMove).l
		jsr	(PlainDeformation).w
		jmp	(ShakeScreen_Setup).w
; ---------------------------------------------------------------------------

SmogMan_Transition:
		clr.b	(Background_event_flag).w
		rts
; ---------------------------------------------------------------------------

SmogMan_Deform:
	; goal: get 5/8
		move.l	(Camera_Y_pos_copy).w,d0	; 1/1
		lsr.l	#1,d0	; 4/8 (or 1/2)
		move.l	d0,d1
		lsr.l	#2,d1	; 1/8
		add.l	d1,d0	; 5/8
		move.l	d0,(Camera_Y_pos_BG_copy).w

		move.l	(Camera_X_pos_copy).w,d0
		lsr.l	#1,d0	; 4/8 (or 1/2)
		move.l	d0,d1
		lsr.l	#2,d1	; 1/8
		add.l	d1,d0	; 5/8
		andi.l	#$3FFFFFF,d0	; Loop every $400 pixels (8 chunks)
		move.l	d0,(Camera_X_pos_BG_copy).w
		rts