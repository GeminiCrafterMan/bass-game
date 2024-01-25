Wily3_MW_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Wily3_MW_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $08

	smpsHeaderDAC       Wily3_MW_DAC
	smpsHeaderFM        Wily3_MW_FM1,	$00, $11
	smpsHeaderFM        Wily3_MW_FM2,	$F4, $0E
	smpsHeaderFM        Wily3_MW_FM3,	$00, $1B
	smpsHeaderFM        Wily3_MW_FM4,	$00, $1A
	smpsHeaderFM        Wily3_MW_FM5,	$00, $1D
	smpsHeaderPSG       Wily3_MW_PSG1,	$F4, $03, $00, fTone_09
	smpsHeaderPSG       Wily3_MW_PSG2,	$F4, $03, $00, fTone_09
	smpsHeaderPSG       Wily3_MW_PSG3,	$F4, $01, $00, fTone_09

; FM1 Data
Wily3_MW_FM1:
	smpsSetvoice        $04
	smpsModSet          $0E, $01, $03, $04
	dc.b	nRst, $0C, nA4, $06, $0C, $0C, $06, nG4, $18, nFs4, nRst, $0C
	dc.b	nA4, $06, $0C, $0C, $06, nC5, $18, nB4, nRst, $0C, nA4, $06
	dc.b	$0C, $0C, $06, nG4, $18, nFs4, nRst, $0C, nA4, $06, $0C, $0C
	dc.b	$06, nC5, $18, nB4, $0C, nG4, $06, $06, nA4, $48, nRst, $0C
	dc.b	nG4, $06, $06, nA4, $0C, nG4, $06, nA4, $30, smpsNoAttack, $06, nRst
	dc.b	$0C, nG4, $06, nA4, nC5, $0C, nA4, $30, smpsNoAttack, $0C, nRst, $06
	dc.b	nG4, $0C, nA4, $06, nE5, $0C, $0C, nD5, $06, nA4, $18, smpsNoAttack
	dc.b	$12, nRst, $0C, nA4, $0C, nC5, $0C, nB4, $06, nC5, $0C, nA4
	dc.b	$12, smpsNoAttack, $30, nRst, $0C, nA5, $30, nD5, $0C, nC5, $06, nB4
	dc.b	$12, nRst, $0C, nA4, $0C, nG4, $06, nA4, $18, smpsNoAttack, $12, nRst
	dc.b	$06, nE4, $06, nG4, nAb4, nA4, $0C, $30, nRst, $0C, nA4, $06
	dc.b	nB4, nC5, nD5, nE5, $12, nG5, nE5, $30, nE5, $06, nEb5, nD5
	dc.b	$12, $06, nRst, $0C, nD5, $24, nRst, $0C, nC5, $06, nB4, nRst
	dc.b	$0C, nG4, $06, $06, nRst, nG4, $0C, $06, $18, nA4, nRst, $0C
	dc.b	nG4, $06, nG4, nRst, nG4, $0C, $06, nC5, $18, nA4, nG4, $24
	dc.b	nA4, $30, smpsNoAttack, $0C, nRst, $0C, nG4, $18, $0C, nA4, $18, nG4
	dc.b	$0C, nA4, $0C, smpsNoAttack, $30, nRst, $0C, nC5, $18, nA4, $30, smpsNoAttack
	dc.b	$0C, nA4, $0C, nB4, nC5, nD5, nE5, $24, nC5, $48, nEb5, $18
	dc.b	$0C, $12, nD5, nC5, $0C, nRst, $0C, nA4, $48, nG4, $0C, nA4
	dc.b	nA4, $30, nRst, $0C, nD5, $18, nG5, $24, nE5, $30, smpsNoAttack, $0C
	dc.b	nG5, $12, nG5, nE5, $24, nRst, $0C, nG5, $06, nE5, nG5, $24
	dc.b	nA5, $0C, smpsNoAttack, $30, smpsNoAttack, $60, nG5, $18, nRst, $0C, nG5, $0C
	dc.b	smpsNoAttack, $60, nRst, $0C, nG5, $0C, $06, nA5, $12, nFs5, $24, nD5
	dc.b	nA4, $18, nRst, $0C, nC5, $0C, $06, $12, $12, nA4, $06, smpsNoAttack
	dc.b	$18, nA5, $18, nRst, $0C, nG5, $30, smpsNoAttack, $0C, nRst, $0C, nFs5
	dc.b	nFs5, $18, $0C, $0C, $06, nG5, $12, nE5, $24, $0C, smpsNoAttack, $30
	dc.b	nRst, $0C, nG5, $0C, $18, $0C, $0C, $06, nA5, $12
	smpsJump            Wily3_MW_FM1

