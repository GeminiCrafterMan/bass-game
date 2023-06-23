Mus_MSLabyrinth_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus_MSLabyrinth_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       Mus_MSLabyrinth_DAC
	smpsHeaderFM        Mus_MSLabyrinth_FM1,	$00, $08
	smpsHeaderFM        Mus_MSLabyrinth_FM2,	$0C, $0B
	smpsHeaderFM        Mus_MSLabyrinth_FM3,	$00, $14
	smpsHeaderFM        Mus_MSLabyrinth_FM4,	$00, $14
	smpsHeaderFM        Mus_MSLabyrinth_FM5,	$00, $14
	smpsHeaderPSG       Mus_MSLabyrinth_PSG1,	$DC, $01, $00, $00
	smpsHeaderPSG       Mus_MSLabyrinth_PSG2,	$DC, $05, $00, $00
	smpsHeaderPSG       Mus_MSLabyrinth_PSG3,	$23, $03, $00, $00

; PSG3 Data
Mus_MSLabyrinth_PSG3:
	smpsPSGform         $E7

Mus_MSLabyrinth_Jump01:
	smpsPSGvoice        fTone_02

Mus_MSLabyrinth_Loop41:
	dc.b	nAb6, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsLoop            $00, $5F, Mus_MSLabyrinth_Loop41
	smpsPSGvoice        fTone_02
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsJump            Mus_MSLabyrinth_Jump01

; FM2 Data
Mus_MSLabyrinth_FM2:
	smpsSetvoice        $01
	;smpsSetvoice        $01
	;smpsSetvoice        $01
	dc.b	nC2, $0B

Mus_MSLabyrinth_Loop15:
	dc.b	nRst, $01, nEb2, $0B, nRst, $01, nF2, $0B, nRst, $01, nFs2, $07
	dc.b	nRst, $01, nG2, $03, nRst, $01, nG2, $07, nRst, $01, nG2, $03
	dc.b	nRst, $01, nA1, $0B, nRst, $01, nBb1, $0B, nRst, $01, nB1, $07
	dc.b	nRst, $01, nC2, $03, nRst, $01, nC2, $07, nRst, $01, nC2, $03
	smpsLoop            $00, $07, Mus_MSLabyrinth_Loop15
	dc.b	nRst, $01, nEb2, $0B, nRst, $01, nF2, $0B, nRst, $01, nFs2, $07
	dc.b	nRst, $01, nG2, $03, nRst, $01, nG2, $07, nRst, $01, nG2, $03
	dc.b	nRst, $01, nA1, $0B, nRst, $01, nBb1, $0B, nRst, $01, nB1, $07
	dc.b	nRst, $01, nC2, $03

Mus_MSLabyrinth_Loop16:
	dc.b	nRst, $01, nC2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop16

Mus_MSLabyrinth_Loop17:
	dc.b	nRst, $01, nC2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop17

Mus_MSLabyrinth_Loop18:
	dc.b	nRst, $01, nBb1, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop18

Mus_MSLabyrinth_Loop19:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop19

Mus_MSLabyrinth_Loop1A:
	dc.b	nRst, $01, nAb2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1A

Mus_MSLabyrinth_Loop1B:
	dc.b	nRst, $01, nAb2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1B

Mus_MSLabyrinth_Loop1C:
	dc.b	nRst, $01, nG2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1C

Mus_MSLabyrinth_Loop1D:
	dc.b	nRst, $01, nG2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1D

Mus_MSLabyrinth_Loop1E:
	dc.b	nRst, $01, nC2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1E

Mus_MSLabyrinth_Loop1F:
	dc.b	nRst, $01, nC2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop1F

Mus_MSLabyrinth_Loop20:
	dc.b	nRst, $01, nBb1, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop20

Mus_MSLabyrinth_Loop21:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop21

Mus_MSLabyrinth_Loop22:
	dc.b	nRst, $01, nAb2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop22

Mus_MSLabyrinth_Loop23:
	dc.b	nRst, $01, nAb2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop23
	dc.b	nRst, $01, nG2, $0B, nRst, $01, nG2, $0B

Mus_MSLabyrinth_Loop24:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop24

Mus_MSLabyrinth_Loop25:
	dc.b	nRst, $01, nB1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop25
	dc.b	nRst, $01, nC2, $0B

