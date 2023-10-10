ControllerSplash_Screen:
		sfx	mus_Stop
		jsr	(Clear_Kos_Module_Queue).w
		jsr	(Pal_FadeToBlack).w
		disableInts
		move.l	#VInt,(V_int_addr).w
		move.l	#HInt,(H_int_addr).w
		disableScreen
		jsr	(Clear_DisplayData).w
		lea	Level_VDP(pc),a1
		jsr	(Load_VDP).w
		jsr	(Clear_Palette).w
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
		lea	(ArtKosM_Controller).l,a1
		move.w	#0,d2
		jsr	(Queue_Kos_Module).w
		lea	(Pal_Controller).l,a1
		lea	(Target_palette).w,a2
		jsr	(PalLoad_Line64).w

		lea	(MapEni_Controller).l,a0	; load controller splash screen mappings
		lea	($FF0000).l,a1	; load buffer
		moveq	#0,d0
		jsr	(EniDec).w

		copyTilemap    vram_fg, 320, 224

.waitplc
		move.b	#VintID_Fade,(V_int_routine).w
		jsr	(Process_Kos_Queue).w
		jsr	(Wait_VSync).w
		jsr	(Process_Kos_Module_Queue).w
		tst.w	(Kos_modules_left).w
		bne.s	.waitplc
		move.b	#VintID_Main,(V_int_routine).w
		jsr	(Wait_VSync).w
		enableScreen
		jsr	(Pal_FadeFromBlack).w

.loop
		move.b	#VintID_Main,(V_int_routine).w
		jsr	(Wait_VSync).w
		jsr	(Process_Sprites).w
		jsr	(Render_Sprites).w
		btst	#bitStart,(Ctrl_1_pressed).w
		beq.s	.loop
		move.b	#id_TitleScreen,(Game_mode).w	; set game mode
		rts