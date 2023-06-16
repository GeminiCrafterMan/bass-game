; ===========================================================================
; Palette pointers
; ===========================================================================

PalPointers:				; palette address, RAM address, colours

; Main
ptr_Pal_Bass:			palp	Pal_Bass, Normal_palette_line_1, 16				; 0 - Bass
ptr_Pal_BassWep1:		palp	Pal_BassScorchShield, Normal_palette_line_1, 16	; 0 - Bass
ptr_Pal_BassWep2:		palp	Pal_BassFreezeFrame, Normal_palette_line_1, 16	; 0 - Bass
ptr_Pal_BassWep3:		palp	Pal_BassWep3, Normal_palette_line_1, 16			; 0 - Bass
ptr_Pal_BassWep4:		palp	Pal_BassWep4, Normal_palette_line_1, 16			; 0 - Bass
ptr_Pal_BassWep5:		palp	Pal_Bass, Normal_palette_line_1, 16				; 0 - Bass
ptr_Pal_BassWep6:		palp	Pal_Bass, Normal_palette_line_1, 16				; 0 - Bass
ptr_Pal_BassWep7:		palp	Pal_Bass, Normal_palette_line_1, 16				; 0 - Bass
ptr_Pal_BassWep8:		palp	Pal_BassMetalBlade, Normal_palette_line_1, 16	; 0 - Bass
ptr_Pal_BassUtil1:		palp	Pal_BassTreble, Normal_palette_line_1, 16		; 0 - Bass

ptr_Pal_CopyRobot:		palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep1:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep2:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep3:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep4:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep5:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep6:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep7:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot
ptr_Pal_CopyRobotWep8:	palp	Pal_CopyRobotMetalBlade, Normal_palette_line_1, 16	; 0 - CopyRobot
ptr_Pal_CopyRobotUtil1:	palp	Pal_CopyRobot, Normal_palette_line_1, 16			; 0 - CopyRobot

ptr_Pal_WaterSonic:		palp	Pal_WaterSonic, Water_palette_line_1, 16	; 1 - Water Sonic	; get rid of this shit later

; Levels
ptr_Pal_Test1:			palp	Pal_Test1, Normal_palette_line_2, 48		; 2 - Test1
ptr_Pal_Test2:			palp	Pal_Test2, Normal_palette_line_2, 48		; 2 - Test1

ptr_Pal_Blaze:			palp	Pal_Blaze, Normal_palette_line_2, 48		; 2 - Test1
ptr_Pal_Video:			palp	Pal_Video, Normal_palette_line_2, 48		; 2 - Test1
ptr_Pal_Smog:			palp	Pal_Smog, Normal_palette_line_2, 48			; 2 - Test1

; Misc
ptr_Pal_Bass_LS:		palp	Pal_Bass, Normal_palette_line_3, 16			; 0 - Bass
ptr_Pal_CopyRobot_LS:	palp	Pal_CopyRobot, Normal_palette_line_3, 16	; 0 - CopyRobot
; ---------------------------------------------------------------------------

; Main
palid_Bass:				equ (ptr_Pal_Bass-PalPointers)/8				; 0 - Bass
palid_BassWep1:			equ (ptr_Pal_BassWep1-PalPointers)/8			; 1 - Bass
palid_BassWep2:			equ (ptr_Pal_BassWep2-PalPointers)/8			; 2 - Bass
palid_BassWep3:			equ (ptr_Pal_BassWep3-PalPointers)/8			; 3 - Bass
palid_BassWep4:			equ (ptr_Pal_BassWep4-PalPointers)/8			; 4 - Bass
palid_BassWep5:			equ (ptr_Pal_BassWep5-PalPointers)/8			; 5 - Bass
palid_BassWep6:			equ (ptr_Pal_BassWep6-PalPointers)/8			; 6 - Bass
palid_BassWep7:			equ (ptr_Pal_BassWep7-PalPointers)/8			; 7 - Bass
palid_BassWep8:			equ (ptr_Pal_BassWep8-PalPointers)/8			; 8 - Bass
palid_BassUtil1:		equ (ptr_Pal_BassUtil1-PalPointers)/8			; 9 - Bass

palid_CopyRobot:		equ (ptr_Pal_CopyRobot-PalPointers)/8			; 0 - CopyRobot
palid_CopyRobotWep1:	equ (ptr_Pal_CopyRobotWep1-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep2:	equ (ptr_Pal_CopyRobotWep2-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep3:	equ (ptr_Pal_CopyRobotWep3-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep4:	equ (ptr_Pal_CopyRobotWep4-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep5:	equ (ptr_Pal_CopyRobotWep5-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep6:	equ (ptr_Pal_CopyRobotWep6-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep7:	equ (ptr_Pal_CopyRobotWep7-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotWep8:	equ (ptr_Pal_CopyRobotWep8-PalPointers)/8		; 0 - CopyRobot
palid_CopyRobotUtil1:	equ (ptr_Pal_CopyRobotUtil1-PalPointers)/8		; 0 - CopyRobot

palid_WaterSonic:		equ (ptr_Pal_WaterSonic-PalPointers)/8			; 1 - Water Sonic

; Levels
palid_Test1:			equ (ptr_Pal_Test1-PalPointers)/8				; 2 - Test1
palid_Test2:			equ (ptr_Pal_Test2-PalPointers)/8				; 2 - Test1

palid_Blaze:			equ (ptr_Pal_Blaze-PalPointers)/8				; 2 - Test1
palid_Video:			equ (ptr_Pal_Video-PalPointers)/8				; 2 - Test1
palid_Smog:				equ (ptr_Pal_Smog-PalPointers)/8				; 2 - Test1

; Misc
palid_Bass_LS:			equ (ptr_Pal_Bass_LS-PalPointers)/8				; 0 - Bass
palid_CopyRobot_LS:		equ (ptr_Pal_CopyRobot_LS-PalPointers)/8		; 0 - CopyRobot