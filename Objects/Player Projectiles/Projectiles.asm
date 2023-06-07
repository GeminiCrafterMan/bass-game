; Player projectiles! Finally!
Obj_PlayerLemon:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#$79C,art_tile(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#$200,priority(a0)
		move.b	#4,render_flags(a0)
		move.b	#1,damage(a0)	; deals 1 damage to anything but bosses
		move.w	#bytes_to_word(8,8),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
		btst	#7,status(a0)
		bne.w	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		DisplaySprite
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_PlayerBall:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#$79C,art_tile(a0)
		move.b	#2,mapping_frame(a0)
		move.w	#$200,priority(a0)
		move.b	#4,render_flags(a0)
		move.b	#1,damage(a0)	; deals 1 damage to anything but bosses
		move.w	#bytes_to_word(8,8),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
		jsr		(ObjFloorDist).l
		tst.w	d1
		bpl.s	.didntHit
		bset	#7,status(a0)
	.didntHit:
		btst	#7,status(a0)
		bne.w	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		DisplaySprite
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_MegaMidCharge:
		move.l	#Map_MegaBuster,mappings(a0)
		move.w	#$79C,art_tile(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#$200,priority(a0)
		move.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(16,16),height_pixels(a0)
		move.w	#bytes_to_word(16/2,16/2),y_radius(a0)
		btst	#7,status(a0)
		bne.w	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		DisplaySprite
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_MegaFullCharge:
		move.l	#Map_MegaBuster,mappings(a0)
		move.w	#$79C,art_tile(a0)
		move.b	#3,mapping_frame(a0)
		move.w	#$200,priority(a0)
		move.b	#4,render_flags(a0)
		move.b	#3,damage(a0)	; deals 3 damage to anything but bosses
		move.w	#bytes_to_word(32,32),height_pixels(a0)
		move.w	#bytes_to_word(30/2,30/2),y_radius(a0)
		btst	#7,status(a0)
		bne.w	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		jmp		DisplaySprite
	.delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 3
		jmp		(DeleteObject).l

Map_BusterShots:	binclude	"Objects/Player Projectiles/Object Data/Map - Buster Shots.bin"
		even
Map_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/Map - Mega Buster Charge Shots.bin"
		even
PLC_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/PLC - Mega Buster Charge Shots.bin"
		even