Map_HUD:
Map_HUD_0: 	dc.w Map_HUD_C-Map_HUD
Map_HUD_2: 	dc.w Map_HUD_3E-Map_HUD
Map_HUD_4: 	dc.w Map_HUD_64-Map_HUD
Map_HUD_6: 	dc.w Map_HUD_8A-Map_HUD
Map_HUD_8: 	dc.w Map_HUD_A4-Map_HUD
Map_HUD_A: 	dc.w Map_HUD_BE-Map_HUD
Map_HUD_C: 	dc.b $0, $8
	dc.b $80, $0, $0, $0, $0, $0
	dc.b $C0, $0, $0, $1, $0, $0
	dc.b $80, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
	dc.b $88, $3, $0, $2, $0, $10
	dc.b $88, $3, $0, $9, $0, $0
	dc.b $A8, $2, $0, $D, $0, $0
	dc.b $A8, $2, $0, $6, $0, $10
Map_HUD_3E: 	dc.b $0, $6
	dc.b $80, $0, $0, $0, $0, $0
	dc.b $C0, $0, $0, $1, $0, $0
	dc.b $B8, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
	dc.b $88, $3, $0, $9, $0, $0
	dc.b $A8, $2, $0, $D, $0, $0
Map_HUD_64: 	dc.b $0, $6
	dc.b $B8, $0, $0, $0, $0, $0
	dc.b $C0, $0, $0, $1, $0, $0
	dc.b $80, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
	dc.b $88, $3, $0, $2, $0, $10
	dc.b $A8, $2, $0, $6, $0, $10
Map_HUD_8A: 	dc.b $0, $4
	dc.b $B8, $0, $0, $0, $0, $0
	dc.b $C0, $0, $0, $1, $0, $0
	dc.b $B8, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
Map_HUD_A4: 	dc.b $0, $4
	dc.b $80, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
	dc.b $88, $3, $0, $2, $0, $10
	dc.b $A8, $2, $0, $6, $0, $10
Map_HUD_BE: 	dc.b $0, $2
	dc.b $B8, $0, $0, $0, $0, $10
	dc.b $C0, $0, $0, $1, $0, $10
	even