; ===========================================================================
; Palette pointers
; ===========================================================================

PalPointers:				; palette address, RAM address, colours

; Main
ptr_Pal_Bass:			palp	Pal_Bass, Normal_palette_line_1, 16				; Bass
ptr_Pal_BassWep1:		palp	Pal_BassScorchBarrier, Normal_palette_line_1, 16; Bass
ptr_Pal_BassWep2:		palp	Pal_BassFreezeFrame, Normal_palette_line_1, 16	; Bass
ptr_Pal_BassWep3:		palp	Pal_BassToxicCloud, Normal_palette_line_1, 16	; Bass
ptr_Pal_BassWep4:		palp	Pal_BassFinShredder, Normal_palette_line_1, 16	; Bass
ptr_Pal_BassWep5:		palp	Pal_BassOrigamiStar, Normal_palette_line_1, 16	; Bass
ptr_Pal_BassWep6:		palp	Pal_Bass, Normal_palette_line_1, 16				; Bass
ptr_Pal_BassWep7:		palp	Pal_Bass, Normal_palette_line_1, 16				; Bass
ptr_Pal_BassWep8:		palp	Pal_BassMetalBlade, Normal_palette_line_1, 16	; Bass
ptr_Pal_BassUtil1:		palp	Pal_BassTreble, Normal_palette_line_1, 16		; Bass
ptr_Pal_BassUtil2:		palp	Pal_BassTreble, Normal_palette_line_1, 16		; Bass

ptr_Pal_CopyRobot:		palp	Pal_CopyRobot, Normal_palette_line_1, 16				; CopyRobot
ptr_Pal_CopyRobotWep1:	palp	Pal_CopyRobotScorchBarrier, Normal_palette_line_1, 16	; CopyRobot
ptr_Pal_CopyRobotWep2:	palp	Pal_CopyRobotFreezeFrame, Normal_palette_line_1, 16		; CopyRobot
ptr_Pal_CopyRobotWep3:	palp	Pal_CopyRobotToxicCloud, Normal_palette_line_1, 16		; CopyRobot
ptr_Pal_CopyRobotWep4:	palp	Pal_CopyRobotFinShredder, Normal_palette_line_1, 16		; CopyRobot
ptr_Pal_CopyRobotWep5:	palp	Pal_CopyRobotOrigamiStar, Normal_palette_line_1, 16		; CopyRobot
ptr_Pal_CopyRobotWep6:	palp	Pal_CopyRobot, Normal_palette_line_1, 16				; CopyRobot
ptr_Pal_CopyRobotWep7:	palp	Pal_CopyRobot, Normal_palette_line_1, 16				; CopyRobot
ptr_Pal_CopyRobotWep8:	palp	Pal_CopyRobotMetalBlade, Normal_palette_line_1, 16		; CopyRobot
ptr_Pal_CopyRobotUtil1:	palp	Pal_CopyRobotCarry, Normal_palette_line_1, 16			; CopyRobot
ptr_Pal_CopyRobotUtil2:	palp	Pal_CopyRobotSuperArrow, Normal_palette_line_1, 16		; CopyRobot

; Levels
ptr_Pal_GenericLevel:	palp	Pal_GenericLevel, Normal_palette_line_2, 48		; GenericLevel
ptr_Pal_Air:			palp	Pal_Air, Normal_palette_line_2, 48				; Air Man
ptr_Pal_MSLabyrinth:	palp	Pal_MSLabyrinth, Normal_palette_line_2, 48
ptr_Pal_MSLabyrinthUW:	palp	Pal_MSLabyrinthUW, Water_palette_line_2, 48

ptr_Pal_Blaze:			palp	Pal_Blaze, Normal_palette_line_2, 48		; Blaze Man
ptr_Pal_Video:			palp	Pal_Video, Normal_palette_line_2, 48		; Video Man
ptr_Pal_Smog:			palp	Pal_Smog, Normal_palette_line_2, 48			; Smog Man
ptr_Pal_Shark:			palp	Pal_Shark, Normal_palette_line_2, 48		; Shark Man
ptr_Pal_SharkUW:		palp	Pal_SharkUW, Water_palette_line_2, 48		; Shark Man (underwater)
ptr_Pal_Origami:		palp	Pal_Origami, Normal_palette_line_2, 48		; Origami Man
ptr_Pal_Unknown1:		palp	Pal_Unknown1, Normal_palette_line_2, 48		; Unknown 1
ptr_Pal_Unknown2:		palp	Pal_Unknown2, Normal_palette_line_2, 48		; Unknown 2
ptr_Pal_Unknown3:		palp	Pal_Unknown3, Normal_palette_line_2, 48		; Unknown 3

; Misc
ptr_Pal_Bass_LS:		palp	Pal_Bass, Normal_palette_line_3, 16			; Bass
ptr_Pal_CopyRobot_LS:	palp	Pal_CopyRobot, Normal_palette_line_3, 16	; CopyRobot
ptr_Pal_Controller:		palp	Pal_Controller, Normal_palette_line_1, 64	; Controller splash screen
ptr_Pal_Title:			palp	Pal_Title, Normal_palette_line_1, 64		; Title screen
ptr_Pal_StageSelect:	palp	Pal_StageSelect, Normal_palette_line_2, 48	; Stage select screen
ptr_Pal_SSelectBass:	palp	Pal_SSelectBass, Normal_palette_line_1, 16	; Bass
ptr_Pal_SSelectCRobo:	palp	Pal_SSelectCRobo, Normal_palette_line_1, 16	; CopyRobot
; ---------------------------------------------------------------------------

