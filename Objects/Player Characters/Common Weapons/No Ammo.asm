Weapon_NoAmmo:	; Standard Buster weapon. Will be used when out of ammo for any given weapon.
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
	.fireLemon:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerLemon,address(a1)
		move.b	#0,(v_shottype).w
		move.b	#13,shoottimer(a0)
		move.w	#$600,ground_vel(a1)
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts
		