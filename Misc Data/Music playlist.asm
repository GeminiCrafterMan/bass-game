; ===========================================================================
; Level Music Playlist
; ===========================================================================

LevelMusic_Playlist:
		dc.b mus_WT3, mus_Air, mus_WT3, mus_WT3	; DEZ 1,2,3,4
		dc.b mus_Shadow, mus_Snake, mus_WT3, mus_Air
		dc.b mus_WT3, mus_WT3, mus_WT3, mus_WT3

		zonewarning LevelMusic_Playlist,(1*4)