; Dive Man - Mega Man 4 (CAPCOM, 1991)
; Arrangement: ASW (Sequel Wars Team)
Dive_Man_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Dive_Man_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Dive_Man_DAC
	smpsHeaderFM        Dive_Man_FM1,	$00, $00-6
	smpsHeaderFM        Dive_Man_FM2,	$00, $00-6
	smpsHeaderFM        Dive_Man_FM3,	$00, $00-6
	smpsHeaderFM        Dive_Man_FM4,	$00, $00-6
	smpsHeaderFM        Dive_Man_FM5,	$00, $00-6
;	smpsHeaderFM        Dive_Man_FM6,	$00, $00-6
	smpsHeaderPSG       Dive_Man_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Dive_Man_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Dive_Man_PSG3,	$00, $00, $00, $00

; FM1 Data
Dive_Man_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $13
	smpsPan             panCenter, $00
	dc.b	nFs3, $0A

Dive_Man_Loop14:
	dc.b	nFs3, nE3, nFs3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nFs3
	smpsAlterVol        $FB
	smpsLoop            $00, $02, Dive_Man_Loop14
	dc.b	nFs3, nE3, nFs3, nA3, nFs3, nE3, nFs3, $14

Dive_Man_Loop15:
	dc.b	$0A, nE3, nFs3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nFs3
	smpsAlterVol        $FB
	smpsLoop            $00, $02, Dive_Man_Loop15
	dc.b	nFs3, nE3, nFs3, nA3, nFs3, nE3, nFs3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nF3, $01, smpsNoAttack, nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb3, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs3, $02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nG2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs2, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nBb3, $14, nBb2, $0A, nBb2, nBb3, nBb2, $1E, nBb3, $14, $05, nBb3
	dc.b	nBb3, nBb3, nF3, nF3
	smpsSetvoice        $00
	smpsAlterVol        $FE

Dive_Man_Loop16:
	dc.b	nFs3, $14, $0A, nA3, nA3, nB3, nCs4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FB
	dc.b	nFs3, $14, $0A, nA3, nFs3, nA3, nFs3, nE3
	smpsLoop            $00, $03, Dive_Man_Loop16
	dc.b	nF3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nF3

Dive_Man_Loop17:
	smpsAlterVol        $FB
	dc.b	nAb3, nAb3, nAb3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $0A
	smpsLoop            $00, $03, Dive_Man_Loop17
	smpsAlterVol        $FB
	dc.b	nAb3, nCs3, nFs3, $14, $0A, nA3, nA3, nB3, nCs4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FB
	dc.b	nFs3, $14, nB3, nB3, $0A, nB3, nC4, nA3

Dive_Man_Loop18:
	dc.b	nFs3, $14, $0A, nA3, nA3, nB3, nCs4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FB
	dc.b	nFs3, $14, $0A, nA3, nFs3, nA3, nFs3, nE3
	smpsLoop            $00, $02, Dive_Man_Loop18
	dc.b	nF3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nF3

Dive_Man_Loop19:
	smpsAlterVol        $FB
	dc.b	nAb3, nG3, nAb3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nAb3
	smpsLoop            $00, $03, Dive_Man_Loop19
	smpsAlterVol        $FB
	dc.b	nAb3, nG3, nFs3, $14, $0A, nA3, nA3, nB3, nCs4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FB
	dc.b	nFs3, $14, nB3, nB3, $0A, nB3, nC4, nA3, nAb3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nAb3
	smpsAlterVol        $FB
	dc.b	nCs4, nCs4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $0A
	smpsAlterVol        $FB
	dc.b	nCs4, nCs4, nCs4

Dive_Man_Loop1A:
	dc.b	nB3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nB3
	smpsAlterVol        $FB
	dc.b	nB3
	smpsLoop            $00, $02, Dive_Man_Loop1A
	dc.b	nB3, nB3

Dive_Man_Loop1B:
	dc.b	nBb3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nBb3
	smpsAlterVol        $FB
	dc.b	nBb3
	smpsLoop            $00, $02, Dive_Man_Loop1B
	dc.b	nBb3, nBb3

