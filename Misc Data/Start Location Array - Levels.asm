; ===========================================================================
; Sonic start location array
; ===========================================================================

StartLocArray:
		binclude "Levels/Test/Start Location/1.bin"	; Test 1
		binclude "Levels/Test/Start Location/2.bin"	; Test 2
		binclude "Levels/Test/Start Location/1.bin"	; Test 3
		binclude "Levels/Test/Start Location/1.bin"	; Test 4

		binclude "Levels/Robot Master stages/Start Location/Blaze Man.bin"	; Blaze Man
		binclude "Levels/Robot Master stages/Start Location/Video Man.bin"	; Video Man
		binclude "Levels/Test/Start Location/1.bin"	; Test 3
		binclude "Levels/Robot Master stages/Start Location/Smog Man.bin"	; Smog Man

	rept 4
		binclude "Levels/Test/Start Location/1.bin"	; Test 1
	endr

		zonewarning StartLocArray,(4*4)