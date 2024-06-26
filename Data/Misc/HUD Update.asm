; ---------------------------------------------------------------------------
; Add points subroutine
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

AddPoints:
HUD_AddToScore:
		move.b	#1,(Update_HUD_score).w						; set score counter to update
		lea	(Score).w,a3
		add.l	d0,(a3)										; add d0*10 to the score
		move.l	#999999,d1									; 9999990 maximum points
		cmp.l	(a3),d1										; is score below 999999?
		bhi.s	.return										; if yes, branch
		move.l	d1,(a3)										; reset score to 999999

.return
		rts

; ---------------------------------------------------------------------------
; Subroutine to update the HUD
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

UpdateHUD:
		jsr     HUD_UpdateHealthBar

		lea	(VDP_data_port).l,a6
		tst.w	(Debug_placement_mode).w					; is debug mode on?
		bne.w	HudDebug									; if yes, branch
		tst.b	(Update_HUD_score).w							; does the score need updating?
		beq.s	.chkrings										; if not, branch
		clr.b	(Update_HUD_score).w
		locVRAM	tiles_to_bytes(ArtTile_HUD+$1A),d0		; set VRAM address
		move.l	(Score).w,d1									; load score
		bsr.w	DrawSixDigitNumber

.chkrings
		tst.b	(Update_HUD_ring_count).w						; does the ring counter	need updating?
		beq.s	.chktime										; if not, branch
;		bpl.s	.notzero
;		bsr.w	HUD_DrawZeroRings							; reset rings to 0 if Sonic is hit

.notzero
		clr.b	(Update_HUD_ring_count).w
		locVRAM	tiles_to_bytes(ArtTile_HUD+$38),d0		; set VRAM address
		moveq	#0,d1
		move.b	(v_health).w,d1								; load number of rings
		bsr.w	DrawTwoDigitNumber

.chktime
		tst.b	(Update_HUD_timer).w							; does the time need updating?
		bpl.s	loc_DD64									; if not, branch
		move.b	#1,(Update_HUD_timer).w
		bra.s	loc_DD9E
; ---------------------------------------------------------------------------

loc_DD64:
		beq.s	HUD_AddToScore.return
		tst.b	(Game_paused).w									; is the game paused?
		bne.s	HUD_AddToScore.return						; if yes, branch
		lea	(Timer).w,a1
		cmpi.l	#(9*$10000)+(59*$100)+59,(a1)+				; is the time 9:59:59?
		beq.s	UpdateHUD_TimeOver						; if yes, branch

		addq.b	#1,-(a1)										; increment 1/60s counter
		cmpi.b	#60,(a1)										; check if passed 60
		blo.s		loc_DD9E
		clr.b	(a1)
		addq.b	#1,-(a1)										; increment second counter
		cmpi.b	#60,(a1)										; check if passed 60
		blo.s		loc_DD9E
		clr.b	(a1)
		addq.b	#1,-(a1)										; increment minute counter
		cmpi.b	#9,(a1)										; check if passed 9
		blo.s		loc_DD9E
		move.b	#9,(a1)										; keep as 9

loc_DD9E:
		locVRAM	tiles_to_bytes(ArtTile_HUD+$28),d0
		moveq	#0,d1
		moveq	#0,d5
		move.b	(v_weapon).w,d1	; move weapon into d1
		beq.s	.noWep
		lsl.b	d1				; weapon id * 2
		lea		(v_health).w,a4 	; load energy address into a4
		add.l	d1,a4			; (weapon_id*2)+addr(a4)
		move.b	(a4)+,d1			; move contents of a4 to d1
		move.b	(a4)+,d5		; move contents of a4+ to d2
	.noWep:
		bsr.w	DrawThreeDigitNumber
		locVRAM	tiles_to_bytes(ArtTile_HUD+$2E),d0
		bsr.w	DrawSlash
		locVRAM	tiles_to_bytes(ArtTile_HUD+$30),d0
		moveq	#0,d1
		move.b	d5,d1
