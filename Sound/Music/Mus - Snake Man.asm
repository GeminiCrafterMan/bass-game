Snake_Man_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snake_Man_Voices
	smpsHeaderChan      $05, $02
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snake_Man_DAC
	smpsHeaderFM        Snake_Man_FM1,	$0C, $05
	smpsHeaderFM        Snake_Man_FM2,	$00, $05
	smpsHeaderFM        Snake_Man_FM3,	$00, $05
	smpsHeaderFM        Snake_Man_FM4,	$00, $05
	smpsHeaderPSG       Snake_Man_PSG1,	$F4, $04, $00, $00
	smpsHeaderPSG       Snake_Man_PSG2,	$F4, $03, $00, $00

; FM1 Data
Snake_Man_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0A
	smpsModSet          $0B, $01, $03, $05

Snake_Man_Loop0C:
	smpsCall            Snake_Man_Call19
	smpsCall            Snake_Man_Call19
	dc.b	nG4, nRst, nG4, nRst
	smpsLoop            $00, $02, Snake_Man_Loop0C
	smpsSetvoice        $02

Snake_Man_Jump02:
	smpsCall            Snake_Man_Call1A
	dc.b	nAb4, $0F, nRst, $03, nAb4, $06, nG4, nRst, nF4, $15, nRst, $03
	dc.b	nC4, $06, nRst, nEb4, nRst, nF4, nRst, nF4, $0F, nRst, $03, nF4
	dc.b	$06, nEb4, nRst, nC4, $15, nRst, $03, nBb3, $06, nRst, nAb3, nRst
	dc.b	nG3, nRst
	smpsCall            Snake_Man_Call1A
	smpsCall            Snake_Man_Call1B
	dc.b	nF4, $15, nRst, $03, nAb4, $06, nRst, nG4, nRst, nF4, nRst
	smpsCall            Snake_Man_Call1B
	smpsCall            Snake_Man_Call1B
	dc.b	nF4, nRst, nEb4, nRst
	smpsCall            Snake_Man_Call1C
	dc.b	nF3, $06, nEb3
	smpsCall            Snake_Man_Call1C
	dc.b	nF3, $06, nAb3, nC4, $0C, nBb3, $12, nAb3, $09, nRst, $03, nAb3
	dc.b	$0C, nF3, $09, nRst, $03, nF3, $06, nAb3, $0C, nBb3, $09, nRst
	dc.b	$03, nBb3, $0C, nF3, $09, nRst, $03, nF3, $06, nEb3, $0C, nF3
	dc.b	$30, nRst, $06
	smpsCall            Snake_Man_Call1D
	dc.b	nC3, $1B, nRst, $03, nEb3, $0C, nF3
	smpsCall            Snake_Man_Call1D
	dc.b	nC3, $0C, nBb3, $12, nAb3, $06, nRst, nG3, nRst, nAb3, nRst, nG3
	dc.b	nRst, nG3, nF3, $09, nRst, $03, nF3, $0C, nAb4, $12, nG4, $06
	dc.b	nRst, nF4, nRst, nG4, nRst, nF4, nRst, nG4, nAb4, $0C, nF4, $06
	smpsSetvoice        $00
	dc.b	nRst, $30
	smpsAlterVol        $05
	dc.b	nEb3, $0F, nRst, $03, nEb3, $06, nRst, $0C, nC3, nG3, nAb3, nG3
	dc.b	nEb3, nF3, $0F, nRst, $03, nF3, $06, nRst, $0C, nEb3, nF3, $2A
	dc.b	nRst, $06, nG3, $0F, nRst, $03, nG3, $06, nRst, $0C, nG3, $06
	dc.b	nRst, nG3, $0C, nAb3, nBb3, nG3, nCs4, $0F, nRst, $03, nCs4, $06
	dc.b	nRst, $0C, nC4, $09, nRst, $03, nC4, $2A, nRst, $06, nBb3, $0F
	dc.b	nRst, $03, nBb3, $06, nRst, $0C, nAb3, nG3, nCs4, nC4, nG3, nAb3
	dc.b	$12, nRst, $06, nBb3, $12, nC4, $30, nRst, $06, nF3, $0F, nRst
	dc.b	$03, nF3, $06, nRst, $0C, nF3, $09, nRst, $03, nF3, $0C, nG3
	dc.b	nAb3, nF3, nCs4, $0F, nRst, $03, nCs4, $06, nRst, $0C, nC4, $09
	dc.b	nRst, $03, nC4, $2E, nRst, $02
	smpsSetvoice        $02
	smpsAlterVol        $FB
	smpsJump            Snake_Man_Jump02

Snake_Man_Call19:
	dc.b	nFs4, $03, nRst, nFs4, $06, nRst, nFs4, $03, nRst, nFs4, $06, nRst
	smpsReturn

Snake_Man_Call1A:
	dc.b	nF3, $0C, nRst, $06, nF3, nG3, nRst, nAb3, $15, nRst, $03, nBb3
	dc.b	$06, nRst, nC4, nRst, nD4, nRst, nEb4, $0F, nRst, $03, nEb4, $06
	dc.b	nRst, $0C, nD4, $36, nRst, $06
	smpsReturn

Snake_Man_Call1B:
	dc.b	nF4, $0C, nRst, $06, nF4, nEb4, nRst
	smpsReturn

Snake_Man_Call1C:
	dc.b	nF3, nRst, nF3, nRst, nF3, nEb3, $0C, nF3, $12, nAb3, $18
	smpsReturn

Snake_Man_Call1D:
	dc.b	nAb3, $0C, nG3, $09, nRst, $03, nG3, $06, nEb3, $0C
	smpsReturn

; FM2 Data
Snake_Man_FM2:
	smpsSetvoice        $00
	smpsAlterVol        $0A

Snake_Man_Loop08:
	smpsCall            Snake_Man_Call14
	smpsCall            Snake_Man_Call14
	dc.b	nC4, nRst, nC4, nRst
	smpsLoop            $00, $02, Snake_Man_Loop08
	dc.b	nRst, $03
	smpsAlterVol        $05
	smpsSetvoice        $03
	smpsModSet          $05, $01, $04, $05

Snake_Man_Jump01:
	smpsCall            Snake_Man_Call15
	dc.b	nAb4, $0F, nRst, $03, nAb4, $06, nG4, nRst, nF4, $15, nRst, $03
	dc.b	nC4, $06, nRst, nEb4, nRst, nF4, nRst, nF4, $0F, nRst, $03, nF4
	dc.b	$06, nEb4, nRst, nC4, $15, nRst, $03, nBb3, $06, nRst, nAb3, nRst
	dc.b	nG3, nRst
	smpsCall            Snake_Man_Call15
	smpsCall            Snake_Man_Call16
	dc.b	nF4, $15, nRst, $03, nAb4, $06, nRst, nG4, nRst, nF4, nRst
	smpsCall            Snake_Man_Call16
	smpsCall            Snake_Man_Call16
	dc.b	nF4, nRst, nEb4, nRst, $03
	smpsSetvoice        $04
	smpsAlterPitch      $0C

Snake_Man_Loop09:
	smpsCall            Snake_Man_Call17
	smpsCall            Snake_Man_Call17
	smpsLoop            $01, $04, Snake_Man_Loop09

Snake_Man_Loop0A:
	smpsCall            Snake_Man_Call18
	smpsLoop            $01, $04, Snake_Man_Loop0A

Snake_Man_Loop0B:
	smpsCall            Snake_Man_Call17
	smpsLoop            $01, $04, Snake_Man_Loop0B
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	dc.b	nBb3, $48, nC4, $18, nF3, $5A, nRst, $06, nBb3, $48, nAb3, $18
	dc.b	nEb3, $5A, nRst, $06, nC3, $18, nRst, $0C, nC3, $06, nD3, nE3
	dc.b	$1E, nRst, $06, nF3, nG3, nAb3, $18, nRst, $0C, nAb3, $06, nBb3
	dc.b	nC4, $2A, nRst, $06, nF4, $30, nRst, $06, nE4, nEb4, nD4, nCs4
	dc.b	nC4, nBb3, nAb3, nCs4, $1E, nRst, $06, nC4, $09, nRst, $03, nC4
	dc.b	$2E, nRst, $02, nRst, $03
	smpsJump            Snake_Man_Jump01

