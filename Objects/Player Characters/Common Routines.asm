Player_Init:
		addq.b	#2,routine(a0)				; => Obj01_Control
		move.w	#bytes_to_word(28/2,14/2),y_radius(a0)	; set y_radius and x_radius	; this sets Sonic's collision height (2*pixels)
		move.w	#bytes_to_word(28/2,14/2),default_y_radius(a0)	; set default_y_radius and default_x_radius
		move.w	#$100,priority(a0)
		move.w	#bytes_to_word(48/2,48/2),height_pixels(a0)		; set height and width
		move.b	#4,render_flags(a0)
		move.w	#$300,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#$C,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$E0,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		clr.l	(v_bulletsonscreen).w	; clear bullets, weapon, charge, charge cycle timer
		clr.b	(v_chargecycnum).w		; clear charge cycle number
		move.w	#bytes_to_word(28,28),(v_health).w		; set health
		ori.b	#1,(Update_HUD_ring_count).w
		tst.b	(Last_star_post_hit).w
		bne.s	Player_Init_Continued

		; only happens when not starting at a checkpoint:
		move.w	#make_art_tile(ArtTile_Sonic,0,0),art_tile(a0)
		move.w	#bytes_to_word($C,$D),top_solid_bit(a0)
	.setWeaponEnergy:
		move.w	#bytes_to_word(28,28),(v_weapon1energy).w	; Weapon 1
		move.w	#bytes_to_word(28,28),(v_weapon2energy).w	; Weapon 2
		move.w	#bytes_to_word(28,28),(v_weapon3energy).w	; Weapon 3
		move.w	#bytes_to_word(28,28),(v_weapon4energy).w	; Weapon 4
		move.w	#bytes_to_word(28,28),(v_weapon5energy).w	; Weapon 5
		move.w	#bytes_to_word(28,28),(v_weapon6energy).w	; Weapon 6
		move.w	#bytes_to_word(28,28),(v_weapon7energy).w	; Weapon 7
		move.w	#bytes_to_word(112,112),(v_weapon8energy).w	; Weapon 8 - Metal Blade, for now
		move.w	#bytes_to_word(28,28),(v_utility1energy).w	; Utility 1
		move.w	#bytes_to_word(28,28),(v_utility2energy).w	; Utility 2

		; only happens when not starting at a Special Stage ring:
		move.w	x_pos(a0),(Saved_X_pos).w
		move.w	y_pos(a0),(Saved_Y_pos).w
		move.w	art_tile(a0),(Saved_art_tile).w
		move.w	top_solid_bit(a0),(Saved_solid_bits).w

Player_Init_Continued:
		subi.w	#$20,x_pos(a0)
		addi.w	#4,y_pos(a0)
		bsr.w	Reset_Player_Position_Array
		addi.w	#$20,x_pos(a0)
		subi.w	#4,y_pos(a0)
		rts

; ---------------------------------------------------------------------------
; Subroutine allowing Player to switch weapons
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_WeaponSwitch:
		tst.b	(v_bulletsonscreen).w
		bne.s	.ret
		move.b	(Ctrl_1_pressed_logical_6btn).w,d2
		btst	#button_X,d2	; X check
		bne.s	.upWep
		btst	#button_Y,d2	; Y check
		bne.s	.resetWep
		btst	#button_Z,d2	; Z check
		bne.s	.downWep
	.ret:
		rts
	.upWep:
		subq.b	#1,(v_weapon).w	; subtract 1
		tst.b	(v_weapon).w	; if above 0
		bge.s	.switch			; return
		move.b	#10,(v_weapon).w	; wrap back around if above
		bra.s	.switch
	.downWep:
		addq.b	#1,(v_weapon).w	; add 1
		cmpi.b	#11,(v_weapon).w	; if below 10
		blt.s	.switch			; return
	.resetWep:
		clr.b	(v_weapon).w	; wrap back around if above
	; continue into .switch
	.switch:
		sfx		sfx_MenuCursor
	.loadWepPal:
		clr.b	(Weapon_art_loaded_flag).w
