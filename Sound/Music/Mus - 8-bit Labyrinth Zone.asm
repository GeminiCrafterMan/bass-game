MSLabyrinth_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MSLabyrinth_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       MSLabyrinth_DAC
	smpsHeaderFM        MSLabyrinth_FM1,	$00, $0D
	smpsHeaderFM        MSLabyrinth_FM2,	$00, $0B
	smpsHeaderFM        MSLabyrinth_FM3,	$00, $12
	smpsHeaderFM        MSLabyrinth_FM4,	$00, $18
	smpsHeaderFM        MSLabyrinth_FM5,	$00, $12
	smpsHeaderFM        MSLabyrinth_FM6,	$00, $10
	smpsHeaderPSG       MSLabyrinth_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MSLabyrinth_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MSLabyrinth_PSG3,	$00, $08, $00, $00

; DAC Data
MSLabyrinth_DAC:
	smpsPan             panCenter, $00

MSLabyrinth_Jump00:
	dc.b	dKick

MSLabyrinth_Loop00:
	dc.b	$08, $04, dSnare, $08, dKick, $04
	smpsLoop            $00, $2F, MSLabyrinth_Loop00
	dc.b	$08, $04, dSnare, dSnare, dSnare
	smpsJump            MSLabyrinth_Jump00

; FM1 Data
MSLabyrinth_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00

MSLabyrinth_Jump06:
	smpsAlterNote       $00
	dc.b	nG6, $0D

MSLabyrinth_Loop09:
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $0B, MSLabyrinth_Loop09
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	nEb6, $08, nF6, $04, nRst
	smpsAlterVol        $08
	dc.b	nF6
	smpsAlterVol        $F8
	dc.b	nEb6, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nC6, $0D

MSLabyrinth_Loop0A:
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $07, MSLabyrinth_Loop0A
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $08, nFs6, $04, nRst
	smpsAlterVol        $08
	dc.b	nFs6
	smpsAlterVol        $F8
	dc.b	nG6, $0D

MSLabyrinth_Loop0B:
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $0C, MSLabyrinth_Loop0B
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nEb6, $08, nF6, $04, nRst
	smpsAlterVol        $08
	dc.b	nF6
	smpsAlterVol        $F8
	dc.b	nEb6, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nC6, $0D

MSLabyrinth_Loop0C:
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $07, MSLabyrinth_Loop0C
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $08, nEb6, $04, nRst, $08

MSLabyrinth_Loop0F:
	dc.b	nC6, $04, nRst
	smpsAlterVol        $08
	dc.b	nC6
	smpsAlterVol        $F8
	dc.b	$04, nBb5, $09
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nG5, $08, nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nEb6, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nG5, $08, nBb5, $04, nRst
	smpsAlterVol        $08
	dc.b	nBb5
	smpsAlterVol        $F8
	dc.b	nC6, $0D

MSLabyrinth_Loop0D:
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $07, MSLabyrinth_Loop0D
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	nRst, $04
	smpsAlterVol        $08
	dc.b	nC6

MSLabyrinth_Loop0E:
	smpsAlterVol        $F8
	dc.b	nG6, nRst
	smpsAlterVol        $08
	dc.b	nG6
	smpsLoop            $00, $03, MSLabyrinth_Loop0E
	smpsAlterVol        $F8
	smpsLoop            $01, $02, MSLabyrinth_Loop0F
	dc.b	nC7, $09
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nBb6, $09
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nG6, $08, nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nEb6, $09
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nF6, $08, nG6, $04, nRst
	smpsAlterVol        $08
	dc.b	nG6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nEb6, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nC6, $08, nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, $04, nRst
	smpsAlterVol        $08
	dc.b	nF6
	smpsAlterVol        $F8
	dc.b	$08, nG6, $04, nRst
	smpsAlterVol        $08
	dc.b	nG6
	smpsAlterVol        $F8
	dc.b	nC7, $09
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nBb6, $09
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nG6, $08, nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nEb6, $09
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nF6, $08, nG6, $04, nRst
	smpsAlterVol        $08
	dc.b	nG6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, nEb6, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nC6, $08, nEb6, $04, nRst
	smpsAlterVol        $08
	dc.b	nEb6
	smpsAlterVol        $F8
	dc.b	nF6, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$04, $04, nRst
	smpsAlterVol        $08
	dc.b	nF6
	smpsAlterVol        $F8
	dc.b	$08, nFs6, $04, nRst, $08, nG6, $04
	smpsJump            MSLabyrinth_Jump06

; FM2 Data
MSLabyrinth_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $00

