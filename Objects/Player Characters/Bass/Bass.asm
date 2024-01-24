
; =============== S U B R O U T I N E =======================================

Obj_Bass:
		; Load some addresses into registers
		; This is done to allow some subroutines to be
		; shared with Tails/Knuckles.
		lea	(Sonic_Knux_top_speed).w,a4
		lea	(Distance_from_screen_top).w,a5
		lea	(v_Dust).w,a6

	if GameDebug
		tst.w	(Debug_placement_mode).w
		beq.s	Bass_Normal

; Debug only code
		cmpi.b	#1,(Debug_placement_type).w	; Is Bass in debug object placement mode?
		jeq		(DebugMode).l			; If so, skip to debug mode routine
		; By this point, we're assuming you're in frame cycling mode
		btst	#button_mode,(Ctrl_1_pressed_6btn).w
		beq.s	+
		clr.w	(Debug_placement_mode).w	; Leave debug mode
+		addq.b	#1,mapping_frame(a0)		; Next frame
		cmpi.b	#frB_Last,mapping_frame(a0)	; Have we reached the end of Bass's frames?
		blo.s		+
		clr.b	mapping_frame(a0)	; If so, reset to Bass's first frame
+		bsr.w	Player_Load_PLC
		jmp	(Draw_Sprite).w
; ---------------------------------------------------------------------------

Bass_Normal:
	endif
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Bass_Index(pc,d0.w),d1
		jmp	Bass_Index(pc,d1.w)
; ---------------------------------------------------------------------------

Bass_Index: offsetTable
ptr_Bass_Init:		offsetTableEntry.w Bass_Init		; 0
ptr_Bass_Control:	offsetTableEntry.w Bass_Control	; 2
ptr_Bass_Hurt:		offsetTableEntry.w Sonic_Hurt		; 4
ptr_Bass_Death:		offsetTableEntry.w Sonic_Death		; 6
ptr_Bass_Restart:	offsetTableEntry.w Sonic_Restart	; 8
					offsetTableEntry.w loc_12590		; A
; ---------------------------------------------------------------------------

Bass_Init:	; Routine 0
		move.l	#Map_Bass,mappings(a0)
		clr.b	character_id(a0)
		jmp		Player_Init

; ---------------------------------------------------------------------------
; Normal state for Bass
; ---------------------------------------------------------------------------

Bass_Control:								; Routine 2
	if GameDebug
		tst.b	(Debug_mode_flag).w				; is debug cheat enabled?
		beq.s	loc_10BF0					; if not, branch
		bclr	#button_A,(Ctrl_1_pressed).w		; is button A pressed?
		beq.s	loc_10BCE					; if not, branch
		eori.b	#1,(Reverse_gravity_flag).w		; toggle reverse gravity

loc_10BCE:
		btst	#button_mode,(Ctrl_1_pressed_6btn).w	; is button Mode pressed?
		beq.s	loc_10BF0					; if not, branch
		move.w	#1,(Debug_placement_mode).w	; change Bass into a ring/item
		clr.b	(Ctrl_1_locked).w					; unlock control
		btst	#button_C,(Ctrl_1_held).w			; was button C held before pressing B?
		beq.s	locret_10BEE					; if not, branch
		move.w	#2,(Debug_placement_mode).w	; enter animation cycle mode

locret_10BEE:
		rts
; ---------------------------------------------------------------------------

loc_10BF0:
	endif
		tst.b	(Ctrl_1_locked).w					; are controls locked?
		bne.s	loc_10BFC					; if yes, branch
		move.l	(Ctrl_1).w,(Ctrl_1_logical).w	; copy new held buttons, to enable joypad control

loc_10BFC:
		btst	#0,object_control(a0)				; is Bass interacting with another object that holds him in place or controls his movement somehow?
		beq.s	loc_10C0C					; if yes, branch to skip Bass's control
		clr.b	double_jump_flag(a0)				; enable double jump
		bra.s	loc_10C26
; ---------------------------------------------------------------------------

loc_10C0C:
		movem.l	a4-a6,-(sp)
		moveq	#0,d0
		move.b	status(a0),d0
		andi.w	#6,d0
		move.w	Bass_Modes(pc,d0.w),d1
		jsr	Bass_Modes(pc,d1.w)	; run Bass's movement control code
		movem.l	(sp)+,a4-a6

		jsr		Player_CheckLadder

loc_10C26:
		cmpi.w	#-$100,(Camera_min_Y_pos).w		; is vertical wrapping enabled?
		bne.s	+								; if not, branch
		move.w	(Screen_Y_wrap_value).w,d0
		and.w	d0,y_pos(a0)						; perform wrapping of Bass's y position
+		bsr.w	Player_Display
		bsr.w	Player_RecordPos
		bsr.w	Player_Water
		move.b	(Primary_Angle).w,next_tilt(a0)
		move.b	(Secondary_Angle).w,tilt(a0)
		tst.b	(WindTunnel_flag).w
		beq.s	+
		tst.b	anim(a0)
		bne.s	+
		move.b	prev_anim(a0),anim(a0)
+		btst	#2,object_control(a0)
		bne.s	++
		bsr.w	Animate_Player
		tst.b	(Reverse_gravity_flag).w
		beq.s	+
		eori.b	#2,render_flags(a0)
+		bsr.w	Player_Load_PLC
+		move.b	object_control(a0),d0
		andi.b	#$A0,d0
		bne.s	+
		jsr	TouchResponse(pc)
+		rts
; ---------------------------------------------------------------------------
; secondary states under state Bass_Control

Bass_Modes: offsetTable
		offsetTableEntry.w Bass_MdNormal	; 0
		offsetTableEntry.w Bass_MdAir		; 2
		offsetTableEntry.w Bass_MdRoll		; 4
		offsetTableEntry.w Bass_MdAir		; 6

; =============== S U B R O U T I N E =======================================

