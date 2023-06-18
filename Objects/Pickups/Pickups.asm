Obj_Pickups:
		cmpi.b	#10,subtype(a0)
		bge.w	Pickups_Delete
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Pickups_Index(pc,d0.w),d1
		jsr		Pickups_Index(pc,d1.w)
		jmp		Sprite_CheckDeleteTouch	; Should handle both deletion and contact...
; ===========================================================================

Pickups_Index:	offsetTable
		offsetTableEntry.w	Pickups_Init
		offsetTableEntry.w	Pickups_Main
		offsetTableEntry.w	Pickups_Collect
		offsetTableEntry.w	Pickups_Delete
; ===========================================================================

Pickups_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_Pickups,mappings(a0)
		move.w	#make_art_tile(ArtTile_Pickups,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		move.b	#$47,collision_flags(a0)
		move.b	subtype(a0),anim(a0)
		tst.b	subtype(a0)		; 1-up?
		bne.s	.not1up
		tst.b	(Player_mode).w
		bne.s	.copy
		clr.b	anim(a0)
		bra.s	.not1up
	.copy:
		move.b	#10,anim(a0)	; Copy Robot 1up head thing.
	.not1up:
		move.b	#4*60,invulnerability_timer(a0)
		cmpi.b	#5,anim(a0)	; Small health
		beq.s	.small
		cmpi.b	#7,anim(a0)	; Small energy
		beq.s	.small
		cmpi.b	#9,anim(a0)	; Small screw
		beq.s	.small
		move.w	#bytes_to_word(8,8),y_radius(a0)
		move.w	#bytes_to_word(16,16),height_pixels(a0)
		rts
	.small:
		move.w	#bytes_to_word(4,4),y_radius(a0)
		move.w	#bytes_to_word(8,8),height_pixels(a0)
		rts
; ===========================================================================

Pickups_Main:	; Routine 2
		lea		(Ani_Pickups).l,a1
		jsr		AnimateSprite

		jsr		ObjectFall
		jsr		ObjFloorDist
		tst.w	d1
		bpl.s	.notOnFloor
		add.w	d1,y_pos(a0)	; Sit on the floor nicely
		clr.w	y_vel(a0)

	.notOnFloor:
		tst.w	respawn_addr(a0)
		bne.s	.justDisplay		; .wasPlaced in the original code, but something up there is handling respawning the item
	; todo: fix the flashing to actually work again...
		move.b	invulnerability_timer(a0),d0
		beq.s	Pickups_Delete					; if 0, delete
		subq.b	#1,invulnerability_timer(a0)	; subtract 1 from the flash time
		cmpi.b	#60,invulnerability_timer(a0)	; if 1 second or less is left, start flashing
		bhi.s	.justDisplay					; if not, just display
		lsr.b	#2,d0							; flash on and off 2 frames each
		bcs.s	.justDisplay					; display if carry is clear (2 of every 4 frames)
		rts										; don't display
	.justDisplay:
		jmp		DisplaySprite
; ===========================================================================

Pickups_Collect:	; Routine 4
		addq.b	#2,routine(a0)
		clr.b	collision_flags(a0)
		move.w	#$80,priority(a0)
		bsr.s	CollectPickup
	; there was some stuff here but apparently you can just run right into the delete routine or something
; ===========================================================================

Pickups_Delete:		; Routine 6
		jmp		DeleteObject

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

CollectPickup:
		moveq	#0,d0
		move.b	subtype(a0),d0
		cmpi.b	#10,d0
		bls.s	CollectValidPickup
		RaiseError "Invalid pickup subtype, check d0!"

CollectValidPickup:
		moveq	#0,d2
		lsl.w	#2,d0
		movea.l	.pickupLUT(pc,d0.w),a1
		jmp		(a1)
	.pickupLUT:
		dc.l	.1up, .eTank, .wTank, .mTank, .lHP, .sHP, .lEN, .sEN, .lSC, .sSC

	.1up:
;		addq.b	#1,(v_lives).w		; add 1 to life count
;		addq.b	#1,(f_lifecount).w	; update life counter
		sfx		sfx_1up,1

	.eTank:
;		addq.b	#1,(v_etanks).w		; add 1 to life count
		sfx		sfx_1up,1

	.wTank:
;		addq.b	#1,(v_wtanks).w		; add 1 to life count
		sfx		sfx_1up,1

	.mTank:
;		addq.b	#1,(v_mtanks).w		; add 1 to life count
		sfx		sfx_1up,1

	.lHP:
		move.b	#10,d2
		bra.s	.addHP

	.sHP:
		move.b	#2,d2
		bra.s	.addHP
	
	.lEN:
		move.b	#10,d2
		bra.s	.addEN
	
	.sEN:
		move.b	#2,d2
		bra.s	.addEN
	
	.lSC:
;		addi.w	#20,(v_screws).w
		sfx		sfx_Switch,1
	
	.sSC:
;		addi.w	#2,(v_screws).w
		sfx		sfx_Switch,1
	
	.addHP:
		subq.b	#1,d2	; subtract 1 because you run into the loop first before looping
		st		(Game_paused).w
	.addHPLoop:
		cmpi.b	#28,(v_health).w
		beq.s	.stopLoop
		sfx		sfx_EnergyFill
		addi.b	#1,(v_health).w
		move.b	#1,(Update_HUD_ring_count).w	; update ring counter
		move.b	#VintID_Main,(V_int_routine).w
		jsr		Wait_VSync
		dbf		d2,.addHPLoop

		bra.s	.stopLoop
	
	.addEN:
		move.b	(v_weapon).w,d1
		beq.s	.ret
		lea		(v_weapon1energy).w,a1
		lea		(v_weapon1max).w,a2
		subq.b	#1,d1
		subq.b	#1,d2	; loop counter
		lsl.b	#1,d1	; multiply by 2 to get the right address
		adda.l	d1,a1	; get correct address for weapon energy
		adda.l	d1,a2	; and max energy
		st		(Game_paused).w
		move.b	(a1),d3
		move.b	(a2),d4
	.addENLoop:
		cmp.b	d3,d4
		beq.s	.stopLoop
		sfx		sfx_EnergyFill
		addi.b	#1,d3
		move.b	d3,(a1)
		move.b	#VintID_Main,(V_int_routine).w
		jsr		Wait_VSync
		dbf		d2,.addENLoop
	.stopLoop:
		clr.b	(Game_paused).w
	.ret:
		rts
; ===========================================================================
; Object data
; ===========================================================================

Ani_Pickups:
		dc.w	.extraLifeB-Ani_Pickups
		dc.w	.energyTank-Ani_Pickups
		dc.w	.weaponTank-Ani_Pickups
		dc.w	.mysteryTank-Ani_Pickups
		dc.w	.largeHealth-Ani_Pickups
		dc.w	.smallHealth-Ani_Pickups
		dc.w	.largeEnergy-Ani_Pickups
		dc.w	.smallEnergy-Ani_Pickups
		dc.w	.largeScrew-Ani_Pickups
		dc.w	.smallScrew-Ani_Pickups
		dc.w	.extraLifeC-Ani_Pickups

	.extraLifeB:	dc.b 0, 1, afEnd
		even
	.energyTank:	dc.b 8, 3, 2, afEnd
		even
	.weaponTank:	dc.b 8, 4, 2, afEnd
		even
	.mysteryTank:	dc.b 8, 5, 2, afEnd
		even
	.largeHealth:	dc.b 6, 6, 7, afEnd
		even
	.smallHealth:	dc.b 6, 8, 9, afEnd
		even
	.largeEnergy:	dc.b 6, 10, 11, afEnd
		even
	.smallEnergy:	dc.b 6, 12, 13, afEnd
		even
	.largeScrew:	dc.b 0, 14, afEnd
		even
	.smallScrew:	dc.b 0, 15, afEnd
		even
	.extraLifeC:	dc.b 0, 16, afEnd
		even

Map_Pickups:	binclude "Objects/Pickups/Object Data/Map - Pickups.bin"
		even