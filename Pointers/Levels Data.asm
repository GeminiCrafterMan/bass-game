; ===========================================================================
; Levels Data
; ===========================================================================

		;		1st 8x8 data		1st 16x16 data		1st 128x128 data	palette
LevelLoadBlock:
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs Air_8x8_KosM,	Air_16x16_Unc,Air_128x128_Kos,palid_Air		; Air Man
		levartptrs MSLabyrinth_8x8_KosM,	MSLabyrinth_16x16_Unc,MSLabyrinth_128x128_Kos,palid_MSLabyrinth			; Test3
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; Test4

		levartptrs Blaze_8x8_KosM,	Blaze_16x16_Unc,Blaze_128x128_Kos,	palid_Blaze		; Blaze Man
		levartptrs Video_8x8_KosM,	Video_16x16_Unc,Video_128x128_Kos,	palid_Video		; Video Man
		levartptrs Smog_8x8_KosM,	Smog_16x16_Unc,	Smog_128x128_Kos,	palid_Smog		; Smog Man
		levartptrs Shark_8x8_KosM,	Shark_16x16_Unc,Shark_128x128_Kos,	palid_Shark		; Shark Man
		levartptrs Origami_8x8_KosM,Origami_16x16_Unc,Origami_128x128_Kos,palid_Origami	; Origami Man
		levartptrs Unknown1_8x8_KosM,	Unknown1_16x16_Unc,Unknown1_128x128_Kos,palid_Unknown1		; Unknown 1
		levartptrs Unknown2_8x8_KosM,	Unknown2_16x16_Unc,Unknown2_128x128_Kos,palid_Unknown2		; Unknown 2
		levartptrs Unknown3_8x8_KosM,	Unknown3_16x16_Unc,Unknown3_128x128_Kos,palid_Unknown3		; Unknown 3

		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel

		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel
		levartptrs GenericLevel_8x8_KosM,	GenericLevel_16x16_Unc,GenericLevel_128x128_Kos,palid_GenericLevel		; GenericLevel

		zonewarning LevelLoadBlock,(12*4)

; ===========================================================================
; Levels Pointer Data
; ===========================================================================

LevelLoadPointer:

	rept 4
; GenericLevel
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l GenericLevel_ScreenInit, GenericLevel_BackgroundInit, GenericLevel_ScreenEvent, GenericLevel_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr

; Blaze Man
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l BlazeMan_ScreenInit, BlazeMan_BackgroundInit, BlazeMan_ScreenEvent, BlazeMan_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Video Man
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l VideoMan_ScreenInit, VideoMan_BackgroundInit, VideoMan_ScreenEvent, VideoMan_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Smog Man
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l SmogMan_ScreenInit, SmogMan_BackgroundInit, SmogMan_ScreenEvent, SmogMan_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Shark Man
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l SharkMan_ScreenInit, SharkMan_BackgroundInit, SharkMan_ScreenEvent, SharkMan_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts

; Origami Man
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l OrigamiMan_ScreenInit, OrigamiMan_BackgroundInit, OrigamiMan_ScreenEvent, OrigamiMan_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Unknown 1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Unknown1_ScreenInit, Unknown1_BackgroundInit, Unknown1_ScreenEvent, Unknown1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Unknown 2
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Unknown2_ScreenInit, Unknown2_BackgroundInit, Unknown2_ScreenEvent, Unknown2_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
; Unknown 3
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l Unknown3_ScreenInit, Unknown3_BackgroundInit, Unknown3_ScreenEvent, Unknown3_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts

	rept 8
; GenericLevel
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l GenericLevel_ScreenInit, GenericLevel_BackgroundInit, GenericLevel_ScreenEvent, GenericLevel_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr

	rept 4
; GenericLevel
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l GenericLevel_ScreenInit, GenericLevel_BackgroundInit, GenericLevel_ScreenEvent, GenericLevel_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts
	endr

		zonewarning LevelLoadPointer,(40*4)

; ===========================================================================
; Collision index pointers
; ===========================================================================

SolidIndexes:
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l Air_Solid	; Air Man
		dc.l MSLabyrinth_Solid	; MS Labyrinth
		dc.l GenericLevel_Solid	; Test4

		dc.l Blaze_Solid	; Blaze Man
		dc.l Video_Solid	; Video Man
		dc.l Smog_Solid		; Smog Man
		dc.l Shark_Solid	; Shark Man
		dc.l Origami_Solid	; Origami Man
		dc.l Unknown1_Solid	; Unknown 1
		dc.l Unknown2_Solid	; Unknown 2
		dc.l Unknown3_Solid	; Unknown 3

		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel

		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel
		dc.l GenericLevel_Solid	; GenericLevel

		zonewarning SolidIndexes,(4*4)

; ===========================================================================
; Level layout index
; ===========================================================================

LevelPtrs:
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l Air_Layout	; Air Man
		dc.l MSLabyrinth_Layout	; MS Labyrinth
		dc.l GenericLevel_Layout	; Test4

		dc.l Blaze_Layout	; Blaze Man
		dc.l Video_Layout	; Video Man
		dc.l Smog_Layout	; Smog Man
		dc.l Shark_Layout	; Shark Man
		dc.l Origami_Layout	; Origami Man
		dc.l Unknown1_Layout	; Unknown 1
		dc.l Unknown2_Layout	; Unknown 2
		dc.l Unknown3_Layout	; Unknown 3

		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel

		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel
		dc.l GenericLevel_Layout	; GenericLevel

		zonewarning LevelPtrs,(4*4)

; ===========================================================================
; Sprite locations index
; ===========================================================================

SpriteLocPtrs:
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l Air_Sprites	; Air Man
		dc.l MSLabyrinth_Sprites	; MS Labyrinth
		dc.l GenericLevel_Sprites	; Test4

		dc.l Blaze_Sprites	; Blaze Man
		dc.l Video_Sprites	; Video Man
		dc.l Smog_Sprites	; Smog Man
		dc.l Shark_Sprites	; Shark Man
		dc.l Origami_Sprites; Origami Man
		dc.l Unknown1_Sprites	; Unknown 1
		dc.l Unknown2_Sprites	; Unknown 2
		dc.l Unknown3_Sprites	; Unknown 3

		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel

		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		dc.l GenericLevel_Sprites	; GenericLevel
		zonewarning SpriteLocPtrs,(4*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

GenericLevel_8x8_KosM:		binclude "Levels/Test/Tiles/Primary.bin"
	even
GenericLevel_16x16_Unc:		binclude "Levels/Test/Blocks/Primary.bin"
	even
GenericLevel_128x128_Kos:	binclude "Levels/Test/Chunks/Primary.bin"
	even
Air_8x8_KosM:				binclude "Levels/Test/Tiles/Secondary.bin"
	even
Air_16x16_Unc:				binclude "Levels/Test/Blocks/Secondary.bin"
	even
Air_128x128_Kos:			binclude "Levels/Test/Chunks/Secondary.bin"
	even
MSLabyrinth_8x8_KosM:		binclude "Levels/Test/Tiles/Tertiary.bin"
	even
MSLabyrinth_16x16_Unc:		binclude "Levels/Test/Blocks/Tertiary.bin"
	even
MSLabyrinth_128x128_Kos:	binclude "Levels/Test/Chunks/Tertiary.bin"
	even

Blaze_8x8_KosM:				binclude "Levels/Robot Master stages/Tiles/Blaze Man.bin"
	even
Blaze_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Blaze Man.bin"
	even
Blaze_128x128_Kos:			binclude "Levels/Robot Master stages/Chunks/Blaze Man.bin"
	even

Video_8x8_KosM:				binclude "Levels/Robot Master stages/Tiles/Video Man.bin"
	even
Video_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Video Man.bin"
	even
Video_128x128_Kos:			binclude "Levels/Robot Master stages/Chunks/Video Man.bin"
	even

Smog_8x8_KosM:				binclude "Levels/Robot Master stages/Tiles/Smog Man.bin"
	even
Smog_16x16_Unc:				binclude "Levels/Robot Master stages/Blocks/Smog Man.bin"
	even
Smog_128x128_Kos:			binclude "Levels/Robot Master stages/Chunks/Smog Man.bin"
	even

Shark_8x8_KosM:				binclude "Levels/Robot Master stages/Tiles/Shark Man.bin"
	even
Shark_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Shark Man.bin"
	even
Shark_128x128_Kos:			binclude "Levels/Robot Master stages/Chunks/Shark Man.bin"
	even

Origami_8x8_KosM:			binclude "Levels/Robot Master stages/Tiles/Origami Man.bin"
	even
Origami_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Origami Man.bin"
	even
Origami_128x128_Kos:		binclude "Levels/Robot Master stages/Chunks/Origami Man.bin"
	even

Unknown1_8x8_KosM:			binclude "Levels/Robot Master stages/Tiles/Unknown 1.bin"
	even
Unknown1_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Unknown 1.bin"
	even
Unknown1_128x128_Kos:		binclude "Levels/Robot Master stages/Chunks/Unknown 1.bin"
	even

Unknown2_8x8_KosM:			binclude "Levels/Robot Master stages/Tiles/Unknown 2.bin"
	even
Unknown2_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Unknown 2.bin"
	even
Unknown2_128x128_Kos:		binclude "Levels/Robot Master stages/Chunks/Unknown 2.bin"
	even

Unknown3_8x8_KosM:			binclude "Levels/Robot Master stages/Tiles/Unknown 3.bin"
	even
Unknown3_16x16_Unc:			binclude "Levels/Robot Master stages/Blocks/Unknown 3.bin"
	even
Unknown3_128x128_Kos:		binclude "Levels/Robot Master stages/Chunks/Unknown 3.bin"
	even

; ===========================================================================
; Collision data
; ===========================================================================

AngleArray:					binclude "Misc Data/Angle Map.bin"
	even
HeightMaps:					binclude "Misc Data/Height Maps.bin"
	even
HeightMapsRot:				binclude "Misc Data/Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

GenericLevel_Solid:			binclude "Levels/Test/Collision/1.bin"
	even
Air_Solid:					binclude "Levels/Test/Collision/2.bin"
	even
MSLabyrinth_Solid:			binclude "Levels/Test/Collision/3.bin"
	even

Blaze_Solid:				binclude "Levels/Robot Master stages/Collision/Blaze Man.bin"
	even
Video_Solid:				binclude "Levels/Robot Master stages/Collision/Video Man.bin"
	even
Smog_Solid:					binclude "Levels/Robot Master stages/Collision/Smog Man.bin"
	even
Shark_Solid:				binclude "Levels/Robot Master stages/Collision/Shark Man.bin"
	even
Origami_Solid:				binclude "Levels/Robot Master stages/Collision/Origami Man.bin"
	even
Unknown1_Solid:				binclude "Levels/Robot Master stages/Collision/Unknown 1.bin"
	even
Unknown2_Solid:				binclude "Levels/Robot Master stages/Collision/Unknown 2.bin"
	even
Unknown3_Solid:				binclude "Levels/Robot Master stages/Collision/Unknown 3.bin"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

		align $8000

GenericLevel_Layout:		binclude "Levels/Test/Layout/1.bin"
	even
Air_Layout:					binclude "Levels/Test/Layout/2.bin"
	even
MSLabyrinth_Layout:			binclude "Levels/Test/Layout/3.bin"
	even

Blaze_Layout:				binclude "Levels/Robot Master stages/Layout/Blaze Man.bin"
	even
Video_Layout:				binclude "Levels/Robot Master stages/Layout/Video Man.bin"
	even
Smog_Layout:				binclude "Levels/Robot Master stages/Layout/Smog Man.bin"
	even
Shark_Layout:				binclude "Levels/Robot Master stages/Layout/Shark Man.bin"
	even
Origami_Layout:				binclude "Levels/Robot Master stages/Layout/Origami Man.bin"
	even
Unknown1_Layout:			binclude "Levels/Robot Master stages/Layout/Unknown 1.bin"
	even
Unknown2_Layout:			binclude "Levels/Robot Master stages/Layout/Unknown 2.bin"
	even
Unknown3_Layout:			binclude "Levels/Robot Master stages/Layout/Unknown 3.bin"
	even

; ===========================================================================
; Level object data
; ===========================================================================

	ObjectLayoutBoundary
GenericLevel_Sprites:		binclude "Levels/Test/Object Pos/1.bin"
	ObjectLayoutBoundary
Air_Sprites:				binclude "Levels/Test/Object Pos/2.bin"
	ObjectLayoutBoundary
MSLabyrinth_Sprites:		binclude "Levels/Test/Object Pos/3.bin"
	ObjectLayoutBoundary
Blaze_Sprites:				binclude "Levels/Robot Master stages/Object Pos/Blaze Man.bin"
	ObjectLayoutBoundary
Video_Sprites:				binclude "Levels/Robot Master stages/Object Pos/Video Man.bin"
	ObjectLayoutBoundary
Smog_Sprites:				binclude "Levels/Robot Master stages/Object Pos/Smog Man.bin"
	ObjectLayoutBoundary
Shark_Sprites:				binclude "Levels/Robot Master stages/Object Pos/Shark Man.bin"
	ObjectLayoutBoundary
Origami_Sprites:			binclude "Levels/Robot Master stages/Object Pos/Origami Man.bin"
	ObjectLayoutBoundary
Unknown1_Sprites:			binclude "Levels/Robot Master stages/Object Pos/Unknown 1.bin"
	ObjectLayoutBoundary
Unknown2_Sprites:			binclude "Levels/Robot Master stages/Object Pos/Unknown 2.bin"
	ObjectLayoutBoundary
Unknown3_Sprites:			binclude "Levels/Robot Master stages/Object Pos/Unknown 3.bin"
	ObjectLayoutBoundary
	even