Snake_Man_Call14:
	dc.b	nCs4, $03, nRst, nCs4, $06, nRst, nCs4, $03, nRst, nCs4, $06, nRst
	smpsReturn

Snake_Man_Call15:
	dc.b	nF3, $0C, nRst, $06, nF3, nG3, nRst, nAb3, $15, nRst, $03, nBb3
	dc.b	$06, nRst, nC4, nRst, nD4, nRst, nEb4, $0F, nRst, $03, nEb4, $06
	dc.b	nRst, $0C, nD4, $36, nRst, $06
	smpsReturn

Snake_Man_Call16:
	dc.b	nF4, $0C, nRst, $06, nF4, nEb4, nRst
	smpsReturn

Snake_Man_Call17:
	dc.b	nF3, $03, nRst
	smpsAlterVol        $05
	dc.b	nF3, $03, nRst
	smpsAlterVol        $05
	dc.b	nF3, $03, nRst
	smpsAlterVol        $F6
	dc.b	nAb3, $03, nRst
	smpsAlterVol        $05
	dc.b	nAb3, $03, nRst
	smpsAlterVol        $05
	dc.b	nAb3, $03, nRst
	smpsAlterVol        $F6
	dc.b	nBb3, $03, nRst
	smpsAlterVol        $0A
	dc.b	nBb3, $03, nRst
	smpsAlterVol        $F6
	smpsReturn

Snake_Man_Call18:
	dc.b	nC3, $03, nRst
	smpsAlterVol        $05
	dc.b	nC3, $03, nRst
	smpsAlterVol        $05
	dc.b	nC3, $03, nRst
	smpsAlterVol        $F6
	dc.b	nEb3, $03, nRst
	smpsAlterVol        $05
	dc.b	nEb3, $03, nRst
	smpsAlterVol        $05
	dc.b	nEb3, $03, nRst
	smpsAlterVol        $F6
	dc.b	nF3, $03, nRst
	smpsAlterVol        $0A
	dc.b	nF3, $03, nRst
	smpsAlterVol        $F6
	smpsReturn

; FM3 Data
Snake_Man_FM3:
	smpsSetvoice        $05
	smpsAlterVol        $0A

Snake_Man_Loop06:
	smpsCall            Snake_Man_Call0E
	smpsCall            Snake_Man_Call0E
	dc.b	nE3, nRst, nE3, nRst
	smpsLoop            $00, $02, Snake_Man_Loop06
	smpsAlterVol        $05

Snake_Man_Loop07:
	smpsCall            Snake_Man_Call0F
	smpsLoop            $01, $04, Snake_Man_Loop07
	smpsCall            Snake_Man_Call10
	smpsCall            Snake_Man_Call10
	dc.b	nC3, $0F, nRst, $03, nC3, $06, nRst, $0C, nC3, $09, nRst, $03
	dc.b	nC3, $0C, nEb3, nD3, nCs3
	smpsCall            Snake_Man_Call11
	smpsCall            Snake_Man_Call11
	dc.b	nEb3, $0F, nRst, $03, nEb3, $06, nRst, $0C, nEb3, $09, nRst, $03
	dc.b	nEb3, $0C, nG3, nF3, nEb3
	smpsCall            Snake_Man_Call12
	smpsCall            Snake_Man_Call12
	dc.b	nC3, $12, nRst, $06, nC3, $12, nAb2, $1E, nG2, $18
	smpsCall            Snake_Man_Call13
	smpsCall            Snake_Man_Call13
	dc.b	nG2, $0F, nRst, $03, nG2, $06, nRst, $0C, nEb3, $09, nRst, $03
	dc.b	nE3, $0C, nC3, nBb2, nC3
	smpsJump            Snake_Man_Loop07

