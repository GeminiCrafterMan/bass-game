MM9Title_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     MM9Title_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $01, $68

	smpsHeaderDAC       MM9Title_DAC
	smpsHeaderFM        MM9Title_FM1,	$00, $11
	smpsHeaderFM        MM9Title_FM2,	$00, $11
	smpsHeaderFM        MM9Title_FM3,	$00, $11
	smpsHeaderFM        MM9Title_FM4,	$00, $11
	smpsHeaderPSG       MM9Title_PSG1and2,	$00-$0C, $05, $00, $00
	smpsHeaderPSG       MM9Title_PSG1and2,	$00-$0C-$0C, $05, $00, $00
	smpsHeaderPSG       MM9Title_PSG3,	$F4, $01, $00, fTone_09

; DAC Data
MM9Title_DAC:
	dc.b dFloorTom, $03, $0C

MM9Title_Loop04:
	dc.b dKick, dSnare
	smpsLoop		$00, $1D, MM9Title_Loop04
	dc.b dKick, dSnare, $03, $03, $03, $03, $09, $09
	dc.b dCrashCymbal, $7F, nRst, nRst, $70
	smpsStop

; FM1 Data
MM9Title_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b nRst, $0F, nBb4, $06, $03, $03, $06, nC5
	dc.b nRst, nCs5, $12, nC5, $06, $03, $03, $06
	dc.b nCs5, nRst, nEb5, $12, nCs5, $06, $03, $03
	dc.b $06, nEb5, nRst, nF5, $12, nEb5, $06, nF5
	dc.b nEb5, nBb4, $18, $03, nC5, nCs5, $18, $09
	dc.b nBb4, nF5, $06, nEb5, $0C, nCs5, nC5, nAb4
	dc.b nBb4, $12, nEb4, $03, nF4, nBb4, $09, nC5
	dc.b nBb4, $06, nA4, $12, nF5, $1E, nBb4, $06
	dc.b $03, $03, $06, nC5, nRst, nCs5, $12, nC5
	dc.b $06, $03, $03, $06, nCs5, nRst, nEb5, $12
	dc.b nCs5, $06, $03, $03, $06, nEb5, nRst, nF5
	dc.b $12, nEb5, $06, nF5, nEb5, nBb4, $18, $03
	dc.b nC5, nCs5, $18, $09, nBb4, nF5, $06, nEb5
	dc.b $0C, nCs5, nC5, nAb4, nBb4, $18, nBb5, $03
	dc.b nF5, nCs5, nC5, nBb4, nC5, nCs5, nEb5, nBb5
	dc.b $06, nRst, $03, nBb5, $06, nRst, $03, nBb5
	dc.b $06, nRst, $7F, $7F, $6A
	smpsStop

; FM2 Data
MM9Title_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b nRst, $0F, nBb4, $06, $03, $03, $06, nC5
	dc.b nRst, nCs5, $12, nC5, $06, $03, $03, $06
	dc.b nCs5, nRst, nEb5, $12, nCs5, $06, $03, $03
	dc.b $06, nEb5, nRst, nF5, $12, nEb5, $06, nF5
	dc.b nEb5, nBb4, $18, $03, nC5, nCs5, $18, $09
	dc.b nBb4, nF5, $06, nEb5, $0C, nCs5, nC5, nAb4
	dc.b nBb4, $12, nEb4, $03, nF4, nBb4, $09, nC5
	dc.b nBb4, $06, nA4, $12, nF5, $1E, nBb4, $06
	dc.b $03, $03, $06, nC5, nRst, nCs5, $12, nC5
	dc.b $06, $03, $03, $06, nCs5, nRst, nEb5, $12
	dc.b nCs5, $06, $03, $03, $06, nEb5, nRst, nF5
	dc.b $12, nEb5, $06, nF5, nEb5, nBb4, $18, $03
	dc.b nC5, nCs5, $18, $09, nBb4, nF5, $06, nEb5
	dc.b $0C, nCs5, nC5, nAb4, nBb4, $18, nBb5, $03
	dc.b nF5, nCs5, nC5, nBb4, nC5, nCs5, nEb5, nBb5
	dc.b $06, nRst, $03, nBb5, $06, nRst, $03, nBb5
	dc.b $06, nRst, $7F, $7F, $6A
	smpsStop

; FM3 Data
MM9Title_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b nRst, $0F, nBb2, $06, $03, $03, $06, $03
	dc.b $03, $06, nEb3, nF3, nBb3, nC3, nC3, $03
	dc.b $03, $06, $03, $03, $06, nF3, nAb3, nC4
	dc.b nCs3, nCs3, $03, $03, $06, $03, $03, $06
	dc.b nFs3, nA3, nCs4, nEb3, nEb3, $03, $03, $06
	dc.b $03, $03, $06, nBb3, nG3, nEb3, nEb3, nEb3
	dc.b nEb3, nEb3, nEb3, nBb3, nG3, nEb3, nF3, nF3
	dc.b nF3, nF3, nF3, nC4, nA3, nF3, nEb3, nEb3
	dc.b nEb3, nEb3, nEb3, nBb3, nG3, nEb3, nF3, nF3
	dc.b nF3, nF3, nF3, nBb3, nC4, nF4, nBb2, nBb2
	dc.b $03, $03, $06, $03, $03, $06, nEb3, nF3
	dc.b nBb3, nC3, nC3, $03, $03, $06, $03, $03
	dc.b $06, nF3, nAb3, nC4, nCs3, nCs3, $03, $03
	dc.b $06, $03, $03, $06, nFs3, nA3, nCs4, nEb3
	dc.b nEb3, $03, $03, $06, $03, $03, $06, nBb3
	dc.b nG3, nEb3, nCs4, nCs4, $03, $03, $06, $03
	dc.b $03, $06, $03, $03, nEb4, $06, nF4, nEb4
	dc.b nEb4, $03, $03, $06, $03, $03, $06, $03
	dc.b $03, nBb4, $06, nC5, nBb4, nBb4