MSLabyrinth_Jump05:
	dc.b	nC2, $0C, nEb2

MSLabyrinth_Loop08:
	dc.b	nF2, nFs2, $08, nG2, $04, nRst
	smpsAlterVol        $08
	dc.b	nG2
	smpsAlterVol        $F8
	dc.b	$04, nA1, $0C, nBb1, nB1, $08, nC2, $04, nRst
	smpsAlterVol        $08
	dc.b	nC2
	smpsAlterVol        $F8
	dc.b	$04, nEb2, $0C
	smpsLoop            $00, $07, MSLabyrinth_Loop08
	dc.b	nF2, nFs2, $08, nG2, $04, nRst
	smpsAlterVol        $08
	dc.b	nG2
	smpsAlterVol        $F8
	dc.b	$04, nA1, $0C, nBb1, nB1, $08, nC2, $04, $0C, $0C, $0C, $04
	dc.b	$04, $04, nBb1, $0C, $0C, $0C, $04, $04, $04, nAb2, $0C, $0C
	dc.b	$0C, $04, $04, $04, nG2, $0C, $0C, $0C, $04, $04, $04, nC2
	dc.b	$0C, $0C, $0C, $04, $04, $04, nBb1, $0C, $0C, $0C, $04, $04
	dc.b	$04, nAb2, $0C, $0C, $0C, $04, $04, $04, nG2, $0C, $0C, nBb1
	dc.b	$04, $04, $04, nB1, nB1, nB1
	smpsJump            MSLabyrinth_Jump05

; FM3 Data
MSLabyrinth_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsAlterNote       $FD

MSLabyrinth_Jump04:
	dc.b	nC6, $04, nRst
	smpsAlterVol        $0A
	dc.b	nC6
	smpsAlterVol        $F8
	dc.b	$04, nRst
	smpsAlterVol        $0C
	dc.b	nC6
	smpsAlterVol        $F6
	dc.b	$04, nRst
	smpsAlterVol        $0E
	dc.b	nC6
	smpsAlterVol        $F5
	dc.b	$04, nRst
	smpsAlterVol        $10
	dc.b	nC6
	smpsAlterVol        $F3
	dc.b	$04, nRst
	smpsAlterVol        $14
	dc.b	nC6
	smpsAlterVol        $F0
	dc.b	$04, nRst
	smpsAlterVol        $19
	dc.b	nC6
	smpsAlterVol        $DB
	dc.b	nC5, $08, $04, nRst, $08, nC5, $04, nRst, $08, nG4, $1C, nEb5
	dc.b	$04, nF5, nFs5, nG5, nFs5, nF5, nEb5, nC5, nBb4, nC5, nBb4, nG4
	dc.b	$08, nBb4, $04, nG4
	smpsAlterVol        $FE
	dc.b	nC6, nRst
	smpsAlterVol        $0A
	dc.b	nC6
	smpsAlterVol        $F8
	dc.b	$04, nRst
	smpsAlterVol        $0C
	dc.b	nC6
	smpsAlterVol        $F6
	dc.b	$04, nRst
	smpsAlterVol        $0E
	dc.b	nC6
	smpsAlterVol        $F5
	dc.b	$04, nRst
	smpsAlterVol        $10
	dc.b	nC6
	smpsAlterVol        $F3
	dc.b	$04, nRst
	smpsAlterVol        $14
	dc.b	nC6
	smpsAlterVol        $F0
	dc.b	$04, nRst
	smpsAlterVol        $19
	dc.b	nC6
	smpsAlterVol        $DB
	dc.b	nC5, $08, $04, nRst, $08, nC5, $04, nRst, $08, nG4, $1C, nEb5
	dc.b	$04, nF5, nFs5, nG5, nFs5, nF5, nEb5, nC5, nBb4, nC5, nBb4, nG4
	dc.b	$08, nBb4, $04, nG4

MSLabyrinth_Loop06:
	dc.b	nRst, $08, nG4, $04, $08, nRst, $04, nD4, $08, nBb4, $04, nRst
	dc.b	$08, nC5, $0C, $04, nBb4, nRst, $08, nD4, nF4, $04, nRst, $08
	dc.b	nG4, $0C, $04, nEb4, nRst, $08, nF4, nFs4, $04, nRst, $08, nG4
	dc.b	$04, nRst, $08, nG4, $04, nEb4, $0C, nF4, $08, nEb4, $04, nRst
	dc.b	$08, nG4, $04
	smpsLoop            $00, $02, MSLabyrinth_Loop06

