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
		offsetTableEntry.w CopyAni_Slide
		offsetTableEntry.w CopyAni_Victory
		offsetTableEntry.w CopyAni_Death
		offsetTableEntry.w CopyAni_Hurt
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_FireStanding
		offsetTableEntry.w CopyAni_FireWalking
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_FireJumping
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_ThrowStanding
		offsetTableEntry.w CopyAni_ThrowJumping
		offsetTableEntry.w CopyAni_ShieldStanding
		offsetTableEntry.w CopyAni_ShieldJumping
		offsetTableEntry.w CopyAni_Reppuken
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_LadderClimb
		offsetTableEntry.w CopyAni_LadderUp
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_FireLadder
		offsetTableEntry.w CopyAni_Blank
		offsetTableEntry.w CopyAni_ThrowShieldLadder

CopyAni_Step:
		dc.b	4, frC_Step1, frC_Step2, afChange,  id_Run
CopyAni_Walk:
		dc.b	6, frC_Walk1, frC_Walk2, frC_Walk3, frC_Walk4, frC_Walk5, frC_Walk6, afEnd
CopyAni_Jump:
		dc.b	4, frC_Jump1, frC_Jump2, afEnd
CopyAni_JumpTransition:
		dc.b	6, frC_JumpT, afEnd
CopyAni_Fall:
		dc.b	4, frC_Fall1, frC_Fall2, afEnd
CopyAni_Wait:
		dc.b	4
		rept	8
			dc.b	frC_Idle1, frC_Idle2
		endr
			dc.b	frC_Idle3, frC_Idle4
		dc.b	afEnd
CopyAni_Slide:
		dc.b	4, frC_Slide1, frC_Slide2, afEnd
CopyAni_Victory:
		dc.b	3, frC_Victory1, frC_Victory2, afEnd
CopyAni_Death:
		dc.b	1
		rept	6
			dc.b	frC_Death1, frC_Death2, frC_Death2, frC_Death3, frC_Death4, frC_Death4, frC_Death5
		endr
		dc.b  frC_Null, frC_Null, frC_Null, afEnd
CopyAni_Hurt:
		dc.b  $77, frC_Hurt, frC_Stun, afBack, 1
CopyAni_Blank:
		dc.b  $77, frC_Null, afEnd
CopyAni_FireStanding:
		dc.b	4, frC_Fire1, frC_Fire2, afEnd
CopyAni_FireWalking:
		dc.b	6, frC_Walk1F, frC_Walk2F, frC_Walk3F, frC_Walk4F, frC_Walk5F, frC_Walk6F, afEnd
CopyAni_FireJumping:
		dc.b	4, frC_FireJ1, frC_FireJ2, afEnd
CopyAni_ThrowStanding:
		dc.b	2, frC_ThrowS1, frC_ThrowS2, frC_ThrowS3, afBack, 1
CopyAni_ThrowJumping:
		dc.b	2, frC_ThrowJ1, frC_ThrowJ2, frC_ThrowJ3, afBack, 1
CopyAni_ShieldStanding:
		dc.b	2, frC_ShieldS1, frC_ShieldS2, frC_ShieldS3, afBack, 1
CopyAni_ShieldJumping:
		dc.b	2, frC_ShieldJ1, frC_ShieldJ2, frC_ShieldJ3, afBack, 1
CopyAni_Reppuken:
		dc.b	2, frC_Reppuken1, frC_Reppuken2, frC_Reppuken3, frC_Reppuken4, afBack, 1
CopyAni_LadderClimb:
		dc.b	7, frC_Ladder1, frC_Ladder2, frC_Ladder3, frC_Ladder4, frC_Ladder3, frC_Ladder2, afEnd
CopyAni_LadderUp:
		dc.b	7, frC_LadderUp, frC_LadderUp, frC_LadderUp, frC_LadderUp, frC_LadderUp, frC_LadderUp, afEnd
CopyAni_FireLadder:
		dc.b	5, frC_FireL, afChange, id_LadderClimb
CopyAni_ThrowShieldLadder:
		dc.b	1, frC_ThrowL1, frC_ThrowL2, frC_ThrowL3, afChange, id_LadderClimb
	even

; Frame IDs
	phase 0 ; Reset ds.b value to 0
frC_Null:			ds.b 1
frC_Idle1:			ds.b 1
frC_Idle2:			ds.b 1
frC_Idle3:			ds.b 1
frC_Idle4:			ds.b 1
frC_Step1:			ds.b 1
frC_Step2:			ds.b 1
frC_Walk1:			ds.b 1
frC_Walk2:			ds.b 1
frC_Walk3:			ds.b 1
frC_Walk4:			ds.b 1
frC_Walk5:			ds.b 1
frC_Walk6:			ds.b 1
frC_Fire1:			ds.b 1
frC_Fire2:			ds.b 1
frC_Walk1F:			ds.b 1
frC_Walk2F:			ds.b 1
frC_Walk3F:			ds.b 1
frC_Walk4F:			ds.b 1
frC_Walk5F:			ds.b 1
frC_Walk6F:			ds.b 1
frC_Tele1:			ds.b 1
frC_Tele2:			ds.b 1
frC_Tele3:			ds.b 1
frC_Tele4:			ds.b 1
frC_Tele5:			ds.b 1
frC_Tele6:			ds.b 1
frC_Tele7:			ds.b 1
frC_Tele8:			ds.b 1
frC_Tele9:			ds.b 1
frC_Hurt:			ds.b 1
frC_Stun:			ds.b 1
frC_Victory1:		ds.b 1
frC_Victory2:		ds.b 1
frC_Death1:			ds.b 1
frC_Death2:			ds.b 1
frC_Death3:			ds.b 1
frC_Death4:			ds.b 1
frC_Death5:			ds.b 1
frC_Slide1:			ds.b 1
frC_Slide2:			ds.b 1
frC_Jump1:			ds.b 1
frC_Jump2:			ds.b 1
frC_JumpT:			ds.b 1
frC_Fall1:			ds.b 1
frC_Fall2:			ds.b 1
frC_FireJ1:			ds.b 1
frC_FireJ2:			ds.b 1
frC_ThrowS1:		ds.b 1
frC_ThrowS2:		ds.b 1
frC_ThrowS3:		ds.b 1
frC_ThrowJ1:		ds.b 1
frC_ThrowJ2:		ds.b 1
frC_ThrowJ3:		ds.b 1
frC_ShieldS1:		ds.b 1
frC_ShieldS2:		ds.b 1
frC_ShieldS3:		ds.b 1
frC_ShieldJ1:		ds.b 1
frC_ShieldJ2:		ds.b 1
frC_ShieldJ3:		ds.b 1
frC_Reppuken1:		ds.b 1
frC_Reppuken2:		ds.b 1
frC_Reppuken3:		ds.b 1
frC_Reppuken4:		ds.b 1
frC_Ladder1:		ds.b 1
frC_Ladder2:		ds.b 1
frC_Ladder3:		ds.b 1
frC_Ladder4:		ds.b 1
frC_LadderUp:		ds.b 1
frC_FireL:			ds.b 1
frC_ThrowL1:		ds.b 1
frC_ThrowL2:		ds.b 1
frC_ThrowL3:		ds.b 1
frC_Last:			ds.b 0
	even
	dephase