; ---------------------------------------------------------------------------
; HUD
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Render_HUD:
		lea	(HUD_RAM).w,a1
		move.b	HUD_RAM.status-HUD_RAM(a1),d0
		beq.s	.return
		bmi.s	.left
		cmpi.b	#3,d0
		beq.s	.check
		subq.b	#1,d0
		bne.s	.right								; if 2, branch

.init
		move.w	#$10,HUD_RAM.Xpos-HUD_RAM(a1)
		move.w	#$108,HUD_RAM.Ypos-HUD_RAM(a1)
		addq.b	#1,HUD_RAM.status-HUD_RAM(a1)		; set 2

.right
		addq.w	#2,HUD_RAM.Xpos-HUD_RAM(a1)
		cmpi.w	#$90,HUD_RAM.Xpos-HUD_RAM(a1)
		bne.s	.check
		addq.b	#1,HUD_RAM.status-HUD_RAM(a1)		; set 3

.check
		tst.b	(Level_end_flag).w
		beq.s	.process
		st	HUD_RAM.status-HUD_RAM(a1)

.left
		subq.w	#2,HUD_RAM.Xpos-HUD_RAM(a1)
		cmpi.w	#$10,HUD_RAM.Xpos-HUD_RAM(a1)
		bhs.s	.process
		clr.b	HUD_RAM.status-HUD_RAM(a1)

.process
		moveq	#0,d4								; frame #0
.time
		tst.b	(v_weapon).w						; Is the player using their default weapon?
		bne.s	.health								; if not, branch
		addq.w	#2*2,d4								; hide time counter
.health
		btst	#3,(Level_frame_counter+1).w
		bne.s	.draw
		cmpi.b	#9,(v_health).w						; do you have 10 or more health?
		bgt.s	.draw								; if yes, branch
		addq.w	#1*2,d4								; hide rings counter


.draw
		move.w	HUD_RAM.Xpos-HUD_RAM(a1),d0		; Xpos
		move.w	HUD_RAM.Ypos-HUD_RAM(a1),d1		; Ypos
		move.w	#make_art_tile(ArtTile_HUD,0,1),d5		; VRAM
		lea	Map_HUD(pc),a1
		adda.w	(a1,d4.w),a1
		move.w	(a1)+,d4
		subq.w	#1,d4
		bmi.s	.return
		jmp	(sub_1AF6C).w							; draw
; ---------------------------------------------------------------------------

.return
		rts
; ---------------------------------------------------------------------------

		include	"Objects/HUD/Object Data/Map - HUD.asm"