;		mulu.w	#100,d1
;		divu.w	#60,d1
;		swap	d1
;		clr.w	d1
;		swap	d1
;		cmpi.l	#(9*$10000)+(59*$100)+59,(Timer).w
;		bne.s	+
;		moveq	#99,d1
+		bra.w	DrawThreeDigitNumber
; ---------------------------------------------------------------------------

UpdateHUD_TimeOver:
		clr.b	(Update_HUD_timer).w
		lea	(Player_1).w,a0
		cmpi.b	#id_BassDeath,routine(a0)
		bhs.s	.finish
		movea.w	a0,a2
		bsr.w	Kill_Character

.finish
		st	(Time_over_flag).w
		rts
; ---------------------------------------------------------------------------

HudDebug:
		bsr.w	HUD_Debug
		tst.b	(Update_HUD_ring_count).w						; does the ring counter need updating?
		beq.s	.objcounter									; if not, branch
;		bpl.s	.notzero
;		bsr.w	HUD_DrawZeroRings							; reset rings to 0 if Sonic is hit

.notzero:
		clr.b	(Update_HUD_ring_count).w
		locVRAM	tiles_to_bytes(ArtTile_HUD+$38),d0		; set VRAM address
		moveq	#0,d1
		move.b	(v_health).w,d1								; load number of rings
		bsr.w	DrawTwoDigitNumber

.objcounter
		locVRAM	tiles_to_bytes(ArtTile_HUD+$28),d0		; set VRAM address
		moveq	#0,d1
		move.w	(Lag_frame_count).w,d1
		bsr.w	DrawSingleDigitNumber
		locVRAM	tiles_to_bytes(ArtTile_HUD+$2C),d0		; set VRAM address
		moveq	#0,d1
		move.b	(Sprites_drawn).w,d1							; load "number of objects" counter
		bsr.w	DrawTwoDigitNumber

.chkbonus
		tst.b	(Game_paused).w
		bne.s	.return
		lea	(Timer).w,a1
		cmpi.l	#(9*$10000)+(59*$100)+59,(a1)+				; is the time 9:59:59?
		nop
		addq.b	#1,-(a1)										; increment 1/60s counter
		cmpi.b	#60,(a1)										; check if passed 60
		blo.s		.return
		clr.b	(a1)
		addq.b	#1,-(a1)										; increment second counter
		cmpi.b	#60,(a1)										; check if passed 60
		blo.s		.return
		clr.b	(a1)
		addq.b	#1,-(a1)										; increment minute counter
		cmpi.b	#9,(a1)										; check if passed 9
		blo.s		.return
		move.b	#9,(a1)										; keep as 9

.return
		rts

; ---------------------------------------------------------------------------
; Subroutine to load "0" on the HUD
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

HUD_DrawZeroRings:
		locVRAM	tiles_to_bytes(ArtTile_HUD+$36),VDP_control_port-VDP_data_port(a6)
		lea	HUD_Zero_Rings(pc),a2
		moveq	#3-1,d2
		bra.s	HUD_DrawInitial.main

; ---------------------------------------------------------------------------
; Subroutine to load uncompressed HUD patterns ("E", "0", colon)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

HUD_DrawInitial:
		lea	(VDP_data_port).l,a6
		locVRAM	tiles_to_bytes(ArtTile_HUD+$18),VDP_control_port-VDP_data_port(a6)
		lea	HUD_Initial_Parts(pc),a2
		moveq	#(HUD_Initial_Parts_end-HUD_Initial_Parts)-1,d2

.main
		lea	(ArtUnc_Hud).l,a1

.loop
		moveq	#(8*2)-1,d1
		move.b	(a2)+,d0
		bmi.s	.clear
		ext.w	d0
		lsl.w	#5,d0
		lea	(a1,d0.w),a3

.copy
		move.l	(a3)+,VDP_data_port-VDP_data_port(a6)
		dbf	d1,.copy

.next
		dbf	d2,.loop
		rts
; ---------------------------------------------------------------------------

.clear
		move.l	#0,VDP_data_port-VDP_data_port(a6)
		dbf	d1,.clear
		bra.s	.next
