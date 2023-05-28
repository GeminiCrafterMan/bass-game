; ===========================================================================
; SWN-001 On The Fucking Sega Mega Drive
; TODO: better name
; ===========================================================================

		include	"_Includes/Error Handler/Debugger.asm"

		include	"Constants.asm"
		include	"Variables.asm"
		include	"Macros.asm"

EnableSRAM:				= 0	; change to 1 to enable SRAM
BackupSRAM:				= 1
AddressSRAM:			= 3	; 0 = odd+even; 2 = even only; 3 = odd only

; ---------------------------------------------------------------------------

StartOfROM:
Vectors:	dc.l v_systemstack&$FFFFFF	; Initial stack pointer value
		dc.l EntryPoint			; Start of program
		dc.l BusError			; Bus error
		dc.l AddressError		; Address error (4)
		dc.l IllegalInstr		; Illegal instruction
		dc.l ZeroDivide			; Division by zero
		dc.l ChkInstr			; CHK exception
		dc.l TrapvInstr			; TRAPV exception (8)
		dc.l PrivilegeViol		; Privilege violation
		dc.l Trace				; TRACE exception
		dc.l Line1010Emu		; Line-A emulator
		dc.l Line1111Emu		; Line-F emulator (12)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved) (16)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved) (20)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved)
		dc.l ErrorExcept		; Unused (reserved) (24)
		dc.l ErrorExcept		; Spurious exception
		dc.l ErrorTrap			; IRQ level 1
		dc.l ErrorTrap			; IRQ level 2
		dc.l ErrorTrap			; IRQ level 3 (28)
		dc.l HBlank				; IRQ level 4 (horizontal retrace interrupt)
		dc.l ErrorTrap			; IRQ level 5
		dc.l VBlank				; IRQ level 6 (vertical retrace interrupt)
		dc.l ErrorTrap			; IRQ level 7 (32)
		dc.l ErrorTrap			; TRAP #00 exception
		dc.l ErrorTrap			; TRAP #01 exception
		dc.l ErrorTrap			; TRAP #02 exception
		dc.l ErrorTrap			; TRAP #03 exception (36)
		dc.l ErrorTrap			; TRAP #04 exception
		dc.l ErrorTrap			; TRAP #05 exception
		dc.l ErrorTrap			; TRAP #06 exception
		dc.l ErrorTrap			; TRAP #07 exception (40)
		dc.l ErrorTrap			; TRAP #08 exception
		dc.l ErrorTrap			; TRAP #09 exception
		dc.l ErrorTrap			; TRAP #10 exception
		dc.l ErrorTrap			; TRAP #11 exception (44)
		dc.l ErrorTrap			; TRAP #12 exception
		dc.l ErrorTrap			; TRAP #13 exception
		dc.l ErrorTrap			; TRAP #14 exception
		dc.l ErrorTrap			; TRAP #15 exception (48)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)
		dc.l ErrorTrap			; Unused (reserved)

Header:			dc.b	"SEGA GENESIS    "
Copyright:		dc.b	"(C)SEGA XXXX.XXX"
Domestic_Name:	dc.b	"SWN-001 ON THE FUCKING SEGA MEGA DRIVE          "
Overseas_Name:	dc.b	"SWN-001 ON THE FUCKING SEGA MEGA DRIVE          "
Serial_Number:	dc.b	"GM MK-0000 -00"
Checksum:		dc.w	0
Input:			dc.b	"J               "
RomStartLoc:	dc.l	StartOfROM
RomEndLoc:	dc.l EndOfRom-1		; End address of ROM
		dc.l $FF0000		; Start address of RAM
		dc.l $FFFFFF		; End address of RAM
		if EnableSRAM=1
		dc.b $52, $41, $A0+(BackupSRAM<<6)+(AddressSRAM<<3), $20 ; SRAM support
		else
		dc.l $20202020
		endc
		dc.l $20202020		; SRAM start ($200001)
		dc.l $20202020		; SRAM end ($20xxxx)
		dc.b "                                                    " ; Notes (unused, anything can be put in this space, but it has to be 52 bytes.)
		dc.b "JUE             " ; Region (Country code)
SRAMSupport:
	if EnableSRAM=1
		CartRAM_Info:	dc.b	"RA"
		CartRAM_Type:	dc.b	$A0+(BackupSRAM<<6)+(AddressSRAM<<3),	$20
		CartRAMStartLoc:dc.l	SRAM_Size|SRAM_Type.SRAM_Start		; SRAM start ($200000)
		CartRAMEndLoc:	dc.l	SRAM_Size|SRAM_Type.SRAM_End		; SRAM end ($20xxxx)
	else
		CartRAM_Info:	dc.b	"  "
		CartRAM_Type:	dc.w	%10000000100000
		CartRAMStartLoc:dc.l	$20202020							; SRAM start ($200000)
		CartRAMEndLoc:	dc.l	$20202020							; SRAM end ($20xxxx)
	endif
Modem_Info:		dc.b	"                                                    "
Country_Code:	dc.b	"JUE             "
EndOfHeader:
		dc.w	0	; to make bizhawk work. stupid-ass eagle

; ---------------------------------------------------------------------------
; Init code from Sonic 1
; ---------------------------------------------------------------------------

		include "_Includes/Initialization.asm"

; ---------------------------------------------------------------------------
; Interrupt code from Sonic 1
; ---------------------------------------------------------------------------

		include "_Includes/Interrupts.asm"

; ---------------------------------------------------------------
; Error handling module
; ---------------------------------------------------------------

		include "_Includes/Error Handler/ErrorHandler.asm"

; end of 'ROM'
EndOfROM:
		END