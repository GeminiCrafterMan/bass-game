; Player projectiles! Finally!
Obj_PlayerLemon:
		move.l	#Map_BusterShots,mappings(a0)
		move.w	#make_art_tile(ArtTile_BusterShots,0,0),art_tile(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#1,damage(a0)	; deals 1 damage to anything but bosses
		move.w	#bytes_to_word(8,8),height_pixels(a0)
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
		move.w	#bytes_to_word(8,8),height_pixels(a0)
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

Obj_MegaMidCharge:
		move.l	#Map_MegaBuster,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(16,16),height_pixels(a0)
		move.w	#bytes_to_word(16/2,16/2),y_radius(a0)
		move.l	#PLC_MegaBuster,dplc_address(a0)
		move.l	#ArtUnc_MegaBuster>>1,art_address(a0)
		move.b	#1,mapping_frame(a0)
		move.b	#4,anim_frame_timer(a0)
		move.l	#.main,address(a0)
	.main:
		btst	#7,status(a0)
		bne.s	.delete
		out_of_xrange.s .delete	; is the projectile off-screen?
		out_of_yrange.s .delete
	; animate
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.stay
		move.b	#4,anim_frame_timer(a0)
		addq.b	#1,mapping_frame(a0)
		cmpi.b	#3,mapping_frame(a0)
		bne.s	.stay
		move.b	#1,mapping_frame(a0)
	.stay:
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		bsr.w	Shot_Load_PLC
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

Obj_MegaFullCharge:
		move.l	#Map_MegaBuster,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#3,damage(a0)	; deals 3 damage to anything but bosses
		move.w	#bytes_to_word(32,32),height_pixels(a0)
		move.w	#bytes_to_word(30/2,30/2),y_radius(a0)
		move.l	#PLC_MegaBuster,dplc_address(a0)
		move.l	#ArtUnc_MegaBuster>>1,art_address(a0)
		move.b	#3,mapping_frame(a0)
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
		cmpi.b	#7,mapping_frame(a0)
		bne.s	.stay
		move.b	#3,mapping_frame(a0)
	.stay:
		jsr		(TouchResponse).l
		jsr		SpeedToPos
		bsr.w	Shot_Load_PLC
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 3
		jmp		(DeleteObject).l

Obj_MetalBlade:
		move.l	#Map_MetalBlade,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		clr.b	mapping_frame(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(8,8),height_pixels(a0)
		move.w	#bytes_to_word(8/2,8/2),y_radius(a0)
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
		subq.b	#1,(v_bulletsonscreen).w	; subtract 1
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Shot graphics loading subroutine
; ---------------------------------------------------------------------------

Shot_Load_PLC:
		moveq	#0,d0
		move.b	mapping_frame(a0),d0
		cmp.b	previous_frame(a0),d0
		beq.s	.noChange
		move.b	d0,previous_frame(a0)
		move.l	dplc_address(a0),a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		moveq	#0,d5
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	.noChange
		move.w	art_tile(a0),d4	; get art tile
		andi.w	#$7FF,d4		; clear art flags
		lsl.w	#5,d4			; get VRAM address
		move.l	art_address(a0),d6

	.readEntry:
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#4,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(Add_To_DMA_Queue).w
		dbf	d5,.readEntry
	.noChange:
		rts
; End of function Shot_Load_PLC

Map_BusterShots:	binclude	"Objects/Player Projectiles/Object Data/Map - Buster Shots.bin"
		even
Map_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/Map - Mega Buster Charge Shots.bin"
		even
PLC_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/PLC - Mega Buster Charge Shots.bin"
		even
Map_MetalBlade:		binclude	"Objects/Player Projectiles/Object Data/Map - Metal Blade.bin"
		even