Dive_Man_Loop1C:
	dc.b	nA3
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $FB
	dc.b	nA3
	smpsLoop            $00, $02, Dive_Man_Loop1C
	dc.b	nA3, nA3, nAb3, $0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	$0A, nAb3, nAb3, nAb3, nAb3, nAb3, nA3, $0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	$0A, nA3, nA3, nA3, nA3, nA3, nBb3, $14, $0A, nBb3, nBb3, nBb3
	dc.b	nBb3, nB3, nC4, $14, nCs4, nCs4, $0A, $14, nF3
	smpsAlterVol        $ED
	smpsPan             panCenter, $00
	smpsJump            Dive_Man_FM1

; FM2 Data
Dive_Man_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $1B
	smpsPan             panCenter, $00
	dc.b	nFs5

Dive_Man_Loop11:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	smpsLoop            $00, $02, Dive_Man_Loop11
	dc.b	nE5, $0A

Dive_Man_Loop12:
	dc.b	nFs5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $F6
	smpsLoop            $00, $03, Dive_Man_Loop12
	dc.b	nFs5
	smpsAlterNote       $EF
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $08, nFs5, $0A, nE5, nFs5, $19
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	nE5, $0A

Dive_Man_Loop13:
	dc.b	nFs5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $F6
	smpsLoop            $00, $03, Dive_Man_Loop13
	dc.b	nFs5
	smpsAlterNote       $EF
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $08, nFs5, $0A, nE5, nFs5, nAb5, $46
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$21, nAb5, $14, nRst, nFs5, $29, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nC5, $0A, nCs5, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $FB
	dc.b	nFs5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nFs5
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FB
	dc.b	nA5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC5, $0A, nCs5, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $FB
	dc.b	nFs5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nFs5, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $0F
	smpsAlterVol        $FB
	dc.b	nAb5, $0A
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $FB
	dc.b	nA5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nA5, nAb5, nRst, nAb5, nA5, nAb5, nRst, nAb5, nA5, nAb5
	dc.b	nB5, nF5, nRst, nFs5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsSetvoice        $01
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nF5, $14, nF5
	smpsAlterVol        $FD
	dc.b	nC5, $0A, nCs5, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $FB
	dc.b	nFs5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nFs5
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FB
	dc.b	nA5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC5, $0A, nCs5, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $FB
	dc.b	nFs5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nFs5
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FB
	dc.b	nAb5, nRst, nA5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nAb5, nA5, nB5, nRst, nAb5, nA5, nB5, nRst, nAb5, nA5, nB5, nCs6
	dc.b	nE6, nRst, nFs6, $29, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nE5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nFs5, nRst, nEb5, $14, nCs5, $0A, nB4, $0B, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nD5, nRst, nD5, $15, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nE5, nRst, nCs5, $14, nB4, $0A, nA4, $0B, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nA4, nRst, nB4, $29, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC5, $29, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $29, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF5, $14, $0A, nF5, nRst, $1E
	smpsSetvoice        $00
	smpsAlterVol        $E4
	smpsPan             panCenter, $00
	smpsJump            Dive_Man_FM2

; FM3 Data
Dive_Man_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $1B
	smpsPan             panCenter, $00
	dc.b	nA4

Dive_Man_Loop06:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	smpsLoop            $00, $02, Dive_Man_Loop06
	dc.b	nAb4, $0A

Dive_Man_Loop07:
	dc.b	nA4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $F6
	smpsLoop            $00, $03, Dive_Man_Loop07
	dc.b	nA4
	smpsAlterNote       $E4
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs5, $06, nA4, $0A, nAb4, nA4, $19
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FB
	dc.b	nAb4, $0A

Dive_Man_Loop08:
	dc.b	nA4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $F6
	smpsLoop            $00, $03, Dive_Man_Loop08
	dc.b	nA4
	smpsAlterNote       $E4
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs5, $06, nA4, $0A, nAb4, nA4, nB4, $46, nCs5, $28, nB4, $14
	dc.b	nRst, nA4, $29, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst, $7F, $7F, $60
	smpsSetvoice        $02
	smpsAlterVol        $FF
	smpsAlterNote       $00

