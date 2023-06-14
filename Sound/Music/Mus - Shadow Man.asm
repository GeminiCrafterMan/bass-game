Shadow_Man_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Shadow_Man_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $78

	smpsHeaderDAC       Shadow_Man_DAC
	smpsHeaderFM        Shadow_Man_FM1,	$0C, $02
	smpsHeaderFM        Shadow_Man_FM2,	$0C, $05
	smpsHeaderFM        Shadow_Man_FM3,	$00, $05
	smpsHeaderFM        Shadow_Man_FM4,	$00, $00
	smpsHeaderFM        Shadow_Man_FM5,	$00, $00
	smpsHeaderPSG       Shadow_Man_PSG1,	$F4, $04, $00, $00
	smpsHeaderPSG       Shadow_Man_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       Shadow_Man_PSG3,	$00, $00, $00, $00

; FM1 Data
Shadow_Man_FM1:
	smpsSetvoice        $01
	smpsModSet          $06, $01, $02, $06
	smpsFMAlterVol      $05

Shadow_Man_Jump03:
	dc.b	nA3, $03, nFs3, nA3, nB3, nD4, nC4, nCs4, nD4, nRst, nFs4, nRst
	dc.b	nA4, nRst, nB4, nRst, nC5, $02, nRst, $01

Shadow_Man_Loop0D:
	dc.b	nCs5, $04, nRst, $08
	smpsLoop            $00, $04, Shadow_Man_Loop0D
	smpsSetvoice        $05
	smpsFMAlterVol      $09
	smpsModSet          $06, $01, $03, $06
	dc.b	nRst, $60, nRst, $60
	smpsAlterPitch      $F4

Shadow_Man_Loop0E:
	dc.b	nRst, $0C, nB4, $06, nRst, nB4, nA4, $12, nB4, $06, nCs5, $0C
	dc.b	nB4, nA4, $12, nRst, $0C, nB4, $06, nRst, nB4, nA4, $12, nEb5
	dc.b	$06, nRst, $0C, nA4, $1C, nRst, $02
	smpsLoop            $01, $02, Shadow_Man_Loop0E
	smpsAlterPitch      $0C
	smpsFMAlterVol      $F7
	smpsSetvoice        $01
	smpsModSet          $06, $01, $02, $06

Shadow_Man_Loop0F:
	dc.b	nB2, $04, nRst, $02, nB2, $06, nA2, nB2, nRst, nB2, nA2, nB2
	dc.b	nCs3, nB2, nA2, nFs2, $1B, nRst, $03, nB2, $04, nRst, $02, nB2
	dc.b	$06, nA2, nB2, nRst, nF3, $02, nFs3, $04, nF3, $06, nE3, $33
	dc.b	nRst, $03, nA3, $04, nRst, $02, nA3, $06, nFs3, nA3, nRst, nA3
	dc.b	nFs3, nA3, nBb3, $02, nB3, $0A, nCs4, $0C, nB3, $06, nFs3, nRst
	dc.b	$0C, nE3, $04, nRst, $02, nE3, $06, nCs3, nE3, nRst, nAb3, $02
	dc.b	nA3, $04, nAb3, $06, nFs3, $33, nRst, $03
	smpsLoop            $01, $02, Shadow_Man_Loop0F
	dc.b	nFs2, nE2, nFs2, nRst, nA2, nRst, nB2, nA2, nB2, nRst, nCs3, nRst
	dc.b	nE3, nCs3, nE3, nRst, nFs3, $06, nA3, nB3, nCs4, $1B, nRst, $03

Shadow_Man_Loop10:
	dc.b	nE3, $03, nB2, nE3, nRst, nFs3, nRst, nA3, nRst, nG3, $02, nAb3
	dc.b	$07, nE3, $03, nRst, $09, nCs4, nB3, $03, nRst, nA3, nRst, nAb3
	dc.b	nRst, nAb3, $02, nA3, $07, nB3, $03, nRst, $09, nE3, $03, nB3
	dc.b	$09, nRst, $03, nA3, $09, nRst, $03, nAb3, $09, nRst, $03, nFs3
	dc.b	$07, nRst, $02, nFs3, $03, nRst, nE3, $07, nRst, $02, nE3, $03
	dc.b	nRst, nC3, nRst, nE3, $0C, nFs3
	smpsLoop            $01, $02, Shadow_Man_Loop10
	smpsFMAlterVol      $03
	smpsJump            Shadow_Man_Jump03

