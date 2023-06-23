Blues_Whistle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Blues_Whistle_Voices
	smpsHeaderChan      $05, $02
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       Blues_Whistle_DAC
	smpsHeaderFM        Blues_Whistle_FM1,	$00, $03
	smpsHeaderFM        Blues_Whistle_FM2,	$0C, $03
	smpsHeaderFM        Blues_Whistle_FM3,	$0C, $03
	smpsHeaderFM        Blues_Whistle_FM4,	$00, $00
	smpsHeaderPSG       Blues_Whistle_PSG1,	$F4, $03, $00, $00
	smpsHeaderPSG       Blues_Whistle_PSG2,	$F4, $06, $00, fTone_06

; FM1 Data
Blues_Whistle_FM1:
	smpsStop

; FM2 Data
Blues_Whistle_FM2:
	smpsStop

; FM3 Data
Blues_Whistle_FM3:
	smpsStop

; FM4 Data
Blues_Whistle_FM4:
	smpsStop

; DAC Data
Blues_Whistle_DAC:
	smpsStop

; PSG1 Data
Blues_Whistle_PSG1:
	smpsModSet          $11, $02, $01, $01
	dc.b	nG4, $0C, nBb4, nC5, $3C, nBb4, $07, smpsNoAttack, nBb4, nD5, $28, nRst, $03
	;dc.b	$06, nG4, $0C, nBb4, $09, smpsNoAttack, nBb4, nCs5, $18, nC5, nBb4, $0C
	;dc.b	nF4, nG4, $24, nRst, $0C, nG4, nBb4, nC5, $3C, nBb4, $09, smpsNoAttack
	;dc.b	nBb4, nD5, $28, nRst, $06, nG4, $0C, nBb4, $09, smpsNoAttack, nBb4, nCs5
	;dc.b	$18, nC5, nBb4, $0C, nF4, nG4, $24, nBb4, $30, nC5, nRst, $09
	;dc.b	nRst, $03
	smpsStop

; PSG2 Data
Blues_Whistle_PSG2:
	dc.b	nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nG4, $0C, nBb4, nC5, $3C, nBb4, $07, smpsNoAttack, nBb4, nD5, $28, nRst, $03
	;dc.b	nBb4, $09, smpsNoAttack, $18, nC5, nBb4, $0C, nF4, nG4, $24, nRst, $0C
	;dc.b	nG4, nBb4, nC5, $3C, nBb4, $09, smpsNoAttack, nRst, $06, nG4, $0C, nBb4
	;dc.b	$09, smpsNoAttack, $18, nC5, nBb4, $0C, nF4, nG4, $24, nBb4, $30, nC5
	;dc.b	nRst, $09, nRst, $03
	smpsStop

; Song seems to not use any FM voices
Blues_Whistle_Voices:
