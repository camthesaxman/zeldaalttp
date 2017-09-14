	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08135B74
sub_08135B74: @ 0x08135B74
	bx lr
	THUMB_FUNC_END sub_08135B74

	THUMB_FUNC_START CpuFastSet
CpuFastSet: @ 0x08135B78
	swi #12
	bx lr
	THUMB_FUNC_END CpuFastSet

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08135B7C
	swi #11
	bx lr
	THUMB_FUNC_END CpuSet

	THUMB_FUNC_START Div
Div: @ 0x08135B80
	swi #6
	bx lr
	THUMB_FUNC_END Div

	THUMB_FUNC_START IntrWait
IntrWait: @ 0x08135B84
	mov r2, #0
	swi #4
	bx lr
	THUMB_FUNC_END IntrWait

	THUMB_FUNC_START LZ77UnCompVram
LZ77UnCompVram: @ 0x08135B8C
	swi #18
	bx lr
	THUMB_FUNC_END LZ77UnCompVram

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x08135B90
	swi #17
	bx lr
	THUMB_FUNC_END LZ77UnCompWram

	THUMB_FUNC_START ObjAffineSet
ObjAffineSet: @ 0x08135B94
	swi #15
	bx lr
	THUMB_FUNC_END ObjAffineSet

	THUMB_FUNC_START SoftReset
SoftReset: @ 0x08135B98
	ldr r3, =REG_IME
	mov r2, #0
	strb r2, [r3]
	ldr r1, =gUnknown_03007F00
	mov sp, r1
	swi #1
	swi #0
	.POOL
	THUMB_FUNC_END SoftReset

	THUMB_FUNC_START SoundBiasReset
SoundBiasReset:
	mov r0, #0
	swi #25
	bx lr
	THUMB_FUNC_END SoundBiasReset

	THUMB_FUNC_START SoundBiasSet
SoundBiasSet: @ 0x08135BB8
	mov r0, #1
	swi #25
	bx lr
	THUMB_FUNC_END SoundBiasSet

	THUMB_FUNC_START Sqrt
Sqrt: @ 0x08135BC0
	swi #8
	bx lr
	THUMB_FUNC_END Sqrt

	THUMB_FUNC_START VBlankIntrWait
VBlankIntrWait: @ 0x08135BC4
	mov r2, #0
	swi #5
	bx lr
	THUMB_FUNC_END VBlankIntrWait

	.ALIGN 2, 0