Dive_Man_Loop09:
	dc.b	nFs4, $0A, nRst, $1E
	smpsLoop            $00, $03, Dive_Man_Loop09
	dc.b	nFs4, $0A, nFs4, nRst, $6E
	smpsSetvoice        $01
	smpsAlterVol        $04
	dc.b	nCs5, $14, nCs5
	smpsAlterVol        $FD
	dc.b	nEb4, $0A, nE4, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FB
	dc.b	nA4, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, nA4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $FB
	dc.b	nCs5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nEb4, $0A, nE4, $05
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FB
	dc.b	nA4, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, nA4
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $FB
	dc.b	nB4, nRst, nCs5, $1F, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, nRst, $0A
	smpsAlterNote       $00
	dc.b	nB4, nCs5, nD5, nRst, nB4, nCs5, nD5, nRst, nB4, nCs5, nD5, nE5
	dc.b	nAb5, nRst, nBb5, $29, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $03
	smpsAlterNote       $00
	dc.b	nAb4

Dive_Man_Loop0A:
	dc.b	$03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	$0A
	smpsLoop            $00, $02, Dive_Man_Loop0A
	dc.b	nAb4, nAb4, nFs4

Dive_Man_Loop0B:
	dc.b	$03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	$0A
	smpsLoop            $00, $02, Dive_Man_Loop0B
	dc.b	nFs4, nFs4, nF4

Dive_Man_Loop0C:
	dc.b	$03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	$0A
	smpsLoop            $00, $02, Dive_Man_Loop0C
	dc.b	nF4, nF4, nE4

Dive_Man_Loop0D:
	dc.b	$03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	$0A
	smpsLoop            $00, $02, Dive_Man_Loop0D
	dc.b	nE4, nE4, nEb4, $12

Dive_Man_Loop0E:
	dc.b	nRst, $02, nEb4, $08
	smpsLoop            $00, $06, Dive_Man_Loop0E
	dc.b	nRst, $02, nE4, $12

Dive_Man_Loop0F:
	dc.b	nRst, $02, nE4, $08
	smpsLoop            $00, $06, Dive_Man_Loop0F
	dc.b	nRst, $02, nF4, $12

Dive_Man_Loop10:
	dc.b	nRst, $02, nF4, $08
	smpsLoop            $00, $07, Dive_Man_Loop10
	dc.b	nRst, $0C, nB4, $14, $0A, nB4, nRst, $1E
	smpsSetvoice        $00
	smpsAlterVol        $E2
	smpsPan             panCenter, $00
	smpsJump            Dive_Man_FM3

; FM4 Data
Dive_Man_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $0A
	smpsSetvoice        $01
	smpsAlterVol        $25
	smpsAlterNote       $FE
	dc.b	nFs5, $14, nFs5, nE5, $0A, nFs5, $14, nFs5, nFs5, nFs5, $0A
	smpsAlterNote       $FD
	dc.b	nA5
	smpsAlterNote       $FE
	dc.b	nFs5, nE5, nFs5, $1E, $14, nE5, $0A, nFs5, $14, nFs5, nFs5, nFs5
	dc.b	$0A
	smpsAlterNote       $FD
	dc.b	nA5
	smpsAlterNote       $FE
	dc.b	nFs5, nE5, nFs5
	smpsAlterNote       $FD
	dc.b	nAb5, $46, nA5, $28, nAb5
	smpsAlterNote       $FE
	dc.b	nFs5, $7F, smpsNoAttack, $08
	smpsSetvoice        $05
	smpsAlterVol        $05
	dc.b	nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nA5, $3C
	smpsAlterNote       $FE
	dc.b	nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nAb5, nA5, $50, nAb5, $0A, nA5, nAb5, $14, $0A, nA5, nAb5, $14
	dc.b	$0A, nA5, nAb5, nB5
	smpsAlterNote       $FE
	dc.b	nF5, $14, nFs5, $69
	smpsSetvoice        $01
	smpsAlterVol        $FB
	dc.b	nF5, $14, nF5, nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nA5, $3C
	smpsAlterNote       $FE
	dc.b	nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nAb5, nA5, $50, nAb5, $0A, nA5, nB5, $14, nAb5, $0A, nA5, nB5
	dc.b	$14, nAb5, $0A, nA5, nB5
	smpsAlterNote       $FE
	dc.b	nCs6, nE6, $14, nFs6, $7F, smpsNoAttack, $21
	smpsSetvoice        $05
	smpsAlterVol        $FC
	dc.b	nE5, $32, $0A, nFs5, $14
	smpsAlterNote       $FD
	dc.b	nEb5
	smpsAlterNote       $FE
	dc.b	nCs5, $0A
	smpsAlterNote       $FD
	dc.b	nB4, $1E
	smpsAlterNote       $FE
	dc.b	nD5, $14, $32, $0A, nE5, $14, nCs5
	smpsAlterNote       $FD
	dc.b	nB4, $0A, nA4, $1E, $14, nB4, $50
	smpsAlterNote       $FE
	dc.b	nC5, nCs5, $64, nF5, $14, $0A, $14, nRst, $0A
	smpsSetvoice        $00
	smpsAlterVol        $DF
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Dive_Man_FM4

