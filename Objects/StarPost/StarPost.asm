; ---------------------------------------------------------------------------
; StarPost (Object)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_StarPost:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_2CFB6(pc,d0.w),d1
		jmp	off_2CFB6(pc,d1.w)
; ---------------------------------------------------------------------------

off_2CFB6: offsetTable
		offsetTableEntry.w loc_2CFC0	; 0
		offsetTableEntry.w loc_2D012	; 2
		offsetTableEntry.w loc_2D0F8	; 4
		offsetTableEntry.w loc_2D10A	; 6
; ---------------------------------------------------------------------------

loc_2CFC0:
		addq.b	#2,routine(a0)
		move.l	#Map_StarPost,mappings(a0)
		move.w	#make_art_tile(ArtTile_StarPost+8,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#bytes_to_word(80/2,16/2),height_pixels(a0)		; set height and width
		move.w	#$280,priority(a0)
		move.w	respawn_addr(a0),d0							; get address in respawn table
		beq.s	loc_2D012									; if it's zero, it isn't remembered
		movea.w	d0,a2										; load address into a2
		btst	#0,(a2)
		bne.s	loc_2D008
		move.b	(Last_star_post_hit).w,d1
		andi.b	#$7F,d1
		move.b	subtype(a0),d2
		andi.b	#$7F,d2
		cmp.b	d2,d1
		blo.s		loc_2D012

loc_2D008:
		bset	#0,(a2)
		move.b	#2,anim(a0)

loc_2D012:
		tst.w	(Debug_placement_mode).w
		bne.w	loc_2D0F8
		lea	(Player_1).w,a3
		move.b	(Last_star_post_hit).w,d1
		bsr.s	sub_2D028
		bra.w	loc_2D0F8

; =============== S U B R O U T I N E =======================================

sub_2D028:
		andi.b	#$7F,d1
		move.b	subtype(a0),d2
		andi.b	#$7F,d2
		cmp.b	d2,d1
		bhs.w	loc_2D0EA
		move.w	x_pos(a3),d0
		sub.w	x_pos(a0),d0
		addi.w	#8,d0
		cmpi.w	#$10,d0
		bhs.w	locret_2D0E8
		move.w	y_pos(a3),d0
		sub.w	y_pos(a0),d0
		addi.w	#$40,d0
		cmpi.w	#$68,d0
		bhs.w	locret_2D0E8
		sfx	sfx_StarPost
		jsr	(Create_New_Sprite).w
		bne.s	loc_2D0D0
		move.l	#Obj_StarPost,address(a1)
		move.b	#6,routine(a1)
		move.w	x_pos(a0),$30(a1)
		move.w	y_pos(a0),$32(a1)
		subi.w	#$14,$32(a1)
		move.l	mappings(a0),mappings(a1)
		move.w	art_tile(a0),art_tile(a1)
		move.b	#4,render_flags(a1)
		move.w	#bytes_to_word(16/2,16/2),height_pixels(a1)		; set height and width
		move.w	#$200,priority(a1)
		move.b	#2,mapping_frame(a1)
		move.w	#$20,$36(a1)
		move.w	a0,$3E(a1)

loc_2D0D0:
		move.b	#1,anim(a0)
		bsr.w	Lamp_StoreInfo
		move.b	#4,routine(a0)
		move.w	respawn_addr(a0),d0				; get address in respawn table
		beq.s	locret_2D0E8					; if it's zero, it isn't remembered
		movea.w	d0,a2							; load address into a2
		bset	#0,(a2)

locret_2D0E8:
		rts
; ---------------------------------------------------------------------------

loc_2D0EA:
		tst.b	anim(a0)
		bne.s	locret_2D0F6
		move.b	#2,anim(a0)

locret_2D0F6:
		rts
; ---------------------------------------------------------------------------

loc_2D0F8:
		lea	Ani_StarPost(pc),a1
		jsr	(Animate_Sprite).w
		jmp	(Sprite_OnScreen_Test).w
; ---------------------------------------------------------------------------