; FM2 Data
Shadow_Man_FM2:
	smpsSetvoice        $02
	smpsFMAlterVol      $0A

Shadow_Man_Jump02:
	smpsModSet          $06, $01, $06, $06
	dc.b	nA2, $03, nFs2, nA2, nB2, nD3, nC3, nCs3, nD3, nRst, nFs3, nRst
	dc.b	nA3, nRst, nB3, nRst, nC4

Shadow_Man_Loop09:
	dc.b	nA2, $04, nRst, $08
	smpsLoop            $00, $04, Shadow_Man_Loop09
	smpsSetvoice        $05
	smpsModSet          $06, $01, $03, $06
	dc.b	nRst, $60, nRst, $60
	smpsAlterPitch      $F4
	smpsFMAlterVol      $07

Shadow_Man_Loop0A:
	dc.b	nRst, $0C, nFs4, $06, nRst, nFs4, $04, nRst, $02, nFs4, $10, nRst
	dc.b	$02, nFs4, $04, nRst, $02, nFs4, $0A, nRst, $02, nFs4, $0A, nRst
	dc.b	$02, nFs4, $12, nRst, $0C, nFs4, $06, nRst, nFs4, $04, nRst, $02
	dc.b	nFs4, $12, nE4, $06, nRst, $0C, nE4, $1B, nRst, $03
	smpsLoop            $01, $02, Shadow_Man_Loop0A
	smpsFMAlterVol      $FE
	smpsAlterPitch      $0C
	smpsSetvoice        $04
	smpsFMAlterVol      $03
	dc.b	nEb4, $30, nA3, nEb4, $24, nA3, $0C, nFs3, $30, nEb4, nA3, nB3
	dc.b	$1E, nRst, $06, nA3, $0C, nFs3, $2D, nRst, $03
	smpsFMAlterVol      $FD
	smpsSetvoice        $03
	smpsFMAlterVol      $05

Shadow_Man_Loop0B:
	smpsCall            Shadow_Man_Call04
	smpsCall            Shadow_Man_Call04
	smpsCall            Shadow_Man_Call04
	dc.b	nE5, $02
	smpsFMAlterVol      $0A
	dc.b	nE5, $01
	smpsFMAlterVol      $F6
	dc.b	nEb5, $02
	smpsFMAlterVol      $0A
	dc.b	nEb5, $01
	smpsFMAlterVol      $F6
	dc.b	nD5, $02
	smpsFMAlterVol      $0A
	dc.b	nD5, $01
	smpsFMAlterVol      $F6
	dc.b	nCs5, $02
	smpsFMAlterVol      $0A
	dc.b	nCs5, $01
	smpsFMAlterVol      $F6
	dc.b	nB4, $02
	smpsFMAlterVol      $0A
	dc.b	nB4, $01
	smpsFMAlterVol      $F6
	dc.b	nBb4, $02
	smpsFMAlterVol      $0A
	dc.b	nBb4, $01
	smpsFMAlterVol      $F6
	dc.b	nA4, $02
	smpsFMAlterVol      $0A
	dc.b	nA4, $01
	smpsFMAlterVol      $F6
	dc.b	nAb4, $02
	smpsFMAlterVol      $0A
	dc.b	nAb4, $01
	smpsFMAlterVol      $F6
	smpsLoop            $00, $04, Shadow_Man_Loop0B
	smpsCall            Shadow_Man_Call05
	smpsCall            Shadow_Man_Call05
	smpsCall            Shadow_Man_Call05
	smpsCall            Shadow_Man_Call05
	dc.b	nFs4, $03, nCs4, nE4, nFs4, nB4, nA4, nAb4, nFs4, $02
	smpsSetvoice        $02
	dc.b	nRst, $01
	smpsFMAlterVol      $FB

