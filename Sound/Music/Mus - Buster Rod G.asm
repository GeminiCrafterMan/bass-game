BRodG_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     BRodG_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $08

	smpsHeaderDAC       BRodG_DAC
	smpsHeaderFM        BRodG_FM1,	$13, $13
	smpsHeaderFM        BRodG_FM2,	$FB, $08
	smpsHeaderFM        BRodG_FM3,	$07, $16
	smpsHeaderFM        BRodG_FM4,	$07, $16
	smpsHeaderFM        BRodG_FM5,	$13, $1E
	smpsHeaderPSG       BRodG_PSG1,	$FB, $03, $00, fTone_09
	smpsHeaderPSG       BRodG_PSG2,	$FB, $05, $00, fTone_09
	smpsHeaderPSG       BRodG_PSG3,	$F4, $02, $00, fTone_09

; FM1 Data
BRodG_FM1:
	smpsSetvoice        $01
	smpsModSet          $0C, $01, $05, $04
	dc.b	nD3, $60, smpsNoAttack, $30, nC4, $30, nA3, $0C, nG3, $06, nA3, $0C
	dc.b	$0C, $06, nC4, $0C, nC4, $24

BRodG_Loop07:
	dc.b	nD4, $30, nFs3, $0C, nG3, nA3, nA3, $24, nB3, $0C, nA3, $18
	dc.b	nG3, nFs3, $0C, nD4, $30, nFs3, $0C, nG3, nA3, nA3, $18, nC4
	dc.b	$0C, nB3, nA3, $30, $0C, nG3, $18, nFs3, $0C, nD3, $0C, smpsNoAttack
	dc.b	$30, nG3, $18, nFs3, $0C, nD3, $18, nD3, $0C, nE3, nD3, nE3
	dc.b	$24, nFs3, $0C, smpsNoAttack, $30, nE4, $06, $0C, $06, nFs4, $0C, nE4
	dc.b	$06, nFs4, $0C, nE4, nFs4, $06, nE4, $0C, nD4
	smpsLoop            $00, $02, BRodG_Loop07
	dc.b	nG3, $06, $0C, $06, nF3, $0C, nG3, nRst, $30, nG3, $06, $0C
	dc.b	$06, nF3, $0C, nG3, $0C, nRst, $06, nD4, $12, smpsNoAttack, $18, nF3
	dc.b	$06, nD3, $0C, $06, nC3, $0C, nD3, $12, nF3, $12, smpsNoAttack, $18
	dc.b	nF3, $06, nD3, nD3, nC3, $0C, nD3, $0C, nF3, nF3, nF3, $06
	dc.b	$0C, nFs3, $0C, nG3, $06, $0C, $06, nF3, $0C, nG3, nRst, $30
	dc.b	nG3, $06, $0C, $06, nF3, $0C, nG3, nRst, $24, nG3, $06, $06
	dc.b	nA3, $06, nC4, $0C, nA3, $06, nC4, $0C, nA3, $06, nC4, $0C
	dc.b	nA3, $06, nC4, $0C, nA3, $0C, nC4, nA3, $06, nE3, nG3, nA3
	dc.b	nRst, nC4, nRst, nE4, $06, smpsNoAttack, $30, nG4, $18, nG4, $0C, nE4
	dc.b	nG4, $06, nA4, $0C, nE4, $06, nD4, $0C, nC4, nD4, $18, nD4
	dc.b	$0C, nC4, nD4, $06, nE4, $0C, nE4, $06, smpsNoAttack, $18, nE4, $12
	dc.b	$06, nRst, $0C, nE4, $0C, nRst, $06, nE4, $0C, nD4, $06, nC4
	dc.b	$0C, nB3, $0C, nA3, $0C, nG3, $06, nA3, $0C, $06, nG3, nA3
	dc.b	$0C, nA3, $06, nG3, nA3, $0C, $06, nG3, nA3, nA3, $0C, nG3
	dc.b	$06, nA3, nC4, nB3, nA3, nG3, nRst, nA3, $12, smpsNoAttack, $18
	smpsJump            BRodG_Loop07

; FM2 Data
BRodG_FM2:
	smpsSetvoice        $00
	dc.b	nD3, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nD3, $12, $12
	dc.b	$06, $0C, $06, $0C, $0C, $0C, nA3, $0C, nG3, $06, nA3, $0C
	dc.b	$0C, $06, $0C, $24

