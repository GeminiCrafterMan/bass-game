; ===========================================================================
; Level pattern load cues
; ===========================================================================

Offs_PLC: offsetTable

		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
		offsetTableEntry.w PLC1_Test2_Misc
		offsetTableEntry.w PLC2_Test2_Enemy
		offsetTableEntry.w PLC1_Test3_Misc
		offsetTableEntry.w PLC2_Test3_Enemy
		offsetTableEntry.w PLC1_Test4_Misc
		offsetTableEntry.w PLC2_Test4_Enemy

		zonewarning Offs_PLC,(4*4)

; ===========================================================================
; Pattern load cues - Main 1
; ===========================================================================

PLC_Main: plrlistheader
		plreq ArtTile_StarPost, ArtKosM_EnemyPtsStarPost	; StarPost
		plreq ArtTile_Ring_Sparks, ArtKosM_Ring_Sparks	; Rings
		plreq ArtTile_HUD, ArtKosM_Hud					; HUD
PLC_Main_end

; ===========================================================================
; Pattern load cues - Main 2
; ===========================================================================

PLC_Main2: plrlistheader
		plreq $47E, ArtKosM_GrayButton						; Button
		plreq ArtTile_SpikesSprings, ArtKosM_SpikesSprings	; Spikes and normal spring
		plreq ArtTile_Monitors, ArtKosM_Monitors			; Monitors
		plreq $580, ArtKosM_Pickups							; Items
		plreq $5A0, ArtKosM_Explosion						; Explosion
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
		plreq $100, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_Test1_Enemy_end

; ===========================================================================
; Pattern load cues - Death Egg (Misc)
; ===========================================================================

PLC1_Test2_Misc: plrlistheader
PLC1_Test2_Misc_end

; ===========================================================================
; Pattern load cues - Death Egg (Enemy)
; ===========================================================================

PLC2_Test2_Enemy: plrlistheader
		plreq $100, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_Test2_Enemy_end

; ===========================================================================
; Pattern load cues - Death Egg (Misc)
; ===========================================================================

PLC1_Test3_Misc: plrlistheader
PLC1_Test3_Misc_end

; ===========================================================================
; Pattern load cues - Death Egg (Enemy)
; ===========================================================================

PLC2_Test3_Enemy: plrlistheader
		plreq $100, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_Test3_Enemy_end

; ===========================================================================
; Pattern load cues - Death Egg (Misc)
; ===========================================================================

PLC1_Test4_Misc: plrlistheader
PLC1_Test4_Misc_end

; ===========================================================================
; Pattern load cues - Death Egg (Enemy)
; ===========================================================================

PLC2_Test4_Enemy: plrlistheader
		plreq $100, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_Test4_Enemy_end
