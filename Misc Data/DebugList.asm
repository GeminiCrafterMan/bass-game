; ===========================================================================
; Debug mode item lists
; ===========================================================================

DebugList: offsetTable
	rept 4
		offsetTableEntry.w .DEZ1
	endr
	rept 4
		offsetTableEntry.w .DEZ1
	endr
	rept 4
		offsetTableEntry.w .DEZ1
	endr

		zonewarning DebugList,(2*4)
; ---------------------------------------------------------------------------

				; Object Mappings Subtype Frame VRAM
.DEZ1: dbglistheader
	dbglistobj Obj_Spring, Map_Spring, $81, 0, make_art_tile($494,0,0)
	dbglistobj Obj_Spring, Map_Spring2, $82, 0, make_art_tile($494,0,0)
	dbglistobj Obj_Spring, Map_Spring, $90, 3, make_art_tile($4A0,0,0)
	dbglistobj Obj_Spring, Map_Spring2, $92, 3, make_art_tile($4A0,0,0)
	dbglistobj Obj_Spring, Map_Spring, $A0, 6, make_art_tile($494,0,0)
	dbglistobj Obj_Spring, Map_Spring2, $A2, 6, make_art_tile($494,0,0)
	dbglistobj Obj_Spikes, Map_Spikes, 0, 0, make_art_tile(ArtTile_SpikesSprings+8,0,0)
	dbglistobj Obj_Spikes, Map_Spikes, $40, 4, make_art_tile(ArtTile_SpikesSprings,0,0)
	dbglistobj Obj_Button,	Map_Button, 0, 2, make_art_tile($47E,0,0)
	dbglistobj Obj_StarPost, Map_StarPost, 1, 0, make_art_tile(ArtTile_StarPost+8,0,0)
	dbglistobj Obj_Pickups,	Map_Pickups, 0, 1, make_art_tile($580,0,0)	; 1-up
	dbglistobj Obj_Pickups,	Map_Pickups, 1, 3, make_art_tile($580,0,0)	; E-tank
	dbglistobj Obj_Pickups,	Map_Pickups, 2, 4, make_art_tile($580,0,0)	; W-tank
	dbglistobj Obj_Pickups,	Map_Pickups, 3, 5, make_art_tile($580,0,0)	; M-tank
	dbglistobj Obj_Pickups,	Map_Pickups, 4, 6, make_art_tile($580,0,0)	; Large health
	dbglistobj Obj_Pickups,	Map_Pickups, 5, 8, make_art_tile($580,0,0)	; Small health
	dbglistobj Obj_Pickups,	Map_Pickups, 6,$A, make_art_tile($580,0,0)	; Large energy
	dbglistobj Obj_Pickups,	Map_Pickups, 7,$C, make_art_tile($580,0,0)	; Small energy
	dbglistobj Obj_Pickups,	Map_Pickups, 8,$E, make_art_tile($580,0,0)	; Large screw
	dbglistobj Obj_Pickups,	Map_Pickups, 9,$F, make_art_tile($580,0,0)	; Small screw
.DEZ1_end