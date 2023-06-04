; ===========================================================================
; Levels Data
; ===========================================================================

		;		1st 8x8 data		1st 16x16 data		1st 32x32 data	palette
LevelLoadBlock:
		levartptrs Test1_8x8_KosM, Test1_16x16_Unc, Test1_32x32_Kos, palid_Test1		; Test1
		levartptrs Test2_8x8_KosM, Test2_16x16_Unc, Test2_32x32_Kos, palid_Test2		; Test2
		levartptrs Test1_8x8_KosM, Test1_16x16_Unc, Test1_32x32_Kos, palid_Test1		; Test3
		levartptrs Test1_8x8_KosM, Test1_16x16_Unc, Test1_32x32_Kos, palid_Test1		; Test4

		zonewarning LevelLoadBlock,(12*4)

; ===========================================================================
; Levels Pointer Data
; ===========================================================================

LevelLoadPointer:

; Test1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts

; Test2
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null

; Test3
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null

; Test4
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l Test1_ScreenInit, Test1_BackgroundInit, Test1_ScreenEvent, Test1_BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null

		zonewarning LevelLoadPointer,(40*4)

; ===========================================================================
; Collision index pointers
; ===========================================================================

SolidIndexes:
		dc.l Test1_Solid		; Test1
		dc.l Test2_Solid		; Test2
		dc.l Test1_Solid		; Test3
		dc.l Test1_Solid		; Test4

		zonewarning SolidIndexes,(4*4)

; ===========================================================================
; Level layout index
; ===========================================================================

LevelPtrs:
		dc.l Test1_Layout		; Test1
		dc.l Test2_Layout		; Test2
		dc.l Test1_Layout		; Test3
		dc.l Test1_Layout		; Test4

		zonewarning LevelPtrs,(4*4)

; ===========================================================================
; Sprite locations index
; ===========================================================================

SpriteLocPtrs:
		dc.l Test1_Sprites		; Test1
		dc.l Test2_Sprites		; Test2
		dc.l Test1_Sprites		; Test3
		dc.l Test1_Sprites		; Test4

		zonewarning SpriteLocPtrs,(4*4)

; ===========================================================================
; Ring locations index
; ===========================================================================

RingLocPtrs:
		dc.l Test1_Rings		; Test1
		dc.l Test2_Rings		; Test2
		dc.l Test1_Rings		; Test3
		dc.l Test1_Rings		; Test4

		zonewarning RingLocPtrs,(4*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

Test1_8x8_KosM:		binclude "Levels/Test/Tiles/Primary.bin"
	even
Test1_16x16_Unc:	binclude "Levels/Test/Blocks/Primary.bin"
	even
Test1_32x32_Kos:	binclude "Levels/Test/Chunks/Primary.bin"
	even
Test2_8x8_KosM:		binclude "Levels/Test/Tiles/Secondary.bin"
	even
Test2_16x16_Unc:	binclude "Levels/Test/Blocks/Secondary.bin"
	even
Test2_32x32_Kos:	binclude "Levels/Test/Chunks/Secondary.bin"
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

; ===========================================================================
; Level layout data
; ===========================================================================

		align $8000

Test1_Layout:		binclude "Levels/Test/Layout/1.bin"
	even
Test2_Layout:		binclude "Levels/Test/Layout/2.bin"
	even

; ===========================================================================
; Level object data
; ===========================================================================

	ObjectLayoutBoundary
Test1_Sprites:		binclude "Levels/Test/Object Pos/1.bin"
	ObjectLayoutBoundary
Test2_Sprites:		binclude "Levels/Test/Object Pos/2.bin"
	ObjectLayoutBoundary
	even

; ===========================================================================
; Level ring data
; ===========================================================================

	RingLayoutBoundary
Test1_Rings:			binclude "Levels/Test/Ring Pos/1.bin"
	RingLayoutBoundary
Test2_Rings:			binclude "Levels/Test/Ring Pos/2.bin"
	RingLayoutBoundary
	even