;		bclr	#4,obStatus(a0)
		clr.b	(v_charge).w	; clear charge
		clr.b	(v_chargecyctimer).w	; clear charge
		clr.b	(v_chargecycnum).w	; clear charge

		moveq	#0,d0
		tst.b	character_id(a0)
		beq.s	.bass
		move.b	#palid_CopyRobot,d0	; Copy Robot
	.bass:
		add.b	(v_weapon).w,d0
		ext.w	d0	; sign extend
		move.w	d0,d1
		jsr	(LoadPalette).w
		move.w	d1,d0
		jmp	(LoadPalette_Immediate).w

; ---------------------------------------------------------------------------
; Subroutine allowing characters to shoot
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_Shoot:
		moveq	#0,d0
		move.b	(v_weapon).w,d0
		add.w	d0,d0
		add.w	d0,d0
		tst.b	character_id(a0)
		bne.s	.copybot
		movea.l	.weaponLUT(pc,d0.w),a1
		jmp		(a1)
	.copybot:
		movea.l	.cRobotWeaponLUT(pc,d0.w),a1
		jmp		(a1)
	.weaponLUT:
		dc.l	Weapon_BassBuster
		dc.l	Weapon_ScorchBarrier; Master Wep 1
		dc.l	Weapon_NoAmmo		; Master Wep 2
		dc.l	Weapon_NoAmmo		; Master Wep 3
		dc.l	Weapon_FinShredder	; Master Wep 4
		dc.l	Weapon_OrigamiStar	; Master Wep 5
		dc.l	Weapon_NoAmmo		; Master Wep 6
		dc.l	Weapon_NoAmmo		; Master Wep 7
		dc.l	Weapon_MetalBlade	; Master Wep 8
		dc.l	Weapon_SpreadBuster	; Utility 1
		dc.l	Weapon_NoAmmo		; Utility 2

	.cRobotWeaponLUT:
		dc.l	Weapon_MegaBuster
		dc.l	Weapon_ScorchBarrier; Master Wep 1
		dc.l	Weapon_NoAmmo		; Master Wep 2
		dc.l	Weapon_NoAmmo		; Master Wep 3
		dc.l	Weapon_FinShredder	; Master Wep 4
		dc.l	Weapon_OrigamiStar	; Master Wep 5
		dc.l	Weapon_NoAmmo		; Master Wep 6
		dc.l	Weapon_NoAmmo		; Master Wep 7
		dc.l	Weapon_MetalBlade	; Master Wep 8
		dc.l	Utility_Carry		; Utility 1
		dc.l	Utility_SuperArrow	; Utility 2

FireWeapon:
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	WepType_Normal			; 2 of 8 cardinal directions, Mega Buster
		dc.l	WepType_SemiCardinal	; 7 of 8 cardinal directions, Bass Buster
		dc.l	WepType_Cardinal		; 8 of 8 cardinal directions, Metal Blade
		dc.l	WepType_None			; Shield, since there's only one it's set up in the weapon itself...
		dc.l	WepType_StopNormal		; Reppuken

WepType_None:
		rts

WepType_StopNormal:
		clr.w	ground_vel(a0)	; stop user in place, then continue to WepType_Normal
WepType_Normal:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#Status_Facing,status(a1)
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#Status_Facing,status(a1)
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.doneFlip:
		addq.w	#2,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)	; actually make it go
		rts

WepType_SemiCardinal:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		clr.w	ground_vel(a0)	; stop user in place
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	WepType_SemiCardinal_up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.w	WepType_SemiCardinal_diagdown
WepType_SemiCardinal_straight:
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.doneFlip:
		addq.w	#2,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)	; actually make it go
		rts
