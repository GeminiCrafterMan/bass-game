Weapon_OrigamiStar:
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_OrigamiStar).l,a1
		move.w	#tiles_to_bytes(ArtTile_WeaponStuff),d2
		jsr		(Queue_Kos_Module).l
		st		(Weapon_art_loaded_flag).w
	.skipLoad:
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
	.fireBlade:
		tst.b	(v_weapon5energy).w
		jeq		Weapon_NoAmmo.fireLemon
		addq.b	#3,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_OrigamiStar,address(a1)
		move.b	#2,(v_shottype).w
		move.b	#10,shoottimer(a0)
		move.w	#$700,ground_vel(a1)
		subq.b	#1,(v_weapon5energy).w	; -1
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts

; ---------------------------------------------------------------------------
; Projectile object
; ---------------------------------------------------------------------------

Obj_OrigamiStar:
		move.l	#Map_OrigamiStar,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		clr.b	mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(22/2,22/2),height_pixels(a0)
		move.w	#bytes_to_word(22/2,22/2),y_radius(a0)
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
	; animate
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.stay
		move.b	#2,anim_frame_timer(a0)
		bchg	#0,mapping_frame(a0)
	.stay:
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

Map_OrigamiStar:	binclude	"Objects/Player Projectiles/Object Data/Map - Origami Star.bin"
		even