Bass_MdNormal:
		bclr	#2,object_control(a0)		; Stop climbing!!
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.w	Bass_Dash
		bsr.w	Sonic_Jump
		bsr.w	Player_SlopeResist
		bsr.w	Sonic_Move
		bsr.w	Player_HandleGroundAnimations
		bsr.w	Player_LevelBound
		jsr	(MoveSprite2_TestGravity).w
		bsr.w	Call_Player_AnglePos
		bra.w	Player_SlopeRepel

; ---------------------------------------------------------------------------
; Start of subroutine Bass_MdAir
; Called if Sonic is airborne, but not in a ball (thus, probably not jumping)
; Bass_Stand_Freespace:
Bass_MdAir:
		btst	#Status_Underwater,status(a0)	; is Sonic underwater?
		beq.s	.notUW
		btst	#0,double_jump_flag(a0)
		bne.s	Bass_MdAquaDrive
		bra.s	.cont
	.notUW:
		bclr	#0,double_jump_flag(a0)	; clear Aqua Drive
	.cont:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		btst	#2,object_control(a0)
		beq.s	.noLadder
		jsr		Player_Ladder
		bra.s	loc_10FD6
	.noLadder:
		bsr.w	Player_HandleAirAnimations
		clr.b	dashtimer(a0)
		bclr	#Status_Dash,status(a0)
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_ChgJumpDir
		bsr.w	Player_LevelBound
		jsr	(MoveSprite_TestGravity).w
		btst	#Status_Underwater,status(a0)	; is Sonic underwater?
		beq.s	loc_10FD6				; if not, branch
		subi.w	#$28,y_vel(a0)			; reduce gravity by $28 ($38-$28=$10)
		btst	#bitC,(Ctrl_1_pressed_logical).w	; is C pressed, not held?
		beq.s	loc_10FD6							; if not, skip
		bset	#0,double_jump_flag(a0)				; enable Aqua Drive

loc_10FD6:
		bsr.w	Player_JumpAngle
		bra.w	Player_DoLevelCollision
; ---------------------------------------------------------------------------
; Start of subroutine Bass_MdAquaDrive
; Called if Bass is swimming with the Aqua Drive module
Bass_MdAquaDrive:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.s	Bass_AquaDrive
		bsr.w	Bass_HandleAquaDriveAnimations
		bsr.w	Player_LevelBound
		jsr		(MoveSprite).w
		bra.w	Player_DoLevelCollision

Bass_AquaDrive:	; bro he actually is a fish!!!! wow!!!!
		btst	#bitC,(Ctrl_1_pressed_logical).w	; is C pressed, not held?
		beq.s	.skip								; if not, skip
		bclr	#0,double_jump_flag(a0)				; Disable Aqua Drive
		rts											; return
	.skip:
		tst.b	shoottimer(a0)	; is the player currently shooting?
		beq.s	.skip2			; if not, skip
		clr.w	x_vel(a0)
		clr.w	y_vel(a0)
		rts						; return
	.skip2:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	Bass_AquaDrive_Up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	Bass_AquaDrive_Down
		clr.w	y_vel(a0)
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.left
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.right
		clr.w	x_vel(a0)
		rts
	.right:
		move.w	#$200,x_vel(a0)
		bclr	#Status_Facing,status(a0)
		rts
	.left:
		move.w	#-$200,x_vel(a0)
		bset	#Status_Facing,status(a0)
		rts

Bass_AquaDrive_Up:
		move.w	#-$200,y_vel(a0)
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.right
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.left
		clr.w	x_vel(a0)
		rts
	.right:
		move.w	#$200,x_vel(a0)
		bclr	#Status_Facing,status(a0)
		rts
	.left:
		move.w	#-$200,x_vel(a0)
		bset	#Status_Facing,status(a0)
		rts

Bass_AquaDrive_Down:
		move.w	#$200,y_vel(a0)
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.right
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.left
		clr.w	x_vel(a0)
		rts
	.right:
		move.w	#$200,x_vel(a0)
		bclr	#Status_Facing,status(a0)
		rts
	.left:
		move.w	#-$200,x_vel(a0)
		bset	#Status_Facing,status(a0)
		rts

Bass_HandleAquaDriveAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	AnimType_AquaNormalFire
		dc.l	AnimType_AquaNormalFire
		dc.l	AnimType_AquaThrow
		dc.l	AnimType_AquaShield
		dc.l	.notShooting

	.notShooting:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.down
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.fwd
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.fwd
		move.b	#id_AquaNeutral,anim(a0)
		rts
	.fwd:
		move.b	#id_AquaFwd,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_AquaUp,anim(a0)
		rts
	.diagup:
		move.b	#id_AquaDiagUp,anim(a0)
		rts
	.down:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_AquaDown,anim(a0)
		rts
	.diagdown:
		move.b	#id_AquaDiagDown,anim(a0)
		rts

AnimType_AquaNormalFire:
		move.b	#id_FireAqua,anim(a0)
		rts

AnimType_AquaThrow:
		move.b	#id_ThrowAqua,anim(a0)
		rts

AnimType_AquaShield:
		move.b	#id_ShieldAqua,anim(a0)
		rts

; ---------------------------------------------------------------------------
; Start of subroutine Bass_MdRoll
; Called if Bass is dashing
; Bass_Spin_Path:
Bass_MdRoll:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.w	Sonic_Jump
		bsr.w	Bass_KeepDashing	; dash timer test
		bsr.w	Player_RollRepel
		bsr.w	Sonic_RollSpeed
		bsr.w	Player_LevelBound
		jsr	(MoveSprite2_TestGravity).w
		bsr.w	Call_Player_AnglePos
		move.b	#id_Dash,anim(a0)
		bra.w	Player_SlopeRepel

; ---------------------------------------------------------------------------
; Subroutine to make Sonic walk/run
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_Move:
		move.w	Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4),d6		; set Sonic_Knux_top_speed
		move.w	Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4),d5	; set Sonic_Knux_acceleration
		move.w	Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4),d4	; set Sonic_Knux_deceleration
		tst.b	status_secondary(a0)				; is bit 7 set? (Infinite inertia)
		bmi.w	loc_11332					; if so, branch
		tst.w	move_lock(a0)
		bne.w	loc_112EA
		btst	#button_left,(Ctrl_1_logical).w		; is left being pressed?
		beq.s	Sonic_NotLeft				; if not, branch
		bsr.w	sub_113F6