Snake_Man_Call0E:
	dc.b	nE3, $03, nRst, nE3, $06, nRst, nE3, $03, nRst, nE3, $06, nRst
	smpsReturn

Snake_Man_Call0F:
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsReturn

Snake_Man_Call10:
	dc.b	nG2, $0F, nRst, $03, nG2, $06, nRst, $0C, nG2, $09, nRst, $03
	smpsReturn

Snake_Man_Call11:
	dc.b	nBb2, $0F, nRst, $03, nBb2, $06, nRst, $0C, nBb2, $09, nRst, $03
	smpsReturn

Snake_Man_Call12:
	dc.b	nE3, $0F, nRst, $03, nE3, $06, nRst, $0C, nE3, $09, nRst, $03
	smpsReturn

Snake_Man_Call13:
	dc.b	nAb2, $0F, nRst, $03, nAb2, $06, nRst, $0C, nAb2, $09, nRst, $03
	smpsReturn

; FM4 Data
Snake_Man_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $0A

Snake_Man_Loop00:
	smpsCall            Snake_Man_Call01
	smpsCall            Snake_Man_Call01
	dc.b	nF3, nRst, nF3, nRst
	smpsLoop            $00, $02, Snake_Man_Loop00

Snake_Man_Loop01:
	smpsCall            Snake_Man_Call02
	smpsCall            Snake_Man_Call02
	smpsCall            Snake_Man_Call03
	smpsCall            Snake_Man_Call03
	smpsCall            Snake_Man_Call04
	smpsCall            Snake_Man_Call04
	smpsCall            Snake_Man_Call05
	smpsCall            Snake_Man_Call05
	smpsLoop            $00, $02, Snake_Man_Loop01

Snake_Man_Loop02:
	smpsCall            Snake_Man_Call06
	smpsCall            Snake_Man_Call07
	smpsLoop            $00, $02, Snake_Man_Loop02

Snake_Man_Loop03:
	smpsCall            Snake_Man_Call08
	smpsCall            Snake_Man_Call09
	smpsLoop            $00, $02, Snake_Man_Loop03

Snake_Man_Loop04:
	smpsCall            Snake_Man_Call0A
	smpsCall            Snake_Man_Call0B
	smpsLoop            $00, $02, Snake_Man_Loop04

Snake_Man_Loop05:
	smpsCall            Snake_Man_Call06
	smpsCall            Snake_Man_Call07
	smpsLoop            $00, $02, Snake_Man_Loop05
	smpsCall            Snake_Man_Call0C
	smpsCall            Snake_Man_Call0C
	smpsCall            Snake_Man_Call06
	dc.b	nF3, $0C, nAb3, nG3, nF3
	smpsCall            Snake_Man_Call0A
	smpsCall            Snake_Man_Call0A
	dc.b	nAb3, $0F, nRst, $03, nAb3, $06, nRst, $0C, nAb3, $09, nRst, $03
	dc.b	nAb3, $0C, nC4, nBb3, nAb3
	smpsCall            Snake_Man_Call0D
	smpsCall            Snake_Man_Call0D
	dc.b	nF3, $12, nRst, $06, nE3, $12, nEb3, $1E, nD3, $18
	smpsCall            Snake_Man_Call08
	smpsCall            Snake_Man_Call08
	dc.b	nC3, $0F, nRst, $03, nC3, $06, nRst, $0C, nBb3, $0C, nC4, nBb3
	dc.b	nAb3, nBb3
	smpsJump            Snake_Man_Loop01

Snake_Man_Call01:
	dc.b	nFs3, $03, nRst, nFs3, $06, nRst, nFs3, $03, nRst, nFs3, $06, nRst
	smpsReturn

Snake_Man_Call02:
	dc.b	nF3, $06, nRst, nF3, nEb3, nRst, nEb3, nC3, nRst
	smpsReturn

Snake_Man_Call03:
	dc.b	nBb3, nRst, nBb3, nAb3, nRst, nAb3, nF3, nRst
	smpsReturn

