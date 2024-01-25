Stage_Select_RM3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Stage_Select_RM3_Voices
	smpsHeaderChan      $06, $02
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       Stage_Select_RM3_DAC
	smpsHeaderFM        Stage_Select_RM3_FM1,	$00, $06
	smpsHeaderFM        Stage_Select_RM3_FM2,	$00, $07
	smpsHeaderFM        Stage_Select_RM3_FM3,	$00, $07
	smpsHeaderFM        Stage_Select_RM3_FM4,	$00, $04
	smpsHeaderFM        Stage_Select_RM3_FM5,	$00, $08
	smpsHeaderPSG       Stage_Select_RM3_PSG1,	$F4, $02, $00, $00
	smpsHeaderPSG       Stage_Select_RM3_PSG2,	$E8, $06, $00, $00

; FM1 Data
Stage_Select_RM3_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0A
	smpsModSet          $05, $01, $03, $03

Stage_Select_RM3_Jump03:
	smpsCall            Stage_Select_RM3_Call00
	dc.b	nAb3, $12, nEb3, $06, nFs3
	smpsCall            Stage_Select_RM3_Call00
	dc.b	nAb3, $0E, nB3, $08, nCs4, nEb4, $12, nCs4, $03, nB3, nAb3, $21
	dc.b	nRst, $03, nEb4, $06, nB4, nBb4, nFs4, nRst, nAb4, $12, nEb4, $06
	dc.b	nAb4, nFs4, nCs4, nRst, nEb4, $12, nRst, $06, nAb3, $03, nBb3, nB3
	dc.b	$06, nBb3, nAb3, nFs3
	smpsJump            Stage_Select_RM3_Jump03

Stage_Select_RM3_Call00:
	dc.b	nAb3, $04, nRst, $02, nAb3, $06, nFs3, nAb3, nRst, nB3, nRst, nBb3
	dc.b	nRst, nFs3, nRst
	smpsReturn

; FM2 Data
Stage_Select_RM3_FM2:
	smpsSetvoice        $02
	smpsAlterVol        $0C

Stage_Select_RM3_Loop01:
	smpsCall            Stage_Select_RM3_Call05
	smpsLoop            $00, $04, Stage_Select_RM3_Loop01
	smpsCall            Stage_Select_RM3_Call06
	smpsCall            Stage_Select_RM3_Call06
	smpsCall            Stage_Select_RM3_Call06
	dc.b	nAb2, $04, nRst, $02, nAb2, $06, nBb2, nB2, nEb3, nCs3, nB2, nBb2
	smpsJump            Stage_Select_RM3_Loop01

Stage_Select_RM3_Call05:
	dc.b	nAb2, $06, nB2, nCs3, nB2, nEb3, nB2, nCs3, nB2
	smpsReturn

Stage_Select_RM3_Call06:
	dc.b	nAb2, $04, nRst, $02, nAb2, $06, nB2, nAb2, nEb3, nB2, nCs3, nB2
	smpsReturn

; FM3 Data
Stage_Select_RM3_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $02
	smpsAlterVol        $11

Stage_Select_RM3_Loop00:
	smpsCall            Stage_Select_RM3_Call03
	smpsLoop            $00, $04, Stage_Select_RM3_Loop00
	smpsCall            Stage_Select_RM3_Call04
	smpsCall            Stage_Select_RM3_Call04
	smpsCall            Stage_Select_RM3_Call04
	dc.b	nAb2, $04, nRst, $02, nAb2, $06, nBb2, nB2, nEb3, nCs3, nB2, nBb2
	smpsJump            Stage_Select_RM3_Loop00

Stage_Select_RM3_Call03:
	dc.b	nAb2, $06, nB2, nCs3, nB2, nEb3, nB2, nCs3, nB2
	smpsReturn

Stage_Select_RM3_Call04:
	dc.b	nAb2, $04, nRst, $02, nAb2, $06, nB2, nAb2, nEb3, nB2, nCs3, nB2
	smpsReturn

; FM4 Data
Stage_Select_RM3_FM4:
	smpsAlterVol        $07

Stage_Select_RM3_Jump02:
	smpsSetvoice        $01
	smpsCall            Stage_Select_RM3_Call01
	smpsCall            Stage_Select_RM3_Call01
	smpsCall            Stage_Select_RM3_Call02
	dc.b	nE3, $04, nRst, $02, nE3, $06, nRst, nE3, $04, nRst, $02
	smpsCall            Stage_Select_RM3_Call02
	dc.b	nFs3, $04, nRst, $02, nFs3, $06, nRst, nFs3
	smpsJump            Stage_Select_RM3_Jump02