; FM5 Data
Dive_Man_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $0A
	smpsSetvoice        $01
	smpsAlterVol        $25
	smpsAlterNote       $FD
	dc.b	nA4, $14, nA4, nAb4, $0A, nA4, $14, nA4, nA4, nA4, $0A
	smpsAlterNote       $FE
	dc.b	nCs5
	smpsAlterNote       $FD
	dc.b	nA4, nAb4, nA4, $1E, $14, nAb4, $0A, nA4, $14, nA4, nA4, nA4
	dc.b	$0A
	smpsAlterNote       $FE
	dc.b	nCs5
	smpsAlterNote       $FD
	dc.b	nA4, nAb4, nA4, nB4, $46
	smpsAlterNote       $FE
	dc.b	nCs5, $28
	smpsAlterNote       $FD
	dc.b	nB4, nA4, $7F, smpsNoAttack, $0D
	smpsSetvoice        $05
	smpsAlterVol        $FC
	smpsAlterNote       $FE
	dc.b	nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nA5, $3C
	smpsAlterNote       $FE
	dc.b	nC5, $0A, nCs5, nFs5, $32
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $14
	smpsAlterNote       $FD
	dc.b	nAb5, nA5, $50, nAb5, $0A, nA5, nAb5, $14, $0A, nA5, nAb5, $14
	dc.b	$0A, nA5, nAb5, nB5
	smpsAlterNote       $FE
	dc.b	nF5, $14, nFs5, $64
	smpsSetvoice        $01
	smpsAlterVol        $04
	dc.b	nCs5, $14, nCs5
	smpsAlterNote       $FD
	dc.b	nEb4, $0A
	smpsAlterNote       $FE
	dc.b	nE4
	smpsAlterNote       $FD
	dc.b	nA4, $32, nB4, $0A, nA4, $14
	smpsAlterNote       $FE
	dc.b	nCs5, $3C
	smpsAlterNote       $FD
	dc.b	nEb5, $0A
	smpsAlterNote       $FE
	dc.b	nE4
	smpsAlterNote       $FD
	dc.b	nA4, $32, nB4, $0A, nA4, $14, nB4
	smpsAlterNote       $FE
	dc.b	nCs5, $50

Dive_Man_Loop05:
	smpsAlterNote       $FD
	dc.b	nB4, $0A
	smpsAlterNote       $FE
	dc.b	nCs5, nD5, $14
	smpsLoop            $00, $02, Dive_Man_Loop05
	smpsAlterNote       $FD
	dc.b	nB4, $0A
	smpsAlterNote       $FE
	dc.b	nCs5, nD5, nE5
	smpsAlterNote       $FD
	dc.b	nAb5, $14, nBb5, $7F, smpsNoAttack, $21
	smpsSetvoice        $05
	smpsAlterVol        $01
	dc.b	nAb4, $14, $0A, $14, $0A, nAb4, nAb4
	smpsAlterNote       $FE
	dc.b	nFs4, $14, $0A, $14, $0A, nFs4, nFs4, nF4, $14, $0A, $14, $0A
	dc.b	nF4, nF4, nE4, $14, $0A, $14, $0A, $14
	smpsAlterNote       $FD
	dc.b	nEb4, nEb4, $0A, nEb4, nEb4, nEb4, nEb4, nEb4
	smpsAlterNote       $FE
	dc.b	nE4, $14, $0A, nE4, nE4, nE4, nE4, nE4, nF4, $14, $0A, nF4
	dc.b	nF4, nF4, nF4, nF4, nF4, $14
	smpsAlterNote       $FD
	dc.b	nB4, nB4, $0A, $14, nRst, $0A
	smpsSetvoice        $00
	smpsAlterVol        $DA
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Dive_Man_FM5

