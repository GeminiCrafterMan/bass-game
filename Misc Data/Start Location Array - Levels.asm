; ===========================================================================
; Sonic start location array
; ===========================================================================

StartLocArray:
		binclude "Levels/Test/Start Location/1.bin"	; Test 1
		binclude "Levels/Test/Start Location/2.bin"	; Test 2
		binclude "Levels/Test/Start Location/3.bin"	; Test 3
		binclude "Levels/Test/Start Location/1.bin"	; Test 4

		binclude "Levels/Robot Master stages/Start Location/Blaze Man.bin"	; Blaze Man
		binclude "Levels/Robot Master stages/Start Location/Video Man.bin"	; Video Man
		binclude "Levels/Robot Master stages/Start Location/Smog Man.bin"	; Smog Man
		binclude "Levels/Robot Master stages/Start Location/Shark Man.bin"	; Shark Man

		binclude "Levels/Robot Master stages/Start Location/Origami Man.bin"
		binclude "Levels/Robot Master stages/Start Location/Unknown 1.bin"
		binclude "Levels/Robot Master stages/Start Location/Unknown 2.bin"
		binclude "Levels/Robot Master stages/Start Location/Unknown 3.bin"

		zonewarning StartLocArray,(4*4)