BRodG_Loop06:
	dc.b	nD3, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nD3, $12, $12
	dc.b	$06, $0C, $06, $0C, $0C, $0C, nC3, $12, $12, $06, $0C, $06
	dc.b	$0C, $0C, $0C, nC3, $12, $12, $06, $0C, $06, $0C, $0C, $0C
	dc.b	nB2, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nC3, $12, $12
	dc.b	$06, $0C, $06, $0C, $0C, $0C, nD3, $12, $12, $06, $0C, $06
	dc.b	$0C, $0C, $0C, nD3, $12, $12, $06, $0C, $06, $0C, $0C, $0C
	smpsLoop            $00, $02, BRodG_Loop06
	dc.b	nG3, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nG3, $12, $12
	dc.b	$06, $0C, $06, $0C, $0C, $0C, nD3, $12, $12, $06, $0C, $06
	dc.b	$0C, $0C, $0C, nD3, $12, $12, $06, $0C, $06, $0C, $0C, $0C
	dc.b	nG3, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nG3, $12, $12
	dc.b	$06, $0C, $06, $0C, $0C, $0C, nA2, $12, $12, $06, $0C, $06
	dc.b	$0C, $0C, $0C, nA3, $06, nE3, nG3, nA3, $0C, nC4, nE3, $06
	dc.b	smpsNoAttack, $30, nA3, $12, $12, $06, $0C, $06, $0C, $0C, $0C, nD3
	dc.b	$12, $12, $06, $0C, $06, $0C, $0C, $0C, nE3, $12, $12, $06
	dc.b	$0C, $06, $0C, $0C, $0C, nA2, $0C, nG2, $06, nA2, $0C, $06
	dc.b	nG2, nA2, $0C, nA2, $06, nG2, nA2, $0C, $06, nG2, nA2, nA2
	dc.b	$0C, nG2, $06, nA2, nC3, nB2, nA2, nG2, nRst, nA2, $12, smpsNoAttack
	dc.b	$18
	smpsJump            BRodG_Loop06

; FM3 Data
BRodG_FM3:
	smpsSetvoice        $01
	smpsModSet          $0C, $01, $05, $04
	dc.b	nRst, $30, nFs4, $60, smpsNoAttack, $30, nE4, $0C, $06, $0C, $0C, $06
	dc.b	nG4, $0C, $24

BRodG_Loop05:
	smpsAlterVol        $01
	dc.b	nD4, $12, $06, nRst, $0C, nD4, $0C, smpsNoAttack, $30, nD4, $12, $06
	dc.b	nRst, $0C, nD4, $12, $0C, nRst, $06, nD4, $18, nD4, $12, $06
	dc.b	nRst, $0C, nD4, $0C, smpsNoAttack, $30, nRst, $06, nD4, $0C, nRst, $06
	dc.b	nD4, $18, $06, $0C, $06, nRst, $0C, nD4, $0C
	smpsAlterVol        $FF
	dc.b	nG3, $30, nG3, $18, nFs3, $0C, nD3, nG3, $30, nG3, $18, nFs3
	dc.b	$0C, nG3, nG3, $24, nA3, $0C, smpsNoAttack, $30, nC4, $06, $0C, $06
	dc.b	nD4, $0C, nC4, $06, nD4, $0C, nC4, nD4, $06, nC4, $0C, nA3
	smpsLoop            $00, $02, BRodG_Loop05
	dc.b	nD4, $06, $0C, $06, nC4, $0C, nD4, nRst, $30, nD4, $06, $0C
	dc.b	$06, nC4, $0C, nD4, nRst, $06, nG4, $12, smpsNoAttack, $18, nC4, $06
	dc.b	nA3, $0C, $06, nG3, $0C, nA3, $12, nC4, $12, smpsNoAttack, $18, nC4
	dc.b	$06, nA3, nA3, nG3, $0C, nA3, $0C, nC4, nC4, nC4, $06, $0C
	dc.b	nCs4, $0C, nD4, $06, $0C, $06, nC4, $0C, nD4, nRst, $30, nD4
	dc.b	$06, $0C, $06, nC4, $0C, nD4, nRst, $24, nD4, $06, $06, nE4
	dc.b	$06, nG4, $0C, nE4, $06, nG4, $0C, nE4, $06, nG4, $0C, nE4
	dc.b	$06, nG4, $0C, nE4, $0C, nG4, nE4, $06, nB3, nD4, nE4, nRst
	dc.b	nG4, nRst, nF4, $06, smpsNoAttack, $30, nE5, $18, nE5, $0C, nC5, nE5
	dc.b	$06, nE5, $0C, nA4, $06, nA4, $0C, nA4, nA4, $18, nA4, $0C
	dc.b	nA4, nA4, $06, nA4, $0C, nA4, $06, smpsNoAttack, $18, nB4, $12, $06
	dc.b	nRst, $0C, nB4, $0C, nRst, $06, nB4, $0C, nA4, $06, nG4, $0C
	dc.b	$0C, nE4, $0C, nD4, $06, nE4, $0C, $06, nD4, nE4, $0C, nE4
	dc.b	$06, nD4, nE4, $0C, $06, nD4, nE4, nE4, $0C, nD4, $06, nE4
	dc.b	nG4, nFs4, nE4, nD4, nRst, nE4, $12, smpsNoAttack, $18
	smpsJump            BRodG_Loop05

