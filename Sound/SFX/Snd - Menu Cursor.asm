Snd_Menu_Cursor_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_Menu_Cursor_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG1, Snd_Menu_Cursor_PSG1,	$00-$0C-$0C, $00
	smpsHeaderSFXChannel cPSG2, Snd_Menu_Cursor_PSG2,	$00-$0C-$0C, $02

; PSG1 Data
Snd_Menu_Cursor_PSG1:
	dc.b	nAb4, $06, nCs4, $08
	smpsStop

; PSG2 Data
Snd_Menu_Cursor_PSG2:
	dc.b	nAb5, $06, nCs5, $08
	smpsStop

; original:
;	smpsPSGvoice        $00
;	dc.b	nAb4, $06, nCs4, $08
;	smpsStop

; sorry nothing
Snd_Menu_Cursor_Voices: