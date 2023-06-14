; ---------------------------------------------------------------------------
; Object - Sonic on the menu
; ---------------------------------------------------------------------------

Obj_CharSel_Bass:
		move.l	#Map_CharSel,mappings(a0)
		move.w	#$100,priority(a0)
		move.b	#0,anim(a0)
		move.b	#1,prev_anim(a0)
	.display:
		lea		(Ani_CharSel).l,a1
		jsr		AnimateSprite
		bsr.s	CharSel_Load_PLC
		jmp		DisplaySprite

Obj_CharSel_CopyRobot:
		move.l	#Map_CharSel,mappings(a0)
		move.w	#$100,priority(a0)
		move.b	#1,anim(a0)
		bra.s	Obj_CharSel_Bass.display

CharSel_Load_PLC:
		moveq	#0,d0
		move.b	mapping_frame(a0),d0
		cmp.b	previous_frame(a0),d0
		beq.s	+
		move.b	d0,previous_frame(a0)
		lea	(PLC_CharSel).l,a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	+
		move.w	vram_art(a0),d4
		move.l	#ArtUnc_CharSel>>1,d6

-		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#4,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(Add_To_DMA_Queue).w
		dbf	d5,-
+		rts
; End of function CharSel_Load_PLC

; ---------------------------------------------------------------------------
; Animation script - Character select
; ---------------------------------------------------------------------------
Ani_CharSel:	offsetTable
		offsetTableEntry.w .bass
		offsetTableEntry.w .copyrobot
.bass:			dc.b 10, 1, afEnd
.copyrobot:		dc.b 10, 2, 3, afEnd
		even

; ---------------------------------------------------------------------------
; Character select mapping and PLC data
; ---------------------------------------------------------------------------
Map_CharSel:		binclude "Objects/Character Select/Object Data/Map - Character Select.bin"
PLC_CharSel:		binclude "Objects/Character Select/Object Data/PLC - Character Select.bin"