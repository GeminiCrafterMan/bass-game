; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; Background music
offset :=	MusicIndex
ptrsize :=	4
idstart :=	1
; $00 is reserved for silence

mus__First = idstart
; Levels
mus_WT3 =			SMPS_id(ptr_mus_wt3)
mus_Air =			SMPS_id(ptr_mus_air)
mus_MSLabyrinth =	SMPS_id(ptr_mus_mslabyrinth)
mus_Shadow =		SMPS_id(ptr_mus_shadow)
mus_Snake =			SMPS_id(ptr_mus_snake)
mus_Dive =			SMPS_id(ptr_mus_dive)
mus_BRodG =			SMPS_id(ptr_mus_brodg)

; Bosses
mus_ProtoWhistle =	SMPS_id(ptr_mus_protowhistle)

; Misc
mus_CAPCOM =		SMPS_id(ptr_mus_capcom)
mus_Title =			SMPS_id(ptr_mus_title)
mus_StageSelect =	SMPS_id(ptr_mus_stagesel)
mus_StageClear =	SMPS_id(ptr_mus_stageclear)
mus_GameOver =		SMPS_id(ptr_mus_gameover)

mus__Last =			SMPS_id(ptr_musend)-1

; Sound effects
offset :=	SoundIndex
ptrsize :=	4
idstart :=	$40

sfx__First = idstart
sfx_Jump =				SMPS_id(ptr_snd43)
sfx_Roll =				SMPS_id(ptr_snd44)
sfx_Skid =				SMPS_id(ptr_snd45)
sfx_Death =				SMPS_id(ptr_snd46)
sfx_Splash =			SMPS_id(ptr_snd48)
sfx_InstaAttack =		SMPS_id(ptr_snd49)
sfx_FireShield =		SMPS_id(ptr_snd4A)
sfx_BubbleShield =		SMPS_id(ptr_snd4B)
sfx_LightningShield =	SMPS_id(ptr_snd4C)
sfx_FireAttack =		SMPS_id(ptr_snd4D)
sfx_BubbleAttack =		SMPS_id(ptr_snd4E)
sfx_ElectricAttack =	SMPS_id(ptr_snd4F)
sfx_SpikeHit =			SMPS_id(ptr_snd50)
sfx_SpikeMove =			SMPS_id(ptr_snd51)
sfx_Drown =				SMPS_id(ptr_snd52)
sfx_StarPost =			SMPS_id(ptr_snd53)
sfx_Spring =			SMPS_id(ptr_snd54)
sfx_Dash =				SMPS_id(ptr_snd55)
sfx_Break =				SMPS_id(ptr_snd56)
sfx_BossHit =			SMPS_id(ptr_snd57)
sfx_AirDing =			SMPS_id(ptr_snd58)
sfx_Bubble =			SMPS_id(ptr_snd59)
sfx_Explode =			SMPS_id(ptr_snd5A)
sfx_Signpost =			SMPS_id(ptr_snd5B)
sfx_Switch =			SMPS_id(ptr_snd5C)
sfx_Register =			SMPS_id(ptr_snd5D)
sfx_BusterShot =		SMPS_id(ptr_snd5E)
sfx_JumpLand =			SMPS_id(ptr_snd5F)
sfx_1up =				SMPS_id(ptr_snd60)
sfx_ChargeStart =		SMPS_id(ptr_snd61)
sfx_ChargeLoop =		SMPS_id(ptr_snd62)
sfx_EnergyFill =		SMPS_id(ptr_snd63)
sfx_MenuCursor =		SMPS_id(ptr_snd64)
sfx_Deflect =			SMPS_id(ptr_snd65)
sfx_Fireball =			SMPS_id(ptr_snd66)
sfx_Burning =			SMPS_id(ptr_snd67)

sfx__Last =			SMPS_id(ptr_sndend)-1

; Sound commands
offset :=	Sound_ExIndex
ptrsize :=	2
idstart :=	$FA

flg__First = idstart
sfx_Fade =			SMPS_id(ptr_flgFA)
mus_Fade =			SMPS_id(ptr_flgFB)
sfx_Sega =			SMPS_id(ptr_flgFC)
mus_Speedup =		SMPS_id(ptr_flgFD)
mus_Slowdown =		SMPS_id(ptr_flgFE)
mus_Stop =			SMPS_id(ptr_flgFF)
flg__Last =			SMPS_id(ptr_flgend)-1
