; ===========================================================================
; Levels Data
; ===========================================================================

		;		1st 8x8 data		1st 16x16 data		1st 128x128 data	palette
LevelLoadBlock:
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test1
		levartptrs Test2_8x8_KosM,	Test2_16x16_Unc,Test2_128x128_Kos,palid_Test2		; Test2
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test3
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test4

		levartptrs Blaze_8x8_KosM,	Blaze_16x16_Unc,Blaze_128x128_Kos,	palid_Blaze		; Blaze Man
		levartptrs Video_8x8_KosM,	Video_16x16_Unc,Video_128x128_Kos,	palid_Video		; Video Man
		levartptrs Smog_8x8_KosM,	Smog_16x16_Unc,	Smog_128x128_Kos,	palid_Smog		; Smog Man
		levartptrs Shark_8x8_KosM,	Shark_16x16_Unc,Shark_128x128_Kos,	palid_Shark		; Shark Man

		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test
		levartptrs Test1_8x8_KosM,	Test1_16x16_Unc,Test1_128x128_Kos,palid_Test1		; Test

		zonewarning LevelLoadBlock,(12*4)

; ===========================================================================
; Levels Pointer Data
; ===========================================================================

LevelLoadPointer:

	rept 4
; Test1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr

	rept 4
; Test1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr
	rept 4
; Test1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr

		zonewarning LevelLoadPointer,(40*4)

; ===========================================================================
; Collision index pointers
; ===========================================================================

SolidIndexes:
		dc.l Test1_Solid	; Test1
		dc.l Test2_Solid	; Test2
		dc.l Test1_Solid	; Test3
		dc.l Test1_Solid	; Test4

		dc.l Blaze_Solid	; Blaze Man
		dc.l Video_Solid	; Video Man
		dc.l Smog_Solid		; Smog Man
		dc.l Shark_Solid	; Shark Man

		dc.l Test1_Solid	; Test1
		dc.l Test1_Solid	; Test1
		dc.l Test1_Solid	; Test1
		dc.l Test1_Solid	; Test1

		zonewarning SolidIndexes,(4*4)

; ===========================================================================
; Level layout index
; ===========================================================================

LevelPtrs:
		dc.l Test1_Layout	; Test1
		dc.l Test2_Layout	; Test2
		dc.l Test1_Layout	; Test3
		dc.l Test1_Layout	; Test4

		dc.l Blaze_Layout	; Blaze Man
		dc.l Video_Layout	; Video Man
		dc.l Smog_Layout	; Smog Man
		dc.l Shark_Layout	; Shark Man

		dc.l Test1_Layout	; Test1
		dc.l Test1_Layout	; Test1
		dc.l Test1_Layout	; Test1
		dc.l Test1_Layout	; Test1

		zonewarning LevelPtrs,(4*4)

; ===========================================================================
; Sprite locations index
; ===========================================================================

