Air_Man_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Air_Man_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       Air_Man_DAC
	smpsHeaderFM        Air_Man_FM1,	$00, $14
	smpsHeaderFM        Air_Man_FM2,	$00, $0D
	smpsHeaderFM        Air_Man_FM3,	$00, $16
	smpsHeaderFM        Air_Man_FM4,	$00, $16
	smpsHeaderFM        Air_Man_FM5,	$00, $1F
	smpsHeaderPSG       Air_Man_PSG1,	$F4, $02, $00, fTone_09
	smpsHeaderPSG       Air_Man_PSG2,	$F4, $02, $00, fTone_09
	smpsHeaderPSG       Air_Man_PSG3,	$F4, $01, $00, fTone_09

; FM1 Data
Air_Man_FM1:
	smpsSetvoice        $04

Air_Man_Jump00:
	smpsModSet          $13, $01, $05, $04
	dc.b	nF5, $0C
	smpsCall            Air_Man_Call08
	dc.b	nRst, $0C
	smpsCall            Air_Man_Call08
	dc.b	nRst, $06, nBb4, nC5, nBb4, nCs5, nBb4, nEb5, nBb4, nC6, nC6, nC6
	dc.b	nC6, nC6, nC6, nRst, nBb5, $18, nF5, $06, nAb5, nBb5, nRst, nBb5
	dc.b	nRst, nBb5, nRst, nF5, nAb5, $0C, nA5, nBb5, $12, nAb5, $0C, nBb5
	dc.b	nF6, $06, smpsNoAttack, $18, nBb5, $06, nA5, $0C, nAb5, $18, nEb5, $06
	dc.b	nF5, nAb5, nRst, nAb5, nRst, nAb5, nFs5, nAb5, nRst, nC6, nBb5, nAb5
	dc.b	$18, nEb5, $0C, nF5, $12, nRst, $06, nAb5, nAb5, nAb5, nAb5, nA5
	dc.b	nRst, nBb5, $0C
	smpsCall            Air_Man_Call04
	smpsModSet          $00, $01, $F3, $45
	dc.b	nAb7, $18
	smpsModOff
	dc.b	nCs6, $06, nC6, $0C, nBb5, $06, nRst, nBb5, nBb5, nAb5, nBb5, $0C
	dc.b	nRst, $06, nBb5, nRst, nBb5, nAb5, nBb5, nRst, nCs6, nRst, nF6, nRst
	dc.b	nEb6, $24, nAb6, $12, nFs6, $0C, nF6, nEb6, $06, nBb5, nRst, nBb5
	dc.b	nBb5, nAb5, nBb5, $0C, nRst, $06, nBb5, nRst, nBb5, nAb5, nBb5, nRst
	dc.b	nCs6, nRst, nF6, nRst, nEb6, $12, $06, nC6, nRst, nF6, $06, smpsNoAttack
	dc.b	$18, nF5, $06, nCs5, $0C, nEb5, $06
	smpsJump            Air_Man_Jump00

Air_Man_Call08:
	dc.b	nAb5, $06, nG5, $0C, nFs5, nF5, nAb5, nG5, nFs5, $12, nF5, $18
	dc.b	$06, nEb5, nCs5, nC5, $0C, nCs5, $06, nEb5, nAb4, $0C, nBb4, $06
	dc.b	nC5, nBb4
	smpsReturn

Air_Man_Call04:
	dc.b	nAb5, $06, nF5, nBb5, nCs6, nBb5, nCs6, nEb6, nCs6, $03, nEb6, nF6
	dc.b	nAb6, nF6, nAb6, nBb6, nCs7, nBb6, nC7, nBb6, nA6, nAb6, nA6, nAb6
	dc.b	nG6, nF6, $12, nEb6, nCs6, nC6, nBb5, $0C, nAb5, nCs6, $03, nEb6
	dc.b	$0C, smpsNoAttack, $03, nG6, $03, nAb6, $0C, smpsNoAttack, $03, nCs7, $03, nEb7
	dc.b	$09, smpsNoAttack, $12, nC7, $0C, nB6, $06, nBb6, nAb6, nFs6, $03, nF6
	dc.b	nFs6, nAb6, nBb6, nAb6, nBb6, nC7, nCs7, nC7, nCs7, nEb7, nF7, nE7
	dc.b	nF7, nFs7
	smpsReturn