WepType_SemiCardinal_up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
	.straightup:
		btst	#Status_Facing,status(a0)
		beq.s	.upNotFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#3,x_pos(a1)
		bra.s	.upDoneFlip
	.upNotFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#3,x_pos(a1)
	.upDoneFlip:
		neg.w	ground_vel(a1)
		subq.w	#6,y_pos(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		rts
	.diagup:
		asr.w	#1,ground_vel(a1)
		neg.w	ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		neg.w	ground_vel(a1)
		btst	#Status_Facing,status(a0)
		beq.s	.diagupNotFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.diagupDoneFlip
	.diagupNotFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.diagupDoneFlip:
		subq.w	#2,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)
		rts
WepType_SemiCardinal_diagdown:
		asr.w	#1,ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.doneFlip:
		addq.w	#5,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)
		rts

WepType_Cardinal:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		clr.w	ground_vel(a0)	; stop user in place
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	WepType_Cardinal_up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.w	WepType_Cardinal_down
WepType_Cardinal_straight:
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.doneFlip:
		addq.w	#2,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)	; actually make it go
		rts
WepType_Cardinal_up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
	.straightup:
		btst	#Status_Facing,status(a0)
		beq.s	.upNotFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#3,x_pos(a1)
		bra.s	.upDoneFlip
	.upNotFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#3,x_pos(a1)
	.upDoneFlip:
		neg.w	ground_vel(a1)
		subq.w	#6,y_pos(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		rts
	.diagup:
		asr.w	#1,ground_vel(a1)
		neg.w	ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		neg.w	ground_vel(a1)
		btst	#Status_Facing,status(a0)
		beq.s	.diagupNotFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.diagupDoneFlip
	.diagupNotFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.diagupDoneFlip:
		subq.w	#2,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)
		rts
WepType_Cardinal_down:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagdown
	.straightdown:
		btst	#Status_Facing,status(a0)
		beq.s	.downNotFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#3,x_pos(a1)
		bra.s	.downDoneFlip
	.downNotFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#3,x_pos(a1)
	.downDoneFlip:
;		neg.w	ground_vel(a1)
		addq.w	#6,y_pos(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		rts
	.diagdown:
		asr.w	#1,ground_vel(a1)
		move.w	ground_vel(a1),y_vel(a1)	; actually make it go
		btst	#Status_Facing,status(a0)
		beq.s	.notFlipped
		bset	#rbXFlip,render_flags(a1)
		subi.w	#10,x_pos(a1)
		neg.w	ground_vel(a1)
		bra.s	.doneFlip
	.notFlipped:
		bclr	#rbXFlip,render_flags(a1)
		addi.w	#10,x_pos(a1)
	.doneFlip:
		addq.w	#5,y_pos(a1)
		move.w	ground_vel(a1),x_vel(a1)
		rts

		include	"Objects/Player Characters/Common Weapons/No Ammo.asm"
		include "Objects/Player Characters/Common Weapons/Scorch Barrier.asm"
		include	"Objects/Player Characters/Common Weapons/Fin Shredder.asm"
		include	"Objects/Player Characters/Common Weapons/Origami Star.asm"
		include	"Objects/Player Characters/Common Weapons/Metal Blade.asm"

; =============== S U B R O U T I N E =======================================

Player_Display:
		tst.b	shoottimer(a0)
		beq.s	.noDecShoot
		subq.b	#1,shoottimer(a0)
		bne.s	.noDecShoot
		bclr	#Status_Shooting,status(a0)
	.noDecShoot:
		tst.b	dashtimer(a0)
		beq.s	.noDecDash
		subq.b	#1,dashtimer(a0)
	.noDecDash:
		move.b	invulnerability_timer(a0),d0
		beq.s	loc_10CA6
		subq.b	#1,invulnerability_timer(a0)
		lsr.b	#3,d0
		bcc.s	Player_ExitChk

loc_10CA6:
		jsr	(Draw_Sprite).w

Player_ExitChk:
		rts
