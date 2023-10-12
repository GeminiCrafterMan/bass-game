MWaterS_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MWaterS_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       MWaterS_DAC
	smpsHeaderFM        MWaterS_FM1,	$09, $12
	smpsHeaderFM        MWaterS_FM2,	$09, $0C
	smpsHeaderFM        MWaterS_FM3,	$09, $18
	smpsHeaderFM        MWaterS_FM4,	$09, $15
	smpsHeaderFM        MWaterS_FM5,	$09, $1C
	smpsHeaderPSG       MWaterS_PSG1,	$F1, $05, $00, fTone_09
	smpsHeaderPSG       MWaterS_PSG2,	$F1, $03, $00, fTone_09
	smpsHeaderPSG       MWaterS_PSG3,	$F4, $01, $00, fTone_09

; FM1 Data
MWaterS_FM1:
	smpsSetvoice        $04
	smpsModSet          $0E, $01, $06, $04
	smpsCall            MWaterS_Call04
	dc.b	nB3
	smpsCall            MWaterS_Call04
	dc.b	nG3, $30, nG2, $0C, nG2, $06, nC3, nG2, nC3, nC3, nG3, nC3
	smpsSetvoice        $04
	dc.b	nG4, $06, nAb4, nBb4, nG4, $06, smpsNoAttack, $18, nRst, $06, nG4, nAb4
	dc.b	nBb4, nG4, nF4, $0C, nEb4, $06, nG4, $12, nC4, nG4, $0C, nF4
	dc.b	$12, nEb4, nD4, $0C, nEb4, $0C, nC4, $06, nG4, smpsNoAttack, $18, nRst
	dc.b	$06, nD4, $12, nEb4, $0C, nF4, $06, nG4, $24, nAb4, $06, nG4
	dc.b	nAb4, $0C, nG4, $06, smpsNoAttack, $24, nG4, $06, nAb4, nBb4, nG4, smpsNoAttack
	dc.b	$18, nRst, $06, nG4, nAb4, nBb4, nG4, nF4, $0C, nEb4, $06, nG4
	dc.b	$12, nC4, nG4, $0C, nF4, $06, nEb4, $18, nC4, $06, nD4, nEb4
	dc.b	$24, nC4, $06, nEb4, nG4, $12, nFs4, $0C, nF4, nEb4, $06, nF4
	dc.b	nEb4, nC4, $18, nBb3, $06, nC4, nC4, nRst, nBb3, nB3, nC4, nRst
	dc.b	$18
	smpsJump            MWaterS_FM1

MWaterS_Call04:
	dc.b	nRst, $0C, nC4, nD4, $06, nEb4, $0C, nC4, $06, smpsNoAttack, $30, nRst
	dc.b	$0C, nC4, nD4, $06, nEb4, $0C, nC4, $06, smpsNoAttack, $30, nRst, $0C
	dc.b	nC4, nD4, $06, nEb4, $0C, nG4, $24, nC4, $12, nF4, nEb4, nD4
	dc.b	$0C, nFs4, $06, nF4
	smpsAlterVol        $0D
	dc.b	nF4
	smpsAlterVol        $F3
	dc.b	nEb4, $0C, nC4, $06, nBb3
	smpsReturn

; FM2 Data
MWaterS_FM2:
	smpsSetvoice        $08

MWaterS_Loop02:
	dc.b	nC3, $06, nC3, nC3, nC3, nC3, nC3, nC3, nAb2, $0C, nAb2, $06
	dc.b	nAb2, nAb2, nAb2, nAb2, nAb2, nBb2
	smpsLoop            $00, $02, MWaterS_Loop02
	dc.b	nC3, $06, nC3, nC3, nC3, nC3, nC3, nC3, nAb2, $0C, nAb2, $06
	dc.b	nAb2, nAb2, nAb2, nAb2, nAb2, nAb2, nG2, nG2, nG2, nG2, nG2, nG2
	dc.b	nG2, nAb2, $0C, nAb2, $06, nAb2, nAb2, nBb2, nBb2, nBb2, nBb2
	smpsLoop            $01, $02, MWaterS_Loop02
	dc.b	nC3, $06, nC3, nC3, nC3, nC3, nC3, nC3, nC3, $0C, nC3, $06
	dc.b	nEb3, nC3, nF3, nEb3, nD3, nEb3
	smpsCall            MWaterS_Call03
	dc.b	nC3, $06, nC3, nC3, nC3, nC3, nC3, nC3, $0C, nC3, $06, nC3
	dc.b	nC3, nC3, nC3, nC3, nC3
	smpsCall            MWaterS_Call03
	dc.b	nC3, $06, nEb3, nC3, nF3, nBb2, nC3, nC3, $0C, nBb2, $06, nB2
	dc.b	nC3, $0C, nC3, $06, nC3, nC3
	smpsJump            MWaterS_Loop02

