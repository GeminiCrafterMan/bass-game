; ---------------------------------------------------------------------------
; Bass Animation Script
; ---------------------------------------------------------------------------

Ani_Bass: offsetTable
		offsetTableEntry.w BassAni_Step
		offsetTableEntry.w BassAni_Walk
		offsetTableEntry.w BassAni_Jump
		offsetTableEntry.w BassAni_JumpTransition
		offsetTableEntry.w BassAni_Fall
		offsetTableEntry.w BassAni_Wait
		offsetTableEntry.w BassAni_Dash
		offsetTableEntry.w BassAni_Victory
		offsetTableEntry.w BassAni_Death
		offsetTableEntry.w BassAni_Hurt
		offsetTableEntry.w BassAni_Blank
		offsetTableEntry.w BassAni_FireStanding
		offsetTableEntry.w BassAni_FireWalking
		offsetTableEntry.w BassAni_FireJumpingUp
		offsetTableEntry.w BassAni_FireJumpingDiagUp
		offsetTableEntry.w BassAni_FireJumpingStraight
		offsetTableEntry.w BassAni_FireJumpingDiagDown
		offsetTableEntry.w BassAni_FireSteadyUp
		offsetTableEntry.w BassAni_FireSteadyDiagUp
		offsetTableEntry.w BassAni_FireSteadyStraight
		offsetTableEntry.w BassAni_FireSteadyDiagDown
		offsetTableEntry.w BassAni_ThrowStanding
		offsetTableEntry.w BassAni_ThrowJumping
		offsetTableEntry.w BassAni_ShieldStanding
		offsetTableEntry.w BassAni_ShieldJumping
		offsetTableEntry.w BassAni_AquaUp
		offsetTableEntry.w BassAni_AquaDiagUp
		offsetTableEntry.w BassAni_AquaNeutral
		offsetTableEntry.w BassAni_AquaFwd
		offsetTableEntry.w BassAni_AquaDiagDown
		offsetTableEntry.w BassAni_AquaDown
		offsetTableEntry.w BassAni_FireAqua
		offsetTableEntry.w BassAni_ThrowAqua
		offsetTableEntry.w BassAni_ShieldAqua

BassAni_Step:
		dc.b	8, frB_Step,  afChange,  id_Run
BassAni_Walk:
		dc.b	6, frB_Walk1, frB_Walk2, frB_Walk3, frB_Walk4, frB_Walk5, frB_Walk6, afEnd
BassAni_Jump:
		dc.b    6, frB_Jump, afEnd
BassAni_JumpTransition:
		dc.b    6, frB_JumpT, afEnd
BassAni_Fall:
		dc.b    6, frB_Fall, afEnd
BassAni_Wait:
		dc.b	4
		rept   16
			dc.b	frB_Idle1
		endr
		rept	2
			dc.b	frB_Idle2
		endr
		dc.b	afEnd
BassAni_Dash:
		dc.b    6, frB_Dash, afEnd
BassAni_Victory:
		dc.b    3, frB_Victory1, frB_Victory2, afEnd
BassAni_Death:
		dc.b  1
		rept  6
			dc.b	frB_Death1, frB_Death2, frB_Death2, frB_Death3, frB_Death4, frB_Death4, frB_Death5
		endr
		dc.b  frB_Null, frB_Null, frB_Null, afEnd
BassAni_Hurt:
;		dc.b  $77, frB_Hurt, afEnd
		dc.b  $77, frB_Hurt, frB_Stun, afBack, 1
BassAni_Blank:
		dc.b  $77, frB_Null, afEnd
BassAni_FireStanding:
		dc.b	1, frB_Fire, afEnd
BassAni_FireWalking:
		dc.b	6, frB_Walk1F, frB_Walk2F, frB_Walk3F, frB_Walk4F, frB_Walk5F, frB_Walk6F, afEnd
BassAni_FireJumpingUp:
		dc.b	1, frB_FireJUp, afEnd
BassAni_FireJumpingDiagUp:
		dc.b	1, frB_FireJDiagUp, afEnd
BassAni_FireJumpingStraight:
		dc.b	1, frB_FireJStraight, afEnd
BassAni_FireJumpingDiagDown:
		dc.b	1, frB_FireJDiagDown, afEnd
BassAni_FireSteadyUp:
		dc.b	1, frB_FireSUp, afEnd
BassAni_FireSteadyDiagUp:
		dc.b	1, frB_FireSDiagUp, afEnd
BassAni_FireSteadyStraight:
		dc.b	1, frB_FireSStraight, afEnd
BassAni_FireSteadyDiagDown:
		dc.b	1, frB_FireSDiagDown, afEnd
BassAni_ThrowStanding:
		dc.b	2, frB_ThrowS1, frB_ThrowS2, frB_ThrowS3, afBack, 1
BassAni_ThrowJumping:
		dc.b	2, frB_ThrowJ1, frB_ThrowJ2, frB_ThrowJ3, afBack, 1
BassAni_ShieldStanding:
		dc.b	2, frB_ShieldS1, frB_ShieldS2, frB_ShieldS3, afBack, 1
