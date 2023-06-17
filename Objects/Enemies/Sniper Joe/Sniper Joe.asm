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
		offsetTableEntry.w	Obj_SniperJoe_LowerShield		; 4, lower shield
		offsetTableEntry.w	Obj_SniperJoe_Fire				; 6, shoot 3 bullets
		offsetTableEntry.w	Obj_SniperJoe_AnimateAndTouch	; 8, raise shield
		offsetTableEntry.w	Obj_SniperJoe_Reset				; $A, reset to 2
; ===========================================================================

Obj_SniperJoe_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_SniperJoe,mappings(a0)
		move.w	#make_art_tile(ArtTile_SniperJoe,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		move.b	#$34,collision_flags(a0)	; same size, but take shots
		move.w	#bytes_to_word(28/2,14/2),height_pixels(a0)
		move.w	#bytes_to_word(28/2,14/2),y_radius(a0)
		move.b	#4,damage(a0)			; contact damage
		move.b	#10,boss_hitcount2(a0)	; health
		move.w	#$20,wait(a0)
		lea		ChildObjDat_SniperJoeShield(pc),a2
		jmp		(CreateChild1_Normal).w
; ---------------------------------------------------------------------------

Obj_SniperJoe_Wait:	; waits with an animation
		clr.b	anim(a0)
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
		bra.w	Obj_SniperJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_SniperJoe_LowerShield:
		move.b	#1,anim(a0)
		bra.w	Obj_SniperJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_SniperJoe_Fire:
		cmpi.b	#3,count(a0)
		blt.s	.not3
		clr.b	count(a0)
		addq.b	#2,routine(a0)
		move.b	#3,anim(a0)
		rts	; raise shield
	.not3:
		move.b	#2,anim(a0)
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
		cmpi.b	#1,anim_frame(a0)
		bne.s	.dontfire
		tst.b	anim_frame_timer(a0)
		beq.s	.fire
	.dontfire:
		bra.s	Obj_SniperJoe_AnimateAndTouch
	.fire:
		addq.b	#1,count(a0)
		jsr		FindFreeObj
		move.l	#Obj_GenericBullet,(a1)
		move.b	#2,damage(a1)		; set damage for bullet
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	#$200,d0
		addq.w	#4,x_pos(a1)
		addq.w	#6,y_pos(a1)
		btst	#Status_Facing,status(a0)
		bne.s	.noFlip
		bset	#Status_Facing,status(a1)
		subq.w	#8,x_pos(a1)
		neg.w	d0
	.noFlip:
		move.w	d0,x_vel(a1)
		sfx		sfx_BusterShot
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

Obj_SniperJoeShield:
	.main:
		move.w	parent3(a0),a2
		cmpi.l	#Obj_SniperJoe,address(a2)
		bne.s	.del
		move.b	status(a2),status(a0)
		move.b	render_flags(a2),render_flags(a0)
		move.w	height_pixels(a2),height_pixels(a0)
		move.w	#$180,priority(a0)
		move.b	#4,mapping_frame(a0)
;		btst	#Status_Facing,status(a2)
;		beq.s	.noFlip
;		move.b	#-12,child_dx(a0)
;		bra.s	.doneFlip
;	.noFlip:
;		move.b	#12,child_dx(a0)
;	.doneFlip:
		jsr	(Refresh_ChildPositionAdjusted).w
		move.b	#$DE,collision_flags(a0)	; should be reflective 8x16 sprite
		cmpi.b	#1,mapping_frame(a2)
		beq.s	.collide
		rts
	.collide:
;		jmp		Child_AddToTouchList
		jmp		Child_DrawTouch_Sprite
	.del:
		jmp		DeleteObject

ChildObjDat_SniperJoeShield:
		dc.w	0	; amount to create -1
		dc.l	Obj_SniperJoeShield	; object pointer
		dc.b	-8, -3	; X/Y offsets

; ===========================================================================
; wait for player to get near, lower shield, then shoot 3 bullets, then raise the shield
; ===========================================================================

Ani_SniperJoe:	offsetTable
		offsetTableEntry.w	.wait
		offsetTableEntry.w	.lower
		offsetTableEntry.w	.shoot
		offsetTableEntry.w	.raise

	.wait:		dc.b 59, 1, afRoutine	; one whole second
	.lower:		dc.b 3, 2, 3, afRoutine
	.shoot:		dc.b 3, 2, 3
				rept 11
					dc.b 3
				endr
				dc.b afEnd	; this repeats 3 times
	.raise:		dc.b 3, 3, 3, 3, 2, afRoutine
	even

Map_SniperJoe:		binclude	"Objects/Enemies/Sniper Joe/Object Data/Map - Sniper Joe.bin"