Shadow_Man_Loop0C:
	dc.b	nAb3, $03, nE3, nAb3, nRst, nAb3, nRst, nB3, nRst, nBb3, $02, nB3
	dc.b	$07, nE3, $03, nRst, $09, nA3, nAb3, $03, nRst, nFs3, nRst, nE3
	dc.b	nRst, nF3, $02, nFs3, $07, nAb3, $03, nRst, $09, nB2, $03, nAb3
	dc.b	$09, nRst, $03, nFs3, $09, nRst, $03, nE3, $09, nRst, $03, nEb3
	dc.b	$07, nRst, $02, nA2, $03, nRst, nC3, $07, nRst, $02, nC3, $03
	dc.b	nRst, nC3, $04, nRst, $02, nD3, $0A, nRst, $02, nD3, $0A, nRst
	dc.b	$02
	smpsLoop            $01, $02, Shadow_Man_Loop0C
	smpsFMAlterVol      $FB
	smpsJump            Shadow_Man_Jump02

Shadow_Man_Call04:
	dc.b	nFs4, $02
	smpsFMAlterVol      $0A
	dc.b	nFs4, $01
	smpsFMAlterVol      $F6
	dc.b	nE4, $02
	smpsFMAlterVol      $0A
	dc.b	nE4, $01
	smpsFMAlterVol      $F6
	dc.b	nFs4, $02
	smpsFMAlterVol      $0A
	dc.b	nFs4, $01
	smpsFMAlterVol      $F6
	dc.b	nA4, $02
	smpsFMAlterVol      $0A
	dc.b	nA4, $01
	smpsFMAlterVol      $F6
	dc.b	nCs5, $02
	smpsFMAlterVol      $0A
	dc.b	nCs5, $01
	smpsFMAlterVol      $F6
	dc.b	nA4, $02
	smpsFMAlterVol      $0A
	dc.b	nA4, $01
	smpsFMAlterVol      $F6
	dc.b	nFs4, $02
	smpsFMAlterVol      $0A
	dc.b	nFs4, $01
	smpsFMAlterVol      $F6
	dc.b	nE4, $02
	smpsFMAlterVol      $0A
	dc.b	nE4, $01
	smpsFMAlterVol      $F6
	smpsReturn

Shadow_Man_Call05:
	dc.b	nFs4, $03, nCs4, nE4, nFs4, $03, nCs4, nE4
	smpsReturn

; FM3 Data
Shadow_Man_FM3:
	smpsFMAlterVol      $0A

Shadow_Man_Jump01:
	smpsSetvoice        $01
	smpsFMAlterVol      $05
	dc.b	nA2, $03, nFs2, nA2, nB2, nD3, nC3, nCs3, nD3, nRst, nFs3, nRst
	dc.b	nA3, nRst, nB3, nRst, nC4
	smpsFMAlterVol      $FB
	dc.b	nFs4, $04, nRst, $08, nFs4, $04, nRst, $08, nFs4, $04, nRst, $08
	dc.b	nFs4, $04, nRst, $08
	smpsSetvoice        $04
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsFMAlterVol      $05
	smpsAlterPitch      $0C
	dc.b	nEb4, $30, nA3, nEb4, $24, nA3, $0C, nFs3, $30, nEb4, nA3, nB3
	dc.b	$1E, nRst, $06, nA3, $0C, nFs3, $2D, nRst, $03
	smpsAlterPitch      $F4
	smpsFMAlterVol      $05
	dc.b	nFs3, $30, nE3
	smpsFMAlterVol      $F6
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            Shadow_Man_Jump01

; FM4 Data
Shadow_Man_FM4:
	smpsSetvoice        $00
	smpsFMAlterVol      $07

Shadow_Man_Jump00:
	dc.b	nA2, $03, nFs2, nA2, nB2, nD3, nC3, nCs3, nD3, nRst, nFs3, nRst
	dc.b	nA3, nRst, nB3, nRst, nC4

