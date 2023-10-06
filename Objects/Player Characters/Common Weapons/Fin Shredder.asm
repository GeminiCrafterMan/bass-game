Weapon_FinShredder: ; NOT "fin cutter" despite being obtained from Shark Man. This ain't Battle Network!
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
	.fireShredder:
		btst	#Status_InAir,status(a0)	; it's here so you can fire lemons mid-air still
		bne.w	.ret
		cmpi.b	#4,(v_weapon4energy).w	; < 4 energy remaining?
		jlt		Weapon_NoAmmo.fireLemon	; don't shoot if so
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
		move.l	#Map_FinShredder,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#8,damage(a0)	; deals 8 damage to anything but bosses
		move.w	#bytes_to_word(32/2,36/2),height_pixels(a0)
		move.w	#bytes_to_word(32/2,36/2),y_radius(a0)
		move.b	#2,mapping_frame(a0)
		move.b	#2,anim_frame_timer(a0)
		move.l	#.main,address(a0)
	.main:
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
	; animate
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.stay
		move.b	#2,anim_frame_timer(a0)
		addq.b	#1,mapping_frame(a0)
		cmpi.b	#5,mapping_frame(a0)
		bne.s	.stay
		move.b	#2,mapping_frame(a0)
	.stay:
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		lea		PLCPtr_FinShredder(pc),a2
		jsr		(Perform_DPLC).w
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

PLCPtr_FinShredder:
		dc.l	ArtUnc_FinShredder>>1, PLC_FinShredder

Map_FinShredder:		binclude	"Objects/Player Projectiles/Object Data/Map - Fin Shredder.bin"
		even
PLC_FinShredder:		binclude	"Objects/Player Projectiles/Object Data/PLC - Fin Shredder.bin"
		even