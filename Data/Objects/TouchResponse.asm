; ---------------------------------------------------------------------------
; Subroutine to react to collision_flags(a0)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

TouchResponse:
		move.w	x_pos(a0),d2								; get player's x_pos
		move.w	y_pos(a0),d3								; get player's y_pos
		subq.w	#8,d2
		moveq	#0,d5
		move.b	y_radius(a0),d5							; load Sonic's height
		subq.b	#3,d5
		sub.w	d5,d3
		; Note the lack of a check for if the player is ducking
		; Height is no longer reduced by ducking
		moveq	#$10,d4									; player's collision width
		add.w	d5,d5

.Touch_Process:
		lea	(Collision_response_list).w,a4
		move.w	(a4)+,d6									; get number of objects queued
		beq.s	locret_FF1C								; if there are none, return

Touch_Loop:
		movea.w	(a4)+,a1									; get address of first object's RAM
		move.b	collision_flags(a1),d0						; get its collision_flags
		bne.s	Touch_Width								; if it actually has collision, branch

Touch_NextObj:
		subq.w	#2,d6									; count the object as done
		bne.s	Touch_Loop								; if there are still objects left, loop
		moveq	#0,d0

locret_FF1C:
		rts
; ---------------------------------------------------------------------------

Touch_Width:
		andi.w	#$3F,d0									; get only collision size
		add.w	d0,d0									; turn into index
		lea	Touch_Sizes(pc,d0.w),a2
		moveq	#0,d1
		move.b	(a2)+,d1									; get width value from Touch_Sizes
		move.w	x_pos(a1),d0								; get object's x_pos
		sub.w	d1,d0									; subtract object's width
		sub.w	d2,d0									; subtract player's left collision boundary
		bcc.s	.checkrightside							; if player's left side is to the left of the object, branch
		add.w	d1,d1									; double object's width value
		add.w	d1,d0									; add object's width*2 (now at right of object)
		bcs.s	Touch_Height							; if carry, branch (player is within the object's boundaries)
		bra.s	Touch_NextObj							; if not, loop and check next object
; ---------------------------------------------------------------------------

.checkrightside:
		cmp.w	d4,d0									; is player's right side to the left of the object?
		bhi.s	Touch_NextObj							; if so, loop and check next object

Touch_Height:
		moveq	#0,d1
		move.b	(a2)+,d1									; get height value from Touch_Sizes
		move.w	y_pos(a1),d0								; get object's y_pos
		sub.w	d1,d0									; subtract object's height
		sub.w	d3,d0									; subtract player's bottom collision boundary
		bcc.s	.checktop								; if bottom of player is under the object, branch
		add.w	d1,d1									; double object's height value
		add.w	d1,d0									; add object's height*2 (now at top of object)
		bcs.s	Touch_ChkValue							; if carry, branch (player is within the object's boundaries)
		bra.s	Touch_NextObj							; if not, loop and check next object
; ---------------------------------------------------------------------------

.checktop:
		cmp.w	d5,d0									; is top of player under the object?
		bhi.s	Touch_NextObj							; if so, loop and check next object
		bra.s	Touch_ChkValue
; ---------------------------------------------------------------------------
; collision sizes $00-$3F (width,height)
; $00-$3F	- Touch
; $40-$7F	- Ring/Monitor
; $80-$BF	- Enemy(Hurt)
; $C0-$FF	- Deflect
; ---------------------------------------------------------------------------

Touch_Sizes:
		dc.b 8/2, 8/2		; 0
		dc.b 40/2, 40/2	; 1
		dc.b 24/2, 40/2	; 2
		dc.b 40/2, 24/2	; 3
		dc.b 8/2, 32/2	; 4
		dc.b 24/2, 36/2	; 5
		dc.b 32/2, 32/2	; 6
		dc.b 12/2, 12/2	; 7
		dc.b 48/2, 24/2	; 8
		dc.b 24/2, 32/2	; 9
		dc.b 32/2, 16/2	; A
		dc.b 16/2, 16/2	; B
		dc.b 40/2, 32/2	; C
		dc.b 40/2, 16/2	; D
		dc.b 28/2, 28/2	; E
		dc.b 48/2, 48/2	; F
		dc.b 80/2, 32/2	; 10
		dc.b 32/2, 48/2	; 11
		dc.b 16/2, 32/2	; 12
		dc.b 64/2, 224/2	; 13
		dc.b 128/2, 64/2	; 14
		dc.b 256/2, 64/2	; 15
		dc.b 64/2, 64/2	; 16
		dc.b 16/2, 16/2	; 17
		dc.b 8/2, 8/2		; 18
		dc.b 64/2, 16/2	; 19
		dc.b 24/2, 24/2	; 1A
		dc.b 16/2, 8/2	; 1B
		dc.b 48/2, 8/2	; 1C
		dc.b 80/2, 8/2	; 1D
		dc.b 8/2, 16/2	; 1E
		dc.b 8/2, 48/2	; 1F
		dc.b 8/2, 80/2	; 20
		dc.b 48/2, 48/2	; 21
		dc.b 48/2, 48/2	; 22
		dc.b 24/2, 48/2	; 23
		dc.b 144/2, 16/2	; 24
		dc.b 48/2, 80/2	; 25
		dc.b 32/2, 8/2	; 26
		dc.b 64/2, 4/2	; 27
		dc.b 32/2, 56/2	; 28
		dc.b 24/2, 72/2	; 29
		dc.b 32/2, 4/2	; 2A
		dc.b 8/2, 128/2	; 2B
		dc.b 48/2, 128/2	; 2C
		dc.b 64/2, 32/2	; 2D
		dc.b 56/2, 40/2	; 2E
		dc.b 32/2, 4/2	; 2F
		dc.b 32/2, 2/2	; 30
		dc.b 4/2, 16/2	; 31
		dc.b 32/2, 128/2	; 32
		dc.b 24/2, 8/2	; 33
		dc.b 16/2, 24/2	; 34	; sorta player-sized (sniper joes)
		dc.b 80/2, 64/2	; 35
		dc.b 128/2, 4/2	; 36
		dc.b 192/2, 4/2	; 37
		dc.b 80/2, 80/2	; 38
	; custom sizes... when i add them
; ---------------------------------------------------------------------------

Touch_ChkValue:
		move.b	collision_flags(a1),d1					; get its collision_flags
		andi.b	#$C0,d1								; get only collision type bits
		beq.w	Touch_Enemy						; if 00, enemy, branch
		cmpi.b	#$C0,d1
		beq.w	Touch_Deflect						; if 11, "deflect", branch
		tst.b	d1
		bmi.w	Touch_ChkHurt						; if 10, "harmful", branch
		; If 01...
		move.b	collision_flags(a1),d0					; get collision_flags
		andi.b	#$3F,d0								; get only collision size
		cmpi.b	#6,d0								; is touch response $46 ?
		beq.s	Touch_Monitor						; if yes, branch
		cmpa.w	#Player_1,a0
		beq.s	.player
		bra.s	.locret								; invincible
	.player:
		move.b	(Player_1+invulnerability_timer).w,d0	; get the main character's invulnerability_timer
		cmpi.b	#90,d0								; is there more than 90 frames on the timer remaining?
		bhs.s	.locret								; if so, branch
		move.b	#4,routine(a1)						; set target object's routine to 4 (must be reserved for collision response)

.locret:
		rts
; ---------------------------------------------------------------------------

Touch_Monitor:
		cmpa.w	#Player_1,a0
		beq.s	.player
	; something about shot health for piercing...
		bset	#7,status(a0)
		bra.s	.break
	.player:
		move.w	y_vel(a0),d0							; get player's y_vel
		tst.b	(Reverse_gravity_flag).w					; are we in reverse gravity mode?
		beq.s	.normalgravity						; if not, branch
		neg.w	d0									; negate player's y_vel

.normalgravity:
		btst	#1,render_flags(a1)						; is the monitor upside down?
		beq.s	.monitornotupsidedown				; if not, branch
		tst.w	d0
		beq.s	.checkdestroy							; if player isn't moving up or down at all, branch
		bmi.s	.checkdestroy							; if player is moving up, branch
		bra.s	.checkfall								; if player is moving down, branch
; ---------------------------------------------------------------------------

.monitornotupsidedown:
		tst.w	d0
		bpl.s	.checkdestroy							; if player is moving down, branch

.checkfall:
		; this check is responsible for S&K's monitors not falling if hit from below (but only in regular gravity. see below)
;		btst	#1,status(a1)								; is the monitor upside down (different way of checking)?
;		beq.s	.checkdestroy							; if not, branch

		btst	#1,render_flags(a1)						; is the monitor upside down?
		bne.s	.monitorupsidedown					; if so, branch
		move.w	y_pos(a0),d0							; get player's y_pos
		subi.w	#$10,d0								; subtract height of monitor from it
		cmp.w	y_pos(a1),d0
		blo.s		.locret								; if new value is lower than monitor's y_pos, return
		bra.s	.monitorfall
; ---------------------------------------------------------------------------

.monitorupsidedown:
		move.w	y_pos(a0),d0							; get player's y_pos
		addi.w	#$10,d0								; add height of monitor from it
		cmp.w	y_pos(a1),d0
		bhs.s	.locret								; if new value is higher than monitor's y_pos, return

.monitorfall:
		; fun fact: In S3, like the games before it, hitting a monitor from below would make it fall
		; in S&K, that was removed, and they are destroyed as normal.
		; however, according to this code, if a monitor is upside down, and player is in reverse gravity,
		; hitting the monitor from below will still make it fall.
		; playing with Debug Mode confirms this.
		neg.w	y_vel(a0)							; reverse Sonic's y-motion
		move.w	#-$180,y_vel(a1)
		tst.b	routine_secondary(a1)
		bne.s	.locret
		move.b	#4,routine_secondary(a1)				; set the monitor's routine_secondary counter

.locret:
		rts
; ---------------------------------------------------------------------------

.checkdestroy:
		cmpi.b	#id_Roll,anim(a0)						; is Sonic rolling/jumping?
		bne.s	.locret
		neg.w	y_vel(a0)
	.break:
		move.b	#4,routine(a1)
		rts
; ---------------------------------------------------------------------------

Touch_Enemy:
		cmpa.w	#Player_1,a0
		beq.s	.player
	; something about shot health for piercing...
		bset	#7,status(a0)
		bra.s	.checkhurtenemy
	.player:
		btst	#Status_Invincible,status_secondary(a0)		; does Sonic have invincibility?
		bne.s	.checkhurtenemy						; if yes, branch
		bra.w	Touch_ChkHurt

.checkhurtenemy:
		; Boss related? Could be special enemies in general
		tst.b	boss_hitcount2(a1)
		beq.s	Touch_EnemyNormal
		bmi.s	Touch_EnemyNormal
		move.b	collision_flags(a1),collision_restore_flags(a1)	; save current collision
		clr.b	collision_flags(a1)
		cmpa.w	#Player_1,a0
		bne.s	.hpChecksBullet
		neg.w	x_vel(a0)								; bounce player directly off boss
		neg.w	y_vel(a0)
		neg.w	ground_vel(a0)
	.hurtHPEnemy:
		subq.b	#1,boss_hitcount2(a1)
		bne.s	.bossnotdefeated
	.killHPEnemy:
		bset	#7,status(a1)

.bossnotdefeated:
		rts

.hpChecksBullet:
		move.b	damage(a0),d0
		subi.b	d0,boss_hitcount2(a1)	; subtract buster shot HP from enemy's...
		ble.s	.killHPEnemy		; and break the enemy if it's 0
		bset	#7,status(a0)		; otherwise, destroy the buster shot
		bra.s	.bossnotdefeated
; ---------------------------------------------------------------------------

Touch_EnemyNormal:
		btst	#2,status(a1)								; should the object remember that it's been destroyed (Remember Sprite State flag)?
		beq.s	.dontremember						; if not, branch
		move.b	ros_bit(a1),d0
		movea.w	ros_addr(a1),a2
		bclr	d0,(a2)									; mark object as destroyed

.dontremember:
		bset	#7,status(a1)
		moveq	#0,d0
		move.w	(Chain_bonus_counter).w,d0
		addq.w	#2,(Chain_bonus_counter).w			; add 2 to item bonus counter
		cmpi.w	#6,d0
		blo.s		.notreachedlimit
		moveq	#6,d0								; max bonus is lvl6

.notreachedlimit:
		move.w	d0,objoff_3E(a1)
		move.w	Enemy_Points(pc,d0.w),d0
		cmpi.w	#16*2,(Chain_bonus_counter).w			; have 16 enemies been destroyed?
		blo.s		.notreachedlimit2	; if not, branch
		move.w	#1000,d0							; fix bonus to 10000
		move.w	#10,objoff_3E(a1)

.notreachedlimit2:
		bsr.w	HUD_AddToScore
		move.l	#Obj_Explosion,address(a1)			; change object to explosion
		clr.b	routine(a1)
		move.w	x_pos(a1),d1
		move.w	y_pos(a1),d2
		cmpa.w	#Player_1,a0
		bne.s	.spawnItem
		tst.w	y_vel(a0)
		bmi.s	.bouncedown
		move.w	y_pos(a0),d0
		cmp.w	y_pos(a1),d0							; was player above, or at the same height as, the enemy when it was destroyed
		bhs.s	.bounceup
		neg.w	y_vel(a0)
	.spawnItem:
	; Create a random drop!
	; From a disassembly of Mega Man 1, the rates are...
	;
	; Nothing = 24/128
	; 1 Up = 1/128
	; Bonus Ball = 69/128
	; Small Weapon = 15/128
	; Small Health = 15/128
	; Large Weapon = 2/128
	; Large Health = 2/128
	;
	; However, I'm going to replace 2/3 of the Bonus Ball chance with Small Screw, and the last 1/3 with Large Screw.
	; Therefore...
	;
	; Nothing = 24/128
	; 1 Up = 1/128
	; Small Screw = 46/128
	; Large Screw = 23/128
	; Small Weapon = 15/128
	; Small Health = 15/128
	; Large Weapon = 2/128
	; Large Health = 2/128
		moveq	#0,d0
		jsr	(Create_New_Sprite).w
;		bne.s	.ret
		move.l	#Obj_Pickups,address(a1)
		move.w	d1,x_pos(a1)
		move.w	d2,y_pos(a1)
		moveq	#0,d0
;		moveq	#0,d1
		jsr		(RandomNumber).l
		andi.w	#127,d0
		move.b	ItemProbabilityLUT(pc,d0.w),subtype(a1)
;		move.b	#8,obSubtype(a1)
	.ret:
		rts
; ---------------------------------------------------------------------------

.bouncedown:
		addi.w	#$100,y_vel(a0)						; bounce down
		rts
; ---------------------------------------------------------------------------

.bounceup:
		subi.w	#$100,y_vel(a0)						; bounce up
		rts
; ---------------------------------------------------------------------------

Enemy_Points:	dc.w 10, 20, 50, 100					; points awarded div 10
; ---------------------------------------------------------------------------

ItemProbabilityLUT:
	; nothing
		rept 24
			dc.b 10
		endm
	; 1up
		dc.b 0
	; no etanks will probably not be included
	; small screw
		rept 46
			dc.b 8
		endm
	; large screw
		rept 23
			dc.b 9
		endm
	; small health & small weapon energy
		rept 15
			dc.b 5
			dc.b 7
		endm
	; large health & weapon energy
		dc.b 4, 4, 6, 6
	even
; ---------------------------------------------------------------------------
; subroutine for checking if Sonic/Tails/Knuckles should be hurt and hurting them if so
; note: character must be at a0
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Touch_ChkHurt:
	; this one is used almost exclusively
		cmpa.w	#Player_1,a0
		bne.s	Touch_ChkHurt_Return
		move.b	status_secondary(a0),d0

Touch_ChkHurt2:
		btst	#Status_Invincible,status_secondary(a0)		; does Sonic have invincibility?
		beq.s	Touch_Hurt	; if not, branch

Touch_ChkHurt_Return:
		moveq	#-1,d0
		rts
; ---------------------------------------------------------------------------

Touch_Hurt:
		tst.b	invulnerability_timer(a0)					; is the player invulnerable?
		bne.s	Touch_ChkHurt_Return				; if so, branch
		movea.w	a1,a2

; continue straight to HurtCharacter
; ---------------------------------------------------------------------------
; Hurting Sonic/Tails/Knuckles subroutine
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

HurtSonic:
HurtCharacter:
		move.b	(v_health).w,d0
		sub.b	damage(a2),d0
		tst.b	d0									; does Bass have any health remaining?
		beq.w	KillSonic							; if not, branch
		bmi.w	KillSonic							; if not, branch
		move.b	d0,(v_health).w
		move.b	#$80,(Update_HUD_ring_count).w
		andi.b	#$8E,status_secondary(a0)

.bounce:
		move.b	#id_BassHurt,routine(a0)
		bsr.w	Sonic_ResetOnFloor
		bset	#Status_InAir,status(a0)
		move.w	#-$400,y_vel(a0)						; make Sonic bounce away from the object
		move.w	#-$200,x_vel(a0)
		btst	#Status_Underwater,status(a0)				; is Sonic underwater?
		beq.s	.isdry								; if not, branch
		move.w	#-$200,y_vel(a0)						; slower bounce
		move.w	#-$100,x_vel(a0)

.isdry:
		move.w	x_pos(a0),d0
		cmp.w	x_pos(a2),d0
		blo.s		.isleft								; if Sonic is left of the object, branch
		neg.w	x_vel(a0)							; if Sonic is right of the object, reverse

.isleft:
		clr.w	ground_vel(a0)
		move.b	#id_Hurt,anim(a0)
		move.b	#2*60,invulnerability_timer(a0)			; set temp invincible time to 2 seconds
		moveq	#signextendB(sfx_Death),d0			; load normal damage sound
		cmpi.l	#Obj_Spikes,address(a2)				; was damage caused by spikes?
		blo.s		.sound								; if not, branch
		cmpi.l	#sub_24280,address(a2)
		bhs.s	.sound
		moveq	#signextendB(sfx_SpikeHit),d0			; load spikes damage sound

.sound:
		jsr	(SMPS_QueueSound2).w
		moveq	#-1,d0
		rts
; ---------------------------------------------------------------------------

DeathOrbs_VelTbl:	; okay this kind of makes no sense but it also works to help visualize the orbs
		dc.w	-$180, -$180,	$0, -$200,	$180, -$180
		dc.w					$0, -$100
		dc.w	-$200, $0,	-$100, 0,	$100, 0,	$200, 0
		dc.w					$0, $100
		dc.w	-$180, $180,	$0, $200,	$180, $180
	even

KillSonic:
Kill_Character:
		tst.w	(Debug_placement_mode).w			; is debug mode active?
		bne.w	.dontdie						; if yes, branch
		clr.b	(v_health).w
		move.b	#$80,(Update_HUD_ring_count).w
		clr.l	(v_Shield).w						; remove shield
		clr.l	(v_Invincibility_stars).w
		moveq	#12-1,d1						; 8 total, counting the first
		lea		(DeathOrbs_VelTbl).l,a3

	.spawnOrbs:
		jsr		FindFreeObj	; uses a1
		move.l	#Obj_DeathOrbs,address(a1)
		move.w	(Player_1+x_pos).w,x_pos(a1)
		move.w	(Player_1+y_pos).w,y_pos(a1)
		move.w	(a3)+,x_vel(a1)
		move.w	(a3)+,y_vel(a1)
		dbf		d1,.spawnOrbs

	.doneSpawning:
		clr.b	status_secondary(a0)
		clr.b	status_tertiary(a0)
		move.b	#id_BassDeath,routine(a0)
		move.w	(a3)+,x_vel(a0)
		move.w	(a3)+,y_vel(a0)
;		move.w	d0,-(sp)
;		bsr.w	Sonic_ResetOnFloor
;		move.w	(sp)+,d0
		bset	#Status_InAir,status(a0)
;		move.w	#-$700,y_vel(a0)
		clr.w	x_vel(a0)
		clr.w	ground_vel(a0)
		move.b	#id_Death,anim(a0)
		move.w	art_tile(a0),(Saved_art_tile).w
		bset	#7,art_tile(a0)

	.sound:
		music	mus_Stop
		st		(Game_paused).w
		move.w  #32,d0

	.wait:
;		move.b	#$C,(V_int_routine).w
		move.b	#VintID_Main,(V_int_routine).w
		jsr		Wait_VSync
		dbf		d0,.wait
		clr.b	(Game_paused).w

		move.w	#sfx_Death,d0	; play normal death sound
		jsr	(SMPS_QueueSound2).w

.dontdie:
		moveq	#-1,d0
		rts
; ---------------------------------------------------------------------------

Touch_Deflect:
		cmpa.w	#Player_1,a0
		beq.w	Touch_ChkHurt
		neg.w	x_vel(a0)								; bounce bullet directly off enemy
		neg.w	y_vel(a0)
		neg.w	ground_vel(a0)
		sfx		sfx_Deflect,1

; =============== S U B R O U T I N E =======================================

Add_SpriteToCollisionResponseList:
		lea	(Collision_response_list).w,a1
		cmpi.w	#$7E,(a1)							; is list full?
		bhs.s	.locret								; if so, return
		addq.w	#2,(a1)								; count this new entry
		adda.w	(a1),a1								; offset into right area of list
		move.w	a0,(a1)								; store RAM address in list

.locret:
		rts

GenericEnemy_Hurt:
		tst.b	collision_flags(a0)			; if collision flags aren't empty, act normal
		bne.s	.nopain
		btst	#6,status(a0)				; if you're supposed to be flashing already, then do it
		bne.s	.flashy
		move.b	#2,boss_invulnerable_time(a0)	; set the time to 4 frames and make the boss hit sound
		bset	#6,status(a0)
		sfx		sfx_BossHit,1
	.flashy:
		subq.b	#1,boss_invulnerable_time(a0)
		beq.s	.restore
		btst	#0,boss_invulnerable_time(a0)
		bne.s	.ret
		jmp		RememberState
	.restore:
		move.b	collision_restore_flags(a0),collision_flags(a0)
		bclr	#6,status(a0)
	.ret:
		rts

	.nopain:
		jsr		Add_SpriteToCollisionResponseList
		jmp		RememberState