; FM2 Data
Wily3_MW_FM2:
	smpsSetvoice        $08
	dc.b	nA3, $0C, $06, $0C, $0C, $06, nG3, $18, nFs3, nA3, $0C, $06
	dc.b	$0C, $0C, $06, nC4, $18, nB3, nA3, $0C, $06, $0C, $0C, $06
	dc.b	nG3, $18, nFs3, nA3, $0C, $06, $0C, $0C, $06, nC4, $18, nB3
	smpsCall            Wily3_MW_Call03
	dc.b	nE3, $12, nFs3, nG3, $0C
	smpsCall            Wily3_MW_Call03
	dc.b	nA3, $18, nAb3, nG3, $0C, $06, $0C, $0C, $06, $0C, nD3, nF3
	dc.b	nFs3, nG3, $0C, $06, $0C, $0C, $06, $0C, nD3, nF3, nFs3, nD3
	dc.b	$0C, $06, $0C, $0C, $06, $0C, nA2, nC3, nCs3, nD3, $0C, $06
	dc.b	$0C, $0C, $06, $0C, nC3, nA2, nG2, nG3, $0C, $06, $0C, $0C
	dc.b	$06, $0C, nD3, nF3, nFs3, nG3, $0C, $06, $0C, $0C, $06, $0C
	dc.b	nD3, nF3, nFs3, nE3, $0C, $06, $0C, $0C, $06, $18, $18, nG3
	dc.b	$0C, $06, $0C, $0C, $06, $0C, $0C, $06, nA3, $12
	smpsJump            Wily3_MW_FM2

Wily3_MW_Call03:
	dc.b	nA3, $0C, $06, $0C, $0C, $06, $18, $18, $0C, $06, $0C, $0C
	dc.b	$06, $18, $18, $0C, $06, $0C, $0C, $06, $18, $18, $0C, $06
	dc.b	$0C, $0C, $06, $18, $18, nD4, $0C, $06, $0C, $0C, $06, $18
	dc.b	$18, $0C, $06, $0C, $0C, $06, $18, $18, nA3, $0C, $06, $0C
	dc.b	$0C, $06, $18, $18, $0C, $06, $0C, $0C, $06, $18, $18, nE4
	dc.b	$0C, $06, $0C, $0C, $06, $18, $18, nD4, $12, $0C, nA3, $06
	dc.b	nD4, $0C, smpsNoAttack, $30, nA3, $0C, $06, $0C, $0C, $06, $18, $18
	dc.b	$0C, $06, $0C, $0C, $06
	smpsReturn

; FM3 Data
Wily3_MW_FM3:
	smpsSetvoice        $04
	smpsModSet          $0E, $01, $03, $04
	smpsAlterNote       $02

Wily3_MW_Loop02:
	dc.b	nRst, $0C, nE4, $06, $0C, $0C, $06, nD4, $18, $18, nRst, $0C
	dc.b	nE4, $06, $0C, $0C, $06, nG4, $18, $18
	smpsLoop            $00, $02, Wily3_MW_Loop02
	smpsCall            Wily3_MW_Call02
	dc.b	nA4, $12, $12, $24, nRst, $18, nRst, $0C, nA4, $06, $0C, $0C
	dc.b	$06, nG4, $18, nFs4, nRst, $0C, nA4, $06, $0C, $0C, $06, nC5
	dc.b	$18, nA4, $18
	smpsCall            Wily3_MW_Call02
	dc.b	nD5, $12, $12, $24, nRst, $18, nRst, $0C, nA4, $06, $0C, $0C
	dc.b	$06, nG4, $18, nFs4, nRst, $0C, nA4, $06, $0C, $0C, $06, nC5
	dc.b	$18, nA4, nG4, $0C, $06, $0C, $0C, $06, $30, nRst, $0C, nG4
	dc.b	$06, $0C, $0C, $06, $18, $18, nD4, $0C, $06, $0C, $0C, $06
	dc.b	nC4, $18, nD4, nRst, $0C, nD4, $06, $0C, $0C, $06, nC4, $18
	dc.b	nD4, nG4, $0C, $06, $0C, $0C, $06, $30, nRst, $0C, nG4, $06
	dc.b	$0C, $0C, $06, $18, $18, nRst, $0C, nE4, $06, $0C, $0C, $06
	dc.b	$18, $18, nRst, $0C, nG4, $06, $0C, $0C, $06, $0C, $0C, $06
	dc.b	nA4, $12
	smpsJump            Wily3_MW_Loop02

Wily3_MW_Call02:
	dc.b	nRst, $0C, nA4, $06, $0C, $0C, $06, nG4, $18, nFs4, nRst, $0C
	dc.b	nA4, $06, $0C, $0C, $06, nC5, $18, nB4, nRst, $0C, nA4, $06
	dc.b	$0C, $0C, $06, nG4, $18, nFs4, nRst, $0C, nA4, $06, $0C, $0C
	dc.b	$06, nC5, $18, nB4, nRst, $0C, nD5, $06, $0C, $0C, $06, nC5
	dc.b	$18, nB4, nRst, $0C, nD5, $06, $0C, $0C, $06, nF5, $18, nE5
	dc.b	nRst, $0C, nA4, $06, $0C, $0C, $06, nG4, $18, nFs4, nRst, $0C
	dc.b	nA4, $06, $0C, $0C, $06, nC5, $18, nB4, nRst, $0C, nE5, $06
	dc.b	$0C, $0C, $06, nD5, $18, nCs5
	smpsReturn

; FM4 Data
Wily3_MW_FM4:
	smpsSetvoice        $04
	smpsModSet          $0E, $01, $03, $04
	dc.b	nRst, $0C, nCs4, $06, $0C, $0C, $06, nB3, $18, nA3, nRst, $0C
	dc.b	nCs4, $06, $0C, $0C, $06, nE4, $18, nD4
	smpsLoop            $00, $02, Wily3_MW_FM4
	smpsCall            Wily3_MW_Call01
	dc.b	nFs4, $12, $12, $24, nRst, $18, nRst, $0C, nE4, $06, $0C, $0C
	dc.b	$06, nD4, $18, $18, nRst, $0C, nE4, $06, $0C, $0C, $06, nG4
	dc.b	$18, nE4
	smpsCall            Wily3_MW_Call01
	dc.b	nA4, $12, $12, $24, nRst, $18, nRst, $0C, nE4, $06, $0C, $0C
	dc.b	$06, nD4, $18, $18, nRst, $0C, nE4, $06, $0C, $0C, $06, nG4
	dc.b	$18, nE4, nD4, $0C, $06, $0C, $0C, $06, $30, nRst, $0C, nD4
	dc.b	$06, $0C, $0C, $06, $18, $18, nA3, $0C, $06, $0C, $0C, $06
	dc.b	nG3, $18, nA3, nRst, $0C, nA3, $06, $0C, $0C, $06, nG3, $18
	dc.b	nA3, nD4, $0C, $06, $0C, $0C, $06, $30, nRst, $0C, nD4, $06
	dc.b	$0C, $0C, $06, $18, $18, nRst, $0C, nB3, $06, $0C, $0C, $06
	dc.b	$18, $18, nRst, $0C, nD4, $06, $0C, $0C, $06, $0C, $0C, $06
	dc.b	nE4, $12
	smpsJump            Wily3_MW_FM4

Wily3_MW_Call01:
	dc.b	nRst, $0C, nE4, $06, $0C, $0C, $06, nD4, $18, $18, nRst, $0C
	dc.b	nE4, $06, $0C, $0C, $06, nG4, $18, $18, nRst, $0C, nE4, $06
	dc.b	$0C, $0C, $06, nD4, $18, $18, nRst, $0C, nE4, $06, $0C, $0C
	dc.b	$06, nG4, $18, $18, nRst, $0C, nA4, $06, $0C, $0C, $06, nG4
	dc.b	$18, $18, nRst, $0C, nA4, $06, $0C, $0C, $06, nC5, $18, $18
	dc.b	nRst, $0C, nE4, $06, $0C, $0C, $06, nD4, $18, $18, nRst, $0C
	dc.b	nE4, $06, $0C, $0C, $06, nG4, $18, $18, nRst, $0C, nB4, $06
	dc.b	$0C, $0C, $06, nA4, $18, $18
	smpsReturn

