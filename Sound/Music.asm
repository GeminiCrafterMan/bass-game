; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)
; ---------------------------------------------------------------------------
MusicIndex:
; Levels
ptr_mus_wt3:		SMPS_MUSIC_METADATA Music_WilyTower3, s3TempotoS1($FF), 0	; Wily Tower stage 3 (for test stages)
ptr_mus_air:		SMPS_MUSIC_METADATA Music_AirMan, s3TempotoS1($FF), 0		; Air Man
ptr_mus_mslabyrinth:SMPS_MUSIC_METADATA Music_MSLabyrinth, s3TempotoS1($FF), 0	; 8-bit Labyrinth

ptr_mus_shadow:		SMPS_MUSIC_METADATA Music_ShadowMan, s3TempotoS1($FF), 0	; Shadow Man
ptr_mus_snake:		SMPS_MUSIC_METADATA Music_SnakeMan, s3TempotoS1($FF), 0		; Snake Man
ptr_mus_dive:		SMPS_MUSIC_METADATA Music_DiveMan, s3TempotoS1($FF), 0		; Dive Man
ptr_mus_brodg:		SMPS_MUSIC_METADATA Music_BRodG, s3TempotoS1($FF), 0		; Buster Rod G

; Boss
ptr_mus_protowhistle:	SMPS_MUSIC_METADATA Music_ProtoWhistle, s3TempotoS1($FF), 0	; Proto Man's entrance whistle

; Misc
ptr_mus_capcom:		SMPS_MUSIC_METADATA Music_CAPCOM, s3TempotoS1($FF), 0		; CAPCOM logo
ptr_mus_title:		SMPS_MUSIC_METADATA Music_Title, s3TempotoS1($FF), 0		; Title screen (MID2SMPS MM9 for now)
ptr_mus_stagesel:	SMPS_MUSIC_METADATA Music_StageSel, s3TempotoS1($FF), 0		; Stage select (MM3 for now)
ptr_mus_stageclear:	SMPS_MUSIC_METADATA Music_StageClear, s3TempotoS1($FF), 0	; Stage clear (MM2 for now)
ptr_mus_gameover:	SMPS_MUSIC_METADATA Music_GameOver, s3TempotoS1($FF), 0		; Game over (MM2 for now)

ptr_musend

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------

Music_WilyTower3:	include "Sound/Music/Mus - WT Stage 3.asm"
	even
Music_AirMan:		include "Sound/Music/Mus - Air Man.asm"
	even
Music_MSLabyrinth:	include	"Sound/Music/Mus - 8-bit Labyrinth Zone.asm"
	even

Music_ShadowMan:	include "Sound/Music/Mus - Shadow Man.asm"
	even
Music_SnakeMan:		include "Sound/Music/Mus - Snake Man.asm"
	even
Music_DiveMan:		include "Sound/Music/Mus - Dive Man.asm"
	even
Music_BRodG:		include "Sound/Music/Mus - Buster Rod G.asm"
	even

Music_ProtoWhistle:	include	"Sound/Music/Mus - Proto Man Whistle.asm"
	even

Music_CAPCOM:		include "Sound/Music/Mus - CAPCOM.asm"
	even
Music_Title:		include	"Sound/Music/Mus - MM9 Title.asm"
	even
Music_StageSel:		include	"Sound/Music/Mus - MM3 Stage Select.asm"
	even
Music_StageClear:	include	"Sound/Music/Mus - MM2 Stage Clear.asm"
	even
Music_GameOver:		include	"Sound/Music/Mus - MM2 Game Over.asm"
	even