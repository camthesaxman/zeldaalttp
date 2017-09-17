	.INCLUDE "macro.inc"

	.INCBIN "baserom.gba", 0x137AFC, 0x22C82C-0x137AFC

	.GLOBAL gGfx_link4bpp
gGfx_link4bpp:
	.INCBIN "graphics/lttp/link.4bpp"

	.INCBIN "baserom.gba", 0x23482C, 0x641608-0x23482C
