
; =============== S U B R O U T I N E =======================================

Obj_CopyRobot:
		; Load some addresses into registers
		; This is done to allow some subroutines to be
		; shared with Tails/Knuckles.
		lea	(Sonic_Knux_top_speed).w,a4
		lea	(Distance_from_screen_top).w,a5
		lea	(v_Dust).w,a6

	if GameDebug
		tst.w	(Debug_placement_mode).w
		beq.s	CopyRobot_Normal

; Debug only code
		cmpi.b	#1,(Debug_placement_type).w	; Is CopyRobot in debug object placement mode?
		jeq		(DebugMode).l			; If so, skip to debug mode routine
		; By this point, we're assuming you're in frame cycling mode
		btst	#button_mode,(Ctrl_1_pressed_6btn).w
		beq.s	+
		clr.w	(Debug_placement_mode).w	; Leave debug mode
+		addq.b	#1,mapping_frame(a0)		; Next frame
		cmpi.b	#frB_Last,mapping_frame(a0)	; Have we reached the end of CopyRobot's frames?
		blo.s		+
		clr.b	mapping_frame(a0)	; If so, reset to CopyRobot's first frame
+		bsr.w	Player_Load_PLC
		jmp	(Draw_Sprite).w
; ---------------------------------------------------------------------------

CopyRobot_Normal:
	endif
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	CopyRobot_Index(pc,d0.w),d1
		jmp	CopyRobot_Index(pc,d1.w)
; ---------------------------------------------------------------------------

CopyRobot_Index: offsetTable
ptr_CopyRobot_Init:		offsetTableEntry.w CopyRobot_Init		; 0
ptr_CopyRobot_Control:	offsetTableEntry.w CopyRobot_Control	; 2
ptr_CopyRobot_Hurt:		offsetTableEntry.w Sonic_Hurt			; 4
ptr_CopyRobot_Death:	offsetTableEntry.w Sonic_Death			; 6
ptr_CopyRobot_Restart:	offsetTableEntry.w Sonic_Restart		; 8
						offsetTableEntry.w loc_12590			; A
; ---------------------------------------------------------------------------

CopyRobot_Init:	; Routine 0
		move.l	#Map_CopyRobot,mappings(a0)
		move.b	#1,character_id(a0)
		jmp		Player_Init

; ---------------------------------------------------------------------------
; Normal state for CopyRobot
; ---------------------------------------------------------------------------

CopyRobot_Control:								; Routine 2
	if GameDebug
		tst.b	(Debug_mode_flag).w				; is debug cheat enabled?
		beq.s	locC_10BF0					; if not, branch
		bclr	#button_A,(Ctrl_1_pressed).w		; is button A pressed?
		beq.s	locC_10BCE					; if not, branch
		eori.b	#1,(Reverse_gravity_flag).w		; toggle reverse gravity

locC_10BCE:
		btst	#button_mode,(Ctrl_1_pressed_6btn).w	; is button Mode pressed?
		beq.s	locC_10BF0					; if not, branch
		move.w	#1,(Debug_placement_mode).w	; change CopyRobot into a ring/item
		clr.b	(Ctrl_1_locked).w					; unlock control
		btst	#button_C,(Ctrl_1_held).w			; was button C held before pressing B?
		beq.s	locretC_10BEE					; if not, branch
		move.w	#2,(Debug_placement_mode).w	; enter animation cycle mode

locretC_10BEE:
		rts
; ---------------------------------------------------------------------------

locC_10BF0:
	endif
		tst.b	(Ctrl_1_locked).w					; are controls locked?
		bne.s	locC_10BFC					; if yes, branch
		move.l	(Ctrl_1).w,(Ctrl_1_logical).w	; copy new held buttons, to enable joypad control

locC_10BFC:
		btst	#0,object_control(a0)				; is CopyRobot interacting with another object that holds him in place or controls his movement somehow?
		beq.s	locC_10C0C					; if yes, branch to skip CopyRobot's control
		clr.b	double_jump_flag(a0)				; enable double jump
		bra.s	locC_10C26
; ---------------------------------------------------------------------------

locC_10C0C:
		movem.l	a4-a6,-(sp)
		moveq	#0,d0
		move.b	status(a0),d0
		andi.w	#6,d0
		move.w	CopyRobot_Modes(pc,d0.w),d1
		jsr	CopyRobot_Modes(pc,d1.w)	; run CopyRobot's movement control code
		movem.l	(sp)+,a4-a6