Shadow_Man_Loop05:
	dc.b	nD3, $06, nRst
	smpsLoop            $00, $04, Shadow_Man_Loop05
	smpsCall            Shadow_Man_Call01
	smpsCall            Shadow_Man_Call01

Shadow_Man_Loop06:
	smpsCall            Shadow_Man_Call01
	smpsLoop            $00, $04, Shadow_Man_Loop06

Shadow_Man_Loop08:
	smpsCall            Shadow_Man_Call02
	smpsCall            Shadow_Man_Call02
	smpsCall            Shadow_Man_Call02
	dc.b	nA2, $03, nRst, nA2, $06, nE3, nA2, nG3, nFs3, nE3, nA2

Shadow_Man_Loop07:
	smpsCall            Shadow_Man_Call02
	smpsLoop            $02, $03, Shadow_Man_Loop07
	dc.b	nFs2, $03, nRst, nFs2, $06, nA2, nFs2, nCs3, nB2, nA2, nFs2
	smpsLoop            $01, $02, Shadow_Man_Loop08
	dc.b	nB2, $30, nA2
	smpsCall            Shadow_Man_Call03
	smpsCall            Shadow_Man_Call03
	smpsJump            Shadow_Man_Jump00

Shadow_Man_Call01:
	dc.b	nFs2, $0C, nA2, nB2, $18, nRst, $06, nC3, nB2, nA2, $1C, nRst
	dc.b	$02
	smpsReturn

Shadow_Man_Call02:
	dc.b	nFs2, $03, nRst, nFs2, $06, nB2, nFs2, nRst, nFs2, nB2, nRst
	smpsReturn

Shadow_Man_Call03:
	dc.b	nE3, $03, nRst, nE3, nRst, nB2, nCs3, nRst, nD3, $06, nRst, $03
	dc.b	nD3, nRst, $06, nD3, $03, nRst, nE3, $06, nRst, $03, nE3, nRst
	dc.b	nB2, nCs3, nRst, nD3, $06, nRst, $03, nD3, $03, nRst, $06, nD3
	dc.b	$03, nRst, $06, nA2, $03, nRst, nA2, nRst, nFs2, nA2, nRst, nB2
	dc.b	$06, nRst, $03, nB2, nRst, $06, nB2, $03, nRst, $06, nC3, $03
	dc.b	nRst, nC3, nRst, nG2, nC3, nRst, $06, nD3, $0A, nRst, $02, nD3
	dc.b	$0A, nRst, $02
	smpsReturn

; FM5 Data
Shadow_Man_FM5:
	smpsStop

; DAC Data
Shadow_Man_DAC:
	dc.b	dKick, $0C, dKick, $0C
	smpsLoop            $00, $04, Shadow_Man_DAC

Shadow_Man_Loop00:
	smpsCall            Shadow_Man_Call00
	smpsLoop            $00, $04, Shadow_Man_Loop00

Shadow_Man_Loop01:
	smpsCall            Shadow_Man_Call00
	smpsCall            Shadow_Man_Call00
	smpsLoop            $00, $04, Shadow_Man_Loop01

Shadow_Man_Loop02:
	smpsCall            Shadow_Man_Call00
	smpsCall            Shadow_Man_Call00
	smpsLoop            $01, $02, Shadow_Man_Loop02
	smpsLoop            $00, $04, Shadow_Man_Loop02

Shadow_Man_Loop03:
	dc.b	dKick, $0C, dKick
	smpsLoop            $00, $04, Shadow_Man_Loop03

Shadow_Man_Loop04:
	smpsCall            Shadow_Man_Call00
	smpsCall            Shadow_Man_Call00
	smpsLoop            $00, $04, Shadow_Man_Loop04
	smpsJump            Shadow_Man_DAC

