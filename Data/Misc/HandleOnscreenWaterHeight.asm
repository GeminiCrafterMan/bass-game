; ---------------------------------------------------------------------------
; Water handle
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Handle_Onscreen_Water_Height:
		tst.b	(Water_flag).w							; does level have water?
		beq.s	.return								; if not, branch
		tst.b	(Deform_lock).w
		bne.s	.skip
		cmpi.b	#id_BassDeath,(Player_1+routine).w	; is player dead?
		bhs.s	.skip								; if yes, branch
		bsr.s	DynamicWaterHeight

.skip
		clr.b	(Water_full_screen_flag).w
		moveq	#0,d0
		move.b	(Oscillating_Data).w,d0
		lsr.w	d0
		add.w	(Mean_water_level).w,d0
		move.w	d0,(Water_level).w

		; calculate distance between water surface and top of screen
		move.w	(Water_level).w,d0
		sub.w	(Camera_Y_pos).w,d0
		beq.s	.set
		bhs.s	.check
		tst.w	d0
		bpl.s	.check

.set
		st	(Water_full_screen_flag).w
		st	(H_int_counter).w	; set 256-1
		rts
; ---------------------------------------------------------------------------

.check
		cmpi.w	#224-1,d0
		blo.s		.counter
		move.w	#256-1,d0

.counter
		move.b	d0,(H_int_counter).w

.return
		rts

; =============== S U B R O U T I N E =======================================

DynamicWaterHeight:
		movea.l	(Level_data_addr_RAM.WaterResize).w,a0
		jsr	(a0)
		moveq	#0,d1
		move.b	(Water_speed).w,d1
		move.w	(Target_water_level).w,d0
		sub.w	(Mean_water_level).w,d0
		beq.s	No_WaterResize
		bhs.s	.skip
		neg.w	d1

.skip
		add.w	d1,(Mean_water_level).w

No_WaterResize:
		rts

; =============== S U B R O U T I N E =======================================

StartLevelWater:
		st	(Water_flag).w
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#5,d0
		move.w	StartingWaterHeights(pc,d0.w),d0
		cmpi.w	#$FFFF,d0
		bne.s	.keepWaterOn
		clr.b	(Water_flag).w
	.keepWaterOn:
		move.w	d0,(Water_level).w
		move.w	d0,(Mean_water_level).w
		move.w	d0,(Target_water_level).w
		clr.b	(Water_entered_counter).w
		clr.b	(Water_full_screen_flag).w
		move.b	#1,(Water_speed).w

LoadWaterPalette:
		tst.b	(Water_flag).w
		beq.s	.ret
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#6,d0
		move.b	WaterPalette_Index(pc,d0.w),d0	; water palette
		move.w	d0,d1
		jsr	(LoadPalette2).w
		move.w	d1,d0
		jmp	(LoadPalette2_Immediate).w
	.ret:
		rts
; ---------------------------------------------------------------------------

StartingWaterHeights:
		dc.w $FFFF
		dc.w $FFFF
		dc.w $220
		dc.w $FFFF

		dc.w $FFFF	; Blaze Man
		dc.w $FFFF	; Video Man
		dc.w $FFFF	; Smog Man
		dc.w $200	; Shark Man
	rept 4
		dc.w $FFFF
	endr

		zonewarning StartingWaterHeights,(2*4)
; ---------------------------------------------------------------------------

WaterPalette_Index:
		dc.b	palid_GenericLevel,	palid_Air,	palid_MSLabyrinthUW,	palid_GenericLevel		; DEZ 1,2,3,4
		dc.b	palid_Blaze,	palid_Video,	palid_Smog,		palid_SharkUW
		dc.b	palid_Origami,	palid_GenericLevel,	palid_GenericLevel,	palid_GenericLevel		; DEZ 1,2,3,4

		zonewarning WaterPalette_Index,(1*4)