; FM2 Data
Air_Man_FM2:
	smpsSetvoice        $08
	dc.b	nBb3, $0C
	smpsCall            Air_Man_Call05
	dc.b	nRst, $0C
	smpsCall            Air_Man_Call05
	dc.b	nRst, $06, nBb3, nRst, nF3, nAb3, nBb3, nRst, nBb3, nAb3, nAb3, nAb3
	dc.b	nAb3, nAb3, nA3, nRst, nBb3
	smpsCall            Air_Man_Call06
	dc.b	nG3, nRst, $12, nEb3, $06, nFs3, nAb3, nRst, nAb3, nRst, nAb3, nRst
	dc.b	nEb3, nFs2, nFs3, nRst, nAb3, nRst, $12, nEb3, $06, nFs3, nAb3, nRst
	dc.b	nAb3, nRst, nAb3, nRst, nEb3, nFs2, nFs3, nRst, nBb3
	smpsCall            Air_Man_Call06
	dc.b	nA3, nAb3, $0C, nRst, $06, nEb3, nFs3, nAb3, nRst, nAb3, nRst, nAb3
	dc.b	nRst, nEb3, nFs2, nFs3, nRst, nG3, nAb3, $0C, nRst, $06, nEb3, nFs3
	dc.b	nAb3, nRst, nAb3, nRst, nAb3, nRst, nEb3, nAb2, nAb3, nRst, nFs3
	smpsCall            Air_Man_Call07
	dc.b	nFs3
	smpsCall            Air_Man_Call07
	dc.b	nA3
	smpsJump            Air_Man_FM2

Air_Man_Call05:
	dc.b	nRst, $06, nF3, nAb3, nBb3, nRst, nBb3, nRst, nBb3, nRst, nF3, nAb2
	dc.b	nAb3, nBb2, nBb3, nFs3, $0C, nRst, $06, nFs3, nBb2, nCs3, nFs3, nF3
	dc.b	nRst, nF3, nF3, nAb3, nRst, nAb3, nRst, nBb3
	smpsReturn

Air_Man_Call06:
	dc.b	nRst, $12, nF3, $06, nAb3, nBb3, nRst, nBb3, nRst, nBb3, nRst, nF3
	dc.b	nAb2, nAb3, nRst, nA3, nBb3, $0C, nRst, $06, nF3, nAb3, nBb3, nRst
	dc.b	nBb3, nRst, nBb3, nRst, nF3, nAb2, nAb3, nRst
	smpsReturn

Air_Man_Call07:
	dc.b	nRst, nFs3, nFs3, nCs4, nFs3, $0C, nRst, $06, nFs3, $06, nRst, $0C
	dc.b	nCs3, $06, nFs3, nRst, nBb3, nRst, nAb3, nRst, nAb3, nAb3, nC4, nAb3
	dc.b	$0C, nRst, $06, nAb3, nRst, nAb3, nEb4, nAb3, nRst, nAb3, nRst
	smpsReturn

; FM3 Data
Air_Man_FM3:
	smpsSetvoice        $04
	smpsModSet          $13, $01, $05, $04
	dc.b	nCs5, $0C
	smpsCall            Air_Man_Call03
	dc.b	nRst, $0C
	smpsCall            Air_Man_Call03
	dc.b	nRst, $06, nF4, nAb4, nF4, nBb4, nF4, nC5, nF4, nAb5, nAb5, nAb5
	dc.b	nAb5, nAb5, nA5, nRst, nF5, $18, nCs5, $06, nEb5, nF5, nRst, nF5
	dc.b	nRst, nF5, nRst, nCs5, nEb5, $0C, nE5, nF5, $12, nEb5, $0C, nF5
	dc.b	nBb5, $06, smpsNoAttack, $18, nF5, $06, nE5, $0C, nEb5, $18, nBb4, $06
	dc.b	nC5, nEb5, nRst, nEb5, nRst, nEb5, nCs5, nEb5, nRst, nAb5, nFs5, nEb5
	dc.b	$18, nBb4, $0C, nC5, $12, nRst, $06, nEb5, nEb5, nEb5, nEb5, nC6
	dc.b	nRst, nCs6, $12
	smpsAlterNote       $FF
	smpsAlterVol        $02
	smpsCall            Air_Man_Call04
	smpsModSet          $00, $01, $F3, $45
	dc.b	nAb7, $12
	smpsAlterNote       $01
	smpsAlterVol        $FE
	smpsModOff
	dc.b	nAb5, $06, nAb5, $0C, nFs5, $06, nRst, nFs5, nFs5, nCs5, nFs5, $0C
	dc.b	nRst, $06, nFs5, nRst, nFs5, nCs5, nFs5, nRst, nBb5, nRst, nCs6, nRst
	dc.b	nC6, $24, smpsNoAttack, $06
	smpsAlterNote       $02
	smpsAlterVol        $06
	dc.b	nAb6, $12, nFs6, $0C, nF6
	smpsAlterNote       $FE
	smpsAlterVol        $FA
	dc.b	nFs5, $06, nRst, nFs5, nFs5, nCs5, nFs5, $0C, nRst, $06, nFs5, nRst
	dc.b	nFs5, nCs5, nFs5, nRst, nBb5, nRst, nCs6, nRst, nC6, $12, $06, nAb5
	dc.b	nRst, nC6, $06, smpsNoAttack, $18, nCs5, $06, nAb4, $0C, nBb5, $06
	smpsJump            Air_Man_FM3