Shadow_Man_Call00:
	dc.b	dKick, $06
	;smpsFMAlterVol      $05
	dc.b	dKick
	;smpsFMAlterVol      $FB
	dc.b	dSnare, $03, dKick
	;smpsFMAlterVol      $0A
	dc.b	dKick
	;smpsFMAlterVol      $FB
	dc.b	dKick, dKick, $06, dKick
	;smpsFMAlterVol      $FB
	dc.b	dSnare
	;smpsFMAlterVol      $05
	dc.b	dKick
	;smpsFMAlterVol      $FB
	smpsReturn

; PSG1 Data
Shadow_Man_PSG1:
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $02
	dc.b	nA3, $03, nFs3, nA3, nB3, nD4, nC4, nCs4, nD4, nRst, nFs4, nRst
	dc.b	nA4, nRst, nB4, nRst, nC5, $02, nRst, $01, nFs3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $08, nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	smpsPSGAlterVol     $FE
	smpsModSet          $06, $01, $01, $03
	smpsAlterPitch      $F4
	dc.b	nRst, $60, nRst, $60, nRst, $02
	smpsCall            Shadow_Man_Call09
	smpsCall            Shadow_Man_Call09
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $02
	smpsCall            Shadow_Man_Call0A
	smpsCall            Shadow_Man_Call0A
	dc.b	nFs3, $30, nE3, nRst, $60, nRst, $60, nRst, $60, nRst, $5E
	smpsPSGAlterVol     $FE
	smpsJump            Shadow_Man_PSG1

Shadow_Man_Call09:
	dc.b	nRst, $0C, nB4, $06, nRst, nB4, nA4, $12, nB4, $06, nCs5, $0C
	dc.b	nB4, nA4, $12, nRst, $0C, nB4, $06, nRst, nB4, nA4, $12, nEb5
	dc.b	$06, nRst, $0C, nA4, $1C, nRst, $02
	smpsReturn

Shadow_Man_Call0A:
	dc.b	nEb4, $30, nA3, nEb4, $24, nA3, $0C, nFs3, $30, nEb4, nA3, nB3
	dc.b	$1E, nRst, $06, nA3, $0C, nFs3, $2D, nRst, $03
	smpsReturn

; PSG2 Data
Shadow_Man_PSG2:
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $02
	dc.b	nA3, $03, nFs3, nA3, nB3, nD4, nC4, nCs4, nD4, nRst, nFs4, nRst
	dc.b	nA4, nRst, nB4, nRst, nC5, $02, nRst, $01
	smpsAlterPitch      $F4
	dc.b	nCs5, $04, nRst, $08, nCs5, $04, nRst, $08, nCs5, $04, nRst, $08
	dc.b	nCs5, $04, nRst, $08
	smpsModSet          $06, $01, $01, $02
	smpsPSGAlterVol     $FE
	smpsCall            Shadow_Man_Call06
	smpsCall            Shadow_Man_Call06
	dc.b	nRst, $02
	smpsPSGAlterVol     $01
	smpsCall            Shadow_Man_Call07
	smpsCall            Shadow_Man_Call07
	dc.b	nFs2, $03, nE2, nFs2, nRst, nA2, nRst, nB2, nA2, nB2, nRst, nCs3
	dc.b	nRst, nE3, nCs3, nE3, nRst, nFs3, $06, nA3, nB3, nCs4, $1C
	smpsAlterPitch      $0C
	smpsCall            Shadow_Man_Call08
	smpsCall            Shadow_Man_Call08
	smpsPSGAlterVol     $FF
	smpsJump            Shadow_Man_PSG2

Shadow_Man_Call06:
	dc.b	nRst, $60, nRst, $60, nRst, $60
	smpsReturn

Shadow_Man_Call07:
	dc.b	nB2, $04, nRst, $02, nB2, $06, nA2, nB2, nRst, nB2, nA2, nB2
	dc.b	nCs3, nB2, nA2, nFs2, $1B, nRst, $03, nB2, $04, nRst, $02, nB2
	dc.b	$06, nA2, nB2, nRst, nF3, $02, nFs3, $04, nF3, $06, nE3, $33
	dc.b	nRst, $03, nA3, $04, nRst, $02, nA3, $06, nFs3, nA3, nRst, nA3
	dc.b	nFs3, nA3, nBb3, $02, nB3, $0A, nCs4, $0C, nB3, $06, nFs3, nRst
	dc.b	$0C, nE3, $04, nRst, $02, nE3, $06, nCs3, nE3, nRst, nAb3, $02
	dc.b	nA3, $04, nAb3, $06, nFs3, $33, nRst, $03
	smpsReturn

