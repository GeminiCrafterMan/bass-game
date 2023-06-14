; ===========================================================================
; Sonic start location array
; ===========================================================================

StartLocArray:
		binclude "Levels/Test/Start Location/1.bin"	; Test 1
		binclude "Levels/Test/Start Location/2.bin"	; Test 2
		binclude "Levels/Test/Start Location/1.bin"	; Test 3
		binclude "Levels/Test/Start Location/1.bin"	; Test 4

		zonewarning StartLocArray,(4*4)