Snake_Man_Call04:
	dc.b	nCs3, nRst, nCs3, nF3, nRst, nF3, nAb3, nRst
	smpsReturn

Snake_Man_Call05:
	dc.b	nEb3, nRst, nEb3, nG3, nRst, nG3, nBb3, nRst
	smpsReturn

Snake_Man_Call06:
	dc.b	nF3, $0F, nRst, $03, nF3, $06, nRst, $0C, nF3, $09, nRst, $03
	smpsReturn

Snake_Man_Call07:
	dc.b	nF3, $0C, nG3, nAb3, nBb3
	smpsReturn

Snake_Man_Call08:
	dc.b	nCs3, $0F, nRst, $03, nCs3, $06, nRst, $0C, nCs3, $09, nRst, $03
	smpsReturn

Snake_Man_Call09:
	dc.b	nCs3, $0C, nEb3, nF3, nAb3
	smpsReturn

Snake_Man_Call0A:
	dc.b	nEb3, $0F, nRst, $03, nEb3, $06, nRst, $0C, nEb3, $09, nRst, $03
	smpsReturn

Snake_Man_Call0B:
	dc.b	nEb3, $0C, nF3, nG3, nBb3
	smpsReturn

Snake_Man_Call0C:
	dc.b	nC3, $0F, nRst, $03, nC3, $06, nRst, $0C, nC3, $09, nRst, $03
	smpsReturn

Snake_Man_Call0D:
	dc.b	nG3, $0F, nRst, $03, nG3, $06, nRst, $0C, nG3, $09, nRst, $03
	smpsReturn

; DAC Data
Snake_Man_DAC:
	smpsCall            Snake_Man_Call00
	smpsCall            Snake_Man_Call00
	dc.b	dSnare, nRst, dSnare, nRst
	smpsLoop            $00, $02, Snake_Man_DAC

Snake_Man_Jump00:
	dc.b	dKick, $06
	smpsAlterVol        $0A
	dc.b	dKick, dKick, $0C
	smpsAlterVol        $F6
	dc.b	dSnare, $06
	smpsAlterVol        $0A
	dc.b	dKick, dKick, $0C
	smpsAlterVol        $F6
	dc.b	dKick, $06
	smpsAlterVol        $0A
	dc.b	dKick, dKick, $0C
	smpsAlterVol        $F6
	dc.b	dSnare, $06
	smpsAlterVol        $0A
	dc.b	dKick, dKick, $0C
	smpsAlterVol        $F6
	smpsJump            Snake_Man_Jump00

Snake_Man_Call00:
	dc.b	dSnare, $06, dSnare, nRst, dSnare, $06, dSnare, nRst
	smpsReturn

; PSG1 Data
Snake_Man_PSG1:
	smpsAlterPitch      $E8

Snake_Man_Loop0E:
	smpsCall            Snake_Man_Call01
	smpsCall            Snake_Man_Call23
	dc.b	nE3, nRst, nE3, nRst
	smpsLoop            $00, $02, Snake_Man_Loop0E

Snake_Man_Loop0F:
	smpsCall            Snake_Man_Call24
	smpsCall            Snake_Man_Call24
	smpsCall            Snake_Man_Call25
	smpsCall            Snake_Man_Call25
	smpsCall            Snake_Man_Call26
	smpsCall            Snake_Man_Call26
	smpsCall            Snake_Man_Call27
	smpsCall            Snake_Man_Call27
	smpsLoop            $00, $02, Snake_Man_Loop0F
	smpsAlterPitch      $18
	smpsModSet          $05, $02, $01, $01
	smpsCall            Snake_Man_Call28
	dc.b	nBb3, $0C, nF3, $09, nRst, $03, nF3, $06, nEb3, $0C, nF3, $06
	smpsCall            Snake_Man_Call28
	dc.b	nG4, $06, nRst, nF4, nRst, nG4, nAb4, $0C, nF4, $06
	smpsAlterPitch      $F4
	dc.b	nRst, $03, nBb3, $48, nC4, $18, nF3, $5A, nRst, $06, nBb3, $48
	dc.b	nAb3, $18, nEb3, $5A, nRst, $06, nC3, $18, nRst, $0C, nC3, $06
	dc.b	nD3, nE3, $1E, nRst, $06, nF3, nG3, nAb3, $18, nRst, $0C, nAb3
	dc.b	$06, nBb3, nC4, $2A, nRst, $06, nF4, $30, nRst, $06, nE4, nEb4
	dc.b	nD4, nCs4, nC4, nBb3, nAb3, nCs4, $1E, nRst, $06, nC4, $09, nRst
	dc.b	$03, nC4, $2D
	smpsModSet          $FF, $00, $00, $FF
	smpsAlterPitch      $F4
	smpsJump            Snake_Man_Loop0F