Mus_MSLabyrinth_Loop26:
	dc.b	nRst, $01, nEb2, $0B, nRst, $01, nF2, $0B, nRst, $01, nFs2, $07
	dc.b	nRst, $01, nG2, $03, nRst, $01, nG2, $07, nRst, $01, nG2, $03
	dc.b	nRst, $01, nA1, $0B, nRst, $01, nBb1, $0B, nRst, $01, nB1, $07
	dc.b	nRst, $01, nC2, $03, nRst, $01, nC2, $07, nRst, $01, nC2, $03
	smpsLoop            $00, $07, Mus_MSLabyrinth_Loop26
	dc.b	nRst, $01, nEb2, $0B, nRst, $01, nF2, $0B, nRst, $01, nFs2, $07
	dc.b	nRst, $01, nG2, $03, nRst, $01, nG2, $07, nRst, $01, nG2, $03
	dc.b	nRst, $01, nA1, $0B, nRst, $01, nBb1, $0B, nRst, $01, nB1, $07
	dc.b	nRst, $01, nC2, $03

Mus_MSLabyrinth_Loop27:
	dc.b	nRst, $01, nC2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop27

Mus_MSLabyrinth_Loop28:
	dc.b	nRst, $01, nC2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop28

Mus_MSLabyrinth_Loop29:
	dc.b	nRst, $01, nBb1, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop29

Mus_MSLabyrinth_Loop2A:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2A

Mus_MSLabyrinth_Loop2B:
	dc.b	nRst, $01, nAb2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2B

Mus_MSLabyrinth_Loop2C:
	dc.b	nRst, $01, nAb2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2C

Mus_MSLabyrinth_Loop2D:
	dc.b	nRst, $01, nG2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2D

Mus_MSLabyrinth_Loop2E:
	dc.b	nRst, $01, nG2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2E

Mus_MSLabyrinth_Loop2F:
	dc.b	nRst, $01, nC2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop2F

Mus_MSLabyrinth_Loop30:
	dc.b	nRst, $01, nC2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop30

Mus_MSLabyrinth_Loop31:
	dc.b	nRst, $01, nBb1, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop31

Mus_MSLabyrinth_Loop32:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop32

Mus_MSLabyrinth_Loop33:
	dc.b	nRst, $01, nAb2, $0B
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop33

Mus_MSLabyrinth_Loop34:
	dc.b	nRst, $01, nAb2, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop34
	dc.b	nRst, $01, nG2, $0B, nRst, $01, nG2, $0B

Mus_MSLabyrinth_Loop35:
	dc.b	nRst, $01, nBb1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop35

Mus_MSLabyrinth_Loop36:
	dc.b	nRst, $01, nB1, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop36
	smpsSetvoice        $01
	;smpsSetvoice        $01
	;smpsSetvoice        $01
	smpsJump            Mus_MSLabyrinth_FM2

; FM3 Data
Mus_MSLabyrinth_FM3:
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02

Mus_MSLabyrinth_Loop10:
	dc.b	nG4, $5F, nRst, $01, nEb4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop10

Mus_MSLabyrinth_Loop11:
	dc.b	nEb4, $2F, nRst, $01, nD4, $2F, nRst, $01, nEb4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop11

Mus_MSLabyrinth_Loop12:
	dc.b	nG4, $2F, nRst, $01, nF4, $2F, nRst, $01, nEb4, $2F, nRst, $01
	dc.b	nF4, $2F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop12

Mus_MSLabyrinth_Loop13:
	dc.b	nG4, $5F, nRst, $01, nEb4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop13

Mus_MSLabyrinth_Loop14:
	dc.b	nEb4, $2F, nRst, $01, nD4, $2F, nRst, $01, nEb4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop14
	dc.b	nG4, $2F, nRst, $01, nF4, $2F, nRst, $01, nEb4, $2F, nRst, $01
	dc.b	nF4, $2F, nRst, $01, nG4, $2F, nRst, $01, nF4, $2F, nRst, $01
	dc.b	nEb4, $2F, nRst, $01, nF4, $2F
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02
	smpsJump            Mus_MSLabyrinth_FM3

; FM4 Data
Mus_MSLabyrinth_FM4:
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02

Mus_MSLabyrinth_Loop0B:
	dc.b	nEb4, $5F, nRst, $01, nC4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0B

Mus_MSLabyrinth_Loop0C:
	dc.b	nC4, $2F, nRst, $01, nBb3, $2F, nRst, $01, nC4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0C

Mus_MSLabyrinth_Loop0D:
	dc.b	nEb4, $2F, nRst, $01, nD4, $2F, nRst, $01, nC4, $2F, nRst, $01
	dc.b	nD4, $2F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0D

