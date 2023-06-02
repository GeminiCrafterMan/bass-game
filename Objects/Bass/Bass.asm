
; =============== S U B R O U T I N E =======================================

Obj_Sonic:
		; Load some addresses into registers
		; This is done to allow some subroutines to be
		; shared with Tails/Knuckles.
		lea	(Sonic_Knux_top_speed).w,a4
		lea	(Distance_from_screen_top).w,a5
		lea	(v_Dust).w,a6

	if GameDebug
		tst.w	(Debug_placement_mode).w
		beq.s	Sonic_Normal

; Debug only code
		cmpi.b	#1,(Debug_placement_type).w	; Are Sonic in debug object placement mode?
		beq.s	JmpTo_DebugMode			; If so, skip to debug mode routine
		; By this point, we're assuming you're in frame cycling mode
		btst	#button_B,(Ctrl_1_pressed).w
		beq.s	+
		clr.w	(Debug_placement_mode).w	; Leave debug mode
+		addq.b	#1,mapping_frame(a0)		; Next frame
		cmpi.b	#frB_Last,mapping_frame(a0)	; Have we reached the end of Sonic's frames?
		blo.s		+
		clr.b	mapping_frame(a0)	; If so, reset to Sonic's first frame
+		bsr.w	Sonic_Load_PLC
		jmp	(Draw_Sprite).w
; ---------------------------------------------------------------------------

JmpTo_DebugMode:
		jmp	(DebugMode).l
; ---------------------------------------------------------------------------

Sonic_Normal:
	endif
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Sonic_Index(pc,d0.w),d1
		jmp	Sonic_Index(pc,d1.w)
; ---------------------------------------------------------------------------

Sonic_Index: offsetTable
ptr_Sonic_Init:		offsetTableEntry.w Sonic_Init		; 0
ptr_Sonic_Control:	offsetTableEntry.w Sonic_Control	; 2
ptr_Sonic_Hurt:		offsetTableEntry.w Sonic_Hurt		; 4
ptr_Sonic_Death:	offsetTableEntry.w Sonic_Death		; 6
ptr_Sonic_Restart:	offsetTableEntry.w Sonic_Restart	; 8
					offsetTableEntry.w loc_12590		; A
ptr_Sonic_Drown:	offsetTableEntry.w Sonic_Drown		; C
; ---------------------------------------------------------------------------

Sonic_Init:	; Routine 0
		addq.b	#2,routine(a0)				; => Obj01_Control
		move.w	#bytes_to_word(28/2,14/2),y_radius(a0)	; set y_radius and x_radius	; this sets Sonic's collision height (2*pixels)
		move.w	#bytes_to_word(28/2,14/2),default_y_radius(a0)	; set default_y_radius and default_x_radius
		move.l	#Map_Bass,mappings(a0)
		move.w	#$100,priority(a0)
		move.w	#bytes_to_word(48/2,48/2),height_pixels(a0)		; set height and width
		move.b	#4,render_flags(a0)
		clr.b	character_id(a0)
		move.w	#$600,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#$C,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$80,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		tst.b	(Last_star_post_hit).w
		bne.s	Sonic_Init_Continued

		; only happens when not starting at a checkpoint:
		move.w	#make_art_tile(ArtTile_Sonic,0,0),art_tile(a0)
		move.w	#bytes_to_word($C,$D),top_solid_bit(a0)
	.setWeaponEnergy:
		move.b	#32,(v_health).w		; this isn't used yet, but i'd like it to be here just in case.
		move.w	#bytes_to_word(32,32),(v_weapon1energy).w	; Weapon 1
		move.w	#bytes_to_word(32,32),(v_weapon2energy).w	; Weapon 2
		move.w	#bytes_to_word(32,32),(v_weapon3energy).w	; Weapon 3
		move.w	#bytes_to_word(32,32),(v_weapon4energy).w	; Weapon 4
		move.w	#bytes_to_word(32,32),(v_weapon5energy).w	; Weapon 5
		move.w	#bytes_to_word(32,32),(v_weapon6energy).w	; Weapon 6
		move.w	#bytes_to_word(32,32),(v_weapon7energy).w	; Weapon 7
		move.w	#bytes_to_word(32,32),(v_weapon8energy).w	; Weapon 8
		move.w	#bytes_to_word(32,32),(v_utility1energy).w; Treble Boost

		; only happens when not starting at a Special Stage ring:
		move.w	x_pos(a0),(Saved_X_pos).w
		move.w	y_pos(a0),(Saved_Y_pos).w
		move.w	art_tile(a0),(Saved_art_tile).w
		move.w	top_solid_bit(a0),(Saved_solid_bits).w