; DAC Data
Dive_Man_DAC:
;	smpsSetvoice        $02
;	smpsAlterVol        $0D
;	smpsPan             panCenter, $00

Dive_Man_Loop00:
	dc.b	dSnare, $0A
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	smpsLoop            $00, $10, Dive_Man_Loop00
	dc.b	dSnare, $3C, $0A

Dive_Man_Loop01:
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, nRst, $14
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $0A
	smpsLoop            $00, $02, Dive_Man_Loop01
	dc.b	$14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A

Dive_Man_Loop02:
	dc.b	dKick, nRst
	smpsLoop            $00, $05, Dive_Man_Loop02
	dc.b	dKick, dKick

Dive_Man_Loop03:
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, nRst
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $1E
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
	smpsLoop            $00, $07, Dive_Man_Loop03
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, nRst
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $1E
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14, $0A
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, nRst, dKick

Dive_Man_Loop04:
	dc.b	dKick, nRst
	smpsLoop            $00, $10, Dive_Man_Loop04
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $1E
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, nRst
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $1E
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, $14
;	smpsSetvoice        $03
;	smpsAlterVol        $FE
	dc.b	dKick, $0A, nRst
;	smpsSetvoice        $02
;	smpsAlterVol        $02
	dc.b	dSnare, nRst
;	smpsSetvoice        $00
;	smpsAlterVol        $F3
;	smpsPan             panCenter, $00
	smpsJump            Dive_Man_DAC

; PSG1 Data
Dive_Man_PSG1:
	smpsPSGAlterVol     $0C
	dc.b	nFs2

Dive_Man_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop9A:
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop9A
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsLoop            $01, $02, Dive_Man_Loop9B
	smpsAlterNote       $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop9C:
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop9C
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop9E:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop9D:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop9D
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsLoop            $01, $03, Dive_Man_Loop9E
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop9F:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop9F
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA0:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA0
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA1:
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA1
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA2:
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA2
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA3:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA3
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$16
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA4:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA4
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA5:
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA5
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_LoopA7:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA6:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA6
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsLoop            $01, $03, Dive_Man_LoopA7
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA8:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA8
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopA9:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopA9
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopAA:
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopAA
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopAB:
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopAB
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopAC:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopAC
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$16
	smpsPSGAlterVol     $F2
	dc.b	nBb2, $01, nA2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nG2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nA1, nRst, $06
	smpsPSGAlterVol     $FA

Dive_Man_LoopAD:
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nAb1, nG1
	smpsPSGAlterVol     $01
	dc.b	nFs1, nF1
	smpsPSGAlterVol     $01
	dc.b	nE1, nRst, $03
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, Dive_Man_LoopAD
	dc.b	nBb2, $01, nA2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nG2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2, nRst, $03
	smpsPSGAlterVol     $FD
	dc.b	nBb1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nAb1, nG1
	smpsPSGAlterVol     $01
	dc.b	nFs1, nF1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs1, nB0
	smpsPSGAlterVol     $01
	dc.b	nBb0, nA0
	smpsPSGAlterVol     $01
	dc.b	nB0, nC1
	smpsPSGAlterVol     $01
	dc.b	nCs1, nRst, $0D
	smpsPSGAlterVol     $F8
	smpsAlterNote       $00
	dc.b	nBb2, $01, nA2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nG2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nA1, nRst, $06
	smpsPSGAlterVol     $FA

Dive_Man_LoopAE:
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nAb1, nRst, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, Dive_Man_LoopAE
	dc.b	nF1, $01, nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nEb1, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nF1, $01, nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nEb1, nRst, $02
	smpsPSGAlterVol     $0B
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopAF:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopAF
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$7F, $05
	smpsPSGAlterVol     $FE
	dc.b	nC2, $01
	smpsPSGAlterVol     $FB
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2, nRst, $2B
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FB
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $FB
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, nRst, $35
	smpsPSGAlterVol     $FE
	dc.b	nC2, $01
	smpsPSGAlterVol     $FB
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2, nRst, $2B
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FB
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $FB
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, nRst, $49