Sonic_NotLeft:
		btst	#button_right,(Ctrl_1_logical).w	; is right being pressed?
		beq.s	Sonic_NotRight				; if not, branch
		bsr.w	sub_11482

Sonic_NotRight:
		move.w	(HScroll_Shift).w,d1
		beq.s	+
		bclr	#Status_Facing,status(a0)
		tst.w	d1
		bpl.s	+
		bset	#Status_Facing,status(a0)
+		move.b	angle(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0						; is Sonic on a slope?
		bne.w	loc_112EA					; if yes, branch
		tst.w	ground_vel(a0)				; is Sonic moving?
		bne.w	loc_112EA					; if yes, branch
		tst.w	d1
		bne.w	loc_112EA
		move.b	#id_Wait,anim(a0)			; use standing animation

loc_112EA:	; mlep
		clr.b	scroll_delay_counter(a0)

loc_112F0:
		cmpi.w	#$60,(a5)
		beq.s	loc_112FC
		bcc.s	loc_112FA
		addq.w	#4,(a5)

loc_112FA:
		subq.w	#2,(a5)

loc_112FC:
		move.b	(Ctrl_1_logical).w,d0
		andi.b	#btnL+btnR,d0
		bne.s	loc_11332
		move.w	ground_vel(a0),d0
		beq.s	loc_11332
		bmi.s	loc_11326
		sub.w	d5,d0
		bcc.s	loc_11320
		moveq	#0,d0

loc_11320:
		move.w	d0,ground_vel(a0)
		bra.s	loc_11332
; ---------------------------------------------------------------------------

loc_11326:
		add.w	d5,d0
		bcc.s	loc_1132E
		moveq	#0,d0

loc_1132E:
		move.w	d0,ground_vel(a0)

loc_11332:
		move.b	angle(a0),d0
		jsr	(GetSineCosine).w
		muls.w	ground_vel(a0),d1
		asr.l	#8,d1
		move.w	d1,x_vel(a0)
		muls.w	ground_vel(a0),d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)

loc_11350:
		btst	#6,object_control(a0)
		bne.s	locret_113CE
		move.b	angle(a0),d0
		andi.b	#$3F,d0
		beq.s	loc_11370
		move.b	angle(a0),d0
		addi.b	#$40,d0
		bmi.s	locret_113CE

loc_11370:
		move.b	#$40,d1			; i actually have no clue what this is, changing it to $30 makes him able to walk through 1 all-solid row of blocks
		tst.w	ground_vel(a0)	; is velocity = 0?
		beq.s	locret_113CE	; if so, return
		bmi.s	loc_1137E		; if negative, skip the flip
		neg.w	d1				; flip tested velocity