Mus_MSLabyrinth_Loop0E:
	dc.b	nEb4, $5F, nRst, $01, nC4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0E

Mus_MSLabyrinth_Loop0F:
	dc.b	nC4, $2F, nRst, $01, nBb3, $2F, nRst, $01, nC4, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0F
	dc.b	nEb4, $2F, nRst, $01, nD4, $2F, nRst, $01, nC4, $2F, nRst, $01
	dc.b	nD4, $2F, nRst, $01, nEb4, $2F, nRst, $01, nD4, $2F, nRst, $01
	dc.b	nC4, $2F, nRst, $01, nD4, $2F
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02
	smpsJump            Mus_MSLabyrinth_FM4

; FM5 Data
Mus_MSLabyrinth_FM5:
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02

Mus_MSLabyrinth_Loop06:
	dc.b	nC4, $5F, nRst, $01, nG3, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop06

Mus_MSLabyrinth_Loop07:
	dc.b	nG3, $2F, nRst, $01, nF3, $2F, nRst, $01, nG3, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop07

Mus_MSLabyrinth_Loop08:
	dc.b	nC4, $2F, nRst, $01, nBb3, $2F, nRst, $01, nAb3, $2F, nRst, $01
	dc.b	nBb3, $2F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop08

Mus_MSLabyrinth_Loop09:
	dc.b	nC4, $5F, nRst, $01, nG3, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop09

Mus_MSLabyrinth_Loop0A:
	dc.b	nG3, $2F, nRst, $01, nF3, $2F, nRst, $01, nG3, $5F, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop0A
	dc.b	nC4, $2F, nRst, $01, nBb3, $2F, nRst, $01, nAb3, $2F, nRst, $01
	dc.b	nBb3, $2F, nRst, $01, nC4, $2F, nRst, $01, nBb3, $2F, nRst, $01
	dc.b	nAb3, $2F, nRst, $01, nBb3, $2F
	smpsSetvoice        $02
	;smpsSetvoice        $02
	;smpsSetvoice        $02
	smpsJump            Mus_MSLabyrinth_FM5

; PSG1 Data
Mus_MSLabyrinth_PSG1:
	dc.b	nC6, $07, nRst, $01, nC6, $03, nRst, $01
	smpsLoop            $00, $06, Mus_MSLabyrinth_PSG1
	dc.b	nC5, $07, nRst, $01, nC5, $03, nRst, $09, nC5, $03, nRst, $09
	dc.b	nG4, $1B, nRst, $01, nEb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nFs5, $03, nRst, $01, nG5, $03, nRst, $01, nFs5, $03, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $03

Mus_MSLabyrinth_Loop37:
	dc.b	nRst, $01, nC5, $03, nRst, $01, nBb4, $03
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop37
	dc.b	nRst, $01, nG4, $07, nRst, $01, nBb4, $03, nRst, $01, nG4, $03

Mus_MSLabyrinth_Loop38:
	dc.b	nRst, $01, nC6, $07, nRst, $01, nC6, $03
	smpsLoop            $00, $06, Mus_MSLabyrinth_Loop38
	dc.b	nRst, $01, nC5, $07, nRst, $01, nC5, $03, nRst, $09, nC5, $03
	dc.b	nRst, $09, nG4, $1B, nRst, $01, nEb5, $03, nRst, $01, nF5, $03
	dc.b	nRst, $01, nFs5, $03, nRst, $01, nG5, $03, nRst, $01, nFs5, $03
	dc.b	nRst, $01, nF5, $03, nRst, $01, nEb5, $03

Mus_MSLabyrinth_Loop39:
	dc.b	nRst, $01, nC5, $03, nRst, $01, nBb4, $03
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop39
	dc.b	nRst, $01, nG4, $07, nRst, $01, nBb4, $03, nRst, $01

Mus_MSLabyrinth_Loop3A:
	dc.b	nG4, $03, nRst, $09, nG4, $03, nRst, $01, nG4, $03, nRst, $09
	dc.b	nD4, $07, nRst, $01, nBb4, $03, nRst, $09, nC5, $0B, nRst, $01
	dc.b	nC5, $03, nRst, $01, nBb4, $03, nRst, $09, nD4, $07, nRst, $01
	dc.b	nF4, $03, nRst, $09, nG4, $0B, nRst, $01, nG4, $03, nRst, $01
	dc.b	nEb4, $03, nRst, $09, nF4, $07, nRst, $01, nFs4, $03, nRst, $09
	dc.b	nG4, $03, nRst, $09, nG4, $03, nRst, $01, nEb4, $0B, nRst, $01
	dc.b	nF4, $07, nRst, $01, nEb4, $03, nRst, $09
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop3A

