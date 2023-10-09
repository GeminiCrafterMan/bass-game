StageSelect_Screen:
		sfx		mus_Stop
		jsr		(Clear_Kos_Module_Queue).w
		jsr		(Pal_FadeToBlack).w
		disableInts
		move.l	#VInt,(V_int_addr).w
		move.l	#HInt,(H_int_addr).w
		disableScreen
		jsr		(Clear_DisplayData).w
		lea		Level_VDP(pc),a1
		jsr		(Load_VDP).w
		jsr		(Clear_Palette).w
		clr.b	(Water_full_screen_flag).w
		clr.b	(Water_flag).w
		clearRAM RAM_start, (RAM_start+$1000)
		clearRAM Object_RAM, Object_RAM_end
		clearRAM Lag_frame_count, Lag_frame_count_end
		clearRAM Camera_RAM, Camera_RAM_end
		clearRAM Oscillating_variables, Oscillating_variables_end
		moveq	#0,d0
		move.w	d0,(Current_zone_and_act).w
		move.w	d0,(Apparent_zone_and_act).w
		move.b	d0,(Last_star_post_hit).w
		move.b	d0,(Level_started_flag).w
		ResetDMAQueue
		lea		(ArtKosM_StageSelTiles).l,a1
		move.w	#0,d2
		jsr		(Queue_Kos_Module).w
		lea		(ArtKosM_StageSelObjects).l,a1
		move.w	#$5E*$20,d2	; maybe?
		jsr		(Queue_Kos_Module).w
	.plrchk:
		lea		(Pal_SSelectBass).l,a1
		tst.b	(Player_mode).w
		beq.s	.cont
		lea		(Pal_SSelectCRobo).l,a1
	.cont:
		lea		(Target_palette).w,a2
		jsr		(PalLoad_Line16).w
		lea		(Pal_StageSelect).l,a1
		lea		(Target_palette_line_2).w,a2
		jsr		(PalLoad_Line48).w

		lea		(MapEni_StageSelFG).l,a0	; load title screen mappings
		lea		($FF0000).l,a1	; load buffer
		moveq	#0,d0
		jsr		(EniDec).w
		copyTilemap	vram_fg,320,224

		lea		(MapEni_StageSelBG).l,a0	; load title screen mappings
		lea		($FF0000).l,a1	; load buffer
		moveq	#0,d0
		jsr		(EniDec).w
		copyTilemap	vram_bg,320,224

		music	mus_StageSelect

	; lol
		;move.b	#$D7, d0
		;jsr		(SMPS_PlayDACSample).w	; play sample

.waitplc
		move.b	#VintID_Fade,(V_int_routine).w
		jsr		(Process_Kos_Queue).w
		jsr		(Wait_VSync).w
		jsr		(Process_Kos_Module_Queue).w
		tst.w	(Kos_modules_left).w
		bne.s	.waitplc
		move.b	#VintID_Main,(V_int_routine).w
		jsr		(Wait_VSync).w
		enableScreen
		jsr		(Pal_FadeFromBlack).w
		move.b	#4,(RM_Stage_Selected).w
		move.l	#Obj_StageSelect,(Player_1).w

.loop
		move.b	#VintID_Main,(V_int_routine).w
		jsr		(Wait_VSync).w
		enableInts
		jsr		(Process_Sprites).w
		jsr		(Render_Sprites).w
		btst	#bitStart,(Ctrl_1_pressed).w
		beq.s	.loop
		moveq	#0,d0
		move.b	(RM_Stage_Selected).w,d0
		lsl.w	#1,d0
		move.w	.rmStageLUT(pc,d0.w),(Current_zone_and_act).w
		move.w	.rmStageLUT(pc,d0.w),(Apparent_zone_and_act).w
		move.b	#id_LevelScreen,(Game_mode).w	; set screen mode to level
		rts

	.rmStageLUT:
		dc.w	(1<<8)+0	; Blaze Man
		dc.w	(1<<8)+1	; Video Man
		dc.w	(1<<8)+2	; Smog Man
		dc.w	(1<<8)+3	; Shark Man
		dc.w	(0<<8)+0	; Center
		dc.w	(2<<8)+0	; Origami Man
		dc.w	(2<<8)+1	; ????
		dc.w	(2<<8)+2	; ????
		dc.w	(2<<8)+3	; ????
	even

; ===========================================================================
; Object - Stage Select sprites
; ===========================================================================

