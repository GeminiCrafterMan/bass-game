Obj_Target:
		move.l	#Map_Target,mappings(a0)
		move.w	#make_art_tile(ArtTile_Monitors,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$100,priority(a0)
		move.b	#$B,collision_flags(a0)
		move.w	#bytes_to_word(16/2,16/2),height_pixels(a0)
		move.w	#bytes_to_word(16/2,16/2),y_radius(a0)
		move.b	#6,damage(a0)
		move.b	subtype(a0),boss_hitcount2(a0)
		move.b	#3,anim_frame_timer(a0)
		clr.b	routine(a0)
		move.l	#.main,address(a0)
	.main:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	+
		move.b	#3,anim_frame_timer(a0)
		addq.b	#1,mapping_frame(a0)
		cmpi.b	#4+1,mapping_frame(a0)
		bne.s	+
		move.b	#2,mapping_frame(a0)
+		jmp		GenericEnemy_Hurt
; ===========================================================================

Map_Target:		binclude	"Objects/Enemies/Target/Object Data/Map - Target.bin"