Dive_Man_LoopB0:
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $FB
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $0D
	smpsLoop            $00, $02, Dive_Man_LoopB0
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $FB
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FB
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $01
	smpsPSGAlterVol     $FB
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FB
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nRst, $5D

Dive_Man_LoopB2:
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB1:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB1
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsLoop            $01, $02, Dive_Man_LoopB2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB3:
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB3
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB4:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB4
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB5:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB5
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2A
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB6:
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB6
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB7:
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB7
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB8:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB8
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$34
	smpsPSGAlterVol     $FE
	dc.b	nC2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopB9:
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopB9
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBA:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBA
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBB:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBB
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2A
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBC:
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBC
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBD:
	dc.b	nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBD
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBE:
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBE
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopBF:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopBF
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$48

Dive_Man_LoopC3:
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC0:
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC0
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC1:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC1
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC2:
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC2
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsLoop            $01, $02, Dive_Man_LoopC3
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC4:
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC4
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC5:
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC5
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC6:
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC6
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC7:
	dc.b	nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC7
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE3, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC8:
	dc.b	nE3
	smpsPSGAlterVol     $02
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC8
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nFs3, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopC9:
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopC9
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$7F, $19
	smpsPSGAlterVol     $FE
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCA:
	dc.b	nE2
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCA
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$2A
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCB:
	dc.b	nE2
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCB
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nFs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCC:
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCC
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCD:
	dc.b	nEb2
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCE:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCE
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopCF:
	dc.b	nB1
	smpsPSGAlterVol     $02
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopCF
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nD2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD0:
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD0
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD1:
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD1
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$2A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD2:
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD3:
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD3
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD4:
	dc.b	nCs2
	smpsPSGAlterVol     $02
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD4
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD5:
	dc.b	nB1
	smpsPSGAlterVol     $02
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD5
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD6:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD6
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$16
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD7:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD7
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD8:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD8
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$48
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nC2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopD9:
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopD9
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$48
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopDA:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopDA
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$5C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nF2, $01
	smpsPSGAlterVol     $F9

Dive_Man_LoopDB:
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopDB
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopDC:
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopDC
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_LoopDD:
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_LoopDD
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$20
	smpsPSGAlterVol     $F2
	smpsJump            Dive_Man_PSG1

; PSG2 Data
Dive_Man_PSG2:
	smpsPSGAlterVol     $0C
	dc.b	nA1

Dive_Man_Loop53:
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop52:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop52
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsLoop            $01, $02, Dive_Man_Loop53
	dc.b	nAb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop54:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop54
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02

Dive_Man_Loop56:
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop55:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop55
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsLoop            $01, $03, Dive_Man_Loop56
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop57:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop57
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $06
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nCs2
	smpsPSGAlterVol     $02

Dive_Man_Loop58:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Dive_Man_Loop58
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop59:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop59
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop5A:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop5A
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop5B:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop5B
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop5C:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop5C
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop5D:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop5D
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02

Dive_Man_Loop5F:
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop5E:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop5E
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsLoop            $01, $03, Dive_Man_Loop5F
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop60:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop60
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $06
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nCs2
	smpsPSGAlterVol     $02

Dive_Man_Loop61:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Dive_Man_Loop61
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop62:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop62
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop63:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop63
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop64:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop64
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $7F, $17
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop65:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop65
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$7F, $05, nRst, $7F, $7F, $60
	smpsPSGAlterVol     $F3

Dive_Man_Loop66:
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1, nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1, nAb1
	smpsPSGAlterVol     $01
	dc.b	nG1, nFs1
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $1F
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $03, Dive_Man_Loop66
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1, nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1, nAb1
	smpsPSGAlterVol     $01
	dc.b	nG1, nFs1
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1, nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1, nAb1
	smpsPSGAlterVol     $01
	dc.b	nG1, nFs1
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $6F
	smpsPSGAlterVol     $07

