; Title - Mega Man 9 (CAPCOM, 2008)
; Arrangement: SNFOX
Title_RM9_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Title_RM9_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Title_RM9_DAC
	smpsHeaderFM        Title_RM9_FM1,	$00, $00
	smpsHeaderFM        Title_RM9_FM2,	$00, $00
	smpsHeaderFM        Title_RM9_FM3,	$00, $00
	smpsHeaderFM        Title_RM9_FM4,	$00, $00
	smpsHeaderFM        Title_RM9_FM5,	$00, $00
;	smpsHeaderFM        Title_RM9_FM6,	$00, $00
	smpsHeaderPSG       Title_RM9_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Title_RM9_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Title_RM9_PSG3,	$00, $00, $00, $00

; FM1 Data
Title_RM9_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsSetvoice        $02-1
	smpsAlterVol        $10
	dc.b	nBb4, $0A, $05, nBb4, nBb4, $0A, nC5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nC5
	smpsAlterVol        $F5
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC5, $0A, $05, nC5, nC5, $0A, nCs5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nCs5
	smpsAlterVol        $F5
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $0A, $05, nCs5, nCs5, $0A, nEb5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nEb5
	smpsAlterVol        $F5
	dc.b	nF5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nF5, nEb5, nBb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsSetvoice        $06-2
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	$05, nC5, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0F, nBb4, nF5, $0A, nEb5, $14, nCs5, nC5, nAb4, nBb4, $1E, nEb4
	dc.b	$05, nG4, nBb4, $0F, nC5, nBb4, $0A, nA4, $1E
	smpsAlterNote       $10
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$06, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08

Title_RM9_Loop04:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	smpsLoop            $00, $02, Title_RM9_Loop04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01
	smpsSetvoice        $02-1
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nBb4, $0A, $05, nBb4, nBb4, $0A, nC5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nC5
	smpsAlterVol        $F5
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC5, $0A, $05, nC5, nC5, $0A, nCs5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nCs5
	smpsAlterVol        $F5
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $0A, $05, nCs5, nCs5, $0A, nEb5
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nEb5
	smpsAlterVol        $F5
	dc.b	nF5, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nF5, nEb5, nBb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsSetvoice        $06-2
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	$05, nC5, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0F, nBb4, nF5, $0A, nEb5, $14, nCs5, nC5, nAb4, nBb4, $10, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02, nC5, $03, nCs5, $02, nEb5, $03, nF5, $02, nFs5, $03, nAb5
	dc.b	$02, nA5, $03, nBb5, $0A, nRst, $05, nBb5, $0A, nRst, $05, nBb5
	dc.b	$19, nRst
	smpsStop

; FM2 Data
Title_RM9_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsSetvoice        $02-1
	smpsAlterVol        $11
	dc.b	nCs4, $0A, $05, nCs4, nCs4, $0A, nEb4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nEb4
	smpsAlterVol        $F4
	dc.b	nF4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0A, $05, nEb4, nEb4, $0A, nF4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nF4
	smpsAlterVol        $F4
	dc.b	nFs4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0A, $05, nF4, nF4, $0A, nFs4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nFs4
	smpsAlterVol        $F4
	dc.b	nAb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nBb4, nAb4, nEb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4
	smpsSetvoice        $06-2
	smpsAlterVol        $06
	smpsAlterNote       $00
	dc.b	nEb4, $05, nAb4, nBb4, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0F, nFs4, nCs5, $0A, nC5, $14, nBb4, nAb4, nEb4, nF4, $1E, nBb3
	dc.b	$05, nCs4, nF4, $0F, nG4, nF4, $0A, $1E
	smpsAlterNote       $10
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08

Title_RM9_Loop03:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	smpsLoop            $00, $02, Title_RM9_Loop03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01
	smpsSetvoice        $02-1
	smpsAlterVol        $FA
	smpsAlterNote       $00
	dc.b	nCs4, $0A, $05, nCs4, nCs4, $0A, nEb4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nEb4
	smpsAlterVol        $F4
	dc.b	nF4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0A, $05, nEb4, nEb4, $0A, nF4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nF4
	smpsAlterVol        $F4
	dc.b	nFs4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0A, $05, nF4, nF4, $0A, nFs4
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nFs4
	smpsAlterVol        $F4
	dc.b	nAb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nBb4, nAb4, nEb4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4
	smpsSetvoice        $06-2
	smpsAlterVol        $06
	smpsAlterNote       $00
	dc.b	nEb4, $05, nAb4, nBb4, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0F, nFs4, nCs5, $0A, nC5, $14, nBb4, nAb4, nEb4, nF4, $10, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $02, nG4, $03, nAb4, $02, nBb4, $03, nC5, $02, nCs5, $03
	dc.b	nEb5, $02
	smpsAlterNote       $01
	dc.b	nE5, $03
	smpsAlterNote       $00
	dc.b	nF5, $0A, nRst, $05, nF5, $0A, nRst, $05, nF5, $19, nRst
	smpsStop

; FM3 Data
Title_RM9_FM3:
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsSetvoice        $02-1
	smpsAlterVol        $15
	dc.b	nAb3, $0A, $05, nAb3, nAb3, $0A, nBb3
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nBb3
	smpsAlterVol        $F5
	dc.b	nCs4, $1E, nBb3, $0A, $05, nBb3, nBb3, $0A, nCs4
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nCs4
	smpsAlterVol        $F5
	dc.b	nEb4, $1E, nAb3, $0A, $05, nAb3, nAb3, $0A, nBb3
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nBb3
	smpsAlterVol        $F5
	dc.b	nF4, $1E
	smpsSetvoice        $05-2
	smpsAlterVol        $F5
	smpsAlterNote       $10
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$1B, nEb3, $1E, nBb2, $14
	smpsSetvoice        $02-1
	smpsAlterVol        $09
	dc.b	nFs3, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nBb3, $0F, nFs3, nCs4, $0A, nC4, smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $15, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0F, nCs4, $0A, nC4, smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nAb3, $0A, $05, nAb3, nAb3, $0A, nBb3
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nBb3
	smpsAlterVol        $F5
	dc.b	nCs4, $1E, nBb3, $0A, $05, nBb3, nBb3, $0A, nCs4
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nCs4
	smpsAlterVol        $F5
	dc.b	nEb4, $1E, nAb3, $0A, $05, nAb3, nAb3, $0A, nBb3
	smpsAlterVol        $08
	dc.b	$05
	smpsAlterVol        $03
	dc.b	nBb3
	smpsAlterVol        $F5
	dc.b	nF4, $1E
	smpsSetvoice        $05-2
	smpsAlterVol        $F5
	smpsAlterNote       $10
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$1B, nEb3, $1E, nBb2, $14
	smpsSetvoice        $02-1
	smpsAlterVol        $09
	dc.b	nFs3, $0B, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nBb3, $0F, nFs3, nCs4, $0A, nC4, smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $15, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $10, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsSetvoice        $05-2
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	nBb4, $05, nF4, nCs4, nBb3, nF3, nCs3, nBb2, nF2, nBb2, $0A, nRst
	dc.b	$05, nBb2, $0A, nRst, $05, nBb2, $19, nRst
	smpsStop

; FM4 Data
Title_RM9_FM4:
	smpsSetvoice        $00
	smpsAlterVol        $07
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, $02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nB4, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, $02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC4, $02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nG3
	smpsSetvoice        $02-1
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	smpsAlterNote       $FA
	dc.b	nBb4, $0A, $05, nBb4, nBb4, $0A
	smpsAlterNote       $FD
	dc.b	nC5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nC5
	smpsAlterVol        $F5
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC5, $0A, $05, nC5, nC5, $0A, nCs5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nCs5
	smpsAlterVol        $F5
	smpsAlterNote       $FC
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs5, $0A, $05, nCs5, nCs5, $0A
	smpsAlterNote       $FC
	dc.b	nEb5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nEb5
	smpsAlterVol        $F5
	dc.b	nF5, $0B, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nEb5, $0A, nF5, nEb5
	smpsAlterNote       $FA
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01
	smpsSetvoice        $06-2
	smpsAlterVol        $03
	smpsAlterNote       $FA
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	nC5, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	$0F
	smpsAlterNote       $FA
	dc.b	nBb4
	smpsAlterNote       $FC
	dc.b	nF5, $0A, nEb5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC5, $0A, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $14
	smpsAlterNote       $FA
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nEb4, $05
	smpsAlterNote       $FB
	dc.b	nG4
	smpsAlterNote       $FA
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC5, $0A, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nBb4, $0A, nA4, $0B, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$06, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04

Title_RM9_Loop02:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	smpsLoop            $00, $02, Title_RM9_Loop02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsSetvoice        $02-1
	smpsAlterVol        $FD
	smpsAlterNote       $FA
	dc.b	nBb4, $0A, $05, nBb4, nBb4, $0A
	smpsAlterNote       $FD
	dc.b	nC5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nC5
	smpsAlterVol        $F5
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC5, $0A, $05, nC5, nC5, $0A, nCs5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nCs5
	smpsAlterVol        $F5
	smpsAlterNote       $FC
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs5, $0A, $05, nCs5, nCs5, $0A
	smpsAlterNote       $FC
	dc.b	nEb5
	smpsAlterVol        $09
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nEb5
	smpsAlterVol        $F5
	dc.b	nF5, $0B, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nEb5, $0A, nF5, nEb5
	smpsAlterNote       $FA
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01
	smpsSetvoice        $06-2
	smpsAlterVol        $03
	smpsAlterNote       $FA
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	nC5, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	$0F
	smpsAlterNote       $FA
	dc.b	nBb4
	smpsAlterNote       $FC
	dc.b	nF5, $0A, nEb5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs5, $0B, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC5, $0A, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $14
	smpsAlterNote       $FA
	dc.b	nBb4, $10, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	nC5, $03, nCs5, $02
	smpsAlterNote       $FC
	dc.b	nEb5, $03, nF5, $02, nFs5, $03
	smpsAlterNote       $FB
	dc.b	nAb5, $02
	smpsAlterNote       $FA
	dc.b	nA5, $03, nBb5, $0A, nRst, $05, nBb5, $0A, nRst, $05, nBb5, $14
	dc.b	nRst, $19
	smpsStop

; FM5 Data
Title_RM9_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsSetvoice        $03-1
	smpsAlterVol        $0C
	dc.b	nBb2, $0A, $05, nBb2, nBb2, $0A, nBb2, nBb2, nCs3, nF3, nBb3, nC3
	dc.b	nC3, $05, nC3, nC3, $0A, nC3, nC3, nEb3, nAb3, nC4, nCs3, nCs3
	dc.b	$05, nCs3, nCs3, $0A, nCs3, nCs3, nF3, nAb3, nCs4, nEb3, nEb3, $05
	dc.b	nEb3, nEb3, $0A, nEb3, nEb3, nBb3, nG3, nEb3, nFs3, nFs3, $05, nFs3
	dc.b	nFs3, $0A, nFs3, nFs3, nCs4, nBb3, nFs3, nF3, nF3, $05, nF3, nF3
	dc.b	$0A, nF3, nF3, nC4, nAb3, nF3, nEb3, nEb3, $05, nEb3, nEb3, $0A
	dc.b	nEb3, nEb3, nBb3, nG3, nEb3, nF3, nF3, $05, nF3, nF3, $0A, nF3
	dc.b	nF3, nA3, nC4, nF4, nBb2, nBb2, $05, nBb2, nBb2, $0A, nBb2, nBb2
	dc.b	nCs3, nF3, nBb3, nC3, nC3, $05, nC3, nC3, $0A, nC3, nC3, nEb3
	dc.b	nAb3, nC4, nCs3, nCs3, $05, nCs3, nCs3, $0A, nCs3, nCs3, nF3, nAb3
	dc.b	nCs4, nEb3, nEb3, $05, nEb3, nEb3, $0A, nEb3, nEb3, nBb3, nG3, nEb3
	dc.b	nFs3, nFs3, $05, nFs3, nFs3, $0A, nFs3, nFs3, nCs4, nBb3, nFs3, nAb3
	dc.b	nAb3, $05, nAb3, nAb3, $0A, nAb3, nAb3, nAb3, nBb3, nC4, nBb3, nBb3
	dc.b	$05, nBb3, nBb3, $0A, nBb3, nBb3, nBb3, nF3, nCs3, nBb3, $0F, nBb3
	dc.b	nBb3, $19, nRst
	smpsStop

; DAC Data
Title_RM9_DAC:
;	smpsSetvoice        $01
;	smpsAlterVol        $06
	smpsPan             panCenter, $00
	dc.b	dSnareS3, $05, $0F

Title_RM9_Loop00:
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst, $0F
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $1E
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $14
	smpsLoop            $00, $07, Title_RM9_Loop00
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst, $0F
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $1E
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $0A, dSnareS3

Title_RM9_Loop01:
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst, $0F
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $1E
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $14
	smpsLoop            $00, $06, Title_RM9_Loop01
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst, $0F
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, $1E
;	smpsSetvoice        $04
;	smpsAlterVol        $FE
	dc.b	dKickS3, $05, nRst
;	smpsSetvoice        $01
;	smpsAlterVol        $02
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $0F, dSnareS3, dSnareS3, $19, nRst
	smpsStop

; PSG1 Data
Title_RM9_PSG1:
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nD2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $03
	dc.b	nB1, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2, $02
	smpsAlterNote       $06
	dc.b	nBb1, $01
	smpsAlterNote       $07
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $0A
	dc.b	nEb1
	smpsAlterNote       $FD
	dc.b	nCs1, $02
	smpsAlterNote       $07
	dc.b	nB0, $01
	smpsAlterNote       $0B
	dc.b	nBb0
	smpsAlterNote       $0E
	dc.b	nA0, nAb0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $0A
	dc.b	nFs0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nBb1
	smpsPSGAlterVol     $FF

Title_RM9_Loop32:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop32
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop33:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop33
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop34:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop34
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop35:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop35
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop36:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop36
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop37:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop37
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop38:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop38
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0D
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop39:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop39
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3A:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3A
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3B:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3B
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FC
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3C
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3D
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3E:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3E
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop3F:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop3F
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nG1
	smpsPSGAlterVol     $FC
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop40:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop40
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop41:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop41
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop42:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop42
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop43:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop43
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop44:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop44
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop45:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop45
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop46:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop46
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop47:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop47
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop48:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop48
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0D
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop49:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop49
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4A:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4A
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4B:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4B
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4C
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4D
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4E:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4E
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$3F
	smpsPSGAlterVol     $FC

Title_RM9_Loop50:
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop4F:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop4F
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $02, Title_RM9_Loop50
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $FF

Title_RM9_Loop51:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop51
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$08, nRst, $19
	smpsStop

; PSG2 Data
Title_RM9_PSG2:
	dc.b	nRst, $14
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nCs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop14:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop14
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop15:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop15
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $FC
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop16:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop16
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop17:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop17
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop18:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop18
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop19:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop19
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1A
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1B:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1B
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1C
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1D
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs1
	smpsPSGAlterVol     $FC
	dc.b	nC1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1E
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop1F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop1F
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC1
	smpsPSGAlterVol     $FC
	dc.b	nBb0, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop20:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop20
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	nC1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop21:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop21
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC1
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop22:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop22
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop23:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop23
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop24:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop24
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop25:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop25
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs1
	smpsPSGAlterVol     $FC
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop26:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop26
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop27:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop27
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop28:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop28
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop29:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop29
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2A
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2B:
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2B
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$21
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2C
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2D
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs1
	smpsPSGAlterVol     $FC
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2E
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2B
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF

Title_RM9_Loop2F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop2F
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

Title_RM9_Loop30:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Title_RM9_Loop30
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$3F
	smpsPSGAlterVol     $FA

Title_RM9_Loop31:
	smpsAlterNote       $04
	dc.b	nE2, $01
	smpsAlterNote       $05
	dc.b	nD2, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $FB
	dc.b	nG1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $07
	dc.b	nE1
	smpsAlterNote       $09
	dc.b	nEb1, nD1, nCs1, $02
	smpsAlterNote       $FE
	dc.b	nB0, $01
	smpsAlterNote       $F9
	dc.b	nBb0
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, Title_RM9_Loop31
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $05
	dc.b	nD2, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $FB
	dc.b	nG1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $07
	dc.b	nE1
	smpsAlterNote       $09
	dc.b	nEb1, nD1, nCs1, $02
	smpsAlterNote       $FE
	dc.b	nB0, $01
	smpsAlterNote       $F9
	dc.b	nBb0
	smpsAlterNote       $F3
	dc.b	nA0
	smpsAlterNote       $09
	dc.b	nA0
	smpsAlterNote       $00
	dc.b	nAb0
	smpsAlterNote       $F6
	dc.b	nG0
	smpsAlterNote       $0C
	dc.b	nG0, nRst, $1E
	smpsStop

; PSG3 Data
Title_RM9_PSG3:
	smpsPSGAlterVol     $02
	smpsPSGform         $E7

Title_RM9_Loop05:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop05
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop06:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Title_RM9_Loop06
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F5

Title_RM9_Loop07:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop07

Title_RM9_Loop09:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop08:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop08
	smpsLoop            $01, $07, Title_RM9_Loop09

Title_RM9_Loop0E:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop0A:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Title_RM9_Loop0A
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F5

Title_RM9_Loop0B:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop0B

Title_RM9_Loop0D:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop0C:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop0C
	smpsLoop            $01, $0D, Title_RM9_Loop0D
	smpsLoop            $02, $0E, Title_RM9_Loop0E
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop0F:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Title_RM9_Loop0F
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F5

Title_RM9_Loop10:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop10

Title_RM9_Loop12:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop11:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Title_RM9_Loop11
	smpsLoop            $01, $0C, Title_RM9_Loop12
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Title_RM9_Loop13:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Title_RM9_Loop13
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $26
	smpsStop

Title_RM9_Voices:
;	Voice $00
;	$3B
;	$0D, $31, $00, $00, 	$5F, $5F, $5F, $5F, 	$04, $15, $1A, $0B
;	$00, $04, $00, $00, 	$01, $91, $FF, $F7, 	$00, $14, $00, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $0D
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $1A, $15, $04
	smpsVcDecayRate2    $00, $00, $04, $00
	smpsVcDecayLevel    $0F, $0F, $09, $00
	smpsVcReleaseRate   $07, $0F, $01, $01
	smpsVcTotalLevel    $00, $00, $14, $00

;	Voice $01
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $02
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $00, $07, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $07, $00, $1A

;	Voice $03
;	$10
;	$02, $05, $77, $72, 	$1F, $12, $1F, $5F, 	$04, $01, $04, $0C
;	$01, $01, $01, $02, 	$10, $18, $19, $18, 	$19, $20, $25, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $00, $00
	smpsVcCoarseFreq    $02, $07, $05, $02
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $02, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $09, $08, $00
	smpsVcTotalLevel    $00, $25, $20, $19

;	Voice $04
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