Shadow_Man_Call08:
	dc.b	nE3, $03, nB2, nE3, nRst, nFs3, nRst, nA3, nRst, nG3, $02, nAb3
	dc.b	$07, nE3, $03, nRst, $09, nCs4, nB3, $03, nRst, nA3, nRst, nAb3
	dc.b	nRst, nAb3, $02, nA3, $07, nB3, $03, nRst, $09, nE3, $03, nB3
	dc.b	$09, nRst, $03, nA3, $09, nRst, $03, nAb3, $09, nRst, $03, nFs3
	dc.b	$07, nRst, $02, nFs3, $03, nRst, nE3, $07, nRst, $02, nE3, $03
	dc.b	nRst, nC3, $04, nRst, $02, nE3, $0C, nFs3, $0A, nRst, $02
	smpsReturn

; PSG3 Data
Shadow_Man_PSG3:
	smpsStop

Shadow_Man_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $60, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$26, $26, $26, $26, 	$24, $2D, $13, $80
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

;	Voice $01
;	$3C
;	$31, $71, $3E, $71, 	$54, $96, $96, $9F, 	$03, $01, $0C, $04
;	$01, $01, $08, $01, 	$27, $25, $44, $25, 	$19, $85, $33, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $0E, $01, $01
	smpsVcRateScale     $02, $02, $02, $01
	smpsVcAttackRate    $1F, $16, $16, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0C, $01, $03
	smpsVcDecayRate2    $01, $08, $01, $01
	smpsVcDecayLevel    $02, $04, $02, $02
	smpsVcReleaseRate   $05, $04, $05, $07
	smpsVcTotalLevel    $00, $33, $05, $19

;	Voice $02
;	$28
;	$42, $49, $11, $71, 	$1F, $1F, $1F, $1C, 	$04, $01, $04, $05
;	$01, $01, $01, $00, 	$0A, $0A, $19, $58, 	$0F, $23, $23, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $01, $09, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $01, $04
	smpsVcDecayRate2    $00, $01, $01, $01
	smpsVcDecayLevel    $05, $01, $00, $00
	smpsVcReleaseRate   $08, $09, $0A, $0A
	smpsVcTotalLevel    $00, $23, $23, $0F

;	Voice $03
;	$04
;	$73, $01, $71, $34, 	$4D, $91, $8E, $8F, 	$0A, $07, $08, $08
;	$04, $00, $05, $00, 	$F4, $F4, $F3, $F4, 	$1D, $80, $23, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $07
	smpsVcCoarseFreq    $04, $01, $01, $03
	smpsVcRateScale     $02, $02, $02, $01
	smpsVcAttackRate    $0F, $0E, $11, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $07, $0A
	smpsVcDecayRate2    $00, $05, $00, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $04, $03, $04, $04
	smpsVcTotalLevel    $07, $23, $00, $1D

;	Voice $04
;	$38
;	$31, $51, $31, $71, 	$17, $18, $1A, $11, 	$17, $16, $0B, $00
;	$00, $00, $00, $00, 	$10, $10, $00, $06, 	$20, $17, $23, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $05, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1A, $18, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $16, $17
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $06, $00, $00, $00
	smpsVcTotalLevel    $00, $23, $17, $20

;	Voice $05
;	$0F
;	$33, $77, $72, $31, 	$1F, $1F, $1F, $1F, 	$00, $0F, $00, $00
;	$00, $00, $00, $00, 	$07, $67, $07, $06, 	$8A, $83, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $02, $07, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $06, $00
	smpsVcReleaseRate   $06, $07, $07, $07
	smpsVcTotalLevel    $00, $00, $03, $0A

