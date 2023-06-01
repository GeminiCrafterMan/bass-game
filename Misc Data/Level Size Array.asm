; ===========================================================================
; Level Size Array
; ===========================================================================

;		xstart, xend, ystart, yend			; Level
LevelSizes:
		dc.w 0, $1CC0, 0, $2E0				; DEZ 1
		dc.w 0, $1CC0, 0, $3C0				; DEZ 2
		dc.w 0, $1CC0, 0, $3C0				; DEZ 3
		dc.w 0, $1CC0, 0, $3C0				; DEZ 4

		zonewarning LevelSizes,(8*4)