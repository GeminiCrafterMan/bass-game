Weapon_MegaBuster:	; The usual Mega Buster.
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Holding B?
		bne.w	FireMegaBuster
		btst	#bitB,(Ctrl_1_held_logical).w	; Holding B?
		beq.w	FireMegaBuster
	.charging:
	; play the sounds and do stuff with adding
		cmpi.b	#100,(v_charge).w
		beq.s	.maxChrgSnd	; if 100, hit that loop
	; under 100
		cmpi.b	#50,(v_charge).w
		bne.s	.contAdding	; if not 50, continue adding
	.midChrgSnd:
		sfx		sfx_ChargeStart
		bra.s	.contAdding
	.maxChrgSnd:
		move.b	#92,(v_charge).w	; set to 92 to restart this loop
		sfx		sfx_ChargeLoop
		bra.s	.ret
	.contAdding:
		addq.b	#1,(v_charge).w
	.ret:
		rts
	
	FireMegaBuster:
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.dontFire
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.dontFire
		clr.b	(v_shottype).w
		btst	#bitB,(Ctrl_1_pressed_logical).w	; pressing B?
		bne.s	.fireLemon	; fire lemon if so
		cmpi.b	#32,(v_charge).w
		blt.w	.dontFire	; not charged enough to care
		cmpi.b	#64,(v_charge).w
		blt.s	.fireMediumCharge	; medium charge
		cmpi.b	#92,(v_charge).w
		blt.s	.fireMediumCharge	; medium charge
		bra.s	.fireFullCharge	; full charge
	.fireLemon:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerLemon,(a1)	; load missile object
		move.b	#13,shoottimer(a0)
		move.w	#$700,ground_vel(a1)
		bra.w	.objectLoadedJumpPoint
	.fireMediumCharge:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_MegaMidCharge,(a1)	; load missile object
		move.b	#13,shoottimer(a0)
		move.w	#$740,ground_vel(a1)
		bra.s	.objectLoadedJumpPoint
	.fireFullCharge:
		addq.b	#3,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
;		lea		(o_objectsmashingshot).w,a1
		move.l	#Obj_MegaFullCharge,(a1)	; load missile object
		move.b	#13,shoottimer(a0)
		move.w	#$780,ground_vel(a1)
	; god damn this is nasty
		clr.w	d0
		move.w	d0,(v_pal_dry+4)
		move.w	d0,(v_pal_dry+6)
		move.w	d0,(v_pal_dry+8)
		move.w	d0,(v_pal_dry+10)
		move.w	d0,(v_pal_dry+12)
		move.w	d0,(v_pal_dry+14)
		move.b	#VintID_Main,(V_int_routine).w
		jsr		Wait_VSync
;		bra.s	.objectLoadedJumpPoint
	.objectLoadedJumpPoint:
		jsr		FireWeapon
	.dontFire:
	; ugghhh i hate this lmaooo
		moveq	#0,d0
		lea	(Pal_CopyRobot).l,a2
		lea	(v_pal_dry).w,a3
		move.l	(a2,d0.w),(a3)+
		move.l	4(a2,d0.w),(a3)+
		move.l	8(a2,d0.w),(a3)+
		move.l	12(a2,d0.w),(a3)+
		move.l	16(a2,d0.w),(a3)+
		move.l	20(a2,d0.w),(a3)+
		move.l	24(a2,d0.w),(a3)+
		move.l	28(a2,d0.w),(a3)+
		clr.b	(v_charge).w	; clear charge
		clr.b	(v_chargecyctimer).w	; clear charge
		clr.b	(v_chargecycnum).w	; clear charge
		rts

; ---------------------------------------------------------------------------
; Projectile objects
; ---------------------------------------------------------------------------

Obj_MegaMidCharge:
		move.l	#Map_MegaBuster,mappings(a0)
		move.w	#make_art_tile(ArtTile_WeaponStuff,0,0),art_tile(a0)
		move.w	#$200,priority(a0)
		ori.b	#4,render_flags(a0)
		move.b	#2,damage(a0)	; deals 2 damage to anything but bosses
		move.w	#bytes_to_word(16/2,16/2),height_pixels(a0)
		move.w	#bytes_to_word(16/2,16/2),y_radius(a0)
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
		lea		PLCPtr_MegaBuster(pc),a2
		jsr		(Perform_DPLC).w
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
		move.w	#bytes_to_word(32/2,32/2),height_pixels(a0)
		move.w	#bytes_to_word(30/2,30/2),y_radius(a0)
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
		lea		PLCPtr_MegaBuster(pc),a2
		jsr		(Perform_DPLC).w
		jmp		(Draw_Sprite).w
	.delete:
		subq.b	#3,(v_bulletsonscreen).w	; subtract 3
		jmp		(DeleteObject).l

; ---------------------------------------------------------------------------
; Object data
; ---------------------------------------------------------------------------

PLCPtr_MegaBuster:
		dc.l	ArtUnc_MegaBuster>>1, PLC_MegaBuster

Map_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/Map - Mega Buster Charge Shots.bin"
		even
PLC_MegaBuster:		binclude	"Objects/Player Projectiles/Object Data/PLC - Mega Buster Charge Shots.bin"
		even