Sonic_Init_Continued:
		move.b	#30,air_left(a0)
		subi.w	#$20,x_pos(a0)
		addi.w	#4,y_pos(a0)
		bsr.w	Reset_Player_Position_Array
		addi.w	#$20,x_pos(a0)
		subi.w	#4,y_pos(a0)
		rts

; ---------------------------------------------------------------------------
; Normal state for Sonic
; ---------------------------------------------------------------------------

Sonic_Control:								; Routine 2
	if GameDebug
		tst.b	(Debug_mode_flag).w				; is debug cheat enabled?
		beq.s	loc_10BF0					; if not, branch
		bclr	#button_A,(Ctrl_1_pressed).w		; is button A pressed?
		beq.s	loc_10BCE					; if not, branch
		eori.b	#1,(Reverse_gravity_flag).w		; toggle reverse gravity

loc_10BCE:
		btst	#button_B,(Ctrl_1_pressed).w		; is button B pressed?
		beq.s	loc_10BF0					; if not, branch
		move.w	#1,(Debug_placement_mode).w	; change Sonic into a ring/item
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
		btst	#0,object_control(a0)				; is Sonic interacting with another object that holds him in place or controls his movement somehow?
		beq.s	loc_10C0C					; if yes, branch to skip Sonic's control
		clr.b	double_jump_flag(a0)				; enable double jump
		bra.s	loc_10C26
; ---------------------------------------------------------------------------

loc_10C0C:
		movem.l	a4-a6,-(sp)
		moveq	#0,d0
		move.b	status(a0),d0
		andi.w	#6,d0
		move.w	Sonic_Modes(pc,d0.w),d1
		jsr	Sonic_Modes(pc,d1.w)	; run Sonic's movement control code
		movem.l	(sp)+,a4-a6

loc_10C26:
		cmpi.w	#-$100,(Camera_min_Y_pos).w		; is vertical wrapping enabled?
		bne.s	+								; if not, branch
		move.w	(Screen_Y_wrap_value).w,d0
		and.w	d0,y_pos(a0)						; perform wrapping of Sonic's y position
+		bsr.s	Sonic_Display
		bsr.w	Sonic_RecordPos
		bsr.w	Sonic_Water
		move.b	(Primary_Angle).w,next_tilt(a0)
		move.b	(Secondary_Angle).w,tilt(a0)
		tst.b	(WindTunnel_flag).w
		beq.s	+
		tst.b	anim(a0)
		bne.s	+
		move.b	prev_anim(a0),anim(a0)
+		btst	#1,object_control(a0)
		bne.s	++
		bsr.w	Animate_Sonic
		tst.b	(Reverse_gravity_flag).w
		beq.s	+
		eori.b	#2,render_flags(a0)
+		bsr.w	Sonic_Load_PLC
+		move.b	object_control(a0),d0
		andi.b	#$A0,d0
		bne.s	+
		jsr	TouchResponse(pc)
+		rts
; ---------------------------------------------------------------------------
; secondary states under state Sonic_Control

Sonic_Modes: offsetTable
		offsetTableEntry.w Sonic_MdNormal	; 0
		offsetTableEntry.w Sonic_MdAir		; 2
		offsetTableEntry.w Sonic_MdRoll		; 4
		offsetTableEntry.w Sonic_MdAir		; 6

; =============== S U B R O U T I N E =======================================

Sonic_Display:
		tst.b	shoottimer(a0)
		beq.s	.noDecShoot
		subq.b	#1,shoottimer(a0)
		bne.s	.noDecShoot
		bclr	#Status_Shooting,status(a0)
	.noDecShoot:
		tst.b	dashtimer(a0)
		beq.s	.noDecDash
		subq.b	#1,dashtimer(a0)
	.noDecDash:
		move.b	invulnerability_timer(a0),d0
		beq.s	loc_10CA6
		subq.b	#1,invulnerability_timer(a0)
		lsr.b	#3,d0
		bcc.s	Sonic_ChkInvin

loc_10CA6:
		jsr	(Draw_Sprite).w