MSLabyrinth_Loop07:
	dc.b	$30, $30, nC5, nC5, $0C, nD5, $04, nEb5, nF5, nG5, nF5, nEb5
	dc.b	nD5, nBb4, nG4
	smpsLoop            $00, $02, MSLabyrinth_Loop07
	smpsAlterVol        $FE
	smpsJump            MSLabyrinth_Jump04

; FM4 Data
MSLabyrinth_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $01

MSLabyrinth_Jump03:
	dc.b	nC4, $0C, nEb4

MSLabyrinth_Loop05:
	dc.b	nF4, nFs4, $08, nG4, $04, nRst
	smpsAlterVol        $08
	dc.b	nG4
	smpsAlterVol        $F8
	dc.b	$04, nA3, $0C, nBb3, nB3, $08, nC4, $04, nRst
	smpsAlterVol        $08
	dc.b	nC4
	smpsAlterVol        $F8
	dc.b	$04, nEb4, $0C
	smpsLoop            $00, $07, MSLabyrinth_Loop05
	dc.b	nF4, nFs4, $08, nG4, $04, nRst
	smpsAlterVol        $08
	dc.b	nG4
	smpsAlterVol        $F8
	dc.b	$04, nA3, $0C, nBb3, nB3, $08, nC4, $04, $0C, $0C, $0C, $04
	dc.b	$04, $04, nBb3, $0C, $0C, $0C, $04, $04, $04, nAb4, $0C, $0C
	dc.b	$0C, $04, $04, $04, nG4, $0C, $0C, $0C, $04, $04, $04, nC4
	dc.b	$0C, $0C, $0C, $04, $04, $04, nBb3, $0C, $0C, $0C, $04, $04
	dc.b	$04, nAb4, $0C, $0C, $0C, $04, $04, $04, nG4, $0C, $0C, nBb3
	dc.b	$04, $04, $04, nB3, nB3, nB3
	smpsJump            MSLabyrinth_Jump03

; FM5 Data
MSLabyrinth_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $01

MSLabyrinth_Jump02:
	dc.b	nG5, $48, nEb5, $08, nF5, $04, nRst
	smpsAlterVol        $09
	dc.b	nF5
	smpsAlterVol        $F7
	dc.b	nEb5, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nC5, $34, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $08, nFs5, $04, nRst
	smpsAlterVol        $09
	dc.b	nFs5
	smpsAlterVol        $F7
	dc.b	nG5, $4C, nEb5, $08, nF5, $04, nRst
	smpsAlterVol        $09
	dc.b	nF5
	smpsAlterVol        $F7
	dc.b	nEb5, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nC5, $34, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $08, nEb5, $04, nRst, $08

MSLabyrinth_Loop04:
	dc.b	nC5, $04, nRst
	smpsAlterVol        $09
	dc.b	nC5
	smpsAlterVol        $F7
	dc.b	$04, nBb4, $0C, nG4, $08, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, nEb5, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nG4, $08, nBb4, $04, nRst
	smpsAlterVol        $09
	dc.b	nBb4
	smpsAlterVol        $F7
	dc.b	nC5, $34, nRst, $04
	smpsAlterVol        $09
	dc.b	nC5

MSLabyrinth_Loop03:
	smpsAlterVol        $F7
	dc.b	nG5, nRst
	smpsAlterVol        $09
	dc.b	nG5
	smpsLoop            $00, $03, MSLabyrinth_Loop03
	smpsAlterVol        $F7
	smpsLoop            $01, $02, MSLabyrinth_Loop04
	dc.b	nC6, $0C, $04, nBb5, $0C, nG5, $08, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, nEb5, $0C, nF5, $08, nG5, $04, nRst
	smpsAlterVol        $09
	dc.b	nG5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, nEb5, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nC5, $08, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, $04, nRst
	smpsAlterVol        $09
	dc.b	nF5
	smpsAlterVol        $F7
	dc.b	$08, nG5, $04, nRst
	smpsAlterVol        $09
	dc.b	nG5
	smpsAlterVol        $F7
	dc.b	nC6, $0C, $04, nBb5, $0C, nG5, $08, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, nEb5, $0C, nF5, $08, nG5, $04, nRst
	smpsAlterVol        $09
	dc.b	nG5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, nEb5, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nC5, $08, nEb5, $04, nRst
	smpsAlterVol        $09
	dc.b	nEb5
	smpsAlterVol        $F7
	dc.b	nF5, $0C, $04, $04, nRst
	smpsAlterVol        $09
	dc.b	nF5
	smpsAlterVol        $F7
	dc.b	$08, nFs5, $04, nRst, $08, nG5, $04
	smpsJump            MSLabyrinth_Jump02

