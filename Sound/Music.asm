; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)
; ---------------------------------------------------------------------------
MusicIndex:
; Levels
ptr_mus_wt3:		SMPS_MUSIC_METADATA	Music_WT3, s3TempotoS1($FF), 0			; Wily Tower stage 3

; Boss
ptr_mus_boss:		SMPS_MUSIC_METADATA	Music_Boss, s3TempotoS1($FF), 0			; Boss
ptr_mus_boss2:		SMPS_MUSIC_METADATA	Music_Boss2, s3TempotoS1($FF), 0			; Boss 2

; Misc
ptr_mus_invin:		SMPS_MUSIC_METADATA	Music_Invin, s3TempotoS1($FF), 0			; Invincible
ptr_mus_through:	SMPS_MUSIC_METADATA	Music_Through, s3TempotoS1($FF), 0		; End of Act
ptr_mus_drowning:	SMPS_MUSIC_METADATA	Music_Drowning, s3TempotoS1($02), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Drowning

ptr_musend

; ---------------------------------------------------------------------------
; Music data ($01-$3F)
; ---------------------------------------------------------------------------

Music_WT3:			include "Sound/Music/Mus - WT Stage 3.asm"
	even
Music_Boss:			include "Sound/Music/Mus - Miniboss.asm"
	even
Music_Boss2:			include "Sound/Music/Mus - Zone Boss.asm"
	even
Music_Invin:			include "Sound/Music/Mus - Invincibility.asm"
	even
Music_Through: 		include "Sound/Music/Mus - Sonic Got Through.asm"
	even
Music_Drowning:		include "Sound/Music/Mus - Drowning.asm"
	even