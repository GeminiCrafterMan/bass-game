; ---------------------------------------------------------------------------
; TitleCard (Object)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_TitleCard:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	TitleCard_Index(pc,d0.w),d1
		jmp	TitleCard_Index(pc,d1.w)
; ---------------------------------------------------------------------------

TitleCard_Index: offsetTable
		offsetTableEntry.w Obj_TitleCardInit
		offsetTableEntry.w Obj_TitleCardCreate
		offsetTableEntry.w Obj_TitleCardWait
		offsetTableEntry.w Obj_TitleCardWait2
; ---------------------------------------------------------------------------

Obj_TitleCardInit:
		move.w	#$5A,$2E(a0)				; Set wait value
		clr.w	$32(a0)
		st	$48(a0)
		addq.b	#2,routine(a0)
		rts
; ---------------------------------------------------------------------------

Obj_TitleCardCreate:
		addq.b	#2,routine(a0)

Obj_TitleCard_Return:
		rts
; ---------------------------------------------------------------------------

Obj_TitleCardWait:
		tst.w	$34(a0)
		beq.s	+
		clr.w	$34(a0)
		rts
; ---------------------------------------------------------------------------
+		tst.w	$3E(a0)
		beq.s	+
		clr.l	(Timer).w					; If using in-level title card
		clr.w	(Ring_count).w			; Reset HUD rings and timer
		st	(Update_HUD_timer).w
		st	(Update_HUD_ring_count).w	; Start updating timer and rings again
		jsr	(Restore_LevelMusic).w		; Play music
+		clr.w	$48(a0)
		addq.b	#2,routine(a0)
		rts
; ---------------------------------------------------------------------------

Obj_TitleCardWait2:
		tst.w	$2E(a0)
		beq.s	+
		subq.w	#1,$2E(a0)
		rts
; ---------------------------------------------------------------------------
+		tst.w	$30(a0)
		beq.s	+
		addq.w	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------
+		tst.b	$44(a0)
		bne.s	++
		tst.w	$3E(a0)
		beq.s	+
		st	(TitleCard_end_flag).w		; If in-level, set end of title card flag.
+		lea	(PLC_Main2).l,a5
		jsr	(LoadPLC_Raw_KosM).w
		jsr	(LoadPLC2_KosM).w
		move.b	#1,(HUD_RAM.status).w
		clr.b	(Ctrl_1_locked).w
+		jmp	(Delete_Current_Sprite).w