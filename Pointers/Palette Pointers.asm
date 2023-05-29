; ===========================================================================
; Palette pointers
; ===========================================================================

PalPointers:				; palette address, RAM address, colours

; Main
ptr_Pal_Bass:			palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_WaterSonic:		palp	Pal_WaterSonic, Water_palette_line_1, 16	; 1 - Water Sonic

; Levels
ptr_Pal_Test:			palp	Pal_Test, Normal_palette_line_2, 48			; 2 - Test1
; ---------------------------------------------------------------------------

; Main
palid_Bass:				equ (ptr_Pal_Bass-PalPointers)/8				; 0 - Bass
palid_WaterSonic:		equ (ptr_Pal_WaterSonic-PalPointers)/8			; 1 - Water Sonic

; Levels
palid_Test:				equ (ptr_Pal_Test-PalPointers)/8				; 2 - Test1