Snd_Energy_Fill_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_Energy_Fill_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

;	smpsHeaderSFXChannel cFM4, Snd_Energy_Fill_FM4,	$00+$0C+$0C+$0C, $03
	smpsHeaderSFXChannel cPSG1, Snd_Energy_Fill_PSG1,	$00-$0C-$0C, $00
	smpsHeaderSFXChannel cPSG2, Snd_Energy_Fill_PSG2,	$00-$0C-$0C, $00

; PSG1 Data
Snd_Energy_Fill_PSG1:
	dc.b	nC5, $05, nC5, $05, nC5, $05
	smpsStop

; PSG2 Data
Snd_Energy_Fill_PSG2:
	dc.b	nE5, $05, nE5, $05, nE5, $05
	smpsStop

; sorry nothing
Snd_Energy_Fill_Voices: