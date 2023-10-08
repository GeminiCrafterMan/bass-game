Weapon_SpreadBuster:	; Triple Buster shot.
		cmpi.b	#3,(v_utility1energy).w
		jlt		Weapon_NoAmmo
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_pressed_logical).w	; Pressing B?
		beq.w	.ret
		cmpi.b	#2,(v_bulletsonscreen).w	; Gotta wait for all three to be gone.
		bge.w	.ret
	.fireBall:
		addq.b	#3,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		move.b	#0,(v_shottype).w	; Normal, because I'm gonna do some shenans.
		move.b	#13,shoottimer(a0)
	.loadobjects:
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerBall,address(a1)
		move.w	#$600,ground_vel(a1)
		jsr		FireWeapon
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerBall,address(a1)
		move.w	#$600,ground_vel(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		jsr		WepType_SemiCardinal_up.diagup
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerBall,address(a1)
		move.w	#$600,ground_vel(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		jmp		WepType_SemiCardinal_diagdown
	.ret:
		rts
		