Dive_Man_Loop68:
	smpsAlterNote       $01
	dc.b	nCs1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop67:
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop67
	smpsAlterNote       $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsLoop            $01, $02, Dive_Man_Loop68
	dc.b	nEb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop69:
	dc.b	nEb1
	smpsPSGAlterVol     $02
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop69
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nE1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6A:
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6A
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6B:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6B
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$2A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6C:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6C
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6D:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6D
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6E:
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6E
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$34
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop6F:
	dc.b	nEb1
	smpsPSGAlterVol     $02
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop6F
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nE1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop70:
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop70
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop71:
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop71
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$2A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop72:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop72
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop73:
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop73
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop74:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop74
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop75:
	dc.b	nCs2
	smpsPSGAlterVol     $02
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop75
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$3E
	smpsPSGAlterVol     $F3

Dive_Man_Loop76:
	dc.b	nBb1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nAb1, nG1
	smpsPSGAlterVol     $01
	dc.b	nFs1, nF1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nEb1, nRst, $20
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, Dive_Man_Loop76

Dive_Man_Loop77:
	smpsAlterNote       $00
	dc.b	nFs2, $01, nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nB1, nRst, $02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, Dive_Man_Loop77
	smpsAlterNote       $00
	dc.b	nEb2, $01, nD2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1, nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1, nAb1, nRst, $02
	smpsPSGAlterVol     $08
	dc.b	nBb2, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop78:
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	nBb2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop78
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	$7F, $19

Dive_Man_Loop7B:
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop79:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop79
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop7A:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop7A
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop7B

Dive_Man_Loop7D:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop7C:
	dc.b	nAb1
	smpsPSGAlterVol     $02
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop7C
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop7D

Dive_Man_Loop80:
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop7E:
	dc.b	nFs1
	smpsPSGAlterVol     $02
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop7E
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop7F:
	dc.b	nFs1
	smpsPSGAlterVol     $02
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop7F
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop80

Dive_Man_Loop82:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop81:
	dc.b	nFs1
	smpsPSGAlterVol     $02
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop81
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop82

Dive_Man_Loop85:
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop83:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop83
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop84:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop84
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop85

Dive_Man_Loop87:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop86:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop86
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop87

Dive_Man_Loop8A:
	smpsPSGAlterVol     $FE
	dc.b	nE1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop88:
	dc.b	nE1
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop88
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop89:
	dc.b	nE1
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop89
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop8A

Dive_Man_Loop8C:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop8B:
	dc.b	nE1
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop8B
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $02, Dive_Man_Loop8C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nEb1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop8D:
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop8D
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$0C

Dive_Man_Loop8F:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop8E:
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop8E
	smpsAlterNote       $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsLoop            $01, $06, Dive_Man_Loop8F
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nE1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop90:
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop90
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$0C

Dive_Man_Loop92:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop91:
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop91
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsLoop            $01, $06, Dive_Man_Loop92
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop93:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop93
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$0C

Dive_Man_Loop95:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop94:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop94
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $01, $06, Dive_Man_Loop95
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop96:
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop96
	dc.b	nF1
	smpsPSGAlterVol     $01

Dive_Man_Loop98:
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $F9

Dive_Man_Loop97:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop97
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	smpsLoop            $01, $02, Dive_Man_Loop98
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $F9

Dive_Man_Loop99:
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, Dive_Man_Loop99
	smpsAlterNote       $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$20
	smpsPSGAlterVol     $F2
	smpsJump            Dive_Man_PSG2

; PSG3 Data
Dive_Man_PSG3:
	smpsPSGAlterVol     $02
	smpsPSGform         $E7

Dive_Man_Loop1E:
	smpsAlterNote       $F9
	dc.b	nAb5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$02

Dive_Man_Loop1D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop1D
	smpsPSGAlterVol     $02
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsLoop            $01, $0F, Dive_Man_Loop1E
	smpsAlterNote       $F9
	dc.b	nAb5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$02

Dive_Man_Loop1F:
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop1F
	smpsPSGAlterVol     $02
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F2

Dive_Man_Loop20:
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop20
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03

Dive_Man_Loop21:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsLoop            $00, $02, Dive_Man_Loop21
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $15
	smpsPSGAlterVol     $F2
	smpsAlterNote       $F9
	dc.b	nAb5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$02

Dive_Man_Loop22:
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop22
	smpsPSGAlterVol     $02
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F7

Dive_Man_Loop23:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop23
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $F7
	smpsAlterNote       $F9
	dc.b	nAb5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$02

Dive_Man_Loop24:
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop24
	smpsPSGAlterVol     $02
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F7

