Weapon_BassBuster:	; Rapid-fire buster shot that holds you in place
		tst.b	double_jump_flag(a0)
		bne.w	Weapon_NoAmmo
		cmpi.b	#id_Dash,anim(a0)
		beq.w	.ret
		btst	#bitB,(Ctrl_1_held_logical).w	; Holding B?
		beq.w	.ret
		cmpi.b	#4,(v_bulletsonscreen).w
		bge.w	.ret
		cmpi.b	#7,shoottimer(a0)
		bgt.w	.ret
	.fireBall:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeProjectile
		move.l	#Obj_PlayerBall,address(a1)
		move.b	#1,(v_shottype).w	; Semi-Cardinal, but Normal for now because I wanna snooze
		move.b	#13,shoottimer(a0)
		move.w	#$600,ground_vel(a1)
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts
		