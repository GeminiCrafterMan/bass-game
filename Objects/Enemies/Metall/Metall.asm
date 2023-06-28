Obj_Metall:	; "all" hel"Met", apparently.
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj_Metall_Index(pc,d0.w),d1
		jmp		Obj_Metall_Index(pc,d1.w)
; ===========================================================================
Obj_Metall_Index:	offsetTable
		offsetTableEntry.w	Obj_Metall_Init				; 0, initialize
		offsetTableEntry.w	Obj_Metall_CheckPlayer		; 2, check for player
		offsetTableEntry.w	Obj_Metall_GetOutOfHelmet	; 4, get out of the helmet
		offsetTableEntry.w	Obj_Metall_Shoot			; 6, shoot, then wait a little
		offsetTableEntry.w	Obj_Metall_Run				; 8, run like your life depends on it (it might)
		offsetTableEntry.w	Obj_Metall_GetIntoHelmet	; $A, get back in the helmet
		offsetTableEntry.w	Obj_Metall_Reset			; $C, reset to 2
; ===========================================================================

Obj_Metall_Init:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_Metall,mappings(a0)
		move.w	#make_art_tile(ArtTile_Metall,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		move.b	#$D8,collision_flags(a0)	; 16x8, deflect
		move.w	#bytes_to_word(14/2,18/2),height_pixels(a0)
		move.w	#bytes_to_word(14/2,18/2),y_radius(a0)
		move.b	#4,damage(a0)			; contact damage
		move.b	#1,boss_hitcount2(a0)	; health
		rts
; ---------------------------------------------------------------------------

Obj_Metall_CheckPlayer:
		move.b	#$D8,collision_flags(a0)	; 16x8, deflect
		clr.b	anim(a0)
		clr.w	x_vel(a0)
		jsr		ObjectFall
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	.notonfloor
		add.w	d1,y_pos(a0)	; match	object's position with the floor
		clr.w	y_vel(a0)
	.notonfloor:
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
		lea		.range(pc),a1
		jsr		(Check_PlayerInRange).l
		tst.l	d0
		bne.s	.continue
		bra.w	Obj_Metall_AnimateAndTouch
	.continue:
		addq.b	#2,routine(a0)
		bra.w	Obj_Metall_AnimateAndTouch
	.range:
		dc.w	-100
		dc.w	100*2
		dc.w	-50
		dc.w	50*2
; ---------------------------------------------------------------------------

Obj_Metall_GetOutOfHelmet:
		move.b	#$B,collision_flags(a0)	; 16x16, takes hits
		tst.b	subtype(a0)
		bne.s	.mm2
		move.b	#1,anim(a0)
		addq.b	#2,routine(a0)
		bra.s	.done
	.mm2:
		move.b	#2,anim(a0)
	.done:
		move.w	#$C,wait(a0)
		bra.w	Obj_Metall_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_Metall_Shoot:
		tst.b	subtype(a0)
		beq.s	.mm1
		move.b	#3,anim(a0)	; stay out of helmet
	.mm1:
		subq.w	#1,wait(a0)
		beq.s	.done
		bra.w	Obj_Metall_AnimateAndTouch
	.done:
		jsr		FindFreeObj
		move.l	#Obj_GenericBullet,(a1)
		move.b	#2,damage(a1)		; set damage for bullet
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	#$200,d4
		move.w	#$100,d1
		bset	#Status_Facing,status(a1)
		btst	#Status_Facing,status(a0)
		bne.s	.noFlip
		bclr	#Status_Facing,status(a1)
		neg.w	d4
	.noFlip:
		move.w	d4,x_vel(a1)
	; shot 2
		jsr		FindFreeObj
		move.l	#Obj_GenericBullet,(a1)
		move.b	#2,damage(a1)		; set damage for bullet
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	d4,x_vel(a1)
		move.w	d1,y_vel(a1)
	; shot 3
		jsr		FindFreeObj
		move.l	#Obj_GenericBullet,(a1)
		move.b	#2,damage(a1)		; set damage for bullet
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	d4,x_vel(a1)
		neg.w	d1
		move.w	d1,y_vel(a1)
		move.w	#$40,wait(a0)	; run for this long
		addq.b	#2,routine(a0)
		bra.w	Obj_Metall_AnimateAndTouch
	.ret:
		rts
; ---------------------------------------------------------------------------

Obj_Metall_Run:	; todo: fix further
		subq.w	#1,wait(a0)
		beq.s	.mm1
		tst.b	subtype(a0)
		beq.s	.done
		move.b	#4,anim(a0)
		move.w	#-$180,x_vel(a0)
		btst	#Status_Facing,status(a0)
		beq.s	.noFlip
		neg.w	x_vel(a0)
	.noFlip:
		jsr		ObjectFall
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	.notonfloor
		add.w	d1,y_pos(a0)	; match	object's position with the floor
		clr.w	y_vel(a0)
	.notonfloor:
		move.l	#.reverse,jump(a0)
		btst	#Status_Facing,status(a0)
		beq.s	.right
		jsr	(ObjHitWall2_DoRoutine_NoMove).l
		bra.s	.done
	.right:
		jsr	(ObjHitWall_DoRoutine_NoMove).l
		bra.s	.done
	.mm1:
		addq.b	#2,routine(a0)
		bra.s	Obj_Metall_AnimateAndTouch
	.reverse:
		neg.w	x_vel(a0)
		bchg	#Status_Facing,status(a0)
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	.done	; in air
		move.w	#-$200,y_vel(a0)	; do a little hop
	.done:
		bra.s	Obj_Metall_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_Metall_GetIntoHelmet:
		tst.b	subtype(a0)
		bne.s	.mm2
		clr.w	anim(a0)
		bra.s	.done
	.mm2:
		move.b	#5,anim(a0)
	.done:
		addq.b	#2,routine(a0)
		move.w	#$30,wait(a0)
		bra.s	Obj_Metall_AnimateAndTouch
; ---------------------------------------------------------------------------

Obj_Metall_Reset:
		tst.b	anim(a0)
		bne.s	.waitForAnim
		move.b	#$D8,collision_flags(a0)	; 16x8, deflect
		tst.w	wait(a0)
		beq.s	.doneWaiting
		subq.w	#1,wait(a0)
	.waitForAnim:
		bra.s	Obj_Metall_AnimateAndTouch

	.doneWaiting:
		move.b	#2,routine(a0)
		jmp		GenericEnemy_Hurt
; ---------------------------------------------------------------------------

Obj_Metall_AnimateAndTouch:
		lea		Ani_Metall(pc),a1
		jsr		AnimateSprite
		jmp		GenericEnemy_Hurt
; ===========================================================================

Ani_Metall:	offsetTable
		offsetTableEntry.w	.helmet	; just the helmet
		offsetTableEntry.w	.outMM1	; MM1 Met
		offsetTableEntry.w	.out	; MM2+ Met
		offsetTableEntry.w	.stayOut; out of helmet
		offsetTableEntry.w	.run	; zip zoom mf
		offsetTableEntry.w	.in		; get back inside (neo/mm2)
	
	.helmet:	dc.b 4, 1, afEnd
	.outMM1:	dc.b 4, 7, afEnd
	.out:		dc.b 3, 2, 3, afRoutine
	.stayOut:	dc.b 4, 4, afEnd
	.run:		dc.b 3, 5, 6, afEnd
	.in:		dc.b 3, 3, 2, afChange, 0
	even

Map_Metall:		binclude	"Objects/Enemies/Metall/Object Data/Map - Metall.bin"