Stage_Select_RM3_Call01:
	dc.b	nAb3, $04, nRst, $02, nAb3, $06, nRst, nAb3, nRst, nAb3, nRst, nAb3
	dc.b	nRst, nAb3, nRst, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b	$06, nRst, nAb3, $04, nRst, $02
	smpsReturn

Stage_Select_RM3_Call02:
	dc.b	nE3, $04, nRst, $02, nE3, $06, nRst, nE3, nRst, nE3, nRst, nE3
	dc.b	nRst, nE3, nRst, nE3, $04, nRst, $02
	smpsReturn

; DAC Data
Stage_Select_RM3_DAC:
	;smpsAlterVol        $FE

;Stage_Select_RM3_Jump00:
	dc.b	dKickS3, $06
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	dc.b	dSnareS3
	;smpsAlterVol        $03
	dc.b	dKickS3, dKickS3, dKickS3
	;smpsAlterVol        $FD
	dc.b	dSnareS3
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	dc.b	dKickS3
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	dc.b	dSnareS3
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	dc.b	dKickS3
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	dc.b	dSnareS3
	;smpsAlterVol        $03
	dc.b	dKickS3
	;smpsAlterVol        $FD
	smpsJump            Stage_Select_RM3_DAC

; PSG1 Data
Stage_Select_RM3_PSG1:
	smpsModSet          $02, $01, $0A, $00
	smpsPSGvoice        fTone_06
	dc.b	nRst, $0C, nCs2
	smpsJump            Stage_Select_RM3_PSG1

; PSG2 Data
Stage_Select_RM3_PSG2:
	smpsModSet          $07, $01, $01, $04
	dc.b	nRst, $03

Stage_Select_RM3_Jump04:
	smpsCall            Stage_Select_RM3_Call07
	dc.b	nAb3, $12, nEb3, $06, nFs3
	smpsCall            Stage_Select_RM3_Call07
	dc.b	nAb3, $0E, nB3, $08, nCs4, nEb4, $13, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nEb6, $12, nCs6, $03, nB5
	smpsPSGvoice        fTone_08
	dc.b	nAb5, $30
	smpsPSGAlterVol     $01
	smpsPSGvoice        $00
	dc.b	nRst, nRst, $0C, nRst, $09, nAb3, $03, nBb3, nB3, $06, nBb3, nAb3
	dc.b	nFs3
	smpsJump            Stage_Select_RM3_Jump04

Stage_Select_RM3_Call07:
	dc.b	nAb3, $04, nRst, $02, nAb3, $06, nFs3, nAb3, nRst, nB3, nRst, nBb3
	dc.b	nRst, nFs3, nRst
	smpsReturn

; FM5 Data
Stage_Select_RM3_FM5:
	smpsSetvoice        $00
	smpsAlterVol        $0A
	smpsModSet          $05, $01, $03, $03
	dc.b	nRst, $03

Stage_Select_RM3_Jump01:
	smpsCall            Stage_Select_RM3_Call00
	dc.b	nAb3, $12, nEb3, $06, nFs3
	smpsCall            Stage_Select_RM3_Call00
	dc.b	nAb3, $0E, nB3, $08, nCs4, nEb4, $12, nCs4, $03, nB3, nAb3, $21
	dc.b	nRst, $03, nEb4, $06, nB4, nBb4, nFs4, nRst, nAb4, $12, nEb4, $06
	dc.b	nAb4, nFs4, nCs4, nRst, nEb4, $12, nRst, $06, nAb3, $03, nBb3, nB3
	dc.b	$06, nBb3, nAb3, nFs3
	smpsJump            Stage_Select_RM3_Jump01

Stage_Select_RM3_Voices:
;	Voice $00
;	$07
;	$12, $14, $76, $72, 	$14, $18, $15, $17, 	$00, $01, $00, $01
;	$04, $04, $04, $04, 	$F8, $F8, $F8, $F8, 	$0A, $03, $05, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $01, $01
	smpsVcCoarseFreq    $02, $06, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $15, $18, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $01, $00
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $05, $03, $0A

;	Voice $01
;	$08
;	$0A, $70, $30, $60, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$26, $26, $26, $26, 	$24, $2D, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $02
;	$34
;	$04, $02, $02, $02, 	$5F, $DF, $DF, $DF, 	$14, $0B, $16, $09
;	$1B, $09, $0D, $09, 	$E3, $E7, $E7, $E7, 	$12, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $04
	smpsVcRateScale     $03, $03, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $16, $0B, $14
	smpsVcDecayRate2    $09, $0D, $09, $1B
	smpsVcDecayLevel    $0E, $0E, $0E, $0E
	smpsVcReleaseRate   $07, $07, $07, $03
	smpsVcTotalLevel    $00, $1C, $00, $12

