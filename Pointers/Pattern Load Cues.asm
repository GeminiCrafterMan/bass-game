; ===========================================================================
; Level pattern load cues
; ===========================================================================

Offs_PLC: offsetTable

		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy

		zonewarning Offs_PLC,(4*4)

; ===========================================================================
; Pattern load cues - Main 1
; ===========================================================================

PLC_Main: plrlistheader
		plreq ArtTile_StarPost, ArtKosM_EnemyPtsStarPost	; StarPost
		plreq ArtTile_HUD, ArtKosM_Hud					; HUD
		plreq $79C, ArtKosM_BusterShots					; Buster shots
PLC_Main_end

; ===========================================================================
; Pattern load cues - Main 2
; ===========================================================================

PLC_Main2: plrlistheader
		plreq $47E, ArtKosM_GrayButton						; Button
		plreq ArtTile_SpikesSprings, ArtKosM_SpikesSprings	; Spikes and normal spring
		plreq $580, ArtKosM_Pickups							; Items
		plreq $5A0, ArtKosM_Explosion						; Explosion
		plreq ArtTile_Monitors,	ArtKosM_Target
PLC_Main2_end

; ===========================================================================
; Pattern load cues - Death Egg (Misc)
; ===========================================================================

PLC1_Test1_Misc: plrlistheader
PLC1_Test1_Misc_end

; ===========================================================================
; Pattern load cues - Death Egg (Enemy)
; ===========================================================================

PLC2_Test1_Enemy: plrlistheader
		plreq ArtTile_Motobug, ArtKosM_Motobug			; Motobug
PLC2_Test1_Enemy_end