; ---------------------------------------------------------------------------
; Subroutine to record Sonic's previous positions for invincibility stars
; and input/status flags for Tails' AI to follow
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_RecordPos:
		move.w	(Pos_table_index).w,d0
		lea	(Pos_table).w,a1
		lea	(a1,d0.w),a1
		move.w	x_pos(a0),(a1)+			; write location to pos_table
		move.w	y_pos(a0),(a1)+
		addq.b	#4,(Pos_table_byte).w		; increment index as the post-increments did a1
		rts

; =============== S U B R O U T I N E =======================================

Reset_Player_Position_Array:
		lea	(Pos_table).w,a1
		moveq	#$3F,d0

-		move.w	x_pos(a0),(a1)+			; write location to pos_table
		move.w	y_pos(a0),(a1)+
		dbf	d0,-
		clr.w	(Pos_table_index).w
		rts
; ---------------------------------------------------------------------------
; Subroutine for Sonic when he's underwater
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Player_Water:
		tst.b	(Water_flag).w			; does level have water?
		bne.s	Player_InWater		; if yes, branch

locret_10E2C:
		rts
; ---------------------------------------------------------------------------

Player_InWater:
		move.w	(Water_level).w,d0
		cmp.w	y_pos(a0),d0									; is Sonic above the water?
		bge.s	Player_OutWater								; if yes, branch
		bset	#Status_Underwater,status(a0)						; set underwater flag
		bne.s	locret_10E2C									; if already underwater, branch
		addq.b	#1,(Water_entered_counter).w
		movea.w	a0,a1
		move.w	#$180,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#6,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$70,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		tst.b	object_control(a0)
		bne.s	locret_10E2C
		asr	x_vel(a0)
		asr	y_vel(a0)				; memory operands can only be shifted one bit at a time
		asr	y_vel(a0)
		beq.s	locret_10E2C
		move.w	#bytes_to_word(1,0),anim(a6)	; splash animation, write 1 to anim and clear prev_anim
		sfx	sfx_Splash,1				; splash sound
; ---------------------------------------------------------------------------

Player_OutWater:
		bclr	#Status_Underwater,status(a0)	; unset underwater flag
		beq.s	locret_10E2C				; if already above water, branch
		addq.b	#1,(Water_entered_counter).w

		movea.w	a0,a1
		move.w	#$300,Sonic_Knux_top_speed-Sonic_Knux_top_speed(a4)
		move.w	#$C,Sonic_Knux_acceleration-Sonic_Knux_top_speed(a4)
		move.w	#$E0,Sonic_Knux_deceleration-Sonic_Knux_top_speed(a4)
		cmpi.b	#id_BassHurt,routine(a0)		; is Sonic falling back from getting hurt?
		beq.s	loc_10EFC			; if yes, branch
		tst.b	object_control(a0)
		bne.s	loc_10EFC
		move.w	y_vel(a0),d0
		cmpi.w	#-$400,d0
		blt.s		loc_10EFC
		asl	y_vel(a0)

loc_10EFC:
		cmpi.b	#id_Null,anim(a0)	; is Sonic in his 'blank' animation
		beq.w	locret_10E2C			; if so, branch
		tst.w	y_vel(a0)
		beq.w	locret_10E2C
		move.w	#bytes_to_word(1,0),anim(a6)	; splash animation, write 1 to anim and clear prev_anim
		cmpi.w	#-$1000,y_vel(a0)
		bgt.s	loc_10F22
		move.w	#-$1000,y_vel(a0)	; limit upward y velocity exiting the water

loc_10F22:
		sfx	sfx_Splash,1				; splash sound

; =============== S U B R O U T I N E =======================================