Mus_MSLabyrinth_Loop3B:
	dc.b	nG4, $03, nRst, $01, nG4, $2F, nRst, $01, nG4, $2F, nRst, $01
	dc.b	nC5, $2F, nRst, $01, nC5, $0B, nRst, $01, nD5, $03, nRst, $01
	dc.b	nEb5, $03, nRst, $01, nF5, $03, nRst, $01, nG5, $03, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nBb4, $03, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop3B

Mus_MSLabyrinth_Loop3E:
	dc.b	nG4, $03

Mus_MSLabyrinth_Loop3C:
	dc.b	nRst, $01, nC6, $07, nRst, $01, nC6, $03
	smpsLoop            $00, $06, Mus_MSLabyrinth_Loop3C
	dc.b	nRst, $01, nC5, $07, nRst, $01, nC5, $03, nRst, $09, nC5, $03
	dc.b	nRst, $09, nG4, $1B, nRst, $01, nEb5, $03, nRst, $01, nF5, $03
	dc.b	nRst, $01, nFs5, $03, nRst, $01, nG5, $03, nRst, $01, nFs5, $03
	dc.b	nRst, $01, nF5, $03, nRst, $01, nEb5, $03

Mus_MSLabyrinth_Loop3D:
	dc.b	nRst, $01, nC5, $03, nRst, $01, nBb4, $03
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop3D
	dc.b	nRst, $01, nG4, $07, nRst, $01, nBb4, $03, nRst, $01
	smpsLoop            $01, $02, Mus_MSLabyrinth_Loop3E

Mus_MSLabyrinth_Loop3F:
	dc.b	nG4, $03, nRst, $09, nG4, $03, nRst, $01, nG4, $03, nRst, $09
	dc.b	nD4, $07, nRst, $01, nBb4, $03, nRst, $09, nC5, $0B, nRst, $01
	dc.b	nC5, $03, nRst, $01, nBb4, $03, nRst, $09, nD4, $07, nRst, $01
	dc.b	nF4, $03, nRst, $09, nG4, $0B, nRst, $01, nG4, $03, nRst, $01
	dc.b	nEb4, $03, nRst, $09, nF4, $07, nRst, $01, nFs4, $03, nRst, $09
	dc.b	nG4, $03, nRst, $09, nG4, $03, nRst, $01, nEb4, $0B, nRst, $01
	dc.b	nF4, $07, nRst, $01, nEb4, $03, nRst, $09
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop3F

Mus_MSLabyrinth_Loop40:
	dc.b	nG4, $03, nRst, $01, nG4, $2F, nRst, $01, nG4, $2F, nRst, $01
	dc.b	nC5, $2F, nRst, $01, nC5, $0B, nRst, $01, nD5, $03, nRst, $01
	dc.b	nEb5, $03, nRst, $01, nF5, $03, nRst, $01, nG5, $03, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nBb4, $03, nRst, $01
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop40
	dc.b	nG4, $03
	smpsJump            Mus_MSLabyrinth_PSG1

; DAC Data
Mus_MSLabyrinth_DAC:
	dc.b	dKick, $03, nRst, $05, dKick, $03, nRst, $01, dSnare, $03, nRst, $05
	dc.b	dKick, $03, nRst, $01
	smpsLoop            $00, $2F, Mus_MSLabyrinth_DAC
	dc.b	dKick, $03, nRst, $05, dKick, $03

Mus_MSLabyrinth_Loop00:
	dc.b	nRst, $01, dSnare, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop00

Mus_MSLabyrinth_Loop01:
	dc.b	nRst, $01, dKick, $03, nRst, $05, dKick, $03, nRst, $01, dSnare, $03
	dc.b	nRst, $05, dKick, $03
	smpsLoop            $00, $2F, Mus_MSLabyrinth_Loop01
	dc.b	nRst, $01, dKick, $03, nRst, $05, dKick, $03

Mus_MSLabyrinth_Loop02:
	dc.b	nRst, $01, dSnare, $03
	smpsLoop            $00, $03, Mus_MSLabyrinth_Loop02
	smpsJump            Mus_MSLabyrinth_DAC

; FM1 Data
Mus_MSLabyrinth_FM1:
	smpsSetvoice        $00
	smpsLoop            $00, $05, Mus_MSLabyrinth_FM1