Air_Man_Call03:
	dc.b	nE5, $06, nEb5, $0C, nD5, nCs5, nF5, nE5, nEb5, $12, nCs5, $18
	dc.b	$06, nC5, nBb4, nAb4, $0C, nBb4, $06, nC5, nF4, $0C, nF4, $06
	dc.b	nAb4, nF4
	smpsReturn

; FM4 Data
Air_Man_FM4:
	smpsModSet          $0C, $01, $05, $04
	smpsSetvoice        $04
	smpsAlterNote       $02
	smpsAlterVol        $07
	dc.b	nRst, $06, nF5, $0C
	smpsCall            Air_Man_Call01
	smpsAlterNote       $02
	smpsAlterVol        $07
	dc.b	nRst, $12
	smpsCall            Air_Man_Call01
	dc.b	nRst, $06, nCs4, nCs4, nCs4, nCs4, nCs4, nF4, nCs4, nEb5, nEb5, nEb5
	dc.b	nEb5, nEb5, nEb5, nRst, nCs5, $18
	smpsCall            Air_Man_Call02
	dc.b	nA3, nRst, nAb3, nRst, $12, nEb3, $06, nFs3, nAb3, nRst, nAb3, nRst
	dc.b	nAb3, nRst, nEb3, nFs3, nFs3, nRst, nAb3, nRst, $12, nEb3, $06, nFs3
	dc.b	nAb3, nRst, nAb3, nRst, nAb3, nRst, nEb3, nFs3, nFs3, nRst, nBb3, nRst
	dc.b	$12
	smpsCall            Air_Man_Call02
	dc.b	nAb3, nRst, nA3, nAb3, $0C, nRst, $06, nEb3, $06, nFs3, nAb3, nRst
	dc.b	nAb3, nRst, nAb3, nRst, nEb3, nFs3, nFs3, nRst, nG3, nAb3, $0C, $06
	dc.b	nEb3, nFs3, nAb3, nRst, nAb3, nRst, nAb3, nRst, nEb3, nFs3, nAb3, nRst
	smpsSetvoice        $01
	smpsAlterVol        $FD
	smpsModOff
	smpsAlterPitch      $0C
	dc.b	nCs4, $24, nCs4, $06, $06, $24, $06, nRst, nEb4, $24, $06, nRst
	dc.b	nEb4, $24, $06, $06, nCs4, $24, $06, $06, $24, $06, nRst, nEb4
	dc.b	$06, smpsNoAttack, $18, $06, $06, nRst, nEb4, nRst, nEb4, $06, $0C, nRst
	dc.b	$06, nEb4, $12
	smpsAlterPitch      $F4
	smpsAlterVol        $03
	smpsJump            Air_Man_FM4

Air_Man_Call01:
	dc.b	nAb5, $06, nG5, $0C, nFs5, nF5, nAb5, nG5, nFs5
	smpsAlterNote       $FE
	smpsAlterVol        $FA
	dc.b	nBb4, $18, $06, nAb4, nFs4, nEb4, $0C, nEb4, $06, nAb4, nC4, $0C
	dc.b	nC4, $06, nF4, nCs4
	smpsReturn

