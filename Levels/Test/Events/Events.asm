; ---------------------------------------------------------------------------
; Test events
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

GenericLevel_ScreenInit:
		jsr	(Reset_TileOffsetPositionActual).w
		jmp	(Refresh_PlaneFull).w

; =============== S U B R O U T I N E =======================================

GenericLevel_ScreenEvent:
		tst.b (Screen_event_flag).w
		bne.s	GenericLevel_ScreenEvent_RefreshPlane
		move.w	(Screen_shaking_flag+2).w,d0
		add.w	d0,(Camera_Y_pos_copy).w
		jmp	(DrawTilesAsYouMove).w
; ---------------------------------------------------------------------------

GenericLevel_ScreenEvent_RefreshPlane:
		clr.b	(Screen_event_flag).w
		jmp	(Refresh_PlaneScreenDirect).w

; =============== S U B R O U T I N E =======================================

GenericLevel_BackgroundInit:
		bsr.s	GenericLevel_Deform
		jsr	(Reset_TileOffsetPositionEff).w
		jsr	(Refresh_PlaneFull).w
		bra.s	GenericLevel_BackgroundEvent.deform

; =============== S U B R O U T I N E =======================================

GenericLevel_BackgroundEvent:
		tst.b (Background_event_flag).w
		bne.s	GenericLevel_Transition
		bsr.s	GenericLevel_Deform

.deform:
		lea	GenericLevel_BGDeformArray(pc),a4
		lea	(H_scroll_table).w,a5
		jsr	(ApplyDeformation).w
		jmp	(ShakeScreen_Setup).w
; ---------------------------------------------------------------------------

GenericLevel_Transition:
		clr.b	(Background_event_flag).w
		rts
; ---------------------------------------------------------------------------

GenericLevel_BGDeformArray:
		dc.w $7FFF
; ---------------------------------------------------------------------------

GenericLevel_Deform:
	; Vertical scrolling!!
		move.w	(Camera_Y_pos_copy).w,d0
;		andi.w	#$7FF,d0	; used to be $7FF
;		lsr.w	#5,d0
;		neg.w	d0
;		addi.w	#$20,d0
;		bpl.s	.limitY
;		moveq	#0,d0
;	.limitY:
;		move.w	d0,d4
		move.w	d0,(Camera_Y_pos_BG_copy).w
	; It's good!!
		lea	(H_scroll_table).w,a1
		move.l	(Camera_X_pos_copy).w,d0
		move.l	d0,d2
		swap	d2
		asr.l	#1,d2
		move.w	d2,(a1)+
		rts
