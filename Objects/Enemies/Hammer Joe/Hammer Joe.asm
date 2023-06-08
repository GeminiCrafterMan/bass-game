Obj_HammerJoe:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_HammerJoe_Index(pc,d0.w),d1
		jmp		Obj_HammerJoe_Index(pc,d1.w)
; ===========================================================================
Obj_HammerJoe_Index:	offsetTable
		offsetTableEntry.w	Obj_HammerJoe_Init				; 0, initialize
		offsetTableEntry.w	Obj_HammerJoe_Swing1			; 2, swing around 5 times
		offsetTableEntry.w	Obj_HammerJoe_Swing2			; 4, open eye then swing 3 times
		offsetTableEntry.w	Obj_HammerJoe_Throw				; 6, throw hammer projectile
		offsetTableEntry.w	Obj_HammerJoe_AnimateAndTouch	; 8, wait until you're done with the throw animation
		offsetTableEntry.w	Obj_HammerJoe_Reset				; $A, reset to 2
; ===========================================================================

Obj_HammerJoe_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_HammerJoe,mappings(a0)
		move.w	#make_art_tile(ArtTile_HammerJoe,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
;		move.b	#$C9,collision_flags(a0)	; same size, but deflect shots
		move.b	#$89,collision_flags(a0)	; until i get deflection in
		move.w	#bytes_to_word(32/2,24/2),height_pixels(a0)
		move.w	#bytes_to_word(32/2,24/2),y_radius(a0)
		move.b	#4,damage(a0)			; contact damage
		move.b	#8-1,boss_hitcount2(a0)	; health
		rts
; ---------------------------------------------------------------------------

Obj_HammerJoe_Swing1:
		clr.b	anim(a0)
;		move.b	#$C9,collision_flags(a0)	; same size, but deflect shots
		move.b	#$89,collision_flags(a0)	; until i get deflection in
	; todo: follow player's orientation
		bra.s	Obj_HammerJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_HammerJoe_Swing2:
		move.b	#1,anim(a0)
		move.b	#9,collision_flags(a0)		; same size, but take shots
	; todo: follow player's orientation
		bra.s	Obj_HammerJoe_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_HammerJoe_Throw:
		addq.b	#2,routine(a0)				; wait
		move.b	#2,anim(a0)
		move.b	#9,collision_flags(a0)		; same size, but take shots
	; to not do: don't(!) follow player's orientation
		jsr		FindFreeObj
		move.l	#Obj_HammerJoe_Hammer,(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	#$600,d0
		btst	#Status_Facing,status(a0)
		bne.s	.noFlip
		neg.w	d0
	.noFlip:
		move.w	d0,x_vel(a1)
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------

Obj_HammerJoe_Reset:
		move.b	#2,routine(a0)
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------

Obj_HammerJoe_AnimateAndTouch:
		lea		Ani_HammerJoe(pc),a1
		jsr		AnimateSprite
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------
	
Obj_HammerJoe_Delete:	; Shouldn't be necessary, but putting it here just in case.
		jmp		DeleteObject

; ===========================================================================

Obj_HammerJoe_Hammer:
		addq.b	#2,routine(a0)
		move.l	#Map_HammerJoe,mappings(a0)
		move.w	#make_art_tile(ArtTile_HammerJoe,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
;		move.b	#$D8,collision_flags(a0)	; deflect shots
		move.b	#$98,collision_flags(a0)	; don't deflect but don't take either
		move.w	#bytes_to_word(10/2,20/2),height_pixels(a0)
		move.w	#bytes_to_word(10/2,20/2),y_radius(a0)
		move.b	#2,damage(a0)			; contact damage
		move.b	#3,anim(a0)				; animation
		move.l	#.main,address(a0)
	.main:
		out_of_xrange.s Obj_HammerJoe_Delete	; is the projectile off-screen?
		out_of_yrange.s Obj_HammerJoe_Delete
		jsr		SpeedToPos
		bra.s	Obj_HammerJoe_AnimateAndTouch

; ===========================================================================
; swing 5 times, open eye, swing 3 more times, throw
; ===========================================================================

Ani_HammerJoe:	offsetTable
		offsetTableEntry.w	.swing1
		offsetTableEntry.w	.swing2
		offsetTableEntry.w	.throw
		offsetTableEntry.w	.hammer

	.swing1:	dc.b 5
				rept 5
					dc.b 1, 2, 3, 4
				endr
				dc.b afRoutine
	.swing2:	dc.b 2
					dc.b 5, 5, 6, 6, 7, 7, 8, 8
					dc.b 5, 5, 6, 6, 7, 8
					dc.b 5, 6, 7, 8
				dc.b afRoutine
	.throw:		dc.b 14, 9, afRoutine
	.hammer:	dc.b 4, 10, 11, afEnd
	even

Map_HammerJoe:		binclude	"Objects/Enemies/Hammer Joe/Object Data/Map - Hammer Joe.bin"