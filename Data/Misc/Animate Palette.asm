; ---------------------------------------------------------------------------
; Palette cycling routine loading subroutine
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Animate_Palette:
		bsr.w	AnPal_CopyChargeShot
		tst.w	(Palette_fade_timer).w
		bmi.w	AnimateTiles_NULL
		beq.s	AnPal_Load
		subq.w	#1,(Palette_fade_timer).w
		jmp	(Pal_FromBlack).w
; ---------------------------------------------------------------------------

AnPal_Load:
		movea.l	(Level_data_addr_RAM.AnPal).w,a0
		jsr	(a0)
		jmp		updateWaterShift
; ---------------------------------------------------------------------------

AnPal_CopyChargeShot:
		cmpi.b	#37,(v_charge).w
		blt.w	.ret
		cmpi.b	#65,(v_charge).w
		bge.s	.fast
	.slow:	; Just started charging
	; Blue 4 frames, normal 4 frames
		subq.b	#1,(v_chargecyctimer).w ; decrement timer
		bpl.w	.ret	; if time remains, branch

		move.b	#3,(v_chargecyctimer).w ; reset timer to 3 frames, ends up being 4
		move.b	(v_chargecycnum).w,d0 ; get cycle number
		addq.b	#1,(v_chargecycnum).w ; increment cycle number
		andi.b	#1,d0		; if cycle > 1, reset to 0
		bra.s	.execCycle
	.fast:	; Mid-charge, about to transition to full
	; Blue 2 frames, normal 2 frames
		cmpi.b	#$5C,(v_charge).w
		bge.s	.full
		subq.b	#1,(v_chargecyctimer).w ; decrement timer
		bpl.s	.ret	; if time remains, branch

		move.b	#1,(v_chargecyctimer).w ; reset timer to 1 frame, ends up being 2
		move.b	(v_chargecycnum).w,d0 ; get cycle number
		addq.b	#1,(v_chargecycnum).w ; increment cycle number
		andi.b	#1,d0		; if cycle > 1, reset to 0
		bra.s	.execCycle
	.full:	; Fully-charged
		; Green 2 frames, normal 2 frames, blue 2 frames, normal 2 frames
		subq.b	#1,(v_chargecyctimer).w ; decrement timer
		bpl.s	.ret	; if time remains, branch

		move.b	#1,(v_chargecyctimer).w ; reset timer to 1 frame, ends up being 2
		move.b	(v_chargecycnum).w,d0 ; get cycle number
		addq.b	#1,(v_chargecycnum).w ; increment cycle number
		andi.b	#3,d0		; if cycle > 3, reset to 0
;		bra.w	.execCycle
	.execCycle:
		lsl.b	#5,d0
	; these moves are all 1 longword each, so 4 bytes at a time.
	; Jeez, that means *two* colors at a time.
		lea	(Pal_CopyRobotChargeShot).l,a0
		lea	(v_pal_dry).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)+
		move.l	8(a0,d0.w),(a1)+
		move.l	12(a0,d0.w),(a1)+
		move.l	16(a0,d0.w),(a1)+
		move.l	20(a0,d0.w),(a1)+
		move.l	24(a0,d0.w),(a1)+
		move.l	28(a0,d0.w),(a1)+
	.ret:
		rts