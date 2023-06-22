; Player projectiles! Finally!
Obj_PlayerLemon:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#make_art_tile(ArtTile_BusterShots,0,0),art_tile(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#1,damage(a0)	; deals 1 damage to anything but bosses
		move.w	#bytes_to_word(8/2,8/2),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_PlayerBall:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#make_art_tile(ArtTile_BusterShots,0,0),art_tile(a0)
		move.b	#2,mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#1,damage(a0)	; deals 1 damage to anything but bosses
		move.w	#bytes_to_word(8/2,8/2),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
		move.l	#.main,address(a0)
	.main:
		jsr		(ObjFloorDist).l
		tst.w	d1
		bpl.s	.didntHit
		bset	#7,status(a0)
	.didntHit:
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Mappings data
; ---------------------------------------------------------------------------

Map_BusterShots:	binclude	"Objects/Player Projectiles/Object Data/Map - Buster Shots.bin"
		even