Snake_Man_Call23:
	dc.b	nFs3, $03, nRst, nFs3, $06, nRst, nFs3, $03, nRst, nFs3, $06, nRst
	smpsReturn

Snake_Man_Call24:
	dc.b	nF3, $06, nRst, nF3, nEb3, nRst, nEb3, nC3, nRst
	smpsReturn

Snake_Man_Call25:
	dc.b	nBb3, nRst, nBb3, nAb3, nRst, nAb3, nF3, nRst
	smpsReturn

Snake_Man_Call26:
	dc.b	nCs3, nRst, nCs3, nF3, nRst, nF3, nAb3, nRst
	smpsReturn

Snake_Man_Call27:
	dc.b	nEb3, nRst, nEb3, nG3, nRst, nG3, nBb3, nRst
	smpsReturn

Snake_Man_Call28:
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $30
	smpsReturn

; PSG2 Data
Snake_Man_PSG2:
	smpsModSet          $0B, $01, $01, $02

Snake_Man_Loop0D:
	smpsAlterPitch      $F4
	smpsCall            Snake_Man_Call1E
	smpsCall            Snake_Man_Call1E
	dc.b	nBb3, nRst, nBb3, nRst
	smpsLoop            $00, $02, Snake_Man_Loop0D
	smpsPSGAlterVol     $01
	smpsAlterPitch      $0C

Snake_Man_Jump03:
	smpsAlterPitch      $F4
	smpsCall            Snake_Man_Call1F
	dc.b	nAb4, $0F, nRst, $03, nAb4, $06, nG4, nRst, nF4, $15, nRst, $03
	dc.b	nC4, $06, nRst, nEb4, nRst, nF4, nRst, nF4, $0F, nRst, $03, nF4
	dc.b	$06, nEb4, nRst, nC4, $15, nRst, $03, nBb3, $06, nRst, nAb3, nRst
	dc.b	nG3, nRst
	smpsCall            Snake_Man_Call1F
	smpsCall            Snake_Man_Call20
	dc.b	nF4, $15, nRst, $03, nAb4, $06, nRst, nG4, nRst, nF4, nRst
	smpsCall            Snake_Man_Call20
	smpsCall            Snake_Man_Call20
	dc.b	nF4, nRst, nEb4, nRst
	smpsAlterPitch      $0C
	dc.b	nRst, $04
	smpsCall            Snake_Man_Call21
	dc.b	nF3, $06, nEb3
	smpsCall            Snake_Man_Call21
	dc.b	nF3, $06, nAb3, nC4, $0C, nBb3, $12, nAb3, $09, nRst, $03, nAb3
	dc.b	$0C, nF3, $09, nRst, $03, nF3, $06, nAb3, $0C, nBb3, $09, nRst
	dc.b	$03, nBb3, $0C, nF3, $09, nRst, $03, nF3, $06, nEb3, $0C, nF3
	dc.b	$30, nRst, $06
	smpsCall            Snake_Man_Call22
	dc.b	nC3, $1B, nRst, $03, nEb3, $0C, nF3
	smpsCall            Snake_Man_Call22
	dc.b	nC3, $0C, nBb3, $12, nAb3, $06, nRst, nG3, nRst, nAb3, nRst, nG3
	dc.b	nRst, nG3, nF3, $09, nRst, $03, nF3, $0C, nAb4, $12, nG4, $06
	dc.b	nRst, nF4, nRst, nG4, nRst, nF4, nRst, nG4, nAb4, $0C, nF4, $06
	dc.b	nRst, $30, nEb3, $0F, nRst, $03, nEb3, $06, nRst, $0C, nC3, nG3
	dc.b	nAb3, nG3, nEb3, nF3, $0F, nRst, $03, nF3, $06, nRst, $0C, nEb3
	dc.b	nF3, $2A, nRst, $06, nG3, $0F, nRst, $03, nG3, $06, nRst, $0C
	dc.b	nG3, $06, nRst, nG3, $0C, nAb3, nBb3, nG3, nCs4, $0F, nRst, $03
	dc.b	nCs4, $06, nRst, $0C, nC4, $09, nRst, $03, nC4, $2A, nRst, $06
	dc.b	nBb3, $0F, nRst, $03, nBb3, $06, nRst, $0C, nAb3, nG3, nCs4, nC4
	dc.b	nG3, nAb3, $12, nRst, $06, nBb3, $12, nC4, $30, nRst, $06, nF3
	dc.b	$0F, nRst, $03, nF3, $06, nRst, $0C, nF3, $09, nRst, $03, nF3
	dc.b	$0C, nG3, nAb3, nF3, nCs4, $0F, nRst, $03, nCs4, $06, nRst, $0C
	dc.b	nC4, $09, nRst, $03, nC4, $2C
	smpsJump            Snake_Man_Jump03