SpriteLocPtrs:
		dc.l Test1_Sprites	; Test1
		dc.l Test2_Sprites	; Test2
		dc.l Test1_Sprites	; Test3
		dc.l Test1_Sprites	; Test4

		dc.l Blaze_Sprites	; Blaze Man
		dc.l Video_Sprites	; Video Man
		dc.l Smog_Sprites	; Smog Man
		dc.l Shark_Sprites	; Shark Man

		dc.l Test1_Sprites	; Test1
		dc.l Test1_Sprites	; Test1
		dc.l Test1_Sprites	; Test1
		dc.l Test1_Sprites	; Test1

		zonewarning SpriteLocPtrs,(4*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

Test1_8x8_KosM:		binclude "Levels/Test/Tiles/Primary.bin"
	even
Test1_16x16_Unc:	binclude "Levels/Test/Blocks/Primary.bin"
	even
Test1_128x128_Kos:	binclude "Levels/Test/Chunks/Primary.bin"
	even
Test2_8x8_KosM:		binclude "Levels/Test/Tiles/Secondary.bin"
	even
Test2_16x16_Unc:	binclude "Levels/Test/Blocks/Secondary.bin"
	even
Test2_128x128_Kos:	binclude "Levels/Test/Chunks/Secondary.bin"
	even

Blaze_8x8_KosM:		binclude "Levels/Robot Master stages/Tiles/Blaze Man.bin"
	even
Blaze_16x16_Unc:	binclude "Levels/Robot Master stages/Blocks/Blaze Man.bin"
	even
Blaze_128x128_Kos:	binclude "Levels/Robot Master stages/Chunks/Blaze Man.bin"
	even

Video_8x8_KosM:		binclude "Levels/Robot Master stages/Tiles/Video Man.bin"
	even
Video_16x16_Unc:	binclude "Levels/Robot Master stages/Blocks/Video Man.bin"
	even
Video_128x128_Kos:	binclude "Levels/Robot Master stages/Chunks/Video Man.bin"
	even

Smog_8x8_KosM:		binclude "Levels/Robot Master stages/Tiles/Smog Man.bin"
	even
Smog_16x16_Unc:		binclude "Levels/Robot Master stages/Blocks/Smog Man.bin"
	even
Smog_128x128_Kos:	binclude "Levels/Robot Master stages/Chunks/Smog Man.bin"
	even

Shark_8x8_KosM:		binclude "Levels/Robot Master stages/Tiles/Shark Man.bin"
	even
Shark_16x16_Unc:		binclude "Levels/Robot Master stages/Blocks/Shark Man.bin"
	even
Shark_128x128_Kos:	binclude "Levels/Robot Master stages/Chunks/Shark Man.bin"
	even

; ===========================================================================
; Collision data
; ===========================================================================

AngleArray:			binclude "Misc Data/Angle Map.bin"
	even
HeightMaps:			binclude "Misc Data/Height Maps.bin"
	even
HeightMapsRot:		binclude "Misc Data/Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

Test1_Solid:			binclude "Levels/Test/Collision/1.bin"
	even
Test2_Solid:			binclude "Levels/Test/Collision/2.bin"
	even

Blaze_Solid:			binclude "Levels/Robot Master stages/Collision/Blaze Man.bin"
	even
Video_Solid:			binclude "Levels/Robot Master stages/Collision/Video Man.bin"
	even
Smog_Solid:				binclude "Levels/Robot Master stages/Collision/Smog Man.bin"
	even
Shark_Solid:				binclude "Levels/Robot Master stages/Collision/Shark Man.bin"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

		align $8000

Test1_Layout:		binclude "Levels/Test/Layout/1.bin"
	even
Test2_Layout:		binclude "Levels/Test/Layout/2.bin"
	even

Blaze_Layout:		binclude "Levels/Robot Master stages/Layout/Blaze Man.bin"
	even
Video_Layout:		binclude "Levels/Robot Master stages/Layout/Video Man.bin"
	even
Smog_Layout:		binclude "Levels/Robot Master stages/Layout/Smog Man.bin"
	even
Shark_Layout:		binclude "Levels/Robot Master stages/Layout/Shark Man.bin"
	even

; ===========================================================================
; Level object data
; ===========================================================================

	ObjectLayoutBoundary
Test1_Sprites:		binclude "Levels/Test/Object Pos/1.bin"
	ObjectLayoutBoundary
Test2_Sprites:		binclude "Levels/Test/Object Pos/2.bin"
	ObjectLayoutBoundary
Blaze_Sprites:		binclude "Levels/Robot Master stages/Object Pos/Blaze Man.bin"
	ObjectLayoutBoundary
Video_Sprites:		binclude "Levels/Robot Master stages/Object Pos/Video Man.bin"
	ObjectLayoutBoundary
Smog_Sprites:		binclude "Levels/Robot Master stages/Object Pos/Smog Man.bin"
	ObjectLayoutBoundary
Shark_Sprites:		binclude "Levels/Robot Master stages/Object Pos/Shark Man.bin"
	ObjectLayoutBoundary
	even