locC_10C26:
		cmpi.w	#-$100,(Camera_min_Y_pos).w		; is vertical wrapping enabled?
		bne.s	+								; if not, branch
		move.w	(Screen_Y_wrap_value).w,d0
		and.w	d0,y_pos(a0)						; perform wrapping of CopyRobot's y position
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
+		btst	#1,object_control(a0)
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
; secondary states under state CopyRobot_Control

CopyRobot_Modes: offsetTable
		offsetTableEntry.w CopyRobot_MdNormal	; 0
		offsetTableEntry.w CopyRobot_MdAir		; 2
		offsetTableEntry.w CopyRobot_MdRoll		; 4
		offsetTableEntry.w CopyRobot_MdAir		; 6

; =============== S U B R O U T I N E =======================================

CopyRobot_MdNormal:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.w	CopyRobot_Slide
		bsr.w	Sonic_Jump
		bsr.w	Player_SlopeResist
		bsr.w	Sonic_Move
		bsr.w	Player_HandleGroundAnimations
		bsr.w	Player_LevelBound
		jsr	(MoveSprite2_TestGravity).w
		bsr.w	Call_Player_AnglePos
		bra.w	Player_SlopeRepel

; ---------------------------------------------------------------------------
; Start of subroutine CopyRobot_MdAir
; Called if Sonic is airborne, but not in a ball (thus, probably not jumping)
; CopyRobot_Stand_Freespace:
CopyRobot_MdAir:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.w	Player_HandleAirAnimations
		clr.b	dashtimer(a0)
		bclr	#Status_Dash,status(a0)
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_ChgJumpDir
		bsr.w	Player_LevelBound
		jsr	(MoveSprite_TestGravity).w
		btst	#Status_Underwater,status(a0)	; is Sonic underwater?
		beq.s	locC_10FD6				; if not, branch
		subi.w	#$28,y_vel(a0)			; reduce gravity by $28 ($38-$28=$10)

locC_10FD6:
		bsr.w	Player_JumpAngle
		bra.w	Player_DoLevelCollision
; ---------------------------------------------------------------------------
; Start of subroutine CopyRobot_MdRoll
; Called if CopyRobot is sliding
; CopyRobot_Spin_Path:
CopyRobot_MdRoll:
		bsr.w	Player_WeaponSwitch
		bsr.w	Player_Shoot
		bsr.w	Sonic_Jump.cont	; skips slide check
		bsr.w	CopyRobot_KeepSliding	; slide timer test
		bsr.w	Player_RollRepel
		bsr.w	Sonic_RollSpeed
		bsr.w	Player_LevelBound
		jsr	(MoveSprite2_TestGravity).w
		bsr.w	Call_Player_AnglePos
		move.b	#id_Dash,anim(a0)
		bra.w	Player_SlopeRepel

; ---------------------------------------------------------------------------
; Subroutine allowing CopyRobot to slide
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

CopyRobot_Slide:
		bra.s	.canMove
	.cantMove:
		rts
	.canMove:
		tst.w	move_lock(a0)
		bne.s	.cantMove
		btst	#Status_Dash,status(a0)
		bne.s	CopyRobot_KeepSliding	; keep sliding
		tst.b	dashtimer(a0)		; cooldown
		bne.s	.cantMove			; on cooldown
		btst	#bitDn,(Ctrl_1_held_logical).w	; Down...
		beq.s	.cantMove
		andi.b	#btnC,(Ctrl_1_pressed_logical).w	; ...and jump
		beq.s	.cantMove
CopyRobot_KeepSliding:
		btst	#Status_Dash,status(a0)	; is CopyRobot already sliding?
		beq.s	CopyRobot_StartSlide			; if not, start sliding
		tst.b	dashtimer(a0)			; is there time left on your slide?
		beq.s	CopyRobot_StopSliding	; if not, stop sliding
		rts
CopyRobot_StartSlide:
		bset	#Status_Dash,status(a0)
		moveq	#0,d0
		move.w	#$480,d0
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
		move.w	#bytes_to_word(24/2,20/2),y_radius(a0)
		sfx		sfx_Dash,1
CopyRobot_StopSliding:
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

; ---------------------------------------------------------------------------
		include	"Objects/Player Characters/Copy Robot/Weapons/Mega Buster.asm"
		include	"Objects/Player Characters/Copy Robot/Weapons/Carry.asm"

; ---------------------------------------------------------------------------
; Object Data
; ---------------------------------------------------------------------------
		include "Objects/Player Characters/Copy Robot/Object Data/Anim - Copy Robot.asm"
Map_CopyRobot:		binclude "Objects/Player Characters/Copy Robot/Object Data/Map - Copy Robot.bin"
PLC_CopyRobot:		binclude "Objects/Player Characters/Copy Robot/Object Data/PLC - Copy Robot.bin"