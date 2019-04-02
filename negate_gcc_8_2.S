main
		sub		sp, sp, #28
		adr		r3, words
		mov		r4, sp
		mov		r5, r3
		ldmia	r5!, {r0, r1, r2, r3}
		stmia	r4!, {r0, r1, r2, r3}
		ldr		r3, [r5]
		str		r3, [r4]
		movs		r3, #0
		str		r3, [sp, #20]
		b		L4
L6
		ldr		r3, [sp, #20]
		lsls		r3, r3, #2
		add		r2, sp, #24
		add		r3, r3, r2
		ldr		r3, [r3, #-24]
		cmp		r3, #0
		bge		L5
		ldr		r3, [sp, #20]
		lsls		r3, r3, #2
		add		r2, sp, #24
		add		r3, r3, r2
		ldr		r3, [r3, #-24]
		mov		r0, r3
		bl		negate
L9
		mov		r2, r0
		ldr		r3, [sp, #20]
		lsls		r3, r3, #2
		add		r1, sp, #24
		add		r3, r3, r1
		str		r2, [r3, #-24]
L5
		ldr		r3, [sp, #20]
		adds		r3, r3, #1
		str		r3, [sp, #20]
L4
		movs		r2, #5
		ldr		r3, [sp, #20]
		cmp		r3, r2
		blt		L6
		movs		r3, #0
		mov		r0, r3
		add		sp, sp, #28
		end
		
negate
		sub		sp, sp, #8
		str		r0, [sp, #4]
		ldr		r3, [sp, #4]
		rsbs		r3, r3, #0
		mov		r0, r3
		add		sp, sp, #8
		b		L9
		
words	DCD		1, -2, 5, -6, 2