Snake_Man_Call1E:
	dc.b	nBb3, $03, nRst, nBb3, $06, nRst, nBb3, $03, nRst, nBb3, $06, nRst
	smpsReturn

Snake_Man_Call1F:
	dc.b	nF3, $0C, nRst, $06, nF3, nG3, nRst, nAb3, $15, nRst, $03, nBb3
	dc.b	$06, nRst, nC4, nRst, nD4, nRst, nEb4, $0F, nRst, $03, nEb4, $06
	dc.b	nRst, $0C, nD4, $36, nRst, $06
	smpsReturn

Snake_Man_Call20:
	dc.b	nF4, $0C, nRst, $06, nF4, nEb4, nRst
	smpsReturn

Snake_Man_Call21:
	dc.b	nF3, $06, nRst, nF3, nRst, nF3, nEb3, $0C, nF3, $12, nAb3, $18
	smpsReturn

Snake_Man_Call22:
	dc.b	nAb3, $0C, nG3, $09, nRst, $03, nG3, $06, nEb3, $0C
	smpsReturn

Snake_Man_Voices:
;	Voice $00
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
;	$3D
;	$00, $00, $00, $00, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$00, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$19, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $00
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
;	$30
;	$01, $71, $31, $01, 	$5F, $1F, $1F, $1F, 	$0F, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$FB, $0B, $0B, $08, 	$2F, $25, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $08, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $14, $25, $2F

;	Voice $03
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

;	Voice $04
;	$04
;	$73, $02, $72, $34, 	$4D, $91, $8E, $8F, 	$0A, $07, $08, $08
;	$04, $00, $05, $00, 	$F4, $F4, $F3, $F4, 	$1D, $00, $23, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $07
	smpsVcCoarseFreq    $04, $02, $02, $03
	smpsVcRateScale     $02, $02, $02, $01
	smpsVcAttackRate    $0F, $0E, $11, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $07, $0A
	smpsVcDecayRate2    $00, $05, $00, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $04, $03, $04, $04
	smpsVcTotalLevel    $07, $23, $00, $1D

;	Voice $05
;	$32
;	$65, $74, $03, $31, 	$5F, $9D, $5F, $9B, 	$09, $07, $09, $07
;	$02, $02, $02, $02, 	$12, $81, $15, $A7, 	$23, $23, $1C, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $06
	smpsVcCoarseFreq    $01, $03, $04, $05
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $1B, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $09, $07, $09
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $08, $01
	smpsVcReleaseRate   $07, $05, $01, $02
	smpsVcTotalLevel    $00, $1C, $23, $23

