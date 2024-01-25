; ===========================================================================
; Level Size Array
; ===========================================================================

;		xstart, xend, ystart, yend			; Level
LevelSizes:
		dc.w 0, $780-$140, 0, $3A0-$E0		; Test 1
		dc.w 0, $1400-$140, 0, $2D0-$E0		; Air Man
		dc.w 0, $800-$140, 0, $600-$E0		; Test 3
		dc.w 0, $1CC0, 0, $3C0				; Test 4

		dc.w 0, $1400-$140, 0, $C00-$E0		; Blaze Man
		dc.w 0, $640, 0, $2E0				; Video Man
		dc.w 0, $1400-$140, 0, $C00-$E0		; Smog Man
		dc.w 0, $640, 0, $2E0				; Shark Man

		dc.w 0, $1C00-$140, 0, $200-$E0		; Origami Man
		dc.w 0, $1100-$140, 0, $780-$E0		; Unknown 1
		dc.w 0, $640, 0, $2E0				; Unknown 2
		dc.w 0, $640, 0, $2E0				; Unknown 3

		zonewarning LevelSizes,(8*4)