		ADR		r2, data						; words addr => r2
		MOV		r5, #5						; loop ctr => r5
loop
		LDR		r3,	 [r2]						; data[0] => r3 (Note: data[0], data[1], etc.)
		MOVS		r3, r3						; set N flag if negative
		RSBmi	r3, r3, #0x00000000	; if negative, 0 - r3 => r3
		STR		r3, [r2], #4					; r3 => data[0], r2 + 4 => r2 (Note: data[0], data[1], etc.)
		SUBS		r5, r5, #1					; r5 - 1 => r5
		BNE		loop
		END
		
data	DCD		1, -2, 5, -6, 2
