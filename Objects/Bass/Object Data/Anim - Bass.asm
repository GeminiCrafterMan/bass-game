; ---------------------------------------------------------------------------
; Bass Animation Script
; ---------------------------------------------------------------------------

Ani_Bass: offsetTable
		offsetTableEntry.w SonAni_Step
		offsetTableEntry.w SonAni_Walk
		offsetTableEntry.w SonAni_Jump
		offsetTableEntry.w SonAni_Wait
		offsetTableEntry.w SonAni_Dash
		offsetTableEntry.w SonAni_Victory
		offsetTableEntry.w SonAni_Bubble
		offsetTableEntry.w SonAni_Death
		offsetTableEntry.w SonAni_Drown
		offsetTableEntry.w SonAni_Hurt
		offsetTableEntry.w SonAni_Blank
		offsetTableEntry.w SonAni_FireStanding
		offsetTableEntry.w SonAni_FireWalking
		offsetTableEntry.w SonAni_FireJumpingUp
		offsetTableEntry.w SonAni_FireJumpingDiagUp
		offsetTableEntry.w SonAni_FireJumpingStraight
		offsetTableEntry.w SonAni_FireJumpingDiagDown
		offsetTableEntry.w SonAni_FireSteadyUp
		offsetTableEntry.w SonAni_FireSteadyDiagUp
		offsetTableEntry.w SonAni_FireSteadyStraight
		offsetTableEntry.w SonAni_FireSteadyDiagDown

SonAni_Step:
		dc.b	6, frB_Step,  afChange,  id_Run
SonAni_Walk:
		dc.b	6, frB_Walk1, frB_Walk2, frB_Walk3, frB_Walk4, frB_Walk5, frB_Walk6, afEnd
SonAni_Jump:
		dc.b  $77, frB_Jump, afEnd
SonAni_JumpTransition:
		dc.b  $77, frB_JumpT, afEnd
SonAni_Fall:
		dc.b  $77, frB_Fall, afEnd
SonAni_Wait:
		dc.b	4
		rept   16
			dc.b	frB_Idle1
		endr
		rept	2
			dc.b	frB_Idle2
		endr
		dc.b	afEnd
SonAni_Dash:
		dc.b  $77, frB_Dash, afEnd
SonAni_Victory:
		dc.b  3, frB_Victory1, frB_Victory2, afEnd
SonAni_Bubble:
		dc.b $B, $AC,	$AC,   3,   4, afChange,   id_Walk
SonAni_Death:
		dc.b  1
		rept  6
			dc.b	frB_Death1, frB_Death2, frB_Death2, frB_Death3, frB_Death4, frB_Death4, frB_Death5
		endr
		dc.b  frB_Null, frB_Null, frB_Null, afEnd
SonAni_Drown:
		dc.b  $20, $A7,	afEnd
SonAni_Hurt:
		dc.b  $77, frB_Hurt, afEnd
SonAni_Blank:
		dc.b  $77, frB_Null, afEnd
SonAni_FireStanding:
		dc.b  $77, frB_Fire, afEnd
SonAni_FireWalking:
		dc.b	6, frB_Walk1F, frB_Walk2F, frB_Walk3F, frB_Walk4F, frB_Walk5F, frB_Walk6F, afEnd
SonAni_FireJumpingUp:
		dc.b  $77, frB_FireJUp, afEnd
SonAni_FireJumpingDiagUp:
		dc.b  $77, frB_FireJDiagUp, afEnd
SonAni_FireJumpingStraight:
		dc.b  $77, frB_FireJStraight, afEnd
SonAni_FireJumpingDiagDown:
		dc.b  $77, frB_FireJDiagDown, afEnd
SonAni_FireSteadyUp:
		dc.b  $77, frB_FireSUp, afEnd
SonAni_FireSteadyDiagUp:
		dc.b  $77, frB_FireSDiagUp, afEnd
SonAni_FireSteadyStraight:
		dc.b  $77, frB_FireSStraight, afEnd
SonAni_FireSteadyDiagDown:
		dc.b  $77, frB_FireSDiagDown, afEnd
	even

; Animation IDs
	phase 0 ; Reset ds.b value to 0
id_Walk:				ds.b 1
id_Run:					ds.b 1
id_Roll:				ds.b 1
id_JumpTransition:		ds.b 1
id_Fall:				ds.b 1
id_Wait:				ds.b 1
id_Dash:				ds.b 1
id_Victory:				ds.b 1
id_GetAir:				ds.b 1
id_Death:				ds.b 1
id_Drown:				ds.b 1
id_Hurt:				ds.b 1
id_Null:				ds.b 1
id_FireStanding:		ds.b 1
id_FireWalking:			ds.b 1
id_FireJumpingUp:		ds.b 1
id_FireJumpingDiagUp:	ds.b 1
id_FireJumpingStraight:	ds.b 1
id_FireJumpingDiagDown:	ds.b 1
id_FireSteadyUp:		ds.b 1
id_FireSteadyDiagUp:	ds.b 1
id_FireSteadyStraight:	ds.b 1
id_FireSteadyDiagDown:	ds.b 1
	even
	dephase

; Frame IDs
	phase 0 ; Reset ds.b value to 0
frB_Null:	ds.b 1
frB_Idle1:	ds.b 1
frB_Idle2:	ds.b 1
frB_Step:	ds.b 1
frB_Walk1:	ds.b 1
frB_Walk2:	ds.b 1
frB_Walk3:	ds.b 1
frB_Walk4:	ds.b 1
frB_Walk5:	ds.b 1
frB_Walk6:	ds.b 1
frB_Fire:	ds.b 1
frB_Walk1F:	ds.b 1
frB_Walk2F:	ds.b 1
frB_Walk3F:	ds.b 1
frB_Walk4F:	ds.b 1
frB_Walk5F:	ds.b 1
frB_Walk6F:	ds.b 1
frB_Tele1:	ds.b 1
frB_Tele2:	ds.b 1
frB_Tele3:	ds.b 1
frB_Tele4:	ds.b 1
frB_Tele5:	ds.b 1
frB_Tele6:	ds.b 1
frB_Tele7:	ds.b 1
frB_Tele8:	ds.b 1
frB_Tele9:	ds.b 1
frB_Hurt:	ds.b 1
frB_Victory1:	ds.b 1
frB_Victory2:	ds.b 1
frB_Death1:	ds.b 1
frB_Death2:	ds.b 1
frB_Death3:	ds.b 1
frB_Death4:	ds.b 1
frB_Death5:	ds.b 1
frB_Dash:	ds.b 1
frB_Jump:	ds.b 1
frB_JumpT:	ds.b 1
frB_Fall:	ds.b 1
frB_FireSUp:		ds.b 1
frB_FireSDiagUp:	ds.b 1
frB_FireSStraight:	ds.b 1
frB_FireSDiagDown:	ds.b 1
frB_FireJUp:		ds.b 1
frB_FireJDiagUp:	ds.b 1
frB_FireJStraight:	ds.b 1
frB_FireJDiagDown:	ds.b 1
frB_Last:	ds.b 0
	even
	dephase