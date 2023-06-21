ProtoManWhistle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     ProtoManWhistle_Voices
	smpsHeaderChan      $00, $01
	smpsHeaderTempo     $01, $00

	smpsHeaderPSG       ProtoManWhistle_PSG1,	$00, $05, $00, fTone_06

; PSG1 Data
ProtoManWhistle_PSG1:
	smpsPSGAlterVol     $03
	dc.b	nG3, $01
	smpsPSGAlterVol     $FE

ProtoManWhistle_Loop00:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ProtoManWhistle_Loop00
	dc.b	$0C
	smpsPSGAlterVol     $05
	dc.b	nBb3, $01
	smpsPSGAlterVol     $FE

ProtoManWhistle_Loop01:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ProtoManWhistle_Loop01
	dc.b	$0C
	smpsPSGAlterVol     $05
	dc.b	nC4, $01
	smpsPSGAlterVol     $FE

ProtoManWhistle_Loop02:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ProtoManWhistle_Loop02
	smpsAlterNote       $01

ProtoManWhistle_Loop03:
	dc.b	$04
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $04
	smpsAlterNote       $01
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, ProtoManWhistle_Loop03
	dc.b	$04
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $08
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nD4

ProtoManWhistle_Loop04:
	dc.b	$04
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC4, $04
	smpsAlterNote       $00
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, ProtoManWhistle_Loop04
	dc.b	$10
	smpsPSGAlterVol     $05
	dc.b	nBb3, $01
	smpsPSGAlterVol     $FE

ProtoManWhistle_Loop05:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ProtoManWhistle_Loop05
	dc.b	$0C
	smpsPSGAlterVol     $05
	dc.b	nD4, $01
	smpsPSGAlterVol     $FE

ProtoManWhistle_Loop06:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ProtoManWhistle_Loop06
	smpsAlterNote       $FF

ProtoManWhistle_Loop07:
	dc.b	$03
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $04
	smpsAlterNote       $FF
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, ProtoManWhistle_Loop07

ProtoManWhistle_Loop08:
	dc.b	$02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $FF
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, ProtoManWhistle_Loop08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $02

ProtoManWhistle_Loop09:
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, ProtoManWhistle_Loop09
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $1B, nRst, $30
	smpsPSGvoice        fTone_06
	smpsStop

; Song seems to not use any FM voices
ProtoManWhistle_Voices:
