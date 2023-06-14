Weapon_MetalBlade:	; ...It's the Metal Blade. There's no explanation here.
		tst.b	(Weapon_art_loaded_flag).w
		bne.s	.skipLoad
		lea		(ArtKosM_MetalBlade).l,a1
		move.w	#tiles_to_bytes(ArtTile_WeaponStuff),d2
		jsr		(Queue_Kos_Module).l
		st		(Weapon_art_loaded_flag).w
	.skipLoad:
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
	.fireBlade:
		tst.b	(v_weapon8energy).w
		jeq		Weapon_NoAmmo.fireLemon
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
		move.l	#Obj_MetalBlade,address(a1)
		move.b	#2,(v_shottype).w
		move.b	#13,shoottimer(a0)
		move.w	#$800,ground_vel(a1)
		subq.b	#1,(v_weapon8energy).w	; -1
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts
		