Player_CheckLadder:
		btst	#0,object_control(a0)		; Being controlled by another object?
		bne.s	.end
		btst	#1,object_control(a0)		; Already on a ladder?
		bne.s	.end
	; Mengo @ 12:20 AM EST, 1/25/24:
	; "Game feel thing I think will help. Disable ladder grabbing while Button C is held"
		btst.b	#button_C,(Ctrl_1_held_logical).w	; pressing C?
		bne.s	.end						; if so, fail
		cmpi.b	#id_Victory,anim(a0)		; if in any animation earlier than victory, continue
		blt.s	.cont
		cmpi.b	#id_ThrowShieldLadder,anim(a0)	; if in any animation later than latest ladder anim, continue
		bgt.s	.cont
	.end:
		rts
	
	.cont:
		move.w	x_pos(a0),d3				; Get current block
		move.w	y_pos(a0),d2
		subi.w	#6,d2						; Check 6px up
		jsr		GetFloorPosition			; possible equivalent to CD's GetLevelBlock
		move.w	(a1),d0
		andi.w	#$3FF,d0
	; check range
		cmpi.w	#1,d0
		blt.s	.chkDown
		cmpi.w	#3,d0
		bgt.s	.chkDown
		move.b	(Ctrl_1_held_logical).w,d0	; are we attempting to climb up?
		andi.b	#button_up_mask,d0
		beq.s	.chkDown						; if not, fail
		subq.w	#1,y_pos(a0)
		bset	#Status_InAir,status(a0)
		bra.s	.ladder
	.chkDown:
		move.w	y_pos(a0),d2
		addi.w	#18,d2	; Check 18px down
		jsr		GetFloorPosition
		move.w	(a1),d0
		andi.w	#$3FF,d0
		cmpi.w	#1,d0
		blt.s	.end
		cmpi.w	#3,d0
		bgt.s	.end
		move.b	(Ctrl_1_held_logical).w,d0	; are we attempting to climb up?
		andi.b	#button_down_mask,d0
		beq.s	.end						; if not, fail
		addi.w	#9,y_pos(a0)				; Clip onto the ladder (move down 12px to bypass collision detection)
		bset	#Status_InAir,status(a0)
	
	.ladder:
		bclr	#Status_Dash,status(a0)		; Force out of dash
		clr.b	dashtimer(a0)
		move.w	#0,x_vel(a0)				; Stop movement
		move.w	#0,y_vel(a0)
		move.w	#0,ground_vel(a0)
		clr.b	angle(a0)
		move.b	#1,anim_frame(a0)
		move.b	#id_LadderClimb,anim(a0)	; Set ladder animation
;		sfx		sfx_StarPost
		bset	#1,object_control(a0)		; Mark as climbing a ladder

		move.w	x_pos(a0),d0				; Clip onto ladder
		andi.w	#$FFF0,d0
		addi.w	#8,d0
		move.w	d0,x_pos(a0)
		rts

; =============== S U B R O U T I N E =======================================

Player_Ladder:
		btst	#Status_OnObj,status(a0)
		bne.w	.fallOff
		btst	#Status_InAir,status(a0)
		beq.w	.fallOff

		btst	#button_left,(Ctrl_1_logical).w		; is left being pressed?
		beq.s	.notLeft				; if not, branch
		bset	#Status_Facing,status(a0)
		bset	#rbXFlip,render_flags(a0)
		bra.s	.notRight
	.notLeft:
		btst	#button_right,(Ctrl_1_logical).w	; is right being pressed?
		beq.s	.notRight				; if not, branch
		bclr	#Status_Facing,status(a0)
		bclr	#rbXFlip,render_flags(a0)
	.notRight:
		move.w	x_pos(a0),d3			; Get block we are in
		move.w	y_pos(a0),d2
		subi.w	#4,d2	; check middle
		jsr		GetFloorPosition
		move.w	(a1),d0
		andi.w	#$3FF,d0
		cmpi.w	#1,d0
		blt.s	.cont
		cmpi.w	#3,d0
		bgt.s	.cont
		bra.s	.cont2
	.cont:	; Why. Why. Why. Why. WHY is another fucking check TWO UNITS from the first one required to make this work???????
		move.w	x_pos(a0),d3			; Get block we are in
		move.w	y_pos(a0),d2
		subi.w	#6,d2	; check above
		jsr		GetFloorPosition
		move.w	(a1),d0
		andi.w	#$3FF,d0