MM9Title_Loop01:
	dc.b $03, $03, $06
	smpsLoop		$00, $04, MM9Title_Loop01
	dc.b nRst, $03, nBb4, $06, nRst, $03, nBb4, $06
	dc.b nRst, $7F, $7F, $6A
	smpsStop

; FM4 Data
MM9Title_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b nRst, $0F, nBb1, $06, $03, $03, $06, $03
	dc.b $03, $06, nEb2, nF2, nBb2, nC2, nC2, $03
	dc.b $03, $06, $03, $03, $06, nF2, nAb2, nC3
	dc.b nCs2, nCs2, $03, $03, $06, $03, $03, $06
	dc.b nFs2, nA2, nCs3, nEb2, nEb2, $03, $03, $06
	dc.b $03, $03, $06, nBb2, nG2, nEb2, nEb2, nEb2
	dc.b nEb2, nEb2, nEb2, nBb2, nG2, nEb2, nF2, nF2
	dc.b nF2, nF2, nF2, nC3, nA2, nF2, nEb2, nEb2
	dc.b nEb2, nEb2, nEb2, nBb2, nG2, nEb2, nF2, nF2
	dc.b nF2, nF2, nF2, nBb2, nC3, nF3, nBb1, nBb1
	dc.b $03, $03, $06, $03, $03, $06, nEb2, nF2
	dc.b nBb2, nC2, nC2, $03, $03, $06, $03, $03
	dc.b $06, nF2, nAb2, nC3, nCs2, nCs2, $03, $03
	dc.b $06, $03, $03, $06, nFs2, nA2, nCs3, nEb2
	dc.b nEb2, $03, $03, $06, $03, $03, $06, nBb2
	dc.b nG2, nEb2, nCs3, nCs3, $03, $03, $06, $03
	dc.b $03, $06, $03, $03, nEb3, $06, nF3, nEb3
	dc.b nEb3, $03, $03, $06, $03, $03, $06, $03
	dc.b $03, nBb3, $06, nC4, nBb3, nBb3

MM9Title_Loop02:
	dc.b $03, $03, $06
	smpsLoop		$00, $04, MM9Title_Loop02
	dc.b nRst, $03, nBb3, $06, nRst, $03, nBb3, $06
	dc.b nRst, $7F, $7F, $6A
	smpsStop

; PSG3 Data
MM9Title_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $0F, nMaxPSG

MM9Title_Loop03:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$03
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $3B, MM9Title_Loop03
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $06
	smpsStop

; PSG1 Data
MM9Title_PSG1and2:	; this is actually used for PSG1 *and* PSG2, but they're given different transposition values
	dc.b nRst, $0F, nCs4, $12, nEb4, $06, nRst, nF4
	dc.b $12, nEb4, nF4, $06, nRst, nFs4, $12, nF4
	dc.b nFs4, $06, nRst, nAb4, $12, nG4, nEb4, nBb3
	dc.b $0C, nCs4, $18, nF4, nEb4, nAb4, nCs4, nCs4
	dc.b $09, nEb4, nCs4, $06, nC4, $12, nF4, $1E
	dc.b nCs4, $12, nEb4, $03, nRst, $09, nF4, $12
	dc.b nEb4, nF4, $03, nRst, $09, nFs4, $12, nF4
	dc.b nFs4, $03, nRst, $09, nAb4, $12, nG4, nEb4
	dc.b nBb3, $0C, nCs4, $18, $09, nEb4, nF4, $06
	dc.b nEb4, $18, nC4, nBb3, $30, $06, nRst, $03
	dc.b nBb3, $06, nRst, $03, nBb3, $06, nRst, $7F
	dc.b $7F, $6A
	smpsStop

MM9Title_Voices:
;	Voice $00
;	Voice $04 from MM2 Stage Clear
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

;	Voice $01
;	Voice $00 from NQH's Maiden's Capriccio cover
;	$3A
;	$78, $01, $00, $11, 	$1F, $1F, $1F, $1F, 	$12, $0C, $0C, $10
;	$04, $04, $04, $04, 	$85, $25, $25, $16, 	$1E, $32, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $07
	smpsVcCoarseFreq    $01, $00, $01, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $0C, $0C, $12
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $02, $02, $08
	smpsVcReleaseRate   $06, $05, $05, $05
	smpsVcTotalLevel    $00, $14, $32, $1E

;	Voice $02
;	Voice $08 from MM2 Stage Clear
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
;	Voice $00 from Magnet Man's theme
;	$10
;	$42, $45, $77, $72, 	$1F, $12, $1F, $5F, 	$04, $01, $04, $0C
;	$01, $01, $01, $02, 	$10, $18, $19, $18, 	$1B, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $04
	smpsVcCoarseFreq    $02, $07, $05, $02
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $02, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $09, $08, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1B