; ---------------------------------------------------------------------------

		; set the character set for HUD
		CHARSET ' ',$FF
		CHARSET '0',0
		CHARSET '1',2
		CHARSET '2',4
		CHARSET '3',6
		CHARSET '4',8
		CHARSET '5',$A
		CHARSET '6',$C
		CHARSET '7',$E
		CHARSET '8',$10
		CHARSET '9',$12
		CHARSET '*',$14
		CHARSET ':',$16
		CHARSET 'E',$18

HUD_Initial_Parts:
		dc.b "E      0"
		dc.b "  0:  0"
HUD_Zero_Rings:
		dc.b "  0"		; (zero rings)
HUD_Initial_Parts_end
		even

		CHARSET ; reset character set

; ---------------------------------------------------------------------------
; Subroutine to load debug mode numbers patterns
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

HUD_Debug:
		locVRAM	tiles_to_bytes(ArtTile_HUD+$18),VDP_control_port-VDP_data_port(a6)	; set VRAM address
		move.w	(Camera_X_pos).w,d1	; load camera x-position
		swap	d1
		move.w	(Player_1+x_pos).w,d1	; load Sonic's x-position
		bsr.s	.main
		move.w	(Camera_Y_pos).w,d1	; load camera y-position
		swap	d1
		move.w	(Player_1+y_pos).w,d1	; load Sonic's y-position

.main
		moveq	#8-1,d6
		lea	(ArtUnc_DebugText).l,a1

.loop
		rol.w	#4,d1
		move.w	d1,d2
		andi.w	#$F,d2
		cmpi.w	#10,d2
		blo.s		.skipsymbols
		addq.w	#7,d2

.skipsymbols
		lsl.w	#5,d2
		lea	(a1,d2.w),a3
	rept 8
		move.l	(a3)+,VDP_data_port-VDP_data_port(a6)
	endr
		swap	d1
		dbf	d6,.loop	; repeat 7 more times
		rts

; ---------------------------------------------------------------------------
; Subroutine to load rings numbers patterns
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

DrawThreeDigitNumber:
		lea	Hud_100(pc),a2
		moveq	#3-1,d6
		bra.s	Hud_LoadArt

; ---------------------------------------------------------------------------
; Subroutine to load score numbers patterns
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

DrawSixDigitNumber:
		lea	Hud_100000(pc),a2
		moveq	#6-1,d6

Hud_LoadArt:
		moveq	#0,d4
		lea	(ArtUnc_Hud).l,a1

Hud_ScoreLoop:
		moveq	#0,d2
		move.l	(a2)+,d3

loc_1C8EC:
		sub.l	d3,d1
		blo.s		loc_1C8F4
		addq.w	#1,d2
		bra.s	loc_1C8EC
; ---------------------------------------------------------------------------

loc_1C8F4:
		add.l	d3,d1
		tst.w	d2
		beq.s	loc_1C8FE
		moveq	#1,d4

loc_1C8FE:
		tst.w	d4
		beq.s	loc_1C92C
		lsl.w	#6,d2
		move.l	d0,VDP_control_port-VDP_data_port(a6)
		lea	(a1,d2.w),a3
	rept 16
		move.l	(a3)+,VDP_data_port-VDP_data_port(a6)
	endr

loc_1C92C:
		addi.l	#$400000,d0
		dbf	d6,Hud_ScoreLoop
		rts

; ---------------------------------------------------------------------------
; HUD counter sizes
; ---------------------------------------------------------------------------

Hud_100000:	dc.l 100000
Hud_10000:		dc.l 10000
Hud_1000:		dc.l 1000
Hud_100:		dc.l 100
Hud_10:			dc.l 10
Hud_1:			dc.l 1

; ---------------------------------------------------------------------------
; Subroutine to load time numbers patterns
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

DrawSingleDigitNumber:
		lea	Hud_1(pc),a2
		moveq	#1-1,d6
		bra.s	loc_1C9BA

DrawSlash:
		lea	Hud_1(pc),a2
		moveq	#1-1,d6
		moveq	#0,d4
		lea	(ArtUnc_HudSlash).l,a1
		bra.s	Hud_TimeLoop

