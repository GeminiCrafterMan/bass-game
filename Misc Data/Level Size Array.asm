; ===========================================================================
; Level Size Array
; ===========================================================================

;		xstart, xend, ystart, yend			; Level
LevelSizes:
		dc.w 0, $780-$140, 0, $3A0-$E0		; Test 1
		dc.w 0, $1400-$140, 0, $2D0-$E0		; Test 2
		dc.w 0, $1CC0, 0, $3C0				; Test 3
		dc.w 0, $1CC0, 0, $3C0				; Test 4

		dc.w 0, $640, 0, $C00-$E0			; Blaze Man
		dc.w 0, $640, 0, $2E0				; Video Man
		dc.w 0, $640, 0, $2E0				; Smog Man
		dc.w 0, $640, 0, $2E0				; Shark Man

		dc.w 0, $640, 0, $2E0				; Test 1
		dc.w 0, $640, 0, $2E0				; Test 1
		dc.w 0, $640, 0, $2E0				; Test 1
		dc.w 0, $640, 0, $2E0				; Test 1

		zonewarning LevelSizes,(8*4)