; ---------------------------------------------------------------------------
; Bass Animation Script
; ---------------------------------------------------------------------------

Ani_Bass: offsetTable
		offsetTableEntry.w SonAni_Step
		offsetTableEntry.w SonAni_Walk
		offsetTableEntry.w SonAni_Roll
		offsetTableEntry.w SonAni_Wait
		offsetTableEntry.w SonAni_Balance
		offsetTableEntry.w SonAni_Spin_Dash
		offsetTableEntry.w SonAni_Balance2
		offsetTableEntry.w SonAni_Stop
		offsetTableEntry.w SonAni_Spring
		offsetTableEntry.w SonAni_Landing
		offsetTableEntry.w SonAni_Bubble
		offsetTableEntry.w SonAni_Death
		offsetTableEntry.w SonAni_Drown
		offsetTableEntry.w SonAni_Hurt
		offsetTableEntry.w SonAni_Blank

SonAni_Step:		dc.b  6, frB_Step,  afChange,  id_Run
SonAni_Walk:		dc.b  6, frB_Walk1, frB_Walk2, frB_Walk3, frB_Walk4, frB_Walk5, frB_Walk6, afEnd
SonAni_Roll:		dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, afEnd
SonAni_Wait:		dc.b  4
					rept 16
						dc.b	frB_Idle1
					endr
					rept 2
						dc.b	frB_Idle2
					endr
						dc.b	afEnd
SonAni_Balance:		dc.b	7, $A4,	$A5, $A6, afEnd
SonAni_Spin_Dash:	dc.b	0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, afEnd
SonAni_Balance2:		dc.b	5, $A1,	$A2, $A3, afEnd
SonAni_Stop:			dc.b	3, $9D,	$9E, $9F, $A0, afChange,   id_Walk
SonAni_Spring:		dc.b  $2F, $8E,	afChange,   id_Walk
SonAni_Landing:		dc.b	7, $B0,	$B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2,	$B3, $B2, afBack,	 4
SonAni_Bubble:		dc.b   $B, $AC,	$AC,   3,   4, afChange,   id_Walk
SonAni_Death:		dc.b  $20, $A8,	afEnd
SonAni_Drown:		dc.b  $20, $A7,	afEnd
SonAni_Hurt:		dc.b 9, $8C, $8D, afEnd
SonAni_Blank:		dc.b $77,   frB_Null,	afEnd
	even

; Animation IDs
	phase 0 ; Reset ds.b value to 0
id_Walk:	ds.b 1
id_Run:		ds.b 1
id_Roll:	ds.b 1
id_Wait:	ds.b 1
id_Balance:	ds.b 1
id_SpinDash:ds.b 1
id_Balance2:ds.b 1
id_Stop:	ds.b 1
id_Spring:	ds.b 1
id_Landing:	ds.b 1
id_GetAir:	ds.b 1
id_Drown:	ds.b 1
id_Death:	ds.b 1
id_Hurt:	ds.b 1
id_Null:	ds.b 1
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
frB_Last:	ds.b 0
	even
	dephase