Sonic_ChkInvin:										; checks if invincibility has expired and disables it if it has.
		btst	#Status_Invincible,status_secondary(a0)
		beq.s	Sonic_ChkShoes
		tst.b	invincibility_timer(a0)
		beq.s	Sonic_ChkShoes						; if there wasn't any time left, that means we're in Super/Hyper mode
		move.b	(Level_frame_counter+1).w,d0
		andi.b	#7,d0
		bne.s	Sonic_ChkShoes
		subq.b	#1,invincibility_timer(a0)				; reduce invincibility_timer only on every 8th frame
		bne.s	Sonic_ChkShoes						; if time is still left, branch
		tst.b	(Level_end_flag).w						; don't change music if level is end
		bne.s	Sonic_RmvInvin
		tst.b	(Boss_flag).w								; don't change music if in a boss fight
		bne.s	Sonic_RmvInvin
		cmpi.b	#12,air_left(a0)						; don't change music if drowning
		blo.s		Sonic_RmvInvin
		move.w	(Current_music).w,d0
		jsr	(SMPS_QueueSound1).w					; stop playing invincibility theme and resume normal level music

Sonic_RmvInvin:
		bclr	#Status_Invincible,status_secondary(a0)

Sonic_ChkShoes:										; checks if Speed Shoes have expired and disables them if they have.
		btst	#Status_SpeedShoes,status_secondary(a0)	; does Sonic have speed shoes?
		beq.s	Sonic_ExitChk						; if so, branch
		tst.b	speed_shoes_timer(a0)
		beq.s	Sonic_ExitChk
		move.b	(Level_frame_counter+1).w,d0
		andi.b	#7,d0
		bne.s	Sonic_ExitChk
		subq.b	#1,speed_shoes_timer(a0)				; reduce speed_shoes_timer only on every 8th frame
		bne.s	Sonic_ExitChk
		move.w	#$600,(a4)							; set Sonic_Knux_top_speed
		move.w	#$C,2(a4)							; set Sonic_Knux_acceleration
		move.w	#$80,4(a4)							; set Sonic_Knux_deceleration
		bclr	#Status_SpeedShoes,status_secondary(a0)
		music	mus_Slowdown						; run music at normal speed

Sonic_ExitChk:
		rts
; ---------------------------------------------------------------------------
; Subroutine to record Sonic's previous positions for invincibility stars
; and input/status flags for Tails' AI to follow
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_RecordPos:
		move.w	(Pos_table_index).w,d0
		lea	(Pos_table).w,a1
		lea	(a1,d0.w),a1
		move.w	x_pos(a0),(a1)+			; write location to pos_table
		move.w	y_pos(a0),(a1)+
		addq.b	#4,(Pos_table_byte).w		; increment index as the post-increments did a1
		rts

; =============== S U B R O U T I N E =======================================

Reset_Player_Position_Array:
		lea	(Pos_table).w,a1
		moveq	#$3F,d0

-		move.w	x_pos(a0),(a1)+			; write location to pos_table
		move.w	y_pos(a0),(a1)+
		dbf	d0,-
		clr.w	(Pos_table_index).w
		rts
; ---------------------------------------------------------------------------
; Subroutine for Sonic when he's underwater
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_Water:
		tst.b	(Water_flag).w			; does level have water?
		bne.s	Sonic_InWater		; if yes, branch

locret_10E2C:
		rts
; ---------------------------------------------------------------------------

Sonic_InWater:
		move.w	(Water_level).w,d0
		cmp.w	y_pos(a0),d0									; is Sonic above the water?
		bge.s	Sonic_OutWater								; if yes, branch
		bset	#Status_Underwater,status(a0)						; set underwater flag
		bne.s	locret_10E2C									; if already underwater, branch
		addq.b	#1,(Water_entered_counter).w
		movea.w	a0,a1
		jsr		Player_ResetAirTimer
		move.l	#Obj_Air_CountDown,(v_Breathing_bubbles).w		; load Sonic's breathing bubbles
		move.b	#$81,(v_Breathing_bubbles+subtype).w
		move.w	#$300,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#6,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$40,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		tst.b	object_control(a0)
		bne.s	locret_10E2C
		asr	x_vel(a0)
		asr	y_vel(a0)				; memory operands can only be shifted one bit at a time
		asr	y_vel(a0)
		beq.s	locret_10E2C
		move.w	#bytes_to_word(1,0),anim(a6)	; splash animation, write 1 to anim and clear prev_anim
		sfx	sfx_Splash,1				; splash sound
; ---------------------------------------------------------------------------

