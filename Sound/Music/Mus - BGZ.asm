BGZ1Port_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     BGZ1Port_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $40

	smpsHeaderDAC       BGZ1Port_DAC
	smpsHeaderFM        BGZ1Port_FM1,	$F4, $11
	smpsHeaderFM        BGZ1Port_FM2,	$F4, $0D
	smpsHeaderFM        BGZ1Port_FM3,	$F4, $0C
	smpsHeaderFM        BGZ1Port_FM4,	$F4, $11
	smpsHeaderFM        BGZ1Port_FM5,	$F4, $11
	smpsHeaderPSG       BGZ1Port_PSG1,	$D0, $05, $00, fTone_05
	smpsHeaderPSG       BGZ1Port_PSG2,	$00, $04, $00, sTone_06
	smpsHeaderPSG       BGZ1Port_PSG3,	$01, $04, $00, sTone_06

; FM1 Data
BGZ1Port_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $30

BGZ1Port_Jump00:
	dc.b	nA5, $06, nG5, nA5, nC6, $0C, nA5, $06, nG5, nA5, $36, nRst
	dc.b	$0C, nE6, nD6, $06, nE6, $0C, $06, nD6, $0C, nC6, nA5, nG5
	dc.b	nA5, $06, nG5, nE5, nD5, $0C, nE5, $06, nG5, nA5, $36, nRst
	dc.b	$0C, nA5, nG5, $06, nA5, $0C, $12, nB5, $0C, nC6, nD6, nE6
	dc.b	$4E, $12, nD6, $30, nC6, $18, nB5, nA5, $06, nG5, nA5, nC6
	dc.b	$0C, nA5, $06, nG5, nA5, $0C, $06, nG5, nA5, $0C, $06, nG5
	dc.b	nA5, $0C, nA5, $06, nG5, nA5, $0C, $06, nG5, nA5, $36
	smpsLoop            $00, $02, BGZ1Port_Jump00
	dc.b	nA6, $0C, nG6, nE6, nD6, nC6, nA5, nC6, nD6, nE6, nG6, nE6
	dc.b	nD6, $24, nE6, $0C, nG6, nA6, nG6, nE6, nD6, nC6, nA5, nC6
	dc.b	nD6, nE6, nG6, nE6, nD6, $24, nE6, $0C, nG6, nA6, $3C, nG6
	dc.b	$0C, nA6, nC7, nD7, $18, nC7, $0C, nD7, $18, nE7, nA6, $0C
	dc.b	smpsNoAttack, $3C, nA6, $0C, nC7, nD7, nE7, nF7, nE7, nD7, $3C
	smpsJump            BGZ1Port_Jump00

; FM2 Data
BGZ1Port_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $30

BGZ1Port_Loop05:
	dc.b	nF4, $0C, $18, $18, $18, nG4, $0C, nA4, $0C, $18, $0C, nG4
	dc.b	$0C, $18, $0C, nF4, $0C, $18, $18, $18, nG4, $0C, nA4, $0C
	dc.b	$18, $0C, nG4, $0C, $18, $0C, nF4, $0C, $18, $18, $18, $0C
	dc.b	nG4, $0C, $18, $0C, nE4, $0C, $18, $0C, nD4, $0C, $18, $18
	dc.b	$18, $18, $18, $18, $18, $0C
	smpsLoop            $00, $02, BGZ1Port_Loop05
	dc.b	nF4, $24, $24, $0C, $0C, nG4, $24, $24, $0C, $06, $06, nA4
	dc.b	$24, $24, $0C, $0C, nG4, $24, $24, $0C, $06, $06, nF4, $24
	dc.b	$24, $0C, $0C, nE4, $24, $24, $0C, $06, $06, nF4, $24, $24
	dc.b	$0C, $0C, nG4, $24, $24, $0C, $06, $06
	smpsJump            BGZ1Port_Loop05

; FM3 Data
BGZ1Port_FM3:
	smpsModOn
	dc.b	nRst, $30

BGZ1Port_Jump01:
	smpsSetvoice        $02

BGZ1Port_Loop04:
	smpsPan             panLeft, $00
	dc.b	nG4, $06
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsPan             panRight, $00
	dc.b	nC5
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsPan             panLeft, $00
	dc.b	nC5
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsPan             panRight, $00
	dc.b	nC5
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsPan             panLeft, $00
	dc.b	nE5
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsPan             panRight, $00
	dc.b	nE5
	smpsPan             panCenter, $00
	dc.b	nG5
	smpsPan             panLeft, $00
	dc.b	nD5
	smpsPan             panCenter, $00
	dc.b	nE5
	smpsPan             panRight, $00
	dc.b	nG5
	smpsPan             panCenter, $00
	dc.b	nA5
	smpsLoop            $00, $10, BGZ1Port_Loop04
	smpsPan             panRight, $00
	smpsSetvoice        $03
	dc.b	nA5, $60, smpsNoAttack, $30, nB5, $30, nB5, $30, nC6, $30, nB5, $30
	dc.b	nG5, $30, nF5, $30, nA5, $30, nE5, $30, nE5, $30, nA5, $30
	dc.b	nA5, nA5, $30, nB5, $30
	smpsJump            BGZ1Port_Jump01

; FM4 Data
BGZ1Port_FM4:
	smpsModOn
	smpsPan             panLeft, $00
	dc.b	nRst, $30

