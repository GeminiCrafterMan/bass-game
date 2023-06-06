Weapon_MegaBuster:	; The usual Mega Buster.
		btst	#bitB,(Ctrl_1_held_logical).w	; Holding B?
		beq.w	.ret
		cmpi.b	#3,(v_bulletsonscreen).w
		bge.w	.ret
		cmpi.b	#7,shoottimer(a0)
		bgt.w	.ret
	.fireLemon:
		addq.b	#1,(v_bulletsonscreen).w
		sfx		sfx_BusterShot
		jsr		FindFreeObj
		move.l	#Obj_PlayerLemon,address(a1)
		move.b	#0,(v_shottype).w	; Normal
		move.b	#13,shoottimer(a0)
		move.w	#$600,ground_vel(a1)
	.objectLoadedJumpPoint:
		jmp		FireWeapon
	.ret:
		rts
		