Obj_StageSelect_Portraits:
		move.l	#Map_StageSelectObjects,mappings(a0)
		move.w	#$100,priority(a0)
		move.w	#make_art_tile($5E,0,0),art_tile(a0)
		cmpi.b	#4,subtype(a0)
		beq.s	.middle
		jmp		DisplaySprite
	.middle:
		move.b	(Robot_Masters_Beaten),d0
		cmpi.b	#$FF,d0	; all robot masters beaten?
		bne.s	.notWily
		rts
	.notWily:
		movem.l	d0-d3,-(sp)
		moveq	#0,d0
		moveq	#0,d1
		moveq	#0,d2
		moveq	#0,d3
		move.b	(RM_Stage_Selected).w,d0
		move.b	(Player_mode).w,d1
		lsl.w	#2,d1
		move.l	.artLUT(pc,d1.w),d1
		move.w	#tiles_to_bytes($EF),d2
		move.w	#16*16,d3	; length of one image (1 tile = 16 bytes, 16 tiles)
		mulu.w	d3,d0	; source * destination
		add.l	d0,d1
		jsr		(QueueDMATransfer).l
		movem.l	(sp)+,d0-d3
		jmp		DisplaySprite

	.artLUT:
		dc.l	ArtUnc_SSelectBass>>1,ArtUnc_SSelectCRobo>>1

Obj_StageSelect:
		jsr		FindFreeObj
		move.l	#Obj_StageSelect_Cursor,address(a1)
		moveq	#9-1,d1	; 9 total, counting the first
		moveq	#0,d2
		lea		(StageSelectStuff_posLUT).l,a3
	.spawnPortraits:
		jsr		FindFreeObj
		move.l	#Obj_StageSelect_Portraits,address(a1)
		move.w	(a3)+,x_pos(a1)
		move.w	(a3)+,y_pos(a1)
		move.b	d2,subtype(a1)
		move.b	d2,mapping_frame(a1)
		addq.b	#1,d2
		dbf		d1,.spawnPortraits
		jmp		DeleteObject

StageSelectStuff_posLUT:
		dc.w	216,168	; Blaze Man
		dc.w	288,168	; Video Man
		dc.w	360,168	; Smog Man

		dc.w	216,232	; Shark Man
		dc.w	288,232	; Center
		dc.w	360,232	; Origami Man

		dc.w	216,296	; ????
		dc.w	288,296	; ????
		dc.w	360,296	; ????

Obj_StageSelect_Cursor:
		move.l	#Map_StageSelectObjects,mappings(a0)
		move.b	#$A,mapping_frame(a0)
		move.w	#$100,priority(a0)
		move.w	#make_art_tile($5E,0,0),art_tile(a0)
		move.b	#16,anim_frame_timer(a0)
		move.l	#.main,address(a0)
	.main:
		moveq	#0,d0
		move.b	(RM_Stage_Selected).w,d0
		ext.w	d0
		lsl.w	#2,d0
		move.w	StageSelectStuff_posLUT(pc,d0.w),x_pos(a0)
		addq.w	#2,d0
		move.w	StageSelectStuff_posLUT(pc,d0.w),y_pos(a0)
		bsr.s	.controls
	.animate:
		tst.b	anim_frame_timer(a0)
		bne.s	.sub
	.switch:
		bchg	#0,status(a0)
		move.b	#16,anim_frame_timer(a0)
		rts
	.sub:
		subq.b	#1,anim_frame_timer(a0)
		btst	#0,status(a0)
		beq.s	.display
		rts
	.display:
		jmp		DisplaySprite

	.controls:
		cmpi.b	#2,(RM_Stage_Selected).w	; if Smog Man or less
		ble.s	.skipUp
		btst	#bitUp,(Ctrl_1_pressed).w
		bne.w	.up
	.skipUp:
		cmpi.b	#0,(RM_Stage_Selected).w
		beq.s	.skipLeft
		cmpi.b	#3,(RM_Stage_Selected).w
		beq.s	.skipLeft
		cmpi.b	#6,(RM_Stage_Selected).w
		beq.s	.skipLeft
		btst	#bitL,(Ctrl_1_pressed).w
		bne.w	.left
	.skipLeft:
		cmpi.b	#2,(RM_Stage_Selected).w
		beq.s	.skipRight
		cmpi.b	#5,(RM_Stage_Selected).w
		beq.s	.skipRight
		cmpi.b	#8,(RM_Stage_Selected).w
		beq.s	.skipRight
		btst	#bitR,(Ctrl_1_pressed).w
		bne.w	.right
	.skipRight:
		cmpi.b	#6,(RM_Stage_Selected).w
		bge.s	.skipDown
		btst	#bitDn,(Ctrl_1_pressed).w
		bne.w	.down
	.skipDown:
		rts
	.up:
		subq.b	#3,(RM_Stage_Selected).w
		bra.s	.update
	.left:
		subq.b	#1,(RM_Stage_Selected).w
		bra.s	.update
	.right:
		addq.b	#1,(RM_Stage_Selected).w
		bra.s	.update
	.down:
		addq.b	#3,(RM_Stage_Selected).w
;		bra.s	.update
	.update:
		sfx		sfx_MenuCursor,1

; ===========================================================================
; Mappings
; ===========================================================================
Map_StageSelectObjects:
		binclude	"Data/Screens/Stage Select/Object Data/Map - Stage Select Objects.bin"
			even