loc_1137E:
		move.b	angle(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		bsr.w	CalcRoomInFront
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	locret_113CE
		asl.w	#8,d1			; the speed at which you get pushed out of a wall if you're stuck
		addi.b	#$20,d0
		andi.b	#$C0,d0
		beq.s	loc_113F0		; add d1 to y-vel, then return
		cmpi.b	#$40,d0
		beq.s	loc_113D6		; sub d1 from x-vel, then clear ground-vel
		cmpi.b	#$80,d0
		beq.s	loc_113D0		; sub d1 from y-vel, then return
		add.w	d1,x_vel(a0)
		clr.w	ground_vel(a0)

locret_113CE:
		rts
; ---------------------------------------------------------------------------

loc_113D0:
		sub.w	d1,y_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_113D6:
		sub.w	d1,x_vel(a0)
		clr.w	ground_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_113F0:
		add.w	d1,y_vel(a0)
		rts

; =============== S U B R O U T I N E =======================================

sub_113F6:
		move.w	ground_vel(a0),d0
		beq.s	loc_113FE
		bpl.s	loc_11430

loc_113FE:
		tst.w	(HScroll_Shift).w
		bne.s	loc_11412
		bset	#Status_Facing,status(a0)
		bne.s	loc_11412
		jsr		Player_HandleGroundAnimations

loc_11412:
		cmpi.b	#id_FireSteadyUp,anim(a0)
		blt.s	.cont
		cmpi.b	#id_Reppuken,anim(a0)
		bgt.s	.cont
		rts
	.cont:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_11424
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	loc_11424
		move.w	d1,d0

loc_11424:
		move.w	d0,ground_vel(a0)
		jsr		Player_HandleGroundAnimations
		rts
; ---------------------------------------------------------------------------

loc_11430:
		sub.w	d4,d0
		bcc.s	loc_11438
		move.w	#-$80,d0

loc_11438:
		move.w	d0,ground_vel(a0)
		move.b	angle(a0),d1
		addi.b	#$20,d1
		andi.b	#$C0,d1
		bne.s	locret_11480
		cmpi.w	#$400,d0
		blt.s	locret_11480
		sfx		sfx_Skid
		move.b	#id_Null,anim(a0)
		bclr	#Status_Facing,status(a0)
		move.b	#6,routine(a6)			; v_Dust
		move.b	#$15,mapping_frame(a6)	; v_Dust

locret_11480:
		rts

; =============== S U B R O U T I N E =======================================

sub_11482:
		move.w	ground_vel(a0),d0
		bmi.s	loc_114B6
		bclr	#Status_Facing,status(a0)
		beq.s	loc_1149C
		jsr		Player_HandleGroundAnimations

loc_1149C:
		cmpi.b	#id_FireSteadyUp,anim(a0)
		blt.s	.cont
		cmpi.b	#id_Reppuken,anim(a0)
		bgt.s	.cont
		rts
	.cont:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_114AA
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_114AA
		move.w	d6,d0

loc_114AA:
		move.w	d0,ground_vel(a0)
		jsr		Player_HandleGroundAnimations
		rts
; ---------------------------------------------------------------------------

loc_114B6:
		add.w	d4,d0
		bcc.s	loc_114BE
		move.w	#$80,d0

loc_114BE:
		move.w	d0,ground_vel(a0)
		move.b	angle(a0),d1
		addi.b	#$20,d1
		andi.b	#$C0,d1
		bne.s	locret_11506
		cmpi.w	#-$400,d0
		bgt.s	locret_11506
		sfx		sfx_Skid
		move.b	#id_Null,anim(a0)
		bset	#Status_Facing,status(a0)
		move.b	#6,routine(a6)			; v_Dust
		move.b	#$15,mapping_frame(a6)	; v_Dust

locret_11506:
		rts

; =============== S U B R O U T I N E =======================================

Sonic_RollSpeed:
		move.w	(a4),d6
		asl.w	#1,d6
		move.w	2(a4),d5
		asr.w	#1,d5
		move.w	#$20,d4
		tst.b	spin_dash_flag(a0)
		bmi.w	loc_115C6
		tst.b	status_secondary(a0)
		bmi.w	loc_115C6
		tst.w	move_lock(a0)
		bne.s	loc_1154E
		btst	#button_left,(Ctrl_1_logical).w
		beq.s	loc_11542
		bsr.w	sub_11608

loc_11542:
		btst	#button_right,(Ctrl_1_logical).w
		beq.s	loc_1154E
		bsr.w	sub_1162C

loc_1154E:
		move.w	ground_vel(a0),d0
		beq.s	loc_11570
		bmi.s	loc_11564
		sub.w	d5,d0
		bcc.s	loc_1155E
		moveq	#0,d0

loc_1155E:
		move.w	d0,ground_vel(a0)
		bra.s	loc_11570
; ---------------------------------------------------------------------------

loc_11564:
		add.w	d5,d0
		bcc.s	loc_1156C
		moveq	#0,d0

loc_1156C:
		move.w	d0,ground_vel(a0)

loc_11570:
		move.w	ground_vel(a0),d0
		bpl.s	loc_11578
		neg.w	d0

loc_11578:
		cmpi.w	#$80,d0
		bcc.s	loc_115C6
		tst.b	spin_dash_flag(a0)
		bne.s	loc_115B4
		move.b	y_radius(a0),d0
		move.b	default_y_radius(a0),y_radius(a0)
		move.b	default_x_radius(a0),x_radius(a0)
		move.b	#id_Wait,anim(a0)
		sub.b	default_y_radius(a0),d0
		ext.w	d0
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_115AE
		neg.w	d0

loc_115AE:
		add.w	d0,y_pos(a0)
		bra.s	loc_115C6
; ---------------------------------------------------------------------------

loc_115B4:
		move.w	#$400,ground_vel(a0)
		btst	#Status_Facing,status(a0)
		beq.s	loc_115C6
		neg.w	ground_vel(a0)

loc_115C6:
		cmpi.w	#$60,(a5)
		beq.s	loc_115D2
		bcc.s	loc_115D0
		addq.w	#4,(a5)

loc_115D0:
		subq.w	#2,(a5)

loc_115D2:
		move.b	angle(a0),d0
		jsr	(GetSineCosine).w
		muls.w	ground_vel(a0),d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)
		muls.w	ground_vel(a0),d1
		asr.l	#8,d1
		cmpi.w	#$1000,d1
		ble.s		loc_115F6
		move.w	#$1000,d1

loc_115F6:
		cmpi.w	#-$1000,d1
		bge.s	loc_11600
		move.w	#-$1000,d1

loc_11600:
		move.w	d1,x_vel(a0)
		bra.w	loc_11350

; =============== S U B R O U T I N E =======================================

sub_11608:
		move.w	ground_vel(a0),d0
		beq.s	loc_11610
		bpl.s	loc_1161E

loc_11610:
		bset	#Status_Facing,status(a0)
		move.b	#id_Dash,anim(a0)
		rts
; ---------------------------------------------------------------------------

loc_1161E:
		sub.w	d4,d0
		bcc.s	loc_11626
		move.w	#-$80,d0

loc_11626:
		move.w	d0,ground_vel(a0)
		rts

; =============== S U B R O U T I N E =======================================

sub_1162C:
		move.w	ground_vel(a0),d0
		bmi.s	loc_11640
		bclr	#Status_Facing,status(a0)
		move.b	#id_Dash,anim(a0)
		rts
; ---------------------------------------------------------------------------

loc_11640:
		add.w	d4,d0
		bcc.s	loc_11648
		move.w	#$80,d0

loc_11648:
		move.w	d0,ground_vel(a0)
		rts
; ---------------------------------------------------------------------------
; Subroutine for moving Sonic left or right when he's in the air
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_ChgJumpDir:
		move.w	Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4),d6
		move.w	Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4),d5
		asl.w	#1,d5
		move.w	x_vel(a0),d0
		btst	#button_left,(Ctrl_1_logical).w
		beq.s	loc_11682
		bset	#Status_Facing,status(a0)
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_11682
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s		loc_11682
		move.w	d1,d0

loc_11682:
		btst	#button_right,(Ctrl_1_logical).w
		beq.s	loc_1169E
		bclr	#Status_Facing,status(a0)
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s		loc_1169E
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_1169E
		move.w	d6,d0

loc_1169E:
		move.w	d0,x_vel(a0)

loc_116A2:
		cmpi.w	#$60,(a5)
		beq.s	loc_116AE
		bcc.s	loc_116AC
		addq.w	#4,(a5)

loc_116AC:
		subq.w	#2,(a5)