; FM5 Data
Wily3_MW_FM5:
	smpsAlterNote       $02
	dc.b	nRst, $0C
	smpsJump            Wily3_MW_FM1

; DAC Data
Wily3_MW_DAC:
	smpsCall            Wily3_MW_Call00
	dc.b	dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06, $0C, $0C, dSnareS3
	dc.b	$06, dKickS3, $12, dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06
	dc.b	$06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, dKickS3, $06, dSnareS3, $06, $06

Wily3_MW_Loop00:
	smpsCall            Wily3_MW_Call00
	smpsLoop            $00, $04, Wily3_MW_Loop00
	dc.b	dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06, $0C, $0C, dSnareS3
	dc.b	$06, dKickS3, $12, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3
	dc.b	$0C, dKickS3, $18, $18, dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	$06, $0C, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $0C, $06, $06, dSnareS3
	dc.b	$06, dKickS3, $0C, $06, $0C, $0C, dSnareS3, $06, $06, $06, $06
	smpsLoop            $01, $02, Wily3_MW_Loop00

Wily3_MW_Loop01:
	dc.b	dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06, $0C, $0C, dSnareS3
	dc.b	$0C, dKickS3, $0C
	smpsLoop            $00, $06, Wily3_MW_Loop01
	dc.b	dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $06, dSnareS3, $06, $06, dKickS3, $0C, $06
	dc.b	$06, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	$06, $06, dKickS3, $06, dSnareS3, $06
	smpsJump            Wily3_MW_DAC

Wily3_MW_Call00:
	dc.b	dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06, $0C, $0C, dSnareS3
	dc.b	$06, dKickS3, $12, dKickS3, $0C, $06, $06, dSnareS3, $06, dKickS3, $0C, $06
	dc.b	$0C, $0C, dSnareS3, $12, dKickS3, $06
	smpsReturn

; PSG1 Data
Wily3_MW_PSG1:
	smpsPSGvoice        fTone_07
	dc.b	nRst, $0C, nA2, $0C, nRst, nA2, $0C, smpsNoAttack, $30, nRst, $0C, nA2
	dc.b	nRst, $06, nA2, $12, $18, nG2, $18, nRst, $0C, nA2, $0C, nRst
	dc.b	nA2, $0C, smpsNoAttack, $30, nRst, $0C, nA2, nRst, $06, nA2, $12, $18
	dc.b	nG2, $18

Wily3_MW_Loop0C:
	smpsPSGvoice        fTone_09
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsLoop            $00, $04, Wily3_MW_Loop0C

Wily3_MW_Loop0D:
	dc.b	nC4, $06, nC3, $0C, $06
	smpsLoop            $00, $08, Wily3_MW_Loop0D
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsCall            Wily3_MW_Call05
	dc.b	nF2, nFs2, nG2, nA2
	smpsPSGvoice        fTone_07
	dc.b	nB2, $12, nD3, nB2, $30, nB2, $06, nBb2, nA2, $12, $12, nA2
	dc.b	$24, nRst, $0C, nG2, $06, nFs2, nA2, $60, $60

Wily3_MW_Loop0E:
	smpsPSGvoice        fTone_09
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsLoop            $00, $04, Wily3_MW_Loop0E

Wily3_MW_Loop0F:
	dc.b	nC4, $06, nC3, $0C, $06
	smpsLoop            $00, $08, Wily3_MW_Loop0F
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsCall            Wily3_MW_Call05
	smpsPSGvoice        fTone_07
	smpsCall            Wily3_MW_Call06
	smpsCall            Wily3_MW_Call07
	dc.b	nE3, $12
	smpsJump            Wily3_MW_PSG1

Wily3_MW_Call05:
	dc.b	nA3, $06, nA2, $0C, $06, nA3, $06, nA2, $0C, $06, nA3, $06
	dc.b	nA2, $0C, $06
	smpsReturn

Wily3_MW_Call06:
	dc.b	$18, nD3, $24, nB2, $0C, smpsNoAttack, $30, nG2, $12, $12, nE2, $24
	dc.b	nRst, $0C, nD3, $06, nA2, nD3, $24, nE3, $0C, smpsNoAttack, $30, smpsNoAttack
	dc.b	$60
	smpsReturn