; FM4 Data
BRodG_FM4:
	smpsSetvoice        $01
	smpsModSet          $0C, $01, $05, $04
	dc.b	nRst, $60, nA4, nA3, $0C, nG3, $06, nA3, $0C, $0C, $06, nC4
	dc.b	$0C, nC4, $24

BRodG_Loop04:
	smpsAlterVol        $01
	dc.b	nA3, $12, $06, nRst, $0C, nA3, $0C, smpsNoAttack, $30, nA3, $12, $06
	dc.b	nRst, $0C, nA3, $12, $0C, nRst, $06, nA3, $18, nA3, $12, $06
	dc.b	nRst, $0C, nA3, $0C, smpsNoAttack, $30, nRst, $06, nA3, $0C, nRst, $06
	dc.b	nA3, $18, $06, $0C, $06, nRst, $0C, nA3, $0C
	smpsAlterVol        $FF
	dc.b	nD4, $60, nC4, nD4, nE4, $06, $0C, $06, nFs4, $0C, nE4, $06
	dc.b	nFs4, $0C, nE4, nFs4, $06, nE4, $0C, nD4
	smpsLoop            $00, $02, BRodG_Loop04
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nG3, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60, nG3, $60, smpsNoAttack, $60
	dc.b	nE3, $60
	smpsAlterVol        $FF
	smpsSetvoice        $01
	dc.b	nA3, $06, nE3, nG3, nA3, nRst, nC4, nRst, nB4, $06, smpsNoAttack, $30
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nA3, $60, nD3, nE3, nA3
	smpsAlterVol        $FF
	smpsSetvoice        $01
	dc.b	nA3, $0C, nG3, $06, nA3, nC4, nB3, nA3, nG3, nRst, nA3, $12
	dc.b	smpsNoAttack, $18
	smpsJump            BRodG_Loop04

; FM5 Data
BRodG_FM5:
	smpsAlterNote       $02
	dc.b	nRst, $0C
	smpsJump            BRodG_FM1

; DAC Data
BRodG_DAC:
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, $06, $0C, dSnare, $18
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06, dKick, $0C
	dc.b	dSnare, $12, dKick, $06, dKick, $06, $0C, $06, dSnare, $12, dKick, $06
	dc.b	dSnare, $06, dKick, $06, dSnare, $06, dKick, $0C, dSnare, $06, $0C

BRodG_Loop00:
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, $06, $0C, dSnare, $18
	smpsLoop            $00, $07, BRodG_Loop00
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $06, $06, dSnare, $06, dKick
	dc.b	$06, $06, dSnare, $0C, $06, $06
	smpsLoop            $01, $02, BRodG_Loop00

BRodG_Loop01:
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06, dKick, $0C
	dc.b	dSnare, $0C, dKick, $0C
	smpsLoop            $00, $03, BRodG_Loop01
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06, dKick, $0C
	dc.b	dSnare, $0C, dKick, $06, dSnare, $06

BRodG_Loop02:
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06, dKick, $0C
	dc.b	dSnare, $0C, dKick, $0C
	smpsLoop            $00, $02, BRodG_Loop02
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dSnare, $0C, $0C, dKick, $06, dSnare, $06, dKick, $06, $0C
	dc.b	$06, dSnare, $12, dKick, $0C, dSnare, $06, $06, dKick, $06, dSnare, $06
	dc.b	$06, dKick, $06, dSnare, $06