; =============== S U B R O U T I N E =======================================

DrawTwoDigitNumber:
		lea	Hud_10(pc),a2
		moveq	#2-1,d6

loc_1C9BA:
		moveq	#0,d4
		lea	(ArtUnc_Hud).l,a1

Hud_TimeLoop:
		moveq	#0,d2
		move.l	(a2)+,d3

loc_1C9C4:
		sub.l	d3,d1
		blo.s		loc_1C9CC
		addq.w	#1,d2
		bra.s	loc_1C9C4
; ---------------------------------------------------------------------------

loc_1C9CC:
		add.l	d3,d1
		tst.w	d2
		beq.s	loc_1C9D6
		moveq	#1,d4

loc_1C9D6:
		lsl.w	#6,d2
		move.l	d0,VDP_control_port-VDP_data_port(a6)
		lea	(a1,d2.w),a3
	rept 16
		move.l	(a3)+,VDP_data_port-VDP_data_port(a6)
	endr
		addi.l	#$400000,d0
		dbf	d6,Hud_TimeLoop
		rts

; =============== S U B R O U T I N E =======================================

HUD_UpdateHealthBar:
		movem.l	d0-d7,-(sp)    ; push to stack

		moveq	#0,d1		; clean these registers
		moveq	#0,d2		; here so no
		moveq	#0,d3		; unwanted data gets in
		move.l	#7-1,d4		; loop count
		moveq	#0,d5
		moveq	#0,d6
		moveq	#0,d7

		move.w	(v_health).w,d5
		lsr.w	#2,d5			; divide health by 4 (number of 4/4 health tiles) &
		move.w	(v_health).w,d6
		and.w	#3,d6			; get remainder

;		btst	#bitA,(Ctrl_1_pressed_logical).w    ; A button crash*
;		beq.s	.dontCrash
;		illegal
;	.dontCrash:

		;; move.w   #19,d5
		;; lsr.w    #2,d5             ; divide health by 4 (number of 4/4 health tiles) &
		;; move.w   #19,d6
		;; and.w    #3,d6           ; get remainder

		move.l	#(ArtUnc_HealthBar)>>1 + 32,-(sp)     ; (sp + 4) = dma source address
		move.l	#tiles_to_bytes($6CB),-(sp)           ; (sp) = dma destination address

		tst.w	d5
		bne		.updateBarBase

		tst.w	d6
		beq		.initialSetBarsToEmpty

		move.w	d6,d7
		lsl.w	#4,d7
		add.l	d7,4(sp)

		bra		.updateBarBase

.initialSetBarsToEmpty:
		move.l	#(ArtUnc_HealthBar)>>1 + 96,4(sp)

.updateBarBase:
; leaving this here for context on what this originally did.
; current_emotion was a number from 0 to 7 representing the
; character's emotional state, here it'll basically be what
; tile you're using of the health bar chunk you're on
;		move.b	(Current_emotion).w,d0
		;; mulu.w    d3,d0 ;source, destination ; more like length, tile number
		;; add.l     d0,d1    ; add offset to file location

		move.l	#16,d3
		move.l	4(sp),d1
		move.l	(sp),d2
		move.l	#7,d7
		sub.l	d4,d7
		cmp.w	d7,d5
		bgt.s	.skipChangeOffset
		blt.s	.setBarsToEmpty

.changeOffset:
		move.w	d6,d7
		lsl.w	#4,d7
		add.l	d7,4(sp)
		bra.s	.skipChangeOffset

.setBarsToEmpty:
		move.l	#(ArtUnc_HealthBar)>>1 + 96,4(sp)

.skipChangeOffset:
		;; lsl.l     #5,d2
		jsr		(QueueDMATransfer).l    ; do that dma transfer shit
		;; subi.w    #tiles_to_bytes($1),d2 ; subtract from vram location for the next loop
		addi.l	#tiles_to_bytes($1),(sp)
		dbf		d4,.updateBarBase

		addi.l	#8,sp

		movem.l	(sp)+,d0-d7    ; pop from stack to avoid corruption

		rts