; supposed to make you fall off if you go below the bottom of the ladder, ends up making you fall off constantly...
		cmpi.w	#1,d0
		blt.s	.cont2
		cmpi.w	#3,d0
		bgt.s	.cont2
		bra.s	.fallOff
	.cont2:
		move.b	(Ctrl_1_pressed_logical).w,d0	; are we jumping?
		andi.b	#button_C_mask,d0
		beq.s	.moveY

	.fallOff:
;		illegal
		bclr	#1,object_control(a0)		; Stop climbing
		clr.b	anim(a0)
		rts
		
	.moveY:
		tst.b	shoottimer(a0)
		bne.s	.shooting
		moveq	#2,d0				; Y speed
		btst	#button_up,(Ctrl_1_held_logical).w		; Are we going up?
		beq.s	.chkDown			; If not, branch
		neg.w	d0				; Go the other way
		bra.s	.doMove

	.chkDown:
		btst	#button_down,(Ctrl_1_held_logical).w		; Are we going left?
		beq.s	.end				; If not, branch

	.doMove:
		add.w	d0,y_pos(a0)			; Update X position
	.shooting:
		jmp		Player_HandleLadderAnimations

	.end:
		cmpi.b	#id_LadderUp,anim(a0)
		ble.s	.finished
		move.b	#id_LadderClimb,anim(a0)
		clr.b	anim_frame(a0)			; clear frame
		clr.b	anim_frame_timer(a0)	; also clear timer
		jmp		Player_HandleLadderAnimations.animate
	.finished:
		rts


; =============== S U B R O U T I N E =======================================

Call_Player_AnglePos:
		tst.b	(Reverse_gravity_flag).w
		beq.w	Player_AnglePos
		move.b	angle(a0),d0
		addi.b	#$40,d0
		neg.b	d0
		subi.b	#$40,d0
		move.b	d0,angle(a0)
		bsr.w	Player_AnglePos
		move.b	angle(a0),d0
		addi.b	#$40,d0
		neg.b	d0
		subi.b	#$40,d0
		move.b	d0,angle(a0)
		rts

; =============== S U B R O U T I N E =======================================

Animate_Player:
		moveq	#0,d0
		move.b	character_id(a0),d0
		lsl.w	#2,d0
		move.l	.aniRoutLUT(pc,d0.w),a1
		bra.s	.cont

	.aniRoutLUT:
		dc.l	Ani_Bass, Ani_CopyRobot

	.cont:
		moveq	#0,d0
		move.b	anim(a0),d0
		cmp.b	prev_anim(a0),d0
		beq.s	SAnim_Do
		move.b	d0,prev_anim(a0)
		clr.b	anim_frame(a0)
		clr.b	anim_frame_timer(a0)

SAnim_Do:
		add.w	d0,d0
		adda.w	(a1,d0.w),a1
		move.b	(a1),d0
		move.b	status(a0),d1
		andi.b	#1,d1
		andi.b	#-4,render_flags(a0)
		or.b	d1,render_flags(a0)
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	SAnim_Delay
		move.b	d0,anim_frame_timer(a0)

SAnim_Do2:
		moveq	#0,d1
		move.b	anim_frame(a0),d1
		move.b	1(a1,d1.w),d0
		cmpi.b	#-4,d0
		bcc.s	SAnim_End_FF

SAnim_Next:
		move.b	d0,mapping_frame(a0)
		addq.b	#1,anim_frame(a0)

SAnim_Delay:
		rts
; ---------------------------------------------------------------------------

SAnim_End_FF:
		addq.b	#1,d0
		bne.s	SAnim_End_FE
		clr.b	anim_frame(a0)
		move.b	1(a1),d0
		bra.s	SAnim_Next
; ---------------------------------------------------------------------------

SAnim_End_FE:
		addq.b	#1,d0
		bne.s	SAnim_End_FD
		move.b	2(a1,d1.w),d0
		sub.b	d0,anim_frame(a0)
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0
		bra.s	SAnim_Next