BRodG_Loop03:
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, $06, $0C, dSnare, $18
	smpsLoop            $00, $03, BRodG_Loop03
	dc.b	dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06, dKick, $0C
	dc.b	dSnare, $18, dKick, $06, $0C, $06, dSnare, $12, dKick, $0C, dSnare, $06
	dc.b	$06, dKick, $06, dSnare, $06, $06, dKick, $06, dSnare, $06
	smpsJump            BRodG_Loop00

; PSG1 Data
BRodG_PSG1:
	smpsPSGvoice        fTone_07
	smpsModSet          $1A, $01, $01, $03
	smpsPSGAlterVol     $FF
	dc.b	nD2, $60, smpsNoAttack, $60, nA2, $0C, nG2, $06, nA2, $0C, $0C, $06
	dc.b	nC3, $0C, nC3, $24
	smpsPSGAlterVol     $02

BRodG_Loop08:
	smpsPSGvoice        fTone_05
	dc.b	nG3, $30, nFs3, nE3, nD3, nG3, nFs3, nE3, nD3, nG3, nFs3, nE3
	dc.b	nD3, nD3, $60, smpsNoAttack, $60
	smpsLoop            $00, $02, BRodG_Loop08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_05
	dc.b	nD2, $60, smpsNoAttack, $60, nA1, $60, smpsNoAttack, $60, nD2, $60, smpsNoAttack, $60
	dc.b	nA1, $60
	smpsPSGvoice        fTone_07
	dc.b	nA2, $06, nE2, nG2, nA2, $0C, nC3, nE3, $06, smpsNoAttack, $30
	smpsPSGvoice        $00
	dc.b	nE2, $60, nA1, nB1, nE2
	smpsPSGvoice        fTone_07
	dc.b	nA2, $0C, nG2, $06, nA2, nC3, nB2, nA2, nG2, nRst, nA2, $12
	dc.b	smpsNoAttack, $18
	smpsPSGAlterVol     $01
	smpsJump            BRodG_Loop08

; PSG2 Data
BRodG_PSG2:
	smpsAlterNote       $01
	dc.b	nRst, $0C
	smpsJump            BRodG_PSG1

; PSG3 Data
BRodG_PSG3:
	smpsPSGform         $E7

BRodG_Jump00:
	smpsPSGvoice        fTone_02
	dc.b	(nMaxPSG-$F4)&$FF, $06, $06, $0C
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06, $0C, $06, $0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06
	smpsJump            BRodG_Jump00

BRodG_Voices:
;	Voice $00
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

;	Voice $03
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

;	Voice $05
;	$3C
;	$0F, $00, $60, $60, 	$1F, $17, $1F, $1F, 	$00, $0F, $18, $13
;	$00, $11, $00, $10, 	$08, $2C, $B8, $2C, 	$04, $11, $09, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $17, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $18, $0F, $00
	smpsVcDecayRate2    $10, $00, $11, $00
	smpsVcDecayLevel    $02, $0B, $02, $00
	smpsVcReleaseRate   $0C, $08, $0C, $08
	smpsVcTotalLevel    $00, $09, $11, $04

;	Voice $06
;	$3A
;	$50, $50, $40, $70, 	$DF, $DE, $97, $5E, 	$12, $14, $10, $04
;	$1F, $1F, $1F, $0E, 	$FF, $FF, $FE, $36, 	$14, $0F, $10, $08
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $04, $05, $05
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $01, $02, $03, $03
	smpsVcAttackRate    $1E, $17, $1E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $10, $14, $12
	smpsVcDecayRate2    $0E, $1F, $1F, $1F
	smpsVcDecayLevel    $03, $0F, $0F, $0F
	smpsVcReleaseRate   $06, $0E, $0F, $0F
	smpsVcTotalLevel    $08, $10, $0F, $14

;	Voice $07
;	$3B
;	$72, $77, $73, $71, 	$5C, $53, $5C, $50, 	$07, $09, $02, $00
;	$00, $00, $00, $00, 	$13, $32, $13, $3C, 	$1B, $20, $30, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $07, $07
	smpsVcCoarseFreq    $01, $03, $07, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $1C, $13, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $02, $09, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $03, $01, $03, $01
	smpsVcReleaseRate   $0C, $03, $02, $03
	smpsVcTotalLevel    $00, $30, $20, $1B