MWaterS_Call03:
	dc.b	nC3, $06, nC3, nC3, nC3, nC3, nC3, nC3, nB2, $0C, nB2, $06
	dc.b	nB2, nB2, nB2, nB2, nB2, nBb2, $0C, nBb2, $06, nBb2, nBb2, nBb2
	dc.b	nBb2, nBb2, nA2, $0C, nA2, $06, nA2, nA2, nA2, nA2, nA2, nAb2
	dc.b	$0C, nAb2, $06, nAb2, nAb2, nAb2, nAb2, nAb2, nBb2, $0C, nBb2, $06
	dc.b	nBb2, nBb2, nBb2, nBb2, nBb2, nC3, $0C
	smpsReturn

; FM3 Data
MWaterS_FM3:
	smpsSetvoice        $07
	smpsModSet          $01, $01, $01, $03

MWaterS_Jump01:
	smpsCall            MWaterS_Call01
	dc.b	$06
	smpsCall            MWaterS_Call01
	dc.b	nG3, $0C, $06, $0C, $06, $0C, $0C, $06, $0C, $06, $0C, $06
	smpsCall            MWaterS_Call02
	dc.b	$0C, $0C, $06, $0C, $06, $0C, $06
	smpsCall            MWaterS_Call02
	dc.b	nF3, $0C, nG3, $0C, nF3, $06, nFs3, nG3, $0C, $06, $0C
	smpsJump            MWaterS_Jump01

MWaterS_Call01:
	dc.b	nG3, $06, $06, $0C, $06, $0C, nEb3, $0C, $06, $0C, $06, $0C
	dc.b	nF3, $06, nG3, $06, $06, $0C, $06, $0C, nEb3, $0C, $06, $0C
	dc.b	$06, $0C, nF3, $06, nG3, $06, $06, $0C, $06, $0C, nEb3, $0C
	dc.b	$06, $0C, $06, $12, nD3, $06, $06, $0C, $06, $0C, nEb3, $0C
	dc.b	$06, $0C, nF3, $06, $0C
	smpsReturn

MWaterS_Call02:
	dc.b	nG3, $06, $06, $0C, $06, $0C, nFs3, $0C, $06, $0C, $06, $0C
	dc.b	nF3, $0C, $06, $0C, $06, $0C, nEb3, $0C, $06, $0C, $06, $0C
	dc.b	nEb3, $0C, $06, $0C, $06, $0C, nF3, $0C, $06, $0C, $06, $0C
	dc.b	nG3, $0C, $06, $0C, $06
	smpsReturn

; FM4 Data
MWaterS_FM4:
	smpsModSet          $0E, $01, $06, $04
	smpsSetvoice        $04

MWaterS_Jump00:
	smpsCall            MWaterS_Call00
	dc.b	nFs3
	smpsCall            MWaterS_Call00
	dc.b	nC3, $0C, nC3, $06, nEb3, nC3, nF3, nEb3, $0C, nC3, nC3, $06
	dc.b	nEb3, nC3, nF3, nEb3, nD3, nEb3, nC4, $30, nB3, nBb3, nA3, nAb3
	smpsAlterVol        $01
	dc.b	nRst, $06, nBb3, $12, nC4, $0C, nD4, $06, nEb4, $24, nF4, $06
	dc.b	nEb4, nF4, $0C, nEb4, $06, smpsNoAttack, $24
	smpsAlterVol        $FF
	dc.b	nC4, $30, nB3, nBb3, nA3, nAb3, $18, smpsNoAttack, $06
	smpsAlterVol        $01
	dc.b	nG3, $06, nC4, nD4, $12, nD4, $0C, nD4, nC4, $06, nD4, nC4
	dc.b	nG3, $18, nF3, $06, nG3, nG3, $0C, nF3, $06, nFs3, nG3, nRst
	dc.b	$18
	smpsAlterVol        $FF
	smpsJump            MWaterS_Jump00

