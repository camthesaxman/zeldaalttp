	.INCLUDE "macro.inc"

	.INCBIN "baserom.gba", 0x137AFC, 0x22C82C-0x137AFC

	.GLOBAL gGfx_link4bpp
gGfx_link4bpp:
	.INCBIN "graphics/lttp/link.4bpp"

	.INCBIN "baserom.gba", 0x23482C, 0x3B5758-0x23482C

	.GLOBAL gUnknown_083B5758
gUnknown_083B5758:
	.INCBIN "graphics/lttp/hud.4bpp"

	.GLOBAL gUnknown_083B6358
gUnknown_083B6358:
	.INCBIN "graphics/lttp/font1.4bpp"
	
	.GLOBAL gUnknown_083BA758
gUnknown_083BA758:
	.INCBIN "graphics/lttp/font2.4bpp"
	
	.GLOBAL gUnknown_083BB758
gUnknown_083BB758:
	.INCBIN "graphics/lttp/font3.4bpp"
	
	.GLOBAL gUnknown_083BBF58
gUnknown_083BBF58:
	.INCBIN "graphics/lttp/font4.4bpp"
	
	.GLOBAL gUnknown_083BC758
gUnknown_083BC758:
	.INCBIN "graphics/lttp/font5.4bpp"
	
	.GLOBAL gUnknown_083BCF58
gUnknown_083BCF58:
	.INCBIN "graphics/lttp/font6.4bpp"

	.INCBIN "baserom.gba", 0x3BD758, 0x641608-0x3BD758
