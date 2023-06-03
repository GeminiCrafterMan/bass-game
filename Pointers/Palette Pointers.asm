; ===========================================================================
; Palette pointers
; ===========================================================================

PalPointers:				; palette address, RAM address, colours

; Main
ptr_Pal_Bass:			palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep1:		palp	Pal_BassScorchShield, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep2:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep3:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep4:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep5:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep6:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep7:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassWep8:		palp	Pal_Bass, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_BassUtil1:		palp	Pal_BassTreble, Normal_palette_line_1, 16		; 0 - Bass
ptr_Pal_WaterSonic:		palp	Pal_WaterSonic, Water_palette_line_1, 16	; 1 - Water Sonic	; get rid of this shit later

; Levels
ptr_Pal_Test:			palp	Pal_Test, Normal_palette_line_2, 48			; 2 - Test1
; ---------------------------------------------------------------------------

; Main
palid_Bass:				equ (ptr_Pal_Bass-PalPointers)/8				; 0 - Bass
palid_BassWep1:			equ (ptr_Pal_BassWep1-PalPointers)/8			; 0 - Bass
palid_BassWep2:			equ (ptr_Pal_BassWep2-PalPointers)/8			; 0 - Bass
palid_BassWep3:			equ (ptr_Pal_BassWep3-PalPointers)/8			; 0 - Bass
palid_BassWep4:			equ (ptr_Pal_BassWep4-PalPointers)/8			; 0 - Bass
palid_BassWep5:			equ (ptr_Pal_BassWep5-PalPointers)/8			; 0 - Bass
palid_BassWep6:			equ (ptr_Pal_BassWep6-PalPointers)/8			; 0 - Bass
palid_BassWep7:			equ (ptr_Pal_BassWep7-PalPointers)/8			; 0 - Bass
palid_BassWep8:			equ (ptr_Pal_BassWep8-PalPointers)/8			; 0 - Bass
palid_BassUtil1:		equ (ptr_Pal_BassUtil1-PalPointers)/8			; 0 - Bass
palid_WaterSonic:		equ (ptr_Pal_WaterSonic-PalPointers)/8			; 1 - Water Sonic

; Levels
palid_Test:				equ (ptr_Pal_Test-PalPointers)/8				; 2 - Test1