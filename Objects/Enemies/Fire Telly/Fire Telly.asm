Obj_FireTelly:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_FireTelly_Index(pc,d0.w),d1
		jmp		Obj_FireTelly_Index(pc,d1.w)
; ===========================================================================
Obj_FireTelly_Index:	offsetTable
		offsetTableEntry.w	Obj_FireTelly_Init				; 0, initialize
		offsetTableEntry.w	Obj_FireTelly_CheckPlayer		; 2, check for player
		offsetTableEntry.w	Obj_FireTelly_Shoot				; 4, shoot, then reset to 2
		offsetTableEntry.w	Obj_FireTelly_Reset				; 6, reset to 2
; ===========================================================================

Obj_FireTelly_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_FireTelly,mappings(a0)
		move.w	#make_art_tile(ArtTile_FireTelly,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		move.b	#$34,collision_flags(a0)	; 16x24, take shots
		move.w	#bytes_to_word(14/2,18/2),height_pixels(a0)
		move.w	#bytes_to_word(14/2,18/2),y_radius(a0)
		move.b	#3,damage(a0)			; contact damage
		move.b	#2,boss_hitcount2(a0)	; health
		move.w	#$18,wait(a0)
		rts
; ---------------------------------------------------------------------------

Obj_FireTelly_CheckPlayer:
		clr.b	anim(a0)
		move.w	#-$100,x_vel(a0)
		jsr		SpeedToPos
		cmpi.b	#1,mapping_frame(a0)
		bne.s	.ret
		subq.w	#1,wait(a0)
		bpl.s	.ret
		lea		.range(pc),a1
		jsr		(Check_PlayerInRange).l
		tst.l	d0
		bne.s	.continue
	.ret:
		bra.w	Obj_FireTelly_AnimateAndTouch
	.continue:
		addq.b	#2,routine(a0)
		bra.w	Obj_FireTelly_AnimateAndTouch
	.range:	; I hope this is enough to cover the screen.
	; I really wish I had a way to view these boxes...
		dc.w	-100
		dc.w	100*2
		dc.w	-240
		dc.w	240*2
; ---------------------------------------------------------------------------

Obj_FireTelly_Shoot:
		tst.b	count(a0)
		bne.s	.ret
		clr.w	x_vel(a0)
		move.b	#1,anim(a0)
		move.w	#$18,wait(a0)
		jsr		FindFreeObj
		move.l	#Obj_FireTellyFlame,(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		sfx		sfx_Fireball
		move.b	#1,count(a0)
	.ret:
		bra.w	Obj_FireTelly_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_FireTelly_Reset:
		move.b	#2,routine(a0)
		clr.b	count(a0)
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------

Obj_FireTelly_AnimateAndTouch:
		lea		Ani_FireTelly(pc),a1
		jsr		AnimateSprite
		jmp		GenericEnemy_Hurt
; ===========================================================================

Obj_FireTellyFlame:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_FireTellyFlame_Index(pc,d0.w),d1
		jmp		Obj_FireTellyFlame_Index(pc,d1.w)
; ===========================================================================
Obj_FireTellyFlame_Index:	offsetTable
		offsetTableEntry.w	Obj_FireTellyFlame_Init		; 0, initialize
		offsetTableEntry.w	Obj_FireTellyFlame_Fall		; 2, drop from fire telly
		offsetTableEntry.w	Obj_FireTellyFlame_Explode	; 4, explode with a sound
		offsetTableEntry.w	Obj_FireTellyFlame_Burn		; 6, burn!!!! andthenfadeaway
		offsetTableEntry.w	Obj_FireTellyFlame_Die		; 8, fade away (fucking explode)
; ===========================================================================

Obj_FireTellyFlame_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_FireTelly,mappings(a0)
		move.w	#make_art_tile(ArtTile_FireTelly,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		move.b	#$9E,collision_flags(a0)	; 8x16
		move.w	#bytes_to_word(14/2,18/2),height_pixels(a0)
		move.w	#bytes_to_word(14/2,18/2),y_radius(a0)
		move.b	#2,damage(a0)			; contact damage
		move.b	#1,boss_hitcount2(a0)	; health, so it doesn't explode on spawn
		move.w	#$18,wait(a0)
		rts
; ---------------------------------------------------------------------------

Obj_FireTellyFlame_Fall:
		move.b	#2,anim(a0)	; ember
		move.l	#.addRoutine,jump(a0)
		jsr		ObjectFall
		jsr		ObjHitFloor_DoRoutine
		bra.w	Obj_FireTelly_AnimateAndTouch
	.addRoutine:
		addq.b	#2,routine(a0)
		rts
; ---------------------------------------------------------------------------

Obj_FireTellyFlame_Explode:
		move.b	#$B4,collision_flags(a0)	; 16x24
		move.b	#3,anim(a0)	; explosion
		bsr.w	Obj_FireTelly_AnimateAndTouch
		sfx		sfx_Explode
		sfx		sfx_Burning,1
; ---------------------------------------------------------------------------

Obj_FireTellyFlame_Burn:
		move.b	#4,anim(a0)	; Large flame
		bra.w	Obj_FireTelly_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_FireTellyFlame_Die:
		move.l	#Obj_Explosion,(a0)
		move.b	#6,routine(a0)
		rts

; ===========================================================================

Ani_FireTelly:	offsetTable
		offsetTableEntry.w	.spin	; spinny spinny spinny spinny
		offsetTableEntry.w	.shoot	; shoot
		offsetTableEntry.w	.ember	; tiny flame
		offsetTableEntry.w	.splode	; explosion frame
		offsetTableEntry.w	.fire	; large flame
	
	.spin:			dc.b 9, 1, 2, 3, 4, afEnd
	.shoot:			dc.b 4, 5, 6, afRoutine
	.ember:			dc.b 2, 7, 8, afEnd
	.splode:		dc.b 1, 9, afRoutine
	.fire:			dc.b 3
					rept 4
						dc.b 10, 11, 12
					endr
					rept 2
						dc.b 10, 0, 12, 0, 11, 0
					endr
					dc.b afRoutine
	even

Map_FireTelly:		binclude	"Objects/Enemies/Fire Telly/Object Data/Map - Fire Telly.bin"