Dive_Man_Loop25:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, Dive_Man_Loop25

Dive_Man_Loop26:
	smpsAlterNote       $08
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	smpsLoop            $00, $04, Dive_Man_Loop26
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $03
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $03
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F8
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $03
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $03
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F5
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$0E
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4

Dive_Man_Loop27:
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop27
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $FA
	smpsLoop            $01, $05, Dive_Man_Loop27

Dive_Man_Loop28:
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop28
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC
	smpsLoop            $01, $02, Dive_Man_Loop28
	smpsAlterNote       $F9
	dc.b	nAb5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$02

Dive_Man_Loop29:
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop29
	smpsPSGAlterVol     $02
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $01
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $F7

Dive_Man_Loop2A:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop2A

Dive_Man_Loop36:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop2B:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop2B
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop2C:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop2C
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop2D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop2D
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop2E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop2E
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop2F:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop2F
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop30:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop30
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4

Dive_Man_Loop31:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop31
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop32:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop32
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop33:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop33
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop34:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop34
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC

Dive_Man_Loop35:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop35
	smpsLoop            $01, $07, Dive_Man_Loop36
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop37:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop37
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop38:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop38
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop39:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop39
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop3A:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop3A
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop3B:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop3B
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop3C:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop3C
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4

Dive_Man_Loop3D:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop3D
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop3E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop3E
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsLoop            $01, $02, Dive_Man_Loop3D

Dive_Man_Loop3F:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop3F
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop40:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop40
	smpsPSGAlterVol     $02

Dive_Man_Loop41:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop41
	smpsAlterNote       $01
	dc.b	$08
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4

Dive_Man_Loop42:
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop42

Dive_Man_Loop44:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8

Dive_Man_Loop43:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop43
	smpsLoop            $01, $0E, Dive_Man_Loop44
	smpsAlterNote       $01
	dc.b	nMaxPSG

Dive_Man_Loop50:
	smpsPSGAlterVol     $FC

Dive_Man_Loop45:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop45
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop46:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop46
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop47:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop47
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop48:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop48
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop49:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop49
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop4A:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop4A
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop4B:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop4B
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4

Dive_Man_Loop4C:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop4C
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop4D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop4D
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $F4
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02

Dive_Man_Loop4E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, Dive_Man_Loop4E
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7

Dive_Man_Loop4F:
	smpsAlterNote       $F9
	dc.b	nAb5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop4F
	smpsAlterNote       $F9
	dc.b	nAb5
	smpsLoop            $01, $02, Dive_Man_Loop50
	smpsPSGAlterVol     $FC

Dive_Man_Loop51:
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Dive_Man_Loop51
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA
	smpsJump            Dive_Man_PSG3

Dive_Man_Voices:
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
;	$3C
;	$0F, $00, $00, $00, 	$1F, $1A, $18, $1C, 	$17, $11, $1A, $0E
;	$00, $0F, $14, $10, 	$1F, $EC, $FF, $FF, 	$07, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $1A, $11, $17
	smpsVcDecayRate2    $10, $14, $0F, $00
	smpsVcDecayLevel    $0F, $0F, $0E, $01
	smpsVcReleaseRate   $0F, $0F, $0C, $0F
	smpsVcTotalLevel    $00, $16, $00, $07

;	Voice $03
;	$3C
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$15, $13, $13, $10
;	$10, $12, $0A, $05, 	$9F, $3F, $AF, $1F, 	$0D, $00, $0B, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $13, $13, $15
	smpsVcDecayRate2    $05, $0A, $12, $10
	smpsVcDecayLevel    $01, $0A, $03, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0B, $00, $0D

;	Voice $04
;	$3B
;	$0D, $31, $00, $00, 	$5F, $5F, $5F, $5F, 	$04, $15, $1A, $0B
;	$00, $04, $00, $00, 	$01, $91, $FF, $F7, 	$00, $14, $00, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $0D
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $1A, $15, $04
	smpsVcDecayRate2    $00, $00, $04, $00
	smpsVcDecayLevel    $0F, $0F, $09, $00
	smpsVcReleaseRate   $07, $0F, $01, $01
	smpsVcTotalLevel    $00, $00, $14, $00

;	Voice $05
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