Wily3_MW_Call07:
	dc.b	nD3, $24, $0C, smpsNoAttack, $60, nRst, $0C, nD3, $0C, $06, $12, nD3
	dc.b	$24, nA2, nD2, $18, nRst, $0C, nG2, $0C, $06, $12, $12, nD2
	dc.b	$06, smpsNoAttack, $18, nD3, $24, $0C, smpsNoAttack, $30, nRst, $0C, nD3, $0C
	dc.b	$18, $0C, $0C, $06, $12, nB2, $24, $0C, smpsNoAttack, $30, nRst, $0C
	dc.b	nD3, $0C, $18, $0C, $0C, $06
	smpsReturn

; PSG2 Data
Wily3_MW_PSG2:
	smpsAlterNote       $FF

Wily3_MW_Loop07:
	smpsPSGvoice        fTone_07
	dc.b	nRst, $0C, nE2, $0C, nRst, nE2, $0C, smpsNoAttack, $30, nRst, $0C, nE2
	dc.b	nRst, $06, nE2, $12, $18, nE2, $18
	smpsLoop            $00, $02, Wily3_MW_Loop07
	dc.b	nRst, $06
	smpsPSGAlterVol     $02

Wily3_MW_Loop08:
	smpsPSGvoice        fTone_09
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsLoop            $00, $04, Wily3_MW_Loop08

Wily3_MW_Loop09:
	dc.b	nC4, $06, nC3, $0C, $06
	smpsLoop            $00, $08, Wily3_MW_Loop09
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsCall            Wily3_MW_Call05
	dc.b	nF2, nFs2, nG2, nA2
	smpsPSGvoice        fTone_07
	dc.b	nB2, $12, nD3, nB2, $30, nB2, $06, nBb2, nA2, $12, $12, nA2
	dc.b	$24, nRst, $0C, nG2, $06, nFs2, nA2, $60, $60

Wily3_MW_Loop0A:
	smpsPSGvoice        fTone_09
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsLoop            $00, $04, Wily3_MW_Loop0A

Wily3_MW_Loop0B:
	dc.b	nC4, $06, nC3, $0C, $06
	smpsLoop            $00, $08, Wily3_MW_Loop0B
	smpsCall            Wily3_MW_Call05
	dc.b	nA3, nE3, nG3, nA3
	smpsCall            Wily3_MW_Call05
	smpsPSGvoice        fTone_07
	smpsCall            Wily3_MW_Call06
	smpsCall            Wily3_MW_Call07
	dc.b	nE3, $0C
	smpsPSGAlterVol     $FE
	smpsJump            Wily3_MW_Loop07

; PSG3 Data
Wily3_MW_PSG3:
	smpsPSGform         $E7

Wily3_MW_Loop03:
	smpsCall            Wily3_MW_Call04
	smpsLoop            $00, $0D, Wily3_MW_Loop03
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $0C, $0C, $18
	smpsCall            Wily3_MW_Call04
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06, $0C, $0C
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06, $06

Wily3_MW_Loop04:
	smpsCall            Wily3_MW_Call04
	smpsLoop            $00, $09, Wily3_MW_Loop04
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $0C, $0C, $18
	smpsCall            Wily3_MW_Call04
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06, $0C, $0C
	smpsPSGvoice        fTone_09
	dc.b	$06, $06, $06, $06

Wily3_MW_Loop05:
	smpsCall            Wily3_MW_Call04
	smpsLoop            $00, $06, Wily3_MW_Loop05
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$0C, $0C, $06, $06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06

Wily3_MW_Loop06:
	smpsCall            Wily3_MW_Call04
	smpsLoop            $00, $03, Wily3_MW_Loop06
	smpsPSGvoice        fTone_02
	dc.b	$0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_09
	dc.b	$06, $06
	smpsJump            Wily3_MW_Loop03

Wily3_MW_Call04:
	smpsPSGvoice        fTone_02
	dc.b	(nMaxPSG-$F4)&$FF, $0C, $06, $06
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06
	smpsPSGvoice        fTone_02
	dc.b	$0C, $0C
	smpsPSGvoice        fTone_09
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $06
	smpsReturn

Wily3_MW_Voices:
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