loc_2D10A:
		subq.w	#1,$36(a0)
		bpl.s	loc_2D12E
		movea.w	$3E(a0),a1
		cmpi.l	#Obj_StarPost,address(a1)
		bne.s	loc_2D128
		move.b	#2,anim(a1)
		clr.b	mapping_frame(a1)

loc_2D128:
		jmp	(Delete_Current_Sprite).w
; ---------------------------------------------------------------------------

loc_2D12E:
		move.b	angle(a0),d0
		subi.b	#$10,angle(a0)
		subi.b	#$40,d0
		jsr	(GetSineCosine).w
		muls.w	#$C00,d1
		swap	d1
		add.w	$30(a0),d1
		move.w	d1,x_pos(a0)
		muls.w	#$C00,d0
		swap	d0
		add.w	$32(a0),d0
		move.w	d0,y_pos(a0)
		jmp	(Sprite_OnScreen_Test).w

; =============== S U B R O U T I N E =======================================

Lamp_StoreInfo:
		move.b	subtype(a0),(Last_star_post_hit).w
		move.w	x_pos(a0),(Saved_X_pos).w
		move.w	y_pos(a0),(Saved_Y_pos).w

Save_Level_Data:
		move.b	(Last_star_post_hit).w,(Saved_last_star_post_hit).w
		move.w	(Current_zone_and_act).w,(Saved_zone_and_act).w
		move.w	(Apparent_zone_and_act).w,(Saved_apparent_zone_and_act).w
		move.w	(Player_1+art_tile).w,(Saved_art_tile).w
		move.w	(Player_1+top_solid_bit).w,(Saved_solid_bits).w
		move.l	(Timer).w,(Saved_timer).w
		move.l	(Level_data_addr_RAM.Resize).w,(Saved_dynamic_resize).w
		move.w	(Camera_max_Y_pos).w,(Saved_camera_max_Y_pos).w
		move.w	(Camera_X_pos).w,(Saved_camera_X_pos).w
		move.w	(Camera_Y_pos).w,(Saved_camera_Y_pos).w
		move.w	(Mean_water_level).w,(Saved_mean_water_level).w
		move.b	(Water_full_screen_flag).w,(Saved_water_full_screen_flag).w
		rts

; =============== S U B R O U T I N E =======================================

Lamp_LoadInfo:
Load_StarPost_Settings:
		move.b	(Saved_last_star_post_hit).w,(Last_star_post_hit).w
		move.w	(Saved_zone_and_act).w,(Current_zone_and_act).w
		move.w	(Saved_apparent_zone_and_act).w,(Apparent_zone_and_act).w
		move.w	(Saved_X_pos).w,(Player_1+x_pos).w
		move.w	(Saved_Y_pos).w,(Player_1+y_pos).w
		move.l	(Saved_timer).w,(Timer).w
		move.b	#59,(Timer_frame).w
		subq.b	#1,(Timer_second).w
		move.w	(Saved_art_tile).w,(Player_1+art_tile).w
		move.w	(Saved_solid_bits).w,(Player_1+top_solid_bit).w
		move.l	(Saved_dynamic_resize).w,(Level_data_addr_RAM.Resize).w
		move.w	(Saved_camera_max_Y_pos).w,(Camera_max_Y_pos).w
		move.w	(Saved_camera_max_Y_pos).w,(Camera_target_max_Y_pos).w
		move.w	(Saved_camera_X_pos).w,(Camera_X_pos).w
		move.w	(Saved_camera_Y_pos).w,(Camera_Y_pos).w
		tst.b	(Water_flag).w
		beq.s	+
		move.w	(Saved_mean_water_level).w,(Mean_water_level).w
		move.b	(Saved_water_full_screen_flag).w,(Water_full_screen_flag).w
+		rts

; ---------------------------------------------------------------------------

		include "Objects/StarPost/Object Data/Anim - StarPost.asm"
		include "Objects/StarPost/Object Data/Map - StarPost.asm"
		include "Objects/StarPost/Object Data/Map - Enemy Points.asm"