loc_116AE:
		cmpi.w	#-$400,y_vel(a0)
		bcs.s	locret_116DC
		move.w	x_vel(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	locret_116DC
		bmi.s	loc_116D0
		sub.w	d1,d0
		bcc.s	loc_116CA
		moveq	#0,d0

loc_116CA:
		move.w	d0,x_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_116D0:
		sub.w	d1,d0
		bcs.s	loc_116D8
		moveq	#0,d0

loc_116D8:
		move.w	d0,x_vel(a0)

locret_116DC:
		rts

; =============== S U B R O U T I N E =======================================

Player_LevelBound:
		move.l	x_pos(a0),d1
		move.w	x_vel(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap	d1
		move.w	(Camera_min_X_pos).w,d0
		addi.w	#$10,d0
		cmp.w	d1,d0
		bhi.s	loc_11732
		move.w	(Camera_max_X_pos).w,d0
		addi.w	#$128,d0
		cmp.w	d1,d0
		bcs.s	loc_11732

Player_Boundary_CheckBottom:
		tst.b	(Reverse_gravity_flag).w
		bne.s	loc_11722
		move.w	(Camera_max_Y_pos).w,d0
		cmp.w	(Camera_target_max_Y_pos).w,d0
		blt.s		locret_11720
		addi.w	#224,d0
		cmp.w	y_pos(a0),d0
		blt.s		Player_Boundary_Bottom

locret_11720:
		rts
; ---------------------------------------------------------------------------

loc_11722:
		move.w	(Camera_min_Y_pos).w,d0
		cmp.w	y_pos(a0),d0
		blt.s		locret_11720

Player_Boundary_Bottom:
		jmp	Kill_Character(pc)
; ---------------------------------------------------------------------------

loc_11732:
		move.w	d0,x_pos(a0)
		clr.w	2+x_pos(a0)
		clr.w	x_vel(a0)
		clr.w	ground_vel(a0)
		bra.s	Player_Boundary_CheckBottom

; ---------------------------------------------------------------------------
; Subroutine allowing Bass to dash
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Bass_Dash:
		bra.s	.canMove
	.cantMove:
		rts
	.canMove:
		tst.w	move_lock(a0)
		bne.s	.cantMove
		btst	#Status_Dash,status(a0)
		bne.s	Bass_KeepDashing	; keep dashing
		tst.b	dashtimer(a0)		; cooldown
		bne.s	.cantMove			; on cooldown
		btst	#bitA,(Ctrl_1_pressed_logical).w	; A button dash
		beq.s	.cantMove
	; was gonna add down+jump dash as well but kind of unnecessary
Bass_KeepDashing:
		btst	#Status_Dash,status(a0)	; is Bass already dashing?
		beq.s	Bass_StartDash			; if not, start dashing
		tst.b	dashtimer(a0)			; is there time left on your dash?
		beq.s	Bass_StopDashing	; if not, stop dashing
		btst	#bitA,(Ctrl_1_held_logical).w	; A button *held* dash, like Zero
		beq.s	Bass_StopDashing	; if not, stop dashing
		rts
Bass_StartDash:
		bset	#Status_Dash,status(a0)
		moveq	#0,d0
		move.w	#$500,d0
		btst	#Status_Facing,status(a0)
		beq.s	.noFlip
		neg.w	d0
	.noFlip:
		btst	#Status_Underwater,status(a0)
		beq.s	.notUnderwater
		asr.w	d0
	.notUnderwater:
		move.w	d0,ground_vel(a0)	; set ground vel
		move.b	#id_Dash,anim(a0)
		move.b	#30,dashtimer(a0)
		sfx		sfx_Dash,1
Bass_StopDashing:
		moveq	#0,d0
		move.b	(Ctrl_1_held_logical).w,d1
		andi.w	#btnLR,d1
		beq.s	.cont
	.held:
		move.w	(a4),d0
		btst	#Status_Facing,status(a0)
		beq.s	.cont
		neg.w	d0
	.cont:
		move.w	d0,ground_vel(a0)
		jsr		Player_HandleGroundAnimations
		subq.w	#1,y_pos(a0)
		move.w	default_y_radius(a0),y_radius(a0)
		bclr	#Status_Dash,status(a0)
		move.b	#5,dashtimer(a0)
		rts

		include	"Objects/Player Characters/Bass/Weapons/Bass Buster.asm"
		include	"Objects/Player Characters/Bass/Weapons/Spread Buster.asm"

; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to jump
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_Jump:	; Remove all traces of rolling later
		tst.b	character_id(a0)	; Bass or Copy Robot?
		beq.s	.cont				; if Bass, continue and ignore this block
		btst	#bitDn,(Ctrl_1_held_logical).w	; is Down held?
		bne.w	locret_118B2		; if so, don't jump
	.cont:
		move.b	(Ctrl_1_pressed_logical).w,d0
		andi.b	#btnC,d0
		beq.w	locret_118B2
		moveq	#0,d0
		move.b	angle(a0),d0
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_117FC
		addi.b	#$40,d0
		neg.b	d0
		subi.b	#$40,d0

loc_117FC:
		addi.b	#$80,d0
		movem.l	a4-a6,-(sp)
		bsr.w	CalcRoomOverHead
		movem.l	(sp)+,a4-a6
		cmpi.w	#6,d1
		blt.w	locret_118B2
		move.w	#$500,d2
		btst	#Status_Underwater,status(a0)	; Test if underwater
		beq.s	loc_1182E
		move.w	#$300,d2

loc_1182E:
		moveq	#0,d0
		move.b	angle(a0),d0
		subi.b	#$40,d0
		jsr	(GetSineCosine).w
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,x_vel(a0)
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,y_vel(a0)
		bset	#Status_InAir,status(a0)
		addq.l	#4,sp
		move.b	#1,jumping(a0)
		clr.b	stick_to_convex(a0)
		sfx	sfx_Jump
		move.w	default_y_radius(a0),y_radius(a0)
		move.b	#id_Roll,anim(a0)
		move.b	y_radius(a0),d0
		sub.b	default_y_radius(a0),d0
		ext.w	d0
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_118AE
		neg.w	d0

loc_118AE:
		sub.w	d0,y_pos(a0)

locret_118B2:
		rts

; =============== S U B R O U T I N E =======================================

Sonic_JumpHeight:
		tst.b	jumping(a0)	; is Sonic jumping?
		beq.s	Sonic_UpVelCap						; if not, branch

		move.w	#-$240,d1
		btst	#Status_Underwater,status(a0)				; is Sonic underwater?
		beq.s	loc_118D2							; if not, branch
		move.w	#-$40,d1							; Underwater-specific

loc_118D2:
		cmp.w	y_vel(a0),d1							; is y speed greater than 4? (2 if underwater)
		ble.s	locret_118E8							; if not, branch
		move.b	(Ctrl_1_logical).w,d0
		andi.b	#btnC,d0								; is button C pressed?
		bne.s	locret_118E8							; if yes, branch
		move.w	d1,y_vel(a0)							; cap jump height

locret_118E8:
		rts
; ---------------------------------------------------------------------------

Sonic_UpVelCap:
		tst.b	spin_dash_flag(a0)						; is Sonic charging his spin dash?
		bne.s	locret_118FE							; if yes, branch
		cmpi.w	#-$FC0,y_vel(a0)						; is Sonic's Y speed faster (less than) than -15.75 (-$FC0)?
		bge.s	locret_118FE							; if not, branch
		move.w	#-$FC0,y_vel(a0)						; cap upward speed

locret_118FE:
		rts

; ---------------------------------------------------------------------------
; Subroutine to slow Sonic walking up a slope
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_SlopeResist:
		move.b	angle(a0),d0
		addi.b	#$60,d0
		cmpi.b	#$C0,d0
		bcc.s	locret_11DDA
		move.b	angle(a0),d0
		jsr	(GetSineCosine).w
		muls.w	#$20,d0
		asr.l	#8,d0
		tst.w	ground_vel(a0)
		beq.s	loc_11DDC
		bmi.s	loc_11DD6
		tst.w	d0
		beq.s	locret_11DD4
		add.w	d0,ground_vel(a0)

locret_11DD4:
		rts
; ---------------------------------------------------------------------------

loc_11DD6:
		add.w	d0,ground_vel(a0)

locret_11DDA:
		rts
; ---------------------------------------------------------------------------

loc_11DDC:
		move.w	d0,d1
		bpl.s	loc_11DE2
		neg.w	d1

loc_11DE2:
		cmpi.w	#$D,d1
		bcs.s	locret_11DDA
		add.w	d0,ground_vel(a0)
		rts

; ---------------------------------------------------------------------------
; Subroutine to push Sonic down a slope while he's rolling
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_RollRepel:
		move.b	angle(a0),d0
		addi.b	#$60,d0
		cmpi.b	#$C0,d0
		bcc.s	locret_11E28
		move.b	angle(a0),d0
		jsr	(GetSineCosine).w
		muls.w	#$50,d0
		asr.l	#8,d0
		tst.w	ground_vel(a0)
		bmi.s	loc_11E1E
		tst.w	d0
		bpl.s	loc_11E18
		asr.l	#2,d0

loc_11E18:
		add.w	d0,ground_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_11E1E:
		tst.w	d0
		bmi.s	loc_11E24
		asr.l	#2,d0

loc_11E24:
		add.w	d0,ground_vel(a0)

locret_11E28:
		rts

; ---------------------------------------------------------------------------
; Subroutine to push Sonic down a slope
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_SlopeRepel:
		tst.b	stick_to_convex(a0)
		bne.s	locret_11E6E
		tst.w	move_lock(a0)
		bne.s	loc_11E86
		move.b	angle(a0),d0
		addi.b	#$18,d0
		cmpi.b	#$30,d0
		bcs.s	locret_11E6E
		move.w	ground_vel(a0),d0
		bpl.s	loc_11E4E
		neg.w	d0

loc_11E4E:
		cmpi.w	#$280,d0
		bcc.s	locret_11E6E
		move.w	#30,move_lock(a0)
		move.b	angle(a0),d0
		addi.b	#$30,d0
		cmpi.b	#$60,d0
		bcs.s	loc_11E70
		bset	#Status_InAir,status(a0)

locret_11E6E:
		rts
; ---------------------------------------------------------------------------

loc_11E70:
		cmpi.b	#$30,d0
		bcs.s	loc_11E7E
		addi.w	#$80,ground_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_11E7E:
		subi.w	#$80,ground_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_11E86:
		subq.w	#1,move_lock(a0)
		rts

; ---------------------------------------------------------------------------
; Subroutine to return Sonic's angle to 0 as he jumps
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_JumpAngle:
		move.b	angle(a0),d0	; get Sonic's angle
		beq.s	locret_11EEA	; if already 0, branch
		bpl.s	loc_11E9C	; if higher than 0, branch
		addq.b	#2,d0		; increase angle
		bcc.s	loc_11E9A
		moveq	#0,d0

loc_11E9A:
		bra.s	Player_JumpAngleSet
; ---------------------------------------------------------------------------

loc_11E9C:
		subq.b	#2,d0		; decrease angle
		bcc.s	Player_JumpAngleSet
		moveq	#0,d0

Player_JumpAngleSet:
		move.b	d0,angle(a0)
locret_11EEA:
		rts

; ---------------------------------------------------------------------------
; Subroutine for Sonic to interact with the floor and walls when he's in the air
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

; Sonic_Floor:
Player_DoLevelCollision:
		move.l	(Primary_collision_addr).w,(Collision_addr).w
		cmpi.b	#$C,top_solid_bit(a0)
		beq.s	+
		move.l	(Secondary_collision_addr).w,(Collision_addr).w
+		move.b	lrb_solid_bit(a0),d5
		move.w	x_vel(a0),d1
		move.w	y_vel(a0),d2
		jsr	(GetArcTan).w
		subi.b	#$20,d0
		andi.b	#$C0,d0
		cmpi.b	#$40,d0
		beq.w	Player_HitLeftWall
		cmpi.b	#$80,d0
		beq.w	Player_HitCeilingAndWalls
		cmpi.b	#$C0,d0
		beq.w	loc_12102
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_11F44
		sub.w	d1,x_pos(a0)
		clr.w	x_vel(a0)	; stop Sonic since he hit a wall

loc_11F44:
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_11F56
		add.w	d1,x_pos(a0)
		clr.w	x_vel(a0)	; stop Sonic since he hit a wall

loc_11F56:
		bsr.w	sub_11FD6
		tst.w	d1
		bpl.s	locret_11FD4
		move.b	y_vel(a0),d2
		addq.b	#8,d2
		neg.b	d2
		cmp.b	d2,d1
		bge.s	loc_11F6E
		cmp.b	d2,d0
		blt.s		locret_11FD4

loc_11F6E:
		move.b	d3,angle(a0)
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_11F7A
		neg.w	d1

loc_11F7A:
		add.w	d1,y_pos(a0)
		move.b	d3,d0
		addi.b	#$20,d0
		andi.b	#$40,d0
		bne.s	loc_11FAE
		move.b	d3,d0
		addi.b	#$10,d0
		andi.b	#$20,d0
		beq.s	loc_11F9C
		asr	y_vel(a0)
		bra.s	loc_11FC2
; ---------------------------------------------------------------------------

loc_11F9C:
		clr.w	y_vel(a0)
		move.w	x_vel(a0),ground_vel(a0)
		bra.w	Player_TouchFloor_Check_Spindash
; ---------------------------------------------------------------------------

loc_11FAE:
		clr.w	x_vel(a0)	; stop Sonic since he hit a wall
		cmpi.w	#$FC0,y_vel(a0)
		ble.s		loc_11FC2
		move.w	#$FC0,y_vel(a0)

loc_11FC2:
		bsr.w	Player_TouchFloor_Check_Spindash
		move.w	y_vel(a0),ground_vel(a0)
		tst.b	d3
		bpl.s	locret_11FD4
		neg.w	ground_vel(a0)

locret_11FD4:
		rts

; =============== S U B R O U T I N E =======================================

sub_11FD6:
		tst.b	(Reverse_gravity_flag).w
		beq.w	Sonic_CheckFloor
		bsr.w	Sonic_CheckCeiling
		addi.b	#$40,d3
		neg.b	d3
		subi.b	#$40,d3
		rts

; =============== S U B R O U T I N E =======================================

sub_11FEE:
		tst.b	(Reverse_gravity_flag).w
		beq.w	Sonic_CheckCeiling
		bsr.w	Sonic_CheckFloor
		addi.b	#$40,d3
		neg.b	d3
		subi.b	#$40,d3
		rts

; =============== S U B R O U T I N E =======================================

ChooseChkFloorEdge:
		tst.b	(Reverse_gravity_flag).w
		beq.w	ChkFloorEdge_Part2
		bra.w	ChkFloorEdge_ReverseGravity
; ---------------------------------------------------------------------------

Player_HitLeftWall:
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	Player_HitCeiling	; branch if distance is positive (not inside wall)
		sub.w	d1,x_pos(a0)
		clr.w	x_vel(a0)		; stop Sonic since he hit a wall
		move.w	y_vel(a0),ground_vel(a0)

Player_HitCeiling:
		bsr.w	sub_11FEE
		tst.w	d1
		bpl.s	loc_12068	; branch if distance is positive (not inside ceiling)
		neg.w	d1
		cmpi.w	#$14,d1
		bcc.s	loc_12054
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_12042
		neg.w	d1

loc_12042:
		add.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	locret_12052
		clr.w	y_vel(a0)	; stop Sonic in y since he hit a ceiling

locret_12052:
		rts
; ---------------------------------------------------------------------------

loc_12054:
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	locret_12066
		add.w	d1,x_pos(a0)
		clr.w	x_vel(a0)

locret_12066:
		rts
; ---------------------------------------------------------------------------

loc_12068:
		tst.b	(WindTunnel_flag).w
		bne.s	loc_12074
		tst.w	y_vel(a0)
		bmi.s	locret_1209C

loc_12074:
		bsr.w	sub_11FD6
		tst.w	d1
		bpl.s	locret_1209C
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_12084
		neg.w	d1

loc_12084:
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		clr.w	y_vel(a0)
		move.w	x_vel(a0),ground_vel(a0)
		bsr.w	Player_TouchFloor_Check_Spindash

locret_1209C:
		rts
; ---------------------------------------------------------------------------

Player_HitCeilingAndWalls:
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_120B0
		sub.w	d1,x_pos(a0)
		clr.w	x_vel(a0)	; stop Sonic since he hit a wall

loc_120B0:
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_120C2
		add.w	d1,x_pos(a0)
		clr.w	x_vel(a0)	; stop Sonic since he hit a wall

loc_120C2:
		bsr.w	sub_11FEE
		tst.w	d1
		bpl.s	locret_12100
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_120D2
		neg.w	d1

loc_120D2:
		sub.w	d1,y_pos(a0)
		move.b	d3,d0
		addi.b	#$20,d0
		andi.b	#$40,d0
		bne.s	loc_120EA
		clr.w	y_vel(a0)	; stop Sonic in y since he hit a ceiling
		rts
; ---------------------------------------------------------------------------

loc_120EA:
		move.b	d3,angle(a0)
		bsr.w	Player_TouchFloor_Check_Spindash
		move.w	y_vel(a0),ground_vel(a0)
		tst.b	d3
		bpl.s	locret_12100
		neg.w	ground_vel(a0)

locret_12100:
		rts
; ---------------------------------------------------------------------------

loc_12102:
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_1211A
		add.w	d1,x_pos(a0)
		clr.w	x_vel(a0)
		move.w	y_vel(a0),ground_vel(a0)

loc_1211A:
		bsr.w	sub_11FEE
		tst.w	d1
		bpl.s	loc_1213C
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_1212A
		neg.w	d1

loc_1212A:
		sub.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	locret_1213A
		clr.w	y_vel(a0)

locret_1213A:
		rts
; ---------------------------------------------------------------------------

loc_1213C:
		tst.b	(WindTunnel_flag).w
		bne.s	loc_12148
		tst.w	y_vel(a0)
		bmi.s	locret_1213A

loc_12148:
		bsr.w	sub_11FD6
		tst.w	d1
		bpl.s	locret_1213A
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_12158
		neg.w	d1

loc_12158:
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		clr.w	y_vel(a0)
		move.w	x_vel(a0),ground_vel(a0)

; =============== S U B R O U T I N E =======================================

Player_TouchFloor_Check_Spindash:
		tst.b	spin_dash_flag(a0)
		bne.s	loc_121D8
		move.b	#id_Run,anim(a0)

Sonic_ResetOnFloor:
		move.b	y_radius(a0),d0
		move.b	default_y_radius(a0),y_radius(a0)
		move.b	default_x_radius(a0),x_radius(a0)
		move.b	#id_Run,anim(a0)
		sub.b	default_y_radius(a0),d0
		ext.w	d0
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_121C4
		neg.w	d0

loc_121C4:
		move.w	d0,-(sp)
		move.b	angle(a0),d0
		addi.b	#$40,d0
		bpl.s	loc_121D2
		neg.w	(sp)

loc_121D2:
		move.w	(sp)+,d0
		add.w	d0,y_pos(a0)

loc_121D8:
		bclr	#Status_InAir,status(a0)
		moveq	#0,d0
		move.b	d0,jumping(a0)
		move.w	d0,(Chain_bonus_counter).w
		move.b	d0,scroll_delay_counter(a0)
		sfx		sfx_JumpLand
		tst.b	double_jump_flag(a0)
		beq.s	locret_12230
		tst.b	character_id(a0)
		bne.s	loc_1222A
		nop	; in case we add other characters, which we probably won't, but what if we do

loc_1222A:
		clr.b	double_jump_flag(a0)

locret_12230:
		rts

; =============== S U B R O U T I N E =======================================

Sonic_Hurt:
	if GameDebug
		tst.b	(Debug_mode_flag).w
		beq.s	+
		btst	#button_mode,(Ctrl_1_pressed_6btn).w
		beq.s	+
		move.w	#1,(Debug_placement_mode).w
		clr.b	(Ctrl_1_locked).w
		rts
; ---------------------------------------------------------------------------
+
	endif
		jsr		Player_WeaponSwitch.loadWepPal
		jsr	(MoveSprite2_TestGravity).w
		addi.w	#$30,y_vel(a0)
		btst	#Status_Underwater,status(a0)
		beq.s	loc_122F2
		subi.w	#$20,y_vel(a0)

loc_122F2:
		cmpi.w	#-$100,(Camera_min_Y_pos).w
		bne.s	loc_12302
		move.w	(Screen_Y_wrap_value).w,d0
		and.w	d0,y_pos(a0)

loc_12302:
		bsr.s	sub_12318
		bsr.w	Player_LevelBound
		bsr.w	Player_RecordPos
		jsr		sub_125E0
		jmp	(Draw_Sprite).w

; =============== S U B R O U T I N E =======================================

sub_12318:
		tst.b	(Reverse_gravity_flag).w
		bne.s	loc_12336
		move.w	(Camera_max_Y_pos).w,d0
		addi.w	#224,d0
		cmp.w	y_pos(a0),d0
		blt.s		loc_1238A
		bra.s	loc_12344
; ---------------------------------------------------------------------------

loc_12336:
		move.w	(Camera_min_Y_pos).w,d0
		cmp.w	y_pos(a0),d0
		blt.s		loc_12344
		bra.s	loc_1238A
; ---------------------------------------------------------------------------

loc_12344:
		movem.l	a4-a6,-(sp)
		bsr.w	Player_DoLevelCollision
		movem.l	(sp)+,a4-a6
		btst	#Status_InAir,status(a0)
		bne.s	locret_12388
		moveq	#0,d0
		move.w	d0,y_vel(a0)
		move.w	d0,x_vel(a0)
		move.w	d0,ground_vel(a0)
		move.b	d0,object_control(a0)
		jsr		Player_HandleGroundAnimations
		move.w	#$100,priority(a0)
		move.b	#id_BassControl,routine(a0)
		move.b	#2*60,invulnerability_timer(a0)
		clr.b	spin_dash_flag(a0)

locret_12388:
		rts
; ---------------------------------------------------------------------------

loc_1238A:
		jmp	Kill_Character(pc)

; =============== S U B R O U T I N E =======================================

Sonic_Death:
	if GameDebug
		tst.b	(Debug_mode_flag).w
		beq.s	+
		btst	#button_mode,(Ctrl_1_pressed_6btn).w
		beq.s	+
		move.w	#1,(Debug_placement_mode).w
		clr.b	(Ctrl_1_locked).w
		rts
; ---------------------------------------------------------------------------
+
	endif
		bsr.s	sub_123C2
;		jsr	(MoveSprite_TestGravity).w
		bsr.w	Player_RecordPos
		jmp		sub_125E0
;		jmp	(Draw_Sprite).w

; =============== S U B R O U T I N E =======================================

GameOver:
sub_123C2:
		cmpi.b	#id_Death,anim(a0)
		bne.s	.ret
		cmpi.b	#(7*6)+1,anim_frame(a0)
		blt.s	.ret

		st	(Scroll_lock).w
		clr.b	spin_dash_flag(a0)

		move.b	#id_BassRestart,routine(a0)
		move.w	#1*60,restart_timer(a0)
		clr.b	(Respawn_table_keep).w

	.ret:
		rts

; =============== S U B R O U T I N E =======================================

Sonic_Restart:
		tst.w	restart_timer(a0)
		beq.s	locret_1258E
		subq.w	#1,restart_timer(a0)
		bne.s	locret_1258E
		st	(Restart_level_flag).w

locret_1258E:
		rts

; =============== S U B R O U T I N E =======================================

loc_12590:
		tst.w	(H_scroll_amount).w
		bne.s	+
		tst.w	(V_scroll_amount).w
		bne.s	+
		move.b	#id_BassControl,routine(a0)
+		bsr.w	sub_125E0
		jmp	(Draw_Sprite).w

; ---------------------------------------------------------------------------
; Object Data
; ---------------------------------------------------------------------------
		include "Objects/Player Characters/Bass/Object Data/Anim - Bass.asm"
Map_Bass:		binclude "Objects/Player Characters/Bass/Object Data/Map - Bass.bin"
PLC_Bass:		binclude "Objects/Player Characters/Bass/Object Data/PLC - Bass.bin"