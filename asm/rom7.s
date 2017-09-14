	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_081360BC
sub_081360BC: @ 0x081360BC
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _081360D4  @ =0x4F000000
	bl 0x081377D8
	cmp r0, #0
	bge _081360D8
	add r0, r4, #0
	bl 0x08137910
	b _081360EA
	.byte 0x00
	.byte 0x00
_081360D4:
	.4byte 0x4F000000
_081360D8:
	ldr r1, _081360EC  @ =0xCF000000
	add r0, r4, #0
	bl 0x08137344
	bl 0x08137910
	mov r1, #128
	lsl r1, r1, #24
	add r0, r0, r1
_081360EA:
	pop {r4,pc}
_081360EC:
	.4byte 0xCF000000
	THUMB_FUNC_END sub_081360BC
