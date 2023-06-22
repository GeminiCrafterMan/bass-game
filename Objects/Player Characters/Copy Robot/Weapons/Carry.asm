Util_Carry:	; Carry from MM1 GB.
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_Carry).l,a1
		move.w	#tiles_to_bytes(ArtTile_WeaponStuff),d2
		jsr		(Queue_Kos_Module).l
		st		(Weapon_art_loaded_flag).w
	.skipLoad:
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#2,(v_bulletsonscreen).w
		bge.w	.ret
	.fireBlade:
		tst.b	(v_util1energy).w
		jeq		Weapon_NoAmmo.fireLemon
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
		move.l	#Obj_Carry,address(a1)
		move.b	#2,(v_shottype).w
		move.b	#13,shoottimer(a0)
;		move.w	#$800,ground_vel(a1)
		subq.b	#1,(v_util1energy).w	; -1
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts