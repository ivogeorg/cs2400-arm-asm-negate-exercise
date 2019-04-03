main
		sub		sp, sp, #12
		movs		r3, #0
		str		r3, [sp, #4]
		b		L4
L6
		adr		r2, array
		ldr		r3, [sp, #4]
		ldr		r3, [r2, r3, lsl #2]
		cmp		r3, #0
		bge		L5
		adr		r2, array
		ldr		r3, [sp, #4]
		ldr		r3, [r2, r3, lsl #2]
		mov		r0, r3
		bl		negate
L9
		mov		r1, r0
		adr		r2, array
		ldr		r3, [sp, #4]
		str		r1, [r2, r3, lsl #2]
L5
		ldr		r3, [sp, #4]
		adds		r3, r3, #1
		str		r3, [sp, #4]
L4
		movs		r2, #5
		ldr		r3, [sp, #4]
		cmp		r3, r2
		blt		L6
		movs		r3, #0
		mov		r0, r3
		add		sp, sp, #12
		end
		
negate
		sub		sp, sp, #8
		str		r0, [sp, #4]
		ldr		r3, [sp, #4]
		rsbs		r3, r3, #0
		mov		r0, r3
		add		sp, sp, #8
		b		L9
		
array	DCD		1, -2, 5, -6, 2
