Logo_CAPCOM_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Logo_CAPCOM_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       Logo_CAPCOM_DAC
	smpsHeaderFM        Logo_CAPCOM_FM1,	$18, $0A
	smpsHeaderFM        Logo_CAPCOM_FM2,	$18, $0A
	smpsHeaderFM        Logo_CAPCOM_FM3,	$18, $0E
	smpsHeaderFM        Logo_CAPCOM_FM4,	$18, $0E
	smpsHeaderFM        Logo_CAPCOM_FM5,	$18, $0B
	smpsHeaderPSG       Logo_CAPCOM_PSG1,	$F4, $00, $00, $00
	smpsHeaderPSG       Logo_CAPCOM_PSG2,	$F4, $00, $00, $00
	smpsHeaderPSG       Logo_CAPCOM_PSG3,	$F4, $00, $00, $00

; FM1 Data
Logo_CAPCOM_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $14
	dc.b	nRst, $13
	smpsCall            Logo_CAPCOM_Call00
	dc.b	nRst, $0F, nA3, $42
	smpsStop

Logo_CAPCOM_Call00:
	dc.b	nE4, $04
	smpsAlterVol        $FE
	dc.b	nAb4, nCs4
	smpsAlterVol        $FE
	dc.b	nE4, nA3
	smpsAlterVol        $FE
	dc.b	nCs4, nAb3
	smpsAlterVol        $FE
	dc.b	nCs4, nA3
	smpsAlterVol        $FE
	dc.b	nFs3, nE3, nA3
	smpsLoop            $00, $02, Logo_CAPCOM_Call00
	smpsReturn

; FM2 Data
Logo_CAPCOM_FM2:
	smpsSetvoice        $00
	smpsAlterNote       $02
	smpsAlterVol        $1C
	dc.b	nRst, $19
	smpsCall            Logo_CAPCOM_Call00
	dc.b	nRst, $0F, nA3, $3C
	smpsStop

; FM3 Data
Logo_CAPCOM_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $60, nRst, $1F, nFs3, $45
	smpsStop

; FM4 Data
Logo_CAPCOM_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $60, nRst, $1C, nE3, $48
	smpsStop

; FM5 Data
Logo_CAPCOM_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $60, nRst, $19, nD3, $4B
	smpsStop

; DAC Data
Logo_CAPCOM_DAC:
; PSG1 Data
Logo_CAPCOM_PSG1:
; PSG2 Data
Logo_CAPCOM_PSG2:
; PSG3 Data
Logo_CAPCOM_PSG3:
	smpsStop

Logo_CAPCOM_Voices:
;	Voice $00
;	$1A
;	$30, $07, $24, $01, 	$9C, $DB, $9C, $D7, 	$04, $09, $00, $04
;	$02, $07, $00, $02, 	$07, $A2, $56, $92, 	$20, $32, $37, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $03
	smpsVcCoarseFreq    $01, $04, $07, $00
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $17, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $00, $09, $04
	smpsVcDecayRate2    $02, $00, $07, $02
	smpsVcDecayLevel    $09, $05, $0A, $00
	smpsVcReleaseRate   $02, $06, $02, $07
	smpsVcTotalLevel    $00, $37, $32, $20