Sonic_OutWater:
		bclr	#Status_Underwater,status(a0)	; unset underwater flag
		beq.s	locret_10E2C				; if already above water, branch
		addq.b	#1,(Water_entered_counter).w

		movea.w	a0,a1
		jsr		Player_ResetAirTimer
		move.w	#$600,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#$C,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$80,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		cmpi.b	#id_SonicHurt,routine(a0)		; is Sonic falling back from getting hurt?
		beq.s	loc_10EFC			; if yes, branch
		tst.b	object_control(a0)
		bne.s	loc_10EFC
		move.w	y_vel(a0),d0
		cmpi.w	#-$400,d0
		blt.s		loc_10EFC
		asl	y_vel(a0)

loc_10EFC:
		cmpi.b	#id_Null,anim(a0)	; is Sonic in his 'blank' animation
		beq.w	locret_10E2C			; if so, branch
		tst.w	y_vel(a0)
		beq.w	locret_10E2C
		move.w	#bytes_to_word(1,0),anim(a6)	; splash animation, write 1 to anim and clear prev_anim
		cmpi.w	#-$1000,y_vel(a0)
		bgt.s	loc_10F22
		move.w	#-$1000,y_vel(a0)	; limit upward y velocity exiting the water

loc_10F22:
		sfx	sfx_Splash,1				; splash sound

; =============== S U B R O U T I N E =======================================

Sonic_MdNormal:
		bsr.w	Bass_WeaponSwitch
		bsr.w	Bass_Shoot
		bsr.w	Bass_Dash
		bsr.w	Sonic_Jump
		bsr.w	Player_SlopeResist
		bsr.w	Sonic_Move
		bsr.w	Bass_HandleGroundAnimations
		bsr.w	Player_LevelBound
		jsr	(MoveSprite2_TestGravity).w
		bsr.s	Call_Player_AnglePos
		bra.w	Player_SlopeRepel

; =============== S U B R O U T I N E =======================================

Call_Player_AnglePos:
		tst.b	(Reverse_gravity_flag).w
		beq.w	Player_AnglePos
		move.b	angle(a0),d0
		addi.b	#$40,d0
		neg.b	d0
		subi.b	#$40,d0
		move.b	d0,angle(a0)
		bsr.w	Player_AnglePos
		move.b	angle(a0),d0
		addi.b	#$40,d0
		neg.b	d0
		subi.b	#$40,d0
		move.b	d0,angle(a0)
		rts
; ---------------------------------------------------------------------------
; Start of subroutine Sonic_MdAir
; Called if Sonic is airborne, but not in a ball (thus, probably not jumping)
; Sonic_Stand_Freespace:
Sonic_MdAir:
		bsr.w	Bass_WeaponSwitch
		bsr.w	Bass_Shoot
		bsr.w	Bass_HandleAirAnimations
		clr.b	dashtimer(a0)
		bclr	#Status_Dash,status(a0)
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_ChgJumpDir
		bsr.w	Player_LevelBound
		jsr	(MoveSprite_TestGravity).w
		btst	#Status_Underwater,status(a0)	; is Sonic underwater?
		beq.s	loc_10FD6				; if not, branch
		subi.w	#$28,y_vel(a0)			; reduce gravity by $28 ($38-$28=$10)

loc_10FD6:
		bsr.w	Player_JumpAngle
		bra.w	Player_DoLevelCollision
; ---------------------------------------------------------------------------
; Start of subroutine Sonic_MdRoll
; Called if Sonic is in a ball, but not airborne (thus, probably rolling)
; Sonic_Spin_Path:
Sonic_MdRoll:
		bsr.w	Bass_WeaponSwitch
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
		jsr		Bass_HandleGroundAnimations

loc_11412:
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
		jsr		Bass_HandleGroundAnimations
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
		tst.b	flip_type(a0)
		bmi.s	locret_11480
		sfx		sfx_Skid
		move.b	#id_Null,anim(a0)
		bclr	#Status_Facing,status(a0)
		cmpi.b	#12,air_left(a0)
		bcs.s	locret_11480
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
		jsr		Bass_HandleGroundAnimations

loc_1149C:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_114AA
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_114AA
		move.w	d6,d0

