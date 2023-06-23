; ===========================================================================
; Level pattern load cues
; ===========================================================================

Offs_PLC: offsetTable

	rept 4
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
	endr
	rept 4
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
	endr
	rept 4
		offsetTableEntry.w PLC1_Test1_Misc
		offsetTableEntry.w PLC2_Test1_Enemy
	endr

		zonewarning Offs_PLC,(4*4)

; ===========================================================================
; Pattern load cues - Main 1
; ===========================================================================

PLC_Main: plrlistheader
		plreq ArtTile_StarPost, ArtKosM_StarPost		; StarPost
		plreq ArtTile_HUD, ArtKosM_Hud					; HUD
		plreq ArtTile_BusterShots, ArtKosM_BusterShots	; Buster shots
PLC_Main_end

; ===========================================================================
; Pattern load cues - Main 2
; ===========================================================================

PLC_Main2: plrlistheader
		plreq $47E, ArtKosM_GrayButton						; Button
		plreq ArtTile_Pickups, ArtKosM_Pickups				; Items
		plreq ArtTile_Explosion, ArtKosM_Explosion			; Explosion
		plreq ArtTile_Target,	ArtKosM_Target
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
		plreq ArtTile_HammerJoe, ArtKosM_HammerJoe	; Hammer Joe
		plreq ArtTile_SniperJoe, ArtKosM_SniperJoe	; Sniper Joe
		plreq ArtTile_Metall, ArtKosM_Metall		; Metall
		plreq ArtTile_FireTelly, ArtKosM_FireTelly	; Fire Telly
PLC2_Test1_Enemy_end
