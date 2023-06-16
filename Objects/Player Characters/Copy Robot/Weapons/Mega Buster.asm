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
		jsr		FindFreeObj
		move.l	#Obj_PlayerLemon,(a1)	; load missile object
		move.b	#13,shoottimer(a0)
		move.w	#$700,ground_vel(a1)
		bra.w	.objectLoadedJumpPoint
	.fireMediumCharge:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
		move.l	#Obj_MegaMidCharge,(a1)	; load missile object
		move.b	#13,shoottimer(a0)
		move.w	#$740,ground_vel(a1)
		bra.s	.objectLoadedJumpPoint
	.fireFullCharge:
		addq.b	#3,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
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