; ---------------------------------------------------------------------------

SAnim_End_FD:
		addq.b	#1,d0
		bne.s	SAnim_End
		move.b	2(a1,d1.w),anim(a0)

SAnim_End:
		rts

; =============== S U B R O U T I N E =======================================

sub_125E0:
		bsr.w	Animate_Player
		tst.b	(Reverse_gravity_flag).w
		beq.s	+
		eori.b	#2,render_flags(a0)
+		bra.w	Player_Load_PLC

; ===========================================================================

Obj_DeathOrbs:
		move.l	(Player_1+mappings).l,mappings(a0)
		move.b	(Player_1+mapping_frame).w,mapping_frame(a0)
		move.w	#$100,priority(a0)
        move.w	#make_art_tile(ArtTile_Sonic,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
        jsr     SpeedToPos
        jmp     DisplaySprite

; =============== S U B R O U T I N E =======================================
; ---------------------------------------------------------------------------
; Player graphics loading subroutine
; ---------------------------------------------------------------------------

Player_Load_PLC:	; huge thanks to AngelKOR64.
		bsr.w	ReloadPlayerMaps
		moveq	#0,d0
		move.b	mapping_frame(a0),d0

Player_Load_PLC2:
		cmp.b	previous_frame(a0),d0
		beq.s	.noChange
		move.b	d0,previous_frame(a0)
		bsr.w	PlayerDPLCToA2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		moveq	#0,d5
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	.noChange
		move.w	art_tile(a0),d4	; get art tile
		andi.w	#$7FF,d4		; clear art flags
		lsl.w	#5,d4			; get VRAM address
		bsr.w	PlayerArtToD6

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
; End of function Player_Load_PLC

ReloadPlayerMaps:
		moveq	#0,d0
		move.b	character_id(a0),d0
		lsl.w	#2,d0
		move.l	.mapLUT(pc,d0.w),mappings(a0)
		rts

	.mapLUT:
		dc.l	Map_Bass, Map_CopyRobot

PlayerDPLCToA2:
		moveq	#0,d1
		move.b	character_id(a0),d1
		lsl.w	#2,d1
		movea.l	.plcLUT(pc,d1.w),a2
		rts

	.plcLUT:
		dc.l	PLC_Bass, PLC_CopyRobot

PlayerArtToD6:
		moveq	#0,d6
		move.b	character_id(a0),d6
		lsl.w	#2,d6
		move.l	.artLUT(pc,d6.w),d6
		rts

	.artLUT:
		dc.l	ArtUnc_Bass>>1, ArtUnc_CopyRobot>>1

; =============== S U B R O U T I N E =======================================

Player_HandleGroundAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	AnimType_GroundNormalFire
		dc.l	AnimType_GroundSemiCardinalFire
		dc.l	AnimType_GroundThrow
		dc.l	AnimType_GroundShield
		dc.l	AnimType_GroundReppuken

	.notShooting:
		mvabs.w	ground_vel(a0),d0	; Standing still?
		bne.s	.moving				; if not, move your ass
		move.b	#id_Wait,anim(a0)
		rts
	.moving:
		cmpi.w	#$58,d0	; $58 speed?
		ble.s	.toWalk
		move.w	#bytes_to_word(id_Run,id_Run),anim(a0)
		rts
	.toWalk:
		move.b	#id_Walk,anim(a0)
		rts

AnimType_GroundNormalFire:
		mvabs.w	ground_vel(a0),d0	; Standing still?
		cmpi.w	#$58,d0	; $58 speed?
		bgt.s	.moving
		move.b	#id_FireStanding,anim(a0)
		rts
	.moving:
		move.w	#bytes_to_word(id_FireWalking,id_FireWalking),anim(a0)
		rts

AnimType_GroundSemiCardinalFire:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_FireSteadyStraight,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_FireSteadyUp,anim(a0)
		rts
	.diagup:
		move.b	#id_FireSteadyDiagUp,anim(a0)
		rts
	.diagdown:
		move.b	#id_FireSteadyDiagDown,anim(a0)
		rts

