Weapon_ScorchBarrier:	; Rotating shield.
		cmpi.b	#4,(v_weapon1energy).w
		jeq		Weapon_NoAmmo.fireLemon
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_ScorchBarrierC).l,a1	; change based on character selected but not yet
		move.w	#tiles_to_bytes(ArtTile_WeaponStuff),d2
		jsr		(Queue_Kos_Module).l
		st		(Weapon_art_loaded_flag).w
	.skipLoad:
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#1,(v_bulletsonscreen).w
		bge.w	.ret
	.fireLemon:
		addq.b	#4,(v_bulletsonscreen).w
		subq.b	#4,(v_weapon1energy).w
		sfx		sfx_BusterShot
	.create:	; for the love of god simplify this later
		jsr		FindFreeProjectile
		move.w	a0,parent3(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	#Obj_ScorchBarrier,address(a1)

		jsr		FindFreeProjectile
		move.w	a0,parent3(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	#Obj_ScorchBarrier,address(a1)

		jsr		FindFreeProjectile
		move.w	a0,parent3(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	#Obj_ScorchBarrier,address(a1)

		jsr		FindFreeProjectile
		move.w	a0,parent3(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	#Obj_ScorchBarrier,address(a1)
	.done:
		move.b	#3,(v_shottype).w	; Shield
		move.b	#13,shoottimer(a0)
	.ret:
		rts

; ---------------------------------------------------------------------------
; Projectile object
; ---------------------------------------------------------------------------

Obj_ScorchBarrier:
		move.l	#Map_ScorchBarrierC,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#4,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(20/2,20/2),height_pixels(a0)
		move.w	#bytes_to_word(20/2,20/2),y_radius(a0)
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
	; animate
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.stay
		move.b	#2,anim_frame_timer(a0)
		bchg	#rbXFlip,render_flags(a0)
	.stay:
		addq.b	#2,$3C(a0)	; speed
		moveq	#3,d2		; distance
		jsr		MoveSprite_CircularSimple
		jsr		(TouchResponse).l
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

Map_ScorchBarrierC:		binclude	"Objects/Player Projectiles/Object Data/Map - Scorch Barrier C.bin"
		even