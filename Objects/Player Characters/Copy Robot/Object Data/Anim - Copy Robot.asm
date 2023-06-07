; ---------------------------------------------------------------------------
; Copy Robot/Mega Man? Animation Script
; ---------------------------------------------------------------------------

Ani_CopyRobot: offsetTable
		offsetTableEntry.w CopyAni_Step
		offsetTableEntry.w CopyAni_Walk
		offsetTableEntry.w CopyAni_Jump
		offsetTableEntry.w CopyAni_JumpTransition
		offsetTableEntry.w CopyAni_Fall
		offsetTableEntry.w CopyAni_Wait
		offsetTableEntry.w CopyAni_Dash
		offsetTableEntry.w CopyAni_Victory
		offsetTableEntry.w CopyAni_Death
		offsetTableEntry.w CopyAni_Hurt
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_FireStanding
		offsetTableEntry.w CopyAni_FireWalking
		offsetTableEntry.w CopyAni_FireJumpingUp
		offsetTableEntry.w CopyAni_FireJumpingDiagUp
		offsetTableEntry.w CopyAni_FireJumpingStraight
		offsetTableEntry.w CopyAni_FireJumpingDiagDown
		offsetTableEntry.w CopyAni_FireSteadyUp
		offsetTableEntry.w CopyAni_FireSteadyDiagUp
		offsetTableEntry.w CopyAni_FireSteadyStraight
		offsetTableEntry.w CopyAni_FireSteadyDiagDown

CopyAni_Step:
		dc.b	6, frC_Step,  afChange,  id_Run
		even
CopyAni_Walk:
		dc.b	6, frC_Walk1, frC_Walk2, frC_Walk3, frC_Walk4, frC_Walk5, frC_Walk6, afEnd
		even
CopyAni_Jump:
		dc.b    6, frC_Jump, afEnd
		even
CopyAni_JumpTransition:
		dc.b    6, frC_JumpT, afEnd
		even
CopyAni_Fall:
		dc.b    6, frC_Fall, afEnd
		even
CopyAni_Wait:
		dc.b	4
		rept   8
			dc.b	frC_Idle1, frC_Idle2
		endr
			dc.b	frC_Idle3, frC_Idle4
		dc.b	afEnd
		even
CopyAni_Dash:
		dc.b    6, frC_Dash, afEnd
		even
CopyAni_Victory:
		dc.b    3, frC_Victory1, frC_Victory2, afEnd
		even
CopyAni_Death:
		dc.b  1
		rept  6
			dc.b	frC_Death1, frC_Death2, frC_Death2, frC_Death3, frC_Death4, frC_Death4, frC_Death5
		endr
		dc.b  frC_Null, frC_Null, frC_Null, afEnd
		even
CopyAni_Hurt:
		dc.b  $77, frC_Hurt, afEnd
		even
CopyAni_Blank:
		dc.b  $77, frC_Null, afEnd
		even
CopyAni_FireStanding:
		dc.b    6, frC_Fire, afEnd
		even
CopyAni_FireWalking:
		dc.b	6, frC_Walk1F, frC_Walk2F, frC_Walk3F, frC_Walk4F, frC_Walk5F, frC_Walk6F, afEnd
		even
CopyAni_FireJumpingUp:
		dc.b  $77, frC_FireJUp, afEnd
		even
CopyAni_FireJumpingDiagUp:
		dc.b  $77, frC_FireJDiagUp, afEnd
		even
CopyAni_FireJumpingStraight:
		dc.b  $77, frC_FireJStraight, afEnd
		even
CopyAni_FireJumpingDiagDown:
		dc.b  $77, frC_FireJDiagDown, afEnd
		even
CopyAni_FireSteadyUp:
		dc.b  $77, frC_FireSUp, afEnd
		even
CopyAni_FireSteadyDiagUp:
		dc.b  $77, frC_FireSDiagUp, afEnd
		even
CopyAni_FireSteadyStraight:
		dc.b  $77, frC_FireSStraight, afEnd
		even
CopyAni_FireSteadyDiagDown:
		dc.b  $77, frC_FireSDiagDown, afEnd
		even
	even

; Frame IDs
	phase 0 ; Reset ds.b value to 0
frC_Null:	ds.b 1
frC_Idle1:	ds.b 1
frC_Idle2:	ds.b 1
frC_Idle3:	ds.b 1
frC_Idle4:	ds.b 1
frC_Step:	ds.b 1
frC_Walk1:	ds.b 1
frC_Walk2:	ds.b 1
frC_Walk3:	ds.b 1
frC_Walk4:	ds.b 1
frC_Walk5:	ds.b 1
frC_Walk6:	ds.b 1
frC_Fire:	ds.b 1
frC_Walk1F:	ds.b 1
frC_Walk2F:	ds.b 1
frC_Walk3F:	ds.b 1
frC_Walk4F:	ds.b 1
frC_Walk5F:	ds.b 1
frC_Walk6F:	ds.b 1
frC_Tele1:	ds.b 1
frC_Tele2:	ds.b 1
frC_Tele3:	ds.b 1
frC_Tele4:	ds.b 1
frC_Tele5:	ds.b 1
frC_Tele6:	ds.b 1
frC_Tele7:	ds.b 1
frC_Tele8:	ds.b 1
frC_Tele9:	ds.b 1
frC_Hurt:	ds.b 1
frC_Victory1:	ds.b 1
frC_Victory2:	ds.b 1
frC_Death1:	ds.b 1
frC_Death2:	ds.b 1
frC_Death3:	ds.b 1
frC_Death4:	ds.b 1
frC_Death5:	ds.b 1
frC_Dash:	ds.b 1
frC_Jump:	ds.b 1
frC_JumpT:	ds.b 1
frC_Fall:	ds.b 1
frC_FireSUp:		ds.b 1
frC_FireSDiagUp:	ds.b 1
frC_FireSStraight:	ds.b 1
frC_FireSDiagDown:	ds.b 1
frC_FireJUp:		ds.b 1
frC_FireJDiagUp:	ds.b 1
frC_FireJStraight:	ds.b 1
frC_FireJDiagDown:	ds.b 1
frC_Last:	ds.b 0
	even
	dephase