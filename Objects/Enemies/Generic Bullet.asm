Obj_GenericBullet:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#make_art_tile(ArtTile_BusterShots,0,0),art_tile(a0)
		move.b	#2,mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#$98,collision_flags(a0)	; don't take shots wtf are you doing
	; Damage is set by the one firing this.
		move.w	#bytes_to_word(8/2,8/2),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
		move.l	#.main,address(a0)
	.main:
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
		jsr		SpeedToPos
		jsr		Add_SpriteToCollisionResponseList
		jmp		DisplaySprite
	.delete:
		jmp		(DeleteObject).l