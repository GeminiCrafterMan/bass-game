Weapon_FinShredder: ; NOT "fin cutter" despite being obtained from Shark Man. This ain't Battle Network!
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
	.fireShredder:
		cmpi.b	#4,(v_weapon4energy).w	; < 4 energy remaining?
		jlt		Weapon_NoAmmo.fireLemon	; don't shoot if so
		btst	#Status_InAir,status(a0)	; it's here so you can fire lemons mid-air still
		bne.w	.ret
		addq.b	#3,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_FinShredder,address(a1)
		move.b	#4,(v_shottype).w
		move.b	#16,shoottimer(a0)
		move.w	#$600,ground_vel(a1)
		subq.b	#4,(v_weapon4energy).w	; -4
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts

; ---------------------------------------------------------------------------
; Projectile object
; ---------------------------------------------------------------------------

Obj_FinShredder:	; Startup animation, loop middle, transition to end when ledge is hit.
	; init
		move.l	#Map_FinShredder,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#8,damage(a0)	; deals 8 damage to anything but bosses
		move.w	#bytes_to_word(32/2,36/2),height_pixels(a0)
		move.w	#bytes_to_word(32/2,36/2),y_radius(a0)
		move.l	#.main,address(a0)
	.main:
		; these checks are constantly done to prevent any Wacky Shit:tm:.
		btst	#7,status(a0)	; is the projectile out of damage to deal?
		bne.w	Obj_FinShredder_Delete
		out_of_xrange.w Obj_FinShredder_Delete	; is the projectile off-screen?
		out_of_yrange.w Obj_FinShredder_Delete
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_FinShredder_Index(pc,d0.w),d1
		jmp		Obj_FinShredder_Index(pc,d1.w)
; ===========================================================================
Obj_FinShredder_Index:	offsetTable
	offsetTableEntry.w	Obj_FinShredder_Start
	offsetTableEntry.w	Obj_FinShredder_Loop
	offsetTableEntry.w	Obj_FinShredder_End
	offsetTableEntry.w	Obj_FinShredder_Delete
; ===========================================================================

Obj_FinShredder_Start:
		clr.b	anim(a0)	; should already be 0 but you never know with this shit
		bra.s	Obj_FinShredder_TouchAndAnimate
; ===========================================================================

Obj_FinShredder_Loop:
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	Obj_FinShredder_End
		move.b	#1,anim(a0)
		jsr		SpeedToPos
		bra.s	Obj_FinShredder_TouchAndAnimate
; ===========================================================================

Obj_FinShredder_End:
		move.b	#2,anim(a0)
		move.b	#4,routine(a0)
		bra.s	Obj_FinShredder_TouchAndAnimate
		
; ===========================================================================

Obj_FinShredder_Delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_FinShredder_TouchAndAnimate:
		lea		(Ani_FinShredder).l,a1
		jsr		AnimateSprite
		jsr		(TouchResponse).l
		lea		PLCPtr_FinShredder(pc),a2
		jsr		(Perform_DPLC).w
		jmp		(Draw_Sprite).w

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

PLCPtr_FinShredder:
		dc.l	ArtUnc_FinShredder>>1, PLC_FinShredder

Map_FinShredder:		binclude	"Objects/Player Projectiles/Object Data/Map - Fin Shredder.bin"
		even
PLC_FinShredder:		binclude	"Objects/Player Projectiles/Object Data/PLC - Fin Shredder.bin"
		even

Ani_FinShredder:	offsetTable
		offsetTableEntry.w	.start
		offsetTableEntry.w	.middle
		offsetTableEntry.w	.end

	.start:	 dc.b	2, 0, 1, afRoutine	; transition to middle
	.middle: dc.b	2, 2, 3, 4, afEnd	; transition to end when you hit a ledge
	.end:	 dc.b	2, 5, 6, 7, afRoutine	; die lol
	even