; FM6 Data
MSLabyrinth_FM6:
	smpsAlterNote       $FD
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $01

MSLabyrinth_Jump01:
	dc.b	nC7, $04, nRst
	smpsAlterVol        $0B
	dc.b	nC7
	smpsAlterVol        $F8
	dc.b	$04, nRst
	smpsAlterVol        $0C
	dc.b	nC7
	smpsAlterVol        $F6
	dc.b	$04, nRst
	smpsAlterVol        $0E
	dc.b	nC7
	smpsAlterVol        $F5
	dc.b	$04, nRst
	smpsAlterVol        $10
	dc.b	nC7
	smpsAlterVol        $F3
	dc.b	$04, nRst
	smpsAlterVol        $14
	dc.b	nC7
	smpsAlterVol        $F0
	dc.b	$04, nRst
	smpsAlterVol        $19
	dc.b	nC7
	smpsAlterVol        $DB
	dc.b	nC6, $08, $04, nRst, $08, nC6, $04, nRst, $08, nG5, $1C, nEb6
	dc.b	$04, nF6, nFs6, nG6, nFs6, nF6, nEb6, nC6, nBb5, nC6, nBb5, nG5
	dc.b	$08, nBb5, $04, nG5
	smpsAlterVol        $FD
	dc.b	nC7, nRst
	smpsAlterVol        $0B
	dc.b	nC7
	smpsAlterVol        $F8
	dc.b	$04, nRst
	smpsAlterVol        $0C
	dc.b	nC7
	smpsAlterVol        $F6
	dc.b	$04, nRst
	smpsAlterVol        $0E
	dc.b	nC7
	smpsAlterVol        $F5
	dc.b	$04, nRst
	smpsAlterVol        $10
	dc.b	nC7
	smpsAlterVol        $F3
	dc.b	$04, nRst
	smpsAlterVol        $14
	dc.b	nC7
	smpsAlterVol        $F0
	dc.b	$04, nRst
	smpsAlterVol        $19
	dc.b	nC7
	smpsAlterVol        $DB
	dc.b	nC6, $08, $04, nRst, $08, nC6, $04, nRst, $08, nG5, $1C, nEb6
	dc.b	$04, nF6, nFs6, nG6, nFs6, nF6, nEb6, nC6, nBb5, nC6, nBb5, nG5
	dc.b	$08, nBb5, $04, nG5

MSLabyrinth_Loop01:
	dc.b	nRst, $08, nG5, $04, $08, nRst, $04, nD5, $08, nBb5, $04, nRst
	dc.b	$08, nC6, $0C, $04, nBb5, nRst, $08, nD5, nF5, $04, nRst, $08
	dc.b	nG5, $0C, $04, nEb5, nRst, $08, nF5, nFs5, $04, nRst, $08, nG5
	dc.b	$04, nRst, $08, nG5, $04, nEb5, $0C, nF5, $08, nEb5, $04, nRst
	dc.b	$08, nG5, $04
	smpsLoop            $00, $02, MSLabyrinth_Loop01
	smpsSetvoice        $04
	dc.b	nG4

MSLabyrinth_Loop02:
	dc.b	$30, $30, nC5, nC5, $0C, nD5, $04, nEb5, nF5, nG5, nF5, nEb5
	dc.b	nD5, nBb4, nG4
	smpsLoop            $00, $02, MSLabyrinth_Loop02
	smpsSetvoice        $03
	smpsAlterVol        $FD
	smpsJump            MSLabyrinth_Jump01

; PSG3 Data
MSLabyrinth_PSG3:
	smpsPSGform         $E7

MSLabyrinth_Jump07:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG

MSLabyrinth_Loop10:
	dc.b	$08, $04
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsLoop            $00, $2F, MSLabyrinth_Loop10
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsPSGAlterVol     $02
	smpsJump            MSLabyrinth_Jump07

; PSG1 Data
MSLabyrinth_PSG1:
; PSG2 Data
MSLabyrinth_PSG2:
	smpsStop

MSLabyrinth_Voices:
;	Voice $00
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $01
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $00, $2A, $14, $22

;	Voice $02
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $03
;	$10
;	$35, $76, $70, $30, 	$DF, $DF, $5F, $5F, 	$06, $08, $09, $09
;	$06, $03, $03, $01, 	$26, $16, $06, $26, 	$21, $34, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $06, $05
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $08, $06
	smpsVcDecayRate2    $01, $03, $03, $06
	smpsVcDecayLevel    $02, $00, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $34, $21

;	Voice $04
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

