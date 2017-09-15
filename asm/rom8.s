	.INCLUDE "macro.inc"

	.INCBIN "baserom.gba", 0x137AFC, 0x22C82C-0x137AFC

	.GLOBAL gUnknown_0822C82C
gUnknown_0822C82C:
	.INCBIN "graphics/lttp/link.4bpp"

	.INCBIN "baserom.gba", 0x23482C, 0x641608-0x23482C