MWaterS_Call00:
	dc.b	nRst, $0C, nG3, $0C, nBb3, $06, nC4, $0C, nAb3, $12, nC4, $0C
	dc.b	nD4, $06, nEb4, $0C, nC4, $12, nG3, $0C, nBb3, $06, nC4, $0C
	dc.b	nAb3, $06, smpsNoAttack, $18, nG4, $06, nF4, $0C, nEb4, $06, nC4, $0C
	dc.b	nG3, $0C, nBb3, $06, nC4, $0C, nEb4, $24, nG3, $12
	smpsAlterVol        $01
	dc.b	nD4, $12, nC4, nB3, $0C, nEb4, $06, nD4, $06
	smpsAlterVol        $0D
	dc.b	nD4
	smpsAlterVol        $F3
	dc.b	nBb3, $0C, $06, nF3
	smpsAlterVol        $FF
	smpsReturn

; FM5 Data
MWaterS_FM5:
	smpsAlterNote       $02
	dc.b	nRst, $06
	smpsJump            MWaterS_FM1

; DAC Data
MWaterS_DAC:
	dc.b	dKick, $0C, dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick, $0C, $06
	dc.b	dSnare, $0C, dKick, $06, $06, dSnare, $0C
	smpsLoop            $00, $03, MWaterS_DAC
	dc.b	dKick, $0C, dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick, $0C, $06
	dc.b	dSnare, $0C, dKick, $06, dSnare, $06, $06, dKick, $06
	smpsLoop            $01, $02, MWaterS_DAC
	dc.b	dKick, $0C, dSnare, $0C, dKick, $06, dSnare, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06, $06, $06, dKick, $0C
	dc.b	dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick, $06

MWaterS_Loop00:
	dc.b	nRst, $06, dKick, $06, dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick
	dc.b	$06
	smpsLoop            $00, $06, MWaterS_Loop00
	dc.b	nRst, $06, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06, $06, $06
	dc.b	dKick, $0C, dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick, $06

MWaterS_Loop01:
	dc.b	nRst, $06, dKick, $06, dSnare, $0C, dKick, $06, $06, dSnare, $06, dKick
	dc.b	$06
	smpsLoop            $00, $05, MWaterS_Loop01
	dc.b	nRst, $06, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06, $06, dKick
	dc.b	$0C, $06, dSnare, $06, $06, dKick, $06, dSnare, $06, $06, $06
	smpsJump            MWaterS_DAC

; PSG1 Data
MWaterS_PSG1:
	smpsAlterNote       $01
	dc.b	nRst, $06
	smpsJump            MWaterS_PSG2

; PSG2 Data
MWaterS_PSG2:
	smpsPSGvoice        fTone_07
	smpsCall            MWaterS_Call05
	dc.b	$06
	smpsCall            MWaterS_Call05
	dc.b	nEb2, $0C, $06, $0C, $06, $0C, $0C, $06, $0C, $06, $0C, $06
	smpsCall            MWaterS_Call06
	dc.b	$0C, $0C, $06, $0C, $06, $0C, $06
	smpsCall            MWaterS_Call06
	dc.b	nD2, $0C, nEb2, $0C, nD2, $06, nD2, nEb2, $0C, $06, $0C
	smpsJump            MWaterS_PSG2

MWaterS_Call05:
	dc.b	nEb2, $06, $06, $0C, $06, $0C, nC2, $0C, $06, $0C, $06, $0C
	dc.b	nD2, $06, nEb2, $06, $06, $0C, $06, $0C, nC2, $0C, $06, $0C
	dc.b	$06, $0C, nD2, $06, nEb2, $06, $06, $0C, $06, $0C, nC2, $0C
	dc.b	$06, $0C, $06, $12, nB1, $06, $06, $0C, $06, $0C, nC2, $0C
	dc.b	$06, $0C, nD2, $06, $0C
	smpsReturn

MWaterS_Call06:
	dc.b	nEb2, $06, $06, $0C, $06, $0C, nEb2, $0C, $06, $0C, $06, $0C
	dc.b	nD2, $0C, $06, $0C, $06, $0C, nC2, $0C, $06, $0C, $06, $0C
	dc.b	nC2, $0C, $06, $0C, $06, $0C, nD2, $0C, $06, $0C, $06, $0C
	dc.b	nEb2, $0C, $06, $0C, $06
	smpsReturn

; PSG3 Data
MWaterS_PSG3:
	smpsPSGform         $E7

MWaterS_Loop03:
	smpsPSGvoice        fTone_02
	dc.b	(nMaxPSG-$F4)&$FF, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $0F, MWaterS_Loop03
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $01, $02, MWaterS_Loop03
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06

MWaterS_Loop04:
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $0F, MWaterS_Loop04
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06

MWaterS_Loop05:
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $0D, MWaterS_Loop05
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06
	smpsJump            MWaterS_Loop03

MWaterS_Voices:
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