AnimType_GroundThrow:
		move.b	#id_ThrowStanding,anim(a0)
		rts

AnimType_GroundShield:
		move.b	#id_ShieldStanding,anim(a0)
		rts

AnimType_GroundReppuken:
		move.b	#id_Reppuken,anim(a0)
		rts

; =============== S U B R O U T I N E =======================================

Player_HandleAirAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jmp		(a2)
	.typesLUT:
		dc.l	AnimType_JumpNormalFire
		dc.l	AnimType_JumpSemiCardinalFire
		dc.l	AnimType_JumpThrow
		dc.l	AnimType_JumpShield
		dc.l	.notShooting
	.notShooting:
		tst.w	y_vel(a0)
		bmi.s	.rising
		cmpi.w	#$80,y_vel(a0)
		bge.s	.falling
	.neither:
		move.b	#id_JumpTransition,anim(a0)
		rts
	.falling:
		move.b	#id_Fall,anim(a0)
		rts
	.rising:
		move.b	#id_Roll,anim(a0)
		rts

AnimType_JumpNormalFire:
		move.b	#id_FireJumpingStraight,anim(a0)
		rts

AnimType_JumpSemiCardinalFire:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_FireJumpingStraight,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_FireJumpingUp,anim(a0)
		rts
	.diagup:
		move.b	#id_FireJumpingDiagUp,anim(a0)
		rts
	.diagdown:
		move.b	#id_FireJumpingDiagDown,anim(a0)
		rts

AnimType_JumpThrow:
		move.b	#id_ThrowJumping,anim(a0)
		rts

AnimType_JumpShield:
		move.b	#id_ShieldJumping,anim(a0)
		rts


Player_HandleLadderAnimations:
		tst.b	shoottimer(a0)
		beq.s	.notShooting
		moveq	#0,d0
		move.b	(v_shottype).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	.typesLUT(pc,d0.w),a2
		jsr		(a2)
	.animate:
		jsr		Animate_Player
		jmp		Player_Load_PLC
	.typesLUT:
		dc.l	AnimType_LadderNormalFire
		dc.l	AnimType_LadderSemiCardinalFire
		dc.l	AnimType_LadderThrowShield
		dc.l	AnimType_LadderThrowShield
		dc.l	.notShooting
	.notShooting:
		move.w	x_pos(a0),d3	; Get block we are in
		move.w	y_pos(a0),d2
		subi.w	#6,d2	; check middle
		jsr		GetFloorPosition
		move.w	(a1),d0
		andi.w	#$3FF,d0
		cmpi.w	#1,d0
		blt.s	.up
		cmpi.w	#3,d0
		bgt.s	.up
		move.b	#id_LadderClimb,anim(a0)
		bra.s	.animate
	.up:
		move.b	#id_LadderUp,anim(a0)
		bra.s	.animate

AnimType_LadderNormalFire:
		move.b	#id_FireLadderStraight,anim(a0)
		rts

AnimType_LadderSemiCardinalFire:
		btst	#bitUp,(Ctrl_1_held_logical).w
		bne.s	.up
		btst	#bitDn,(Ctrl_1_held_logical).w
		bne.s	.diagdown
		move.b	#id_FireLadderStraight,anim(a0)
		rts
	.up:
		btst	#bitR,(Ctrl_1_held_logical).w
		bne.s	.diagup
		btst	#bitL,(Ctrl_1_held_logical).w
		bne.s	.diagup
		move.b	#id_FireLadderUp,anim(a0)
		rts
	.diagup:
		move.b	#id_FireLadderDiagUp,anim(a0)
		rts
	.diagdown:
		move.b	#id_FireLadderDiagDown,anim(a0)
		rts

AnimType_LadderThrowShield:
		move.b	#id_ThrowShieldLadder,anim(a0)
		rts