Air_Man_Call02:
	dc.b	nF3, $06, nAb3, nBb3, nRst, nBb3, nRst, nBb3, nRst, nF3, nAb3, nAb3
	dc.b	nRst, nA3, nBb3, $0C, nRst, $06, nF3, nAb3, nBb3, nRst, nBb3, nRst
	dc.b	nBb3, nRst, nF3, nAb3
	smpsReturn

; FM5 Data
Air_Man_FM5:
	smpsAlterNote       $FC
	smpsSetvoice        $04
	smpsJump            Air_Man_Jump00

; DAC Data
Air_Man_DAC:
	smpsCall            Air_Man_Call00
	dc.b	$0C, dSnareS3, $06, dKickS3, $06, $06, $06, dSnareS3, $06, dKickS3, $0C, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, $06, $06
	smpsLoop            $00, $02, Air_Man_DAC
	dc.b	nRst, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06, $06, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $06, $06, dKickS3, $0C, dSnareS3, $0C, $06

Air_Man_Loop00:
	smpsCall            Air_Man_Call00
	smpsLoop            $00, $03, Air_Man_Loop00
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $06, $06, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $06, $06, $06, dKickS3, $06, dSnareS3, $0C, $06

Air_Man_Loop01:
	smpsCall            Air_Man_Call00
	smpsLoop            $00, $03, Air_Man_Loop01
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $06, $06, dSnareS3, $06, $06, dKickS3, $0C
	dc.b	dSnareS3, $06, $06, dKickS3, $0C, dSnareS3, $06, $06, $06

Air_Man_Loop02:
	smpsCall            Air_Man_Call00
	smpsLoop            $00, $03, Air_Man_Loop02
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $06, $06, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $06, $06, dKickS3, $0C, dSnareS3, $06, $06, $06
	smpsJump            Air_Man_DAC

Air_Man_Call00:
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $06, $06, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	$06, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $06, dKickS3, $06
	smpsReturn

; PSG1 Data
Air_Man_PSG1:
	smpsAlterPitch      $DC
	smpsPSGvoice        fTone_07
	dc.b	nF5, $0C
	smpsCall            Air_Man_Call08
	dc.b	nRst, $0C
	smpsCall            Air_Man_Call08
	dc.b	nRst, $06, nBb4, nC5, nBb4, nCs5, nBb4, nEb5, nBb4, nC6, nC6, nC6
	dc.b	nC6, nC6, nC6, nRst
	smpsAlterPitch      $24

Air_Man_Loop06:
	dc.b	nF2, $06, smpsNoAttack, $18, nRst, $06, nF2, nRst
	smpsLoop            $00, $04, Air_Man_Loop06

Air_Man_Loop07:
	dc.b	nEb2, $06, smpsNoAttack, $18, nRst, $06, nEb2, nRst
	smpsLoop            $00, $04, Air_Man_Loop07
	smpsLoop            $01, $02, Air_Man_Loop06
	smpsPSGAlterVol     $FF
	dc.b	nBb1, $06, smpsNoAttack, $18, nRst, $06, nBb1, nBb1, nBb1, $06, smpsNoAttack, $18
	dc.b	nRst, $06, nBb1, nRst, nC2, $06, smpsNoAttack, $18, nRst, $06, nC2, nRst
	dc.b	nC2, $06, smpsNoAttack, $18, nRst, $06, nC2, nC2, nBb1, $06, smpsNoAttack, $18
	dc.b	nRst, $06, nBb1, nBb1, nBb1, $06, smpsNoAttack, $18, nRst, $06, nBb1, nRst
	dc.b	nC2, $06, smpsNoAttack, $18, $06, $06, nRst, nC2, nRst, nC2, nC2, $0C
	dc.b	nRst, $06, nC2, $12
	smpsPSGAlterVol     $01
	smpsJump            Air_Man_PSG1

