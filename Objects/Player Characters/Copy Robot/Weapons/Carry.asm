Utility_Carry:	; Carry from MM1 GB.
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_CarryPlatform).l,a1
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
		tst.b	(v_utility1energy).w
		jeq		Weapon_NoAmmo.fireLemon
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
		move.l	#Obj_CarryPlatform,address(a1)
		move.b	#2,(v_shottype).w
		move.b	#13,shoottimer(a0)
;		move.w	#$800,ground_vel(a1)
		subq.b	#1,(v_utility1energy).w	; -1
	.objectLoadedJumpPoint:
		jsr		FireWeapon
	.movePlatform:
		move.b	(Ctrl_1_held_logical).w,d0
	.up:
		btst	#bitUp,d0
		beq.s	.down
		subi.w	#$18,y_pos(a1)
	.down:
		btst	#bitDn,d0
		beq.s	.right
		addi.w	#$18,y_pos(a1)
	.right:
		btst	#bitR,d0
		beq.s	.left
		addi.w	#$12,x_pos(a1)
	.left:
		btst	#bitL,d0
		beq.s	.none
		subi.w	#$12,x_pos(a1)
	.ret:
		rts
	.none:
		andi.b	#btnUD,d0
		bne.s	.ret
		btst	#Status_Facing,status(a0)
		bne.s	.moveL
		addi.w	#$12,x_pos(a1)
		rts
	.moveL:
		subi.w	#$12,x_pos(a1)
		rts

; ---------------------------------------------------------------------------
; Platform object
; ---------------------------------------------------------------------------

Obj_CarryPlatform:
		move.l	#Map_CarryPlatform,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.w	#bytes_to_word(14/2,22/2),height_pixels(a0)
		move.w	#bytes_to_word(14/2,18/2),y_radius(a0)
		move.w	#60*4,wait(a0)
		move.l	#.main,address(a0)
	.main:
		tst.b	render_flags(a0)
		bpl.s	.chkDel
		moveq	#0,d1
		moveq	#0,d3
		moveq	#0,d4
		move.b	width_pixels(a0),d1
		move.b	height_pixels(a0),d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4	; just to be safe
		jsr	(SolidObjectTop).l

	.chkDel:
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		subq.w	#1,wait(a0)
		beq.s	.splode
		bmi.s	.splode
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.stay
		move.b	#4,anim_frame_timer(a0)
		addq.b	#1,mapping_frame(a0)
		cmpi.b	#5,mapping_frame(a0)
		bne.s	.stay
		move.b	#1,mapping_frame(a0)
	.stay:
		jmp		(Draw_Sprite).w
	.splode:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		move.l	#Obj_Explosion,(a0)
		move.b	#6,routine(a0)
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

Map_CarryPlatform:
	binclude	"Objects/Player Projectiles/Object Data/Map - Carry Platform.bin"
		even