BassAni_ShieldJumping:
		dc.b	2, frB_ShieldJ1, frB_ShieldJ2, frB_ShieldJ3, afBack, 1
BassAni_AquaUp:
		dc.b	1, frB_AquaDriveU1, afEnd
BassAni_AquaDiagUp:
		dc.b	1, frB_AquaDriveU2, afEnd
BassAni_AquaNeutral:
		dc.b	1, frB_AquaDriveF1, afEnd
BassAni_AquaFwd:
		dc.b	1, frB_AquaDriveF2, afEnd
BassAni_AquaDiagDown:
		dc.b	1, frB_AquaDriveD1, afEnd
BassAni_AquaDown:
		dc.b	1, frB_AquaDriveD2, afEnd
BassAni_FireAqua:
		dc.b	1, frB_FireA, afEnd
BassAni_ThrowAqua:
		dc.b	2, frB_ThrowA1, frB_ThrowA2, frB_ThrowA3, afBack, 1
BassAni_ShieldAqua:
		dc.b	2, frB_ShieldA1, frB_ShieldA2, frB_ShieldA3, afBack, 1
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
id_Death:				ds.b 1
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
id_ThrowStanding:		ds.b 1
id_ThrowJumping:		ds.b 1
id_ShieldStanding:		ds.b 1
id_ShieldJumping:		ds.b 1
id_AquaUp:				ds.b 1
id_AquaDiagUp:			ds.b 1
id_AquaNeutral:			ds.b 1
id_AquaFwd:				ds.b 1
id_AquaDiagDown:		ds.b 1
id_AquaDown:			ds.b 1
id_FireAqua:			ds.b 1
id_ThrowAqua:			ds.b 1
id_ShieldAqua:			ds.b 1
	even
	dephase

; Frame IDs
	phase 0 ; Reset ds.b value to 0
frB_Null:		ds.b 1
frB_Idle1:		ds.b 1
frB_Idle2:		ds.b 1
frB_Step:		ds.b 1
frB_Walk1:		ds.b 1
frB_Walk2:		ds.b 1
frB_Walk3:		ds.b 1
frB_Walk4:		ds.b 1
frB_Walk5:		ds.b 1
frB_Walk6:		ds.b 1
frB_Fire:		ds.b 1
frB_Walk1F:		ds.b 1
frB_Walk2F:		ds.b 1
frB_Walk3F:		ds.b 1
frB_Walk4F:		ds.b 1
frB_Walk5F:		ds.b 1
frB_Walk6F:		ds.b 1
frB_Tele1:		ds.b 1
frB_Tele2:		ds.b 1
frB_Tele3:		ds.b 1
frB_Tele4:		ds.b 1
frB_Tele5:		ds.b 1
frB_Tele6:		ds.b 1
frB_Tele7:		ds.b 1
frB_Tele8:		ds.b 1
frB_Tele9:		ds.b 1
frB_Hurt:		ds.b 1
frB_Stun:		ds.b 1
frB_Victory1:	ds.b 1
frB_Victory2:	ds.b 1
frB_Death1:		ds.b 1
frB_Death2:		ds.b 1
frB_Death3:		ds.b 1
frB_Death4:		ds.b 1
frB_Death5:		ds.b 1
frB_Dash:		ds.b 1
frB_Jump:		ds.b 1
frB_JumpT:		ds.b 1
frB_Fall:		ds.b 1
frB_FireSUp:		ds.b 1
frB_FireSDiagUp:	ds.b 1
frB_FireSStraight:	ds.b 1
frB_FireSDiagDown:	ds.b 1
frB_FireJUp:		ds.b 1
frB_FireJDiagUp:	ds.b 1
frB_FireJStraight:	ds.b 1
frB_FireJDiagDown:	ds.b 1
frB_ThrowS1:		ds.b 1
frB_ThrowS2:		ds.b 1
frB_ThrowS3:		ds.b 1
frB_ThrowJ1:		ds.b 1
frB_ThrowJ2:		ds.b 1
frB_ThrowJ3:		ds.b 1
frB_ShieldS1:		ds.b 1
frB_ShieldS2:		ds.b 1
frB_ShieldS3:		ds.b 1
frB_ShieldJ1:		ds.b 1
frB_ShieldJ2:		ds.b 1
frB_ShieldJ3:		ds.b 1
frB_AquaDriveU1:	ds.b 1
frB_AquaDriveU2:	ds.b 1
frB_AquaDriveF1:	ds.b 1
frB_AquaDriveF2:	ds.b 1
frB_AquaDriveD1:	ds.b 1
frB_AquaDriveD2:	ds.b 1
frB_FireA:			ds.b 1
frB_ThrowA1:		ds.b 1
frB_ThrowA2:		ds.b 1
frB_ThrowA3:		ds.b 1
frB_ShieldA1:		ds.b 1
frB_ShieldA2:		ds.b 1
frB_ShieldA3:		ds.b 1
frB_Last:			ds.b 0
	even
	dephase