; PSG2 Data
Air_Man_PSG2:
	smpsAlterPitch      $DC
	smpsPSGvoice        fTone_07
	dc.b	nCs5, $0C
	smpsCall            Air_Man_Call03
	dc.b	nRst, $0C
	smpsCall            Air_Man_Call03
	dc.b	nRst, $06, nF4, nAb4, nF4, nBb4, nF4, nC5, nF4
	smpsAlterPitch      $24
	smpsModSet          $00, $01, $12, $45
	smpsPSGAlterVol     $FF
	dc.b	nB3, $06, nG3, nD3, nA2, nF2, nD2
	smpsModOff
	smpsPSGAlterVol     $01
	dc.b	nRst

Air_Man_Loop03:
	dc.b	nCs2, $06, smpsNoAttack, $18, nRst, $06, nCs2, nRst
	smpsLoop            $00, $04, Air_Man_Loop03

Air_Man_Loop04:
	dc.b	nC2, $06, smpsNoAttack, $18, nRst, $06, nC2, nRst
	smpsLoop            $00, $04, Air_Man_Loop04
	smpsLoop            $01, $02, Air_Man_Loop03
	dc.b	nRst, $06
	smpsModSet          $00, $01, $10, $45
	smpsPSGAlterVol     $FF

Air_Man_Loop05:
	dc.b	nRst, $18, smpsNoAttack, nC2, $06, nC3, $06, nA2, nRst
	smpsLoop            $00, $03, Air_Man_Loop05
	dc.b	nRst, $18, smpsNoAttack, nA2, $06, nC3, $06, nA2, nD2
	smpsLoop            $01, $02, Air_Man_Loop05
	smpsModOff
	smpsPSGAlterVol     $01
	smpsJump            Air_Man_PSG2

; PSG3 Data
Air_Man_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	(nMaxPSG-$F4)&$FF

Air_Man_Jump01:
	dc.b	$06
	smpsJump            Air_Man_Jump01

Air_Man_Voices:
;	Voice $00
;	$03
;	$00, $D7, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $02, $09, 	$35, $15, $25, $1A, 	$13, $16, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $0D, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $09, $02, $0F, $10
	smpsVcDecayLevel    $01, $02, $01, $03
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $00, $15, $16, $13

;	Voice $01
;	$3A
;	$30, $07, $24, $01, 	$9C, $DB, $9C, $DC, 	$04, $09, $00, $04
;	$03, $0D, $00, $0E, 	$07, $A2, $56, $94, 	$20, $30, $28, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $03
	smpsVcCoarseFreq    $01, $04, $07, $00
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1C, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $00, $09, $04
	smpsVcDecayRate2    $0E, $00, $0D, $03
	smpsVcDecayLevel    $09, $05, $0A, $00
	smpsVcReleaseRate   $04, $06, $02, $07
	smpsVcTotalLevel    $00, $28, $30, $20

;	Voice $02
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

;	Voice $03
;	$3D
;	$35, $78, $32, $71, 	$DF, $1F, $1F, $1F, 	$12, $04, $0F, $0F
;	$00, $00, $00, $00, 	$2F, $0F, $0E, $0F, 	$29, $20, $20, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $08, $05
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $04, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $02
	smpsVcReleaseRate   $0F, $0E, $0F, $0F
	smpsVcTotalLevel    $00, $20, $20, $29

;	Voice $04
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

;	Voice $05
;	$3A
;	$51, $65, $61, $01, 	$5B, $5B, $56, $50, 	$01, $01, $01, $02
;	$03, $00, $13, $00, 	$58, $58, $A0, $3A, 	$1D, $16, $38, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $06, $05
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $16, $1B, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $01, $01
	smpsVcDecayRate2    $00, $13, $00, $03
	smpsVcDecayLevel    $03, $0A, $05, $05
	smpsVcReleaseRate   $0A, $00, $08, $08
	smpsVcTotalLevel    $00, $38, $16, $1D

;	Voice $06
;	$2A
;	$00, $00, $02, $02, 	$13, $11, $14, $14, 	$04, $06, $05, $05
;	$02, $00, $00, $06, 	$A8, $A8, $09, $AE, 	$11, $0A, $3E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $06, $04
	smpsVcDecayRate2    $06, $00, $00, $02
	smpsVcDecayLevel    $0A, $00, $0A, $0A
	smpsVcReleaseRate   $0E, $09, $08, $08
	smpsVcTotalLevel    $00, $3E, $0A, $11

;	Voice $07
;	$34
;	$00, $02, $01, $01, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $00, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $18, $00, $10

;	Voice $08
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

