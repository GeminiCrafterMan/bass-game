; THIS IS UNFINISHED, AND WILL PROBABLY BE REWRITTEN.
Obj_SniperJoe:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_SniperJoe_Index(pc,d0.w),d1
		jmp		Obj_SniperJoe_Index(pc,d1.w)
; ===========================================================================
Obj_SniperJoe_Index:	offsetTable
		offsetTableEntry.w	Obj_SniperJoe_Init				; 0, initialize
		offsetTableEntry.w	Obj_SniperJoe_Wait				; 2, shield and wait for player
		offsetTableEntry.w	Obj_SniperJoe_Fire				; 4, lower shield and shoot 3 bullets
		offsetTableEntry.w	Obj_SniperJoe_AnimateAndTouch	; 6, raise shield
		offsetTableEntry.w	Obj_SniperJoe_Reset				; 8, reset to 2
; ===========================================================================

Obj_SniperJoe_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_SniperJoe,mappings(a0)
		move.w	#make_art_tile(ArtTile_SniperJoe,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
	; replace this with a shield child object later that covers his hitbox
;		move.b	#$F4,collision_flags(a0)	; same size, but deflect shots
		move.b	#$B4,collision_flags(a0)	; until i get deflection in
		move.w	#bytes_to_word(28/2,14/2),height_pixels(a0)
		move.w	#bytes_to_word(28/2,14/2),y_radius(a0)
		move.b	#4,damage(a0)			; contact damage
		move.b	#10-1,boss_hitcount2(a0)	; health
		rts
; ---------------------------------------------------------------------------

Obj_SniperJoe_Wait:
		clr.b	anim(a0)
	; 
;		move.b	#$F4,collision_flags(a0)	; same size, but deflect shots
		move.b	#$B4,collision_flags(a0)	; until i get deflection in
	; follow player's orientation
		jsr		Find_Sonic
		tst.w	d0
		beq.s	.left
	.right:
		bset	#Status_Facing,status(a0)
		bra.s	.finish
	.left:
		bclr	#Status_Facing,status(a0)
	.finish:
		bra.s	Obj_SniperJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_SniperJoe_Fire:
		move.b	#1,anim(a0)
		move.b	#$34,collision_flags(a0)	; same size, but take shots
	; follow player's orientation
		jsr		Find_Sonic
		tst.w	d0
		beq.s	.left
	.right:
		bset	#Status_Facing,status(a0)
		bra.s	.finish
	.left:
		bclr	#Status_Facing,status(a0)
	.finish:
		jsr		FindFreeObj
		move.l	#Obj_GenericBullet,(a1)
		move.b	#2,damage(a1)		; set damage for bullet
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		addq.w	#2,y_pos(a1)
		move.w	#$400,d0
		bset	#Status_Facing,status(a1)
		btst	#Status_Facing,status(a0)
		bne.s	.noFlip
		bclr	#Status_Facing,status(a1)
		neg.w	d0
	.noFlip:
		move.w	d0,x_vel(a1)
		bra.s	Obj_SniperJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_SniperJoe_Reset:
		move.b	#2,routine(a0)
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------

Obj_SniperJoe_AnimateAndTouch:
		lea		Ani_SniperJoe(pc),a1
		jsr		AnimateSprite
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------
	
Obj_SniperJoe_Delete:	; Shouldn't be necessary, but putting it here just in case.
		jmp		DeleteObject

; ===========================================================================
; wait for player to get near, lower shield, then shoot 3 bullets, then raise the shield
; ===========================================================================

Ani_SniperJoe:	offsetTable
		offsetTableEntry.w	.wait
		offsetTableEntry.w	.lower
		offsetTableEntry.w	.shoot
		offsetTableEntry.w	.raise

	.wait:		dc.b 3, 1, afEnd
	.lower:		dc.b 1, 2, 3, afRoutine
	.shoot:		dc.b 6, 2, 3, 3, 3, afEnd	; repeat 3 times
	.raise:		dc.b 1, 3, 2, afRoutine
	even

Map_SniperJoe:		binclude	"Objects/Enemies/Sniper Joe/Object Data/Map - Sniper Joe.bin"