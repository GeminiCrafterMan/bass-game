Snd_Deflect_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     Snd_Deflect_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM5, Snd_Deflect_FM5,	$00, $08

Snd_Deflect_FM5:
	smpsSetvoice        $00
	dc.b	nC7, $05
	smpsStop

Snd_Deflect_Voices:
	; Patch $00
	; $30
	; $5D, $50, $24, $12,	$5F, $9F, $5F, $9F
	; $08, $04, $19, $04,	$06, $04, $09, $1B
	; $07, $14, $04, $A6,	$0C, $0E, $22, $80
	smpsVcAlgorithm		$00
	smpsVcFeedback		$06
	smpsVcUnusedBits	$00
	smpsVcDetune		$01, $02, $05, $05
	smpsVcCoarseFreq	$02, $04, $00, $0D
	smpsVcRateScale		$02, $01, $02, $01
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$04, $19, $04, $08
	smpsVcDecayRate2	$1B, $09, $04, $06
	smpsVcDecayLevel	$0A, $00, $01, $00
	smpsVcReleaseRate	$06, $04, $04, $07
	smpsVcTotalLevel	$00, $22, $0E, $0C