loc_114AA:
		move.w	d0,ground_vel(a0)
		jsr		Bass_HandleGroundAnimations
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
		tst.b	flip_type(a0)
		bmi.s	locret_11506
		sfx		sfx_Skid
		move.b	#id_Null,anim(a0)
		bset	#Status_Facing,status(a0)
		cmpi.b	#12,air_left(a0)
		bcs.s	locret_11506
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
; Subroutine allowing Bass to switch weapons
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Bass_WeaponSwitch:
		tst.b	(v_bulletsonscreen).w
		bne.s	.ret
		move.b	(Ctrl_1_pressed_logical_6btn).w,d2
		btst	#button_X,d2	; X check
		bne.s	.upWep
		btst	#button_Y,d2	; Y check
		bne.s	.resetWep
		btst	#button_Z,d2	; Z check
		bne.s	.downWep
	.ret:
		rts
	.upWep:
		subq.b	#1,(v_weapon).w	; subtract 1
		tst.b	(v_weapon).w	; if above 0
		bge.s	.loadWepPal			; return
		move.b	#9,(v_weapon).w	; wrap back around if above
		bra.s	.loadWepPal
	.downWep:
		addq.b	#1,(v_weapon).w	; add 1
		cmpi.b	#10,(v_weapon).w	; if below 9
		blt.s	.loadWepPal			; return
	.resetWep:
		clr.b	(v_weapon).w	; wrap back around if above
	; continue into .loadWepPal
	.loadWepPal:
;		bclr	#4,obStatus(a0)
		clr.b	(v_charge).w	; clear charge
		clr.b	(v_chargecyctimer).w	; clear charge
		clr.b	(v_chargecycnum).w	; clear charge

	; this needs to be changed if we add more characters, but i think for bass it'll be fine
		moveq	#0,d0
		move.b	(v_weapon).w,d0
		ext.w	d0	; sign extend
		move.w	d0,d1
		jsr	(LoadPalette).w
		move.w	d1,d0
		jmp	(LoadPalette_Immediate).w

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
		beq.w	Bass_StartDash.stopDashing	; if not, stop dashing
		rts
Bass_StartDash:
		bset	#Status_Dash,status(a0)
		moveq	#0,d0
		move.w	#$500,d0
		btst	#Status_Facing,status(a0)
		beq.s	.noFlip
		neg.w	d0
	.noFlip:
		move.w	d0,ground_vel(a0)	; set ground vel
		move.b	#id_Dash,anim(a0)
		move.b	#30,dashtimer(a0)
		sfx		sfx_Dash,1
	.stopDashing:
		move.b	(Ctrl_1_held_logical).w,d0
		andi.w	#btnDir,d0
		bne.s	.held
		clr.w	ground_vel(a0)
	.held:
		jsr		Bass_HandleGroundAnimations
		subq.w	#1,y_pos(a0)
		move.w	default_y_radius(a0),y_radius(a0)
		bclr	#Status_Dash,status(a0)
		move.b	#5,dashtimer(a0)
		rts

; ---------------------------------------------------------------------------
; Subroutine allowing Bass to shoot
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Bass_Shoot:
		moveq	#0,d0
		move.b	(v_weapon).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.weaponLUT(pc,d0.w),a1
		jmp		(a1)
	.weaponLUT:
		dc.l	Weapon_BassBuster
		dc.l	Weapon_Test	; Master Wep 1 - Chill Spike, at the moment
		dc.l	Weapon_Test	; Master Wep 2 - Solar Blaze, at the moment
		dc.l	Weapon_Test	; Master Wep 3 - Triple Blade, at the moment
		dc.l	Weapon_Test	; Master Wep 4
		dc.l	Weapon_Test	; Master Wep 5
		dc.l	Weapon_Test	; Master Wep 6
		dc.l	Weapon_Test	; Master Wep 7
		dc.l	Weapon_Test	; Master Wep 8
		dc.l	Weapon_Test	; Treble Boost

FireWeapon:
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	WepType_Normal			; 2 of 8 cardinal directions, Mega Buster
		dc.l	WepType_SemiCardinal	; 7 of 8 cardinal directions, Bass Buster
;		dc.l	WepType_Cardinal		; 8 of 8 cardinal directions, Metal Blade
	
WepType_Normal:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#Status_Facing,status(a1)
		subi.w	#17,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#Status_Facing,status(a1)
		addi.w	#17,x_pos(a1)
	.doneFlip:
		move.w	ground_vel(a1),x_vel(a1)	; actually make it go
		rts

WepType_SemiCardinal:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		clr.w	ground_vel(a0)	; stop user in place
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	WepType_SemiCardinal_up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.w	WepType_SemiCardinal_diagdown
WepType_SemiCardinal_straight:
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#Status_Facing,status(a1)
		subi.w	#17,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#Status_Facing,status(a1)
		addi.w	#17,x_pos(a1)
	.doneFlip:
		move.w	ground_vel(a1),x_vel(a1)	; actually make it go
		rts
WepType_SemiCardinal_up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
	.straightup:
		btst	#Status_Facing,status(a0)
		beq.s	.upNotFlipped
		bset	#Status_Facing,status(a1)
		subi.w	#5,x_pos(a1)
		bra.s	.upDoneFlip
	.upNotFlipped:
		bclr	#Status_Facing,status(a1)
		addi.w	#5,x_pos(a1)
	.upDoneFlip:
		neg.w	ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		rts
	.diagup:
		asr.w	#1,ground_vel(a1)
		neg.w	ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		neg.w	ground_vel(a1)
		btst	#Status_Facing,status(a0)
		beq.s	.diagupNotFlipped
		bset	#Status_Facing,status(a1)
		subi.w	#5,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.diagupDoneFlip
	.diagupNotFlipped:
		bclr	#Status_Facing,status(a1)
		addi.w	#5,x_pos(a1)
	.diagupDoneFlip:
		move.w	ground_vel(a1),x_vel(a1)
		rts
WepType_SemiCardinal_diagdown:
		asr.w	#1,ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#Status_Facing,status(a1)
		subi.w	#5,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#Status_Facing,status(a1)
		addi.w	#5,x_pos(a1)
	.doneFlip:
		move.w	ground_vel(a1),x_vel(a1)
		rts

		include	"Objects/Bass/Weapons/Bass Buster.asm"
		include	"Objects/Bass/Weapons/Test.asm"

; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to jump
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Sonic_Jump:	; Remove all traces of rolling later
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
		sfx		sfx_JumpLand
		move.b	d0,flip_angle(a0)
		move.b	d0,flip_type(a0)
		move.b	d0,scroll_delay_counter(a0)
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
		btst	#button_B,(Ctrl_1_pressed).w
		beq.s	+
		move.w	#1,(Debug_placement_mode).w
		clr.b	(Ctrl_1_locked).w
		rts
; ---------------------------------------------------------------------------
+
	endif
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
		bsr.w	Sonic_RecordPos
		bsr.w	sub_125E0
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
		jsr		Bass_HandleGroundAnimations
		move.w	#$100,priority(a0)
		move.b	#id_SonicControl,routine(a0)
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
		btst	#button_B,(Ctrl_1_pressed).w
		beq.s	+
		move.w	#1,(Debug_placement_mode).w
		clr.b	(Ctrl_1_locked).w
		rts
; ---------------------------------------------------------------------------
+
	endif
		bsr.s	sub_123C2
;		jsr	(MoveSprite_TestGravity).w
		bsr.w	Sonic_RecordPos
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

		move.b	#id_SonicRestart,routine(a0)
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
		move.b	#id_SonicControl,routine(a0)
+		bsr.s	sub_125E0
		jmp	(Draw_Sprite).w

; =============== S U B R O U T I N E =======================================

Sonic_Drown:
	if GameDebug
		tst.b	(Debug_mode_flag).w
		beq.s	+
		btst	#button_B,(Ctrl_1_pressed).w
		beq.s	+
		move.w	#1,(Debug_placement_mode).w
		clr.b	(Ctrl_1_locked).w
		rts
; ---------------------------------------------------------------------------
+
	endif
		jsr	(MoveSprite2_TestGravity).w
		addi.w	#$10,y_vel(a0)
		bsr.w	Sonic_RecordPos
		bsr.s	sub_125E0
		jmp	(Draw_Sprite).w

; =============== S U B R O U T I N E =======================================

sub_125E0:
		bsr.s	Animate_Sonic
		tst.b	(Reverse_gravity_flag).w
		beq.s	+
		eori.b	#2,render_flags(a0)
+		bra.w	Sonic_Load_PLC

; =============== S U B R O U T I N E =======================================

Animate_Sonic:
		lea	Ani_Bass(pc),a1
		moveq	#0,d0
		move.b	anim(a0),d0
		cmp.b	prev_anim(a0),d0
		beq.s	SAnim_Do
		move.b	d0,prev_anim(a0)
		clr.b	anim_frame(a0)
		clr.b	anim_frame_timer(a0)

SAnim_Do:
		add.w	d0,d0
		adda.w	(a1,d0.w),a1
		move.b	(a1),d0
		move.b	status(a0),d1
		andi.b	#1,d1
		andi.b	#-4,render_flags(a0)
		or.b	d1,render_flags(a0)
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	SAnim_Delay
		move.b	d0,anim_frame_timer(a0)

SAnim_Do2:
		moveq	#0,d1
		move.b	anim_frame(a0),d1
		move.b	1(a1,d1.w),d0
		cmpi.b	#-4,d0
		bcc.s	SAnim_End_FF

SAnim_Next:
		move.b	d0,mapping_frame(a0)
		addq.b	#1,anim_frame(a0)

SAnim_Delay:
		rts
; ---------------------------------------------------------------------------

SAnim_End_FF:
		addq.b	#1,d0
		bne.s	SAnim_End_FE
		clr.b	anim_frame(a0)
		move.b	1(a1),d0
		bra.s	SAnim_Next
; ---------------------------------------------------------------------------

SAnim_End_FE:
		addq.b	#1,d0
		bne.s	SAnim_End_FD
		move.b	2(a1,d1.w),d0
		sub.b	d0,anim_frame(a0)
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0
		bra.s	SAnim_Next
; ---------------------------------------------------------------------------

SAnim_End_FD:
		addq.b	#1,d0
		bne.s	SAnim_End
		move.b	2(a1,d1.w),anim(a0)

SAnim_End:
		rts
; ---------------------------------------------------------------------------

loc_127C0:
		move.b	flip_type(a0),d1
		andi.w	#$7F,d1
		bne.s	loc_12872
		move.b	flip_angle(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		bne.s	loc_1281E
		andi.b	#-4,render_flags(a0)
		tst.b	flip_type(a0)
		bpl.s	loc_12806
		ori.b	#2,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0
		bra.s	loc_1280A
; ---------------------------------------------------------------------------

loc_12806:
		addi.b	#$B,d0

loc_1280A:
		divu.w	#$16,d0
		addi.b	#$31,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_1281E:
		andi.b	#-4,render_flags(a0)
		ori.b	#3,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0
		divu.w	#$16,d0
		addi.b	#$31,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

byte_1286E:
		dc.b 0
		dc.b $3D
		dc.b $49
		dc.b $49
; ---------------------------------------------------------------------------

loc_12872:
		move.b	byte_1286E(pc,d1.w),d3
		cmpi.b	#1,d1
		bne.s	loc_128CA
		move.b	flip_angle(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		bne.s	loc_128A8
		andi.b	#-4,render_flags(a0)
		addi.b	#-8,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_128A8:
		andi.b	#-4,render_flags(a0)
		ori.b	#1,render_flags(a0)
		addi.b	#-8,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_128CA:
		cmpi.b	#2,d1
		bne.s	loc_12920
		move.b	flip_angle(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		bne.s	loc_128FC
		andi.b	#-4,render_flags(a0)
		addi.b	#$B,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_128FC:
		andi.b	#-4,render_flags(a0)
		ori.b	#3,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_12920:
		cmpi.b	#3,d1
		bne.s	loc_1297C
		move.b	flip_angle(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		bne.s	loc_1295A
		andi.b	#-4,render_flags(a0)
		ori.b	#2,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_1295A:
		andi.b	#-4,render_flags(a0)
		ori.b	#1,render_flags(a0)
		addi.b	#$B,d0
		divu.w	#$16,d0
		add.b	d3,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_1297C:
		cmpi.b	#4,d1
		bne.s	loc_129F6
		move.b	flip_angle(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		bne.s	loc_129BC
		andi.b	#-4,render_flags(a0)
		tst.b	flip_type(a0)
		bpl.s	loc_129A4
		addi.b	#$B,d0
		bra.s	loc_129A8
; ---------------------------------------------------------------------------

loc_129A4:
		addi.b	#$B,d0

loc_129A8:
		divu.w	#$16,d0
		addi.b	#$31,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_129BC:
		andi.b	#-4,render_flags(a0)
		tst.b	flip_type(a0)
		bpl.s	loc_129D6
		ori.b	#3,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0
		bra.s	loc_129E2
; ---------------------------------------------------------------------------

loc_129D6:
		ori.b	#3,render_flags(a0)
		neg.b	d0
		addi.b	#$8F,d0

loc_129E2:
		divu.w	#$16,d0
		addi.b	#$31,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_129F6:
		move.b	flip_angle(a0),d0
		andi.b	#-4,render_flags(a0)
		moveq	#0,d1
		move.b	status(a0),d2
		andi.b	#1,d2
		beq.s	loc_12A12
		ori.b	#1,render_flags(a0)

loc_12A12:
		addi.b	#$B,d0
		divu.w	#$16,d0
		addi.b	#$31,d0
		move.b	d0,mapping_frame(a0)
		clr.b	anim_frame_timer(a0)
		rts

; =============== S U B R O U T I N E =======================================

Sonic_Load_PLC:
		moveq	#0,d0
		move.b	mapping_frame(a0),d0

Sonic_Load_PLC2:
		cmp.b	(Player_prev_frame).w,d0
		beq.s	+
		move.b	d0,(Player_prev_frame).w
		lea	(PLC_Bass).l,a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	+
		move.w	#tiles_to_bytes(ArtTile_Sonic),d4
		move.l	#ArtUnc_Bass>>1,d6

-		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#4,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(Add_To_DMA_Queue).w
		dbf	d5,-
+		rts

Obj_DeathOrbs:
		move.l	#Map_Bass,mappings(a0)
		move.w	#$100,priority(a0)
        move.w	#make_art_tile(ArtTile_Sonic,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
        jsr     SpeedToPos
		move.b	(Player_1+mapping_frame).w,mapping_frame(a0)
        jmp     DisplaySprite

Bass_HandleGroundAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	AnimType_GroundNormalFire
		dc.l	AnimType_GroundSemiCardinalFire
;		dc.l	AnimType_GroundThrow
	.notShooting:
;		cmpi.b	#id_FireSteadyUp,anim(a0)
;		blt.s	.notSteady
;		cmpi.b	#id_FireSteadyDiagDown,anim(a0)
;		bgt.s	.notSteady
;		clr.b	move_lock(a0)
;
;	.notSteady:
		tst.w	ground_vel(a0)
		bne.s	.moving
		move.b	#id_Wait,anim(a0)
		rts
	.moving:
		cmpi.b	#id_Run,anim(a0)
		ble.s	.alreadyGoing
		cmpi.b	#id_Dash,prev_anim(a0)
		bne.s	.toWalk
		move.b	#id_Run,anim(a0)
		rts
	.toWalk:
;		move.w	#bytes_to_word(id_Walk,id_Walk),anim(a0)	; also goes to prev_anim
		move.b	#id_Walk,anim(a0)
	.alreadyGoing:
		rts

AnimType_GroundNormalFire:
		cmpi.b	#id_Walk,anim(a0)
		beq.s	.step
		cmpi.b	#id_Run,anim(a0)
		beq.s	.walk
		move.b	#id_FireStanding,anim(a0)
		rts
	.step:
		move.b	#id_FireStanding,anim(a0)
		move.b	#id_FireWalking,prev_anim(a0)	; should make this change to that when it's done
		rts
	.walk:
		move.b	#id_FireWalking,anim(a0)
		rts

AnimType_GroundSemiCardinalFire:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_FireSteadyStraight,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_FireSteadyUp,anim(a0)
		rts
	.diagup:
		move.b	#id_FireSteadyDiagUp,anim(a0)
		rts
	.diagdown:
		move.b	#id_FireSteadyDiagDown,anim(a0)
		rts

Bass_HandleAirAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	AnimType_JumpNormalFire
		dc.l	AnimType_JumpSemiCardinalFire
;		dc.l	AnimType_JumpThrow
	.notShooting:
		tst.w	y_vel(a0)
		bmi.s	.rising
		cmpi.w	#$80,y_vel(a0)
		bge.s	.falling
	.neither:
		move.b	#id_JumpTransition,anim(a0)
		rts
	.falling:
		move.b	#id_Fall,anim(a0)
		rts
	.rising:
		move.b	#id_Roll,anim(a0)
		rts

AnimType_JumpNormalFire:
		move.b	#id_FireJumpingStraight,anim(a0)
		rts

AnimType_JumpSemiCardinalFire:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_FireJumpingStraight,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_FireJumpingUp,anim(a0)
		rts
	.diagup:
		move.b	#id_FireJumpingDiagUp,anim(a0)
		rts
	.diagdown:
		move.b	#id_FireJumpingDiagDown,anim(a0)
		rts

; ---------------------------------------------------------------------------
; Object Data
; ---------------------------------------------------------------------------
		include "Objects/Bass/Object Data/Anim - Bass.asm"
Map_Bass:		binclude "Objects/Bass/Object Data/Map - Bass.bin"
PLC_Bass:		binclude "Objects/Bass/Object Data/PLC - Bass.bin"