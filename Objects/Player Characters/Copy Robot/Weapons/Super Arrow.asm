Utility_SuperArrow:	; Super Arrow. 2 ammo to shoot, 1 per "frame"? to ride.
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_SuperArrow).l,a1
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
		tst.b	(v_utility2energy).w	; this will never ever be uneven, since pickups add 2 and 10 respectively
		jeq		Weapon_NoAmmo.fireLemon
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_SuperArrow,address(a1)
		move.b	#0,(v_shottype).w
		move.b	#13,shoottimer(a0)
		subq.b	#2,(v_utility2energy).w	; -1
		move.w	#$300,ground_vel(a1)
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts

; ---------------------------------------------------------------------------
; Projectile object
; ---------------------------------------------------------------------------

Obj_SuperArrow:	; Do this at some point.
		move.l	#Map_SuperArrow,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		clr.b	mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(6/2,32/2),height_pixels(a0)
		move.w	#bytes_to_word(6/2,32/2),y_radius(a0)
		move.l	#.main,address(a0)
	.main:
		tst.b	render_flags(a0)
		bpl.s	.chkDel
		move.w	x_pos(a0),$30(a0)
		move.w	x_pos(a0),$32(a0)
		move.w	y_pos(a0),$34(a0)
		move.b	status(a0),$2E(a0)
		move.w	x_pos(a0),$44(a0)
		moveq	#0,d1
		moveq	#0,d3
		moveq	#0,d4
		move.b	width_pixels(a0),d1
		move.b	height_pixels(a0),d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4	; just to be safe
		jsr	(SolidObjectTop).l

	.chkDel:
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		(Draw_Sprite).w
	.getOff:
		movea.w	interact(a1),a2
		cmpa.w	a0,a2
		bne.s	.ret
		bclr	#Status_OnObj,status(a1)
	.ret:
		rts
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		bsr.s	.getOff
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

Map_SuperArrow:		binclude	"Objects/Player Projectiles/Object Data/Map - Super Arrow.bin"
		even