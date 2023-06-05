Game_Over_RM2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Game_Over_RM2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $06

	smpsHeaderDAC       Game_Over_RM2_DAC
	smpsHeaderFM        Game_Over_RM2_FM1,	$00, $14
	smpsHeaderFM        Game_Over_RM2_FM2,	$00, $0A
	smpsHeaderFM        Game_Over_RM2_FM3,	$00, $14
	smpsHeaderFM        Game_Over_RM2_FM4,	$00, $14
	smpsHeaderFM        Game_Over_RM2_FM5,	$00, $17
	smpsHeaderPSG       Game_Over_RM2_PSG1,	$E8, $03, $00, fTone_09
	smpsHeaderPSG       Game_Over_RM2_PSG2,	$F4, $00, $00, fTone_09
	smpsHeaderPSG       Game_Over_RM2_PSG3,	$F4, $01, $00, fTone_09

; FM1 Data
Game_Over_RM2_FM1:
	smpsSetvoice        $04
	smpsModSet          $0C, $01, $05, $04

Game_Over_RM2_Jump00:
	dc.b	nEb5, $06, $0C, $06
	smpsAlterVol        $0E
	dc.b	$06
	smpsAlterVol        $F2
	dc.b	$0C, $06, nRst, $18, nE5, $06, nFs5, $0C, nAb5, $60
	smpsStop

; FM2 Data
Game_Over_RM2_FM2:
	smpsSetvoice        $08
	dc.b	nAb2, $06, $0C, $06, nRst, nAb2, $0C, $06, nRst, $18, nA2, $06
	dc.b	nB2, $0C, nCs3, $06, smpsNoAttack, $60
	smpsStop

; FM3 Data
Game_Over_RM2_FM3:
	smpsSetvoice        $04
	smpsModSet          $0C, $01, $05, $04
	dc.b	nC5, $06, $0C, $06
	smpsAlterVol        $0E
	dc.b	$06
	smpsAlterVol        $F2
	dc.b	$0C, $06, nRst, $18, nCs5, $06, nEb5, $0C, nF5, $06, smpsNoAttack, $60
	smpsStop

; FM4 Data
Game_Over_RM2_FM4:
	smpsModSet          $0C, $01, $05, $04
	smpsSetvoice        $04
	dc.b	nAb4, $06, $0C, $06
	smpsAlterVol        $0E
	dc.b	$06
	smpsAlterVol        $F2
	dc.b	nAb4, $0C, $06, nRst, $18, nA4, $06, nB4, $0C, nCs5, $06, smpsNoAttack
	dc.b	$60
	smpsStop

; FM5 Data
Game_Over_RM2_FM5:
	smpsAlterNote       $03
	dc.b	nRst, $06
	smpsJump            Game_Over_RM2_FM1

; DAC Data
Game_Over_RM2_DAC:
	dc.b	dSnare, $06, $0C, $0C, $0C, $06, dSnare, $06, $12, dSnare, $06, $0C
	dc.b	$06, nRst, $24, dSnare, $06, $06, $18
	smpsStop

; PSG1 Data
Game_Over_RM2_PSG1:
	smpsPSGvoice        fTone_07
	smpsJump            Game_Over_RM2_Jump00

; PSG2 Data
Game_Over_RM2_PSG2:
	smpsPSGvoice        fTone_07
	smpsModSet          $00, $01, $1B, $31
	dc.b	nRst, $30, nC4, $06, nG3, $12, nRst, $30, smpsNoAttack, nG3, $0C, nE4
	dc.b	$06, nA3, nC3, $12
	smpsStop

; PSG3 Data
Game_Over_RM2_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_09
	dc.b	(nMaxPSG-$F4)&$FF, $06, $0C, $0C, $0C, $06, nRst, $18, (nMaxPSG-$F4)&$FF, $06, $0C, $06
	smpsStop

Game_Over_RM2_Voices:
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