; Main
palid_Bass:				equ (ptr_Pal_Bass-PalPointers)/8				; Bass
palid_BassWep1:			equ (ptr_Pal_BassWep1-PalPointers)/8			; Bass
palid_BassWep2:			equ (ptr_Pal_BassWep2-PalPointers)/8			; Bass
palid_BassWep3:			equ (ptr_Pal_BassWep3-PalPointers)/8			; Bass
palid_BassWep4:			equ (ptr_Pal_BassWep4-PalPointers)/8			; Bass
palid_BassWep5:			equ (ptr_Pal_BassWep5-PalPointers)/8			; Bass
palid_BassWep6:			equ (ptr_Pal_BassWep6-PalPointers)/8			; Bass
palid_BassWep7:			equ (ptr_Pal_BassWep7-PalPointers)/8			; Bass
palid_BassWep8:			equ (ptr_Pal_BassWep8-PalPointers)/8			; Bass
palid_BassUtil1:		equ (ptr_Pal_BassUtil1-PalPointers)/8			; Bass
palid_BassUtil2:		equ (ptr_Pal_BassUtil2-PalPointers)/8			; Bass

palid_CopyRobot:		equ (ptr_Pal_CopyRobot-PalPointers)/8			; CopyRobot
palid_CopyRobotWep1:	equ (ptr_Pal_CopyRobotWep1-PalPointers)/8		; CopyRobot
palid_CopyRobotWep2:	equ (ptr_Pal_CopyRobotWep2-PalPointers)/8		; CopyRobot
palid_CopyRobotWep3:	equ (ptr_Pal_CopyRobotWep3-PalPointers)/8		; CopyRobot
palid_CopyRobotWep4:	equ (ptr_Pal_CopyRobotWep4-PalPointers)/8		; CopyRobot
palid_CopyRobotWep5:	equ (ptr_Pal_CopyRobotWep5-PalPointers)/8		; CopyRobot
palid_CopyRobotWep6:	equ (ptr_Pal_CopyRobotWep6-PalPointers)/8		; CopyRobot
palid_CopyRobotWep7:	equ (ptr_Pal_CopyRobotWep7-PalPointers)/8		; CopyRobot
palid_CopyRobotWep8:	equ (ptr_Pal_CopyRobotWep8-PalPointers)/8		; CopyRobot
palid_CopyRobotUtil1:	equ (ptr_Pal_CopyRobotUtil1-PalPointers)/8		; CopyRobot
palid_CopyRobotUtil2:	equ (ptr_Pal_CopyRobotUtil2-PalPointers)/8		; CopyRobot

; Levels
palid_GenericLevel:		equ (ptr_Pal_GenericLevel-PalPointers)/8				; GenericLevel
palid_Air:				equ (ptr_Pal_Air-PalPointers)/8				; Air Man
palid_MSLabyrinth:		equ	(ptr_Pal_MSLabyrinth-PalPointers)/8
palid_MSLabyrinthUW:	equ	(ptr_Pal_MSLabyrinthUW-PalPointers)/8

palid_Blaze:			equ (ptr_Pal_Blaze-PalPointers)/8				; Blaze Man
palid_Video:			equ (ptr_Pal_Video-PalPointers)/8				; Video Man
palid_Smog:				equ (ptr_Pal_Smog-PalPointers)/8				; Smog Man
palid_Shark:			equ (ptr_Pal_Shark-PalPointers)/8				; Shark Man
palid_SharkUW:			equ (ptr_Pal_SharkUW-PalPointers)/8				; Shark Man (underwater)
palid_Origami:			equ (ptr_Pal_Origami-PalPointers)/8				; Origami Man
palid_Unknown1:			equ (ptr_Pal_Unknown1-PalPointers)/8			; Unknown 1
palid_Unknown2:			equ (ptr_Pal_Unknown2-PalPointers)/8			; Unknown 2
palid_Unknown3:			equ (ptr_Pal_Unknown3-PalPointers)/8			; Unknown 3

; Misc
palid_Bass_LS:			equ (ptr_Pal_Bass_LS-PalPointers)/8				; Bass
palid_CopyRobot_LS:		equ (ptr_Pal_CopyRobot_LS-PalPointers)/8		; CopyRobot
palid_Controller:		equ	(ptr_Pal_Controller-PalPointers)/8
palid_Title:			equ	(ptr_Pal_Title-PalPointers)/8				; Title screen
palid_StageSelect:		equ	(ptr_Pal_StageSelect-PalPointers)/8			; Stage select screen
palid_SSelectBass:		equ (ptr_Pal_SSelectBass-PalPointers)/8			; Bass
palid_SSelectCRobo:		equ (ptr_Pal_SSelectCRobo-PalPointers)/8		; CopyRobot