Mus_MSLabyrinth_Jump00:
	dc.b	nG5, $47, nRst, $01, nEb5, $07, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nC5, $33, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nF5, $07, nRst, $01, nFs5, $0B, nRst, $01, nG5, $4B, nRst, $01
	dc.b	nEb5, $07, nRst, $01, nF5, $0B, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nC5, $33, nRst, $01, nEb5, $0B, nRst, $01, nF5, $07, nRst, $01
	dc.b	nEb5, $0B, nRst, $01

Mus_MSLabyrinth_Loop03:
	dc.b	nC5, $0B, nRst, $01, nC5, $03, nRst, $01, nBb4, $0B, nRst, $01
	dc.b	nG4, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $0B, nRst, $01, nG4, $07, nRst, $01
	dc.b	nBb4, $0B, nRst, $01, nC5, $3B, nRst, $01, nG5, $0B, nRst, $01
	dc.b	nG5, $0B, nRst, $01, nG5, $09, nRst, $03
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop03
	dc.b	nC6, $0B, nRst, $01, nC6, $03, nRst, $01, nBb5, $0B, nRst, $01
	dc.b	nG5, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $0B, nRst, $01, nF5, $07, nRst, $01
	dc.b	nG5, $0B, nRst, $01, nF5, $0B, nRst, $01, nF5, $03, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nC5, $07, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nF5, $0B, nRst, $01, nF5, $03, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $07, nRst, $01, nG5, $0B, nRst, $01, nC6, $0B, nRst, $01
	dc.b	nC6, $03, nRst, $01, nBb5, $0B, nRst, $01, nG5, $07, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01, nF5, $03, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nF5, $07, nRst, $01, nG5, $0B, nRst, $01
	dc.b	nF5, $0B, nRst, $01, nF5, $03, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nC5, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nF5, $0B

Mus_MSLabyrinth_Loop04:
	dc.b	nRst, $01, nF5, $07, nRst, $01, nFs5, $0B, nRst, $01, nG5, $4B
	dc.b	nRst, $01, nEb5, $07, nRst, $01, nF5, $0B, nRst, $01, nEb5, $0B
	dc.b	nRst, $01, nC5, $33, nRst, $01, nEb5, $0B
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop04
	dc.b	nRst, $01, nF5, $07, nRst, $01, nEb5, $0B, nRst, $01

Mus_MSLabyrinth_Loop05:
	dc.b	nC5, $0B, nRst, $01, nC5, $03, nRst, $01, nBb4, $0B, nRst, $01
	dc.b	nG4, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $0B, nRst, $01, nG4, $07, nRst, $01
	dc.b	nBb4, $0B, nRst, $01, nC5, $3B, nRst, $01, nG5, $0B, nRst, $01
	dc.b	nG5, $0B, nRst, $01, nG5, $09, nRst, $03
	smpsLoop            $00, $02, Mus_MSLabyrinth_Loop05
	dc.b	nC6, $0B, nRst, $01, nC6, $03, nRst, $01, nBb5, $0B, nRst, $01
	dc.b	nG5, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nEb5, $0B, nRst, $01, nF5, $07, nRst, $01
	dc.b	nG5, $0B, nRst, $01, nF5, $0B, nRst, $01, nF5, $03, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nC5, $07, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nF5, $0B, nRst, $01, nF5, $03, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $07, nRst, $01, nG5, $0B, nRst, $01, nC6, $0B, nRst, $01
	dc.b	nC6, $03, nRst, $01, nBb5, $0B, nRst, $01, nG5, $07, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01, nF5, $03, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nF5, $07, nRst, $01, nG5, $0B, nRst, $01
	dc.b	nF5, $0B, nRst, $01, nF5, $03, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nC5, $07, nRst, $01, nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nF5, $03, nRst, $01, nF5, $0B, nRst, $01, nF5, $07, nRst, $01
	dc.b	nFs5, $0F
	;smpsModOff
	;smpsModOff
	smpsJump            Mus_MSLabyrinth_Jump00

; PSG2 Data
Mus_MSLabyrinth_PSG2:
	dc.b	nRst, $06
	smpsJump            Mus_MSLabyrinth_Jump00

Mus_MSLabyrinth_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $02
;	$3B
;	$52, $31, $31, $51, 	$12, $14, $12, $14, 	$0D, $00, $0D, $02
;	$00, $00, $00, $01, 	$4F, $0F, $5F, $3F, 	$1E, $18, $2D, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $12, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0D, $00, $0D
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $03, $05, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2D, $18, $1E