BGZ1Port_Loop03:
	smpsSetvoice        $03
	dc.b	nA4, $30, $0C, nG4, $06, nA4, $0C, nC5, nD5, $06, nE5, $30
	dc.b	nD5, nA4, nRst, $0C, nG4, $06, nA4, $0C, nC5, nD5, $06, nE5
	dc.b	$30, nD5, nC5, $60, nB4, $30, nG4, nA4, $60, nG4, $30, nFs4
	smpsLoop            $00, $02, BGZ1Port_Loop03
	dc.b	nE6, $60, nD6, $60, nD6, $30, nE6, $30, nD6, $30, nB5, nE6
	dc.b	$60, nG5, $30, nB5, $30, nC6, $60, nC6, $30, nD6
	smpsJump            BGZ1Port_Loop03

; FM5 Data
BGZ1Port_FM5:
	smpsSetvoice        $00
	smpsAlterVol        $06
	smpsAlterNote       $FD
	dc.b	nRst, $0C, nRst, $30
	smpsJump            BGZ1Port_Jump00

; DAC Data
BGZ1Port_DAC:
	dc.b	nRst, $12, dHighTom, $03, dMidTomS3, dLowTomS3, $06, dKickS3, dSnareS3, dFloorTomS3

BGZ1Port_Loop01:
	dc.b	dCrashCymbal, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06

BGZ1Port_Loop00:
	dc.b	dKickS3, $06, $06, dSnareS3, $06, dKickS3, $06
	smpsLoop            $00, $1D, BGZ1Port_Loop00
	dc.b	dKickS3, $06, dKickS3, dSnareS3, dHighTom, $03, dMidTomS3, dLowTomS3, $06, dKickS3, dSnareS3, dFloorTomS3
	smpsLoop            $01, $02, BGZ1Port_Loop01

BGZ1Port_Loop02:
	dc.b	dKickS3, $06, dHigherMetalHit, dKickS3, dMidMetalHit
	smpsLoop            $00, $1F, BGZ1Port_Loop02
	dc.b	dKickS3, $06, dSnareS3, dSnareS3, dSnareS3
	smpsJump            BGZ1Port_Loop01

; PSG2 Data
BGZ1Port_PSG2:
	dc.b	nRst, $30
	smpsAlterNote       $01

BGZ1Port_Loop08:
	dc.b	nC2, $54, nD2, $0C, nE2, $30, nD2, nC2, $48, $0C, nG1, nE1
	dc.b	$30, nD1, nE1, $60, nD1, $30, nB0, nA0, $60, smpsNoAttack, $60
	smpsLoop            $00, $02, BGZ1Port_Loop08
	dc.b	nA2, $60, nB2, $60, nC3, $60, nB2, $30, nG2, $30, nF2, $60
	dc.b	nE2, $30, nD2, $18, nC2, $18, nA1, $60, nG1, $60

BGZ1Port_Loop09:
	dc.b	nA2, $54, nB2, $0C, nC3, $30, nB2, nA2, $48, nG2, $0C, nF2
	dc.b	nE2, $30, nD2, nC2, $60, nD2, $30, nB1, nF1, $60, smpsNoAttack, $60
	smpsLoop            $00, $02, BGZ1Port_Loop09
	dc.b	nA2, $60, nB2, $60, nC3, $60, nB2, $30, nG2, $30, nF2, $60
	dc.b	nE2, $30, nD2, $18, nC2, $18, nA1, $60, nG1, $60
	smpsJump            BGZ1Port_Loop08

; PSG1 Data
BGZ1Port_PSG1:
	dc.b	nRst, $30

BGZ1Port_Jump02:
	smpsCall            BGZ1Port_Call00
	dc.b	smpsNoAttack, $30, nRst, $30
	smpsCall            BGZ1Port_Call00
	smpsJump            BGZ1Port_Jump02

BGZ1Port_Call00:
	dc.b	nA5, $06, nG5, nA5, nC6, $0C, nA5, $06, nG5, nA5, $36, nRst
	dc.b	$0C, nE6, nD6, $06, nE6, $0C, $06, nD6, $0C, nC6, nA5, nG5
	dc.b	nA5, $06, nG5, nE5, nD5, $0C, nE5, $06, nG5, nA5, $36, nRst
	dc.b	$0C, nA5, nG5, $06, nA5, $0C, $12, nB5, $0C, nC6, nD6, nE6
	dc.b	$4E, $12, nD6, $30, nC6, $18, nB5, nA5, $06, nG5, nA5, nC6
	dc.b	$0C, nA5, $06, nG5, nA5, $0C, $06, nG5, nA5, $0C, $06, nG5
	dc.b	nA5, $0C, nA5, $06, nG5, nA5, $0C, $06, nG5, nA5, $36
	smpsLoop            $00, $02, BGZ1Port_Call00
	dc.b	nA6, $0C, nG6, nE6, nD6, nC6, nA5, nC6, nD6, nE6, nG6, nE6
	dc.b	nD6, $24, nE6, $0C, nG6, nA6, nG6, nE6, nD6, nC6, nA5, nC6
	dc.b	nD6, nE6, nG6, nE6, nD6, $24, nE6, $0C, nG6, nA6, $3C, nG6
	dc.b	$0C, nA6, nC7, nD7, $18, nC7, $0C, nD7, $18, nE7, nA6, $0C
	dc.b	smpsNoAttack, $3C, nA6, $0C, nC7, nD7, nE7, nF7, nE7, nD7, $0C
	smpsReturn

; PSG3 Data
BGZ1Port_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_01
	dc.b	nRst, $06, nMaxPSG, $0C, nMaxPSG, nMaxPSG, nMaxPSG, $06, nMaxPSG, $12

BGZ1Port_Loop06:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $0C
	smpsLoop            $00, $80, BGZ1Port_Loop06

BGZ1Port_Loop07:
	smpsPSGvoice        fTone_01
	dc.b	nRst, $3C, nMaxPSG, $24
	smpsLoop            $00, $08, BGZ1Port_Loop07
	smpsJump            BGZ1Port_Loop06



BGZ1Port_Voices:
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

