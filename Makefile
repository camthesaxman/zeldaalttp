#### Tools ####

GBAGFX   := tools/gbagfx/gbagfx
CC1      := tools/agbcc/bin/agbcc
CC1_OLD  := tools/agbcc/bin/old_agbcc
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS := -Itools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -Iasminclude


#### Files ####

ROM      := zeldaalttp.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt
SOURCES  := \
	asm/crt0.s \
	asm/rom1.s \
	src/main.c \
	src/main_2.c \
	src/math.c \
	src/rom2.c \
	asm/rom2.s \
	asm/rom2a.s \
	asm/rom3.s \
	src/rom3a.c \
	asm/rom3a.s \
	asm/rom4.s \
	src/interface.c \
	asm/interface.s \
	asm/rom5.s \
	asm/syscall.s \
	asm/rom6.s \
	data/data.s \
	data/4swords_text.s
OFILES   := $(addsuffix .o, $(basename $(SOURCES)))

ifeq ($(OS),Windows_NT)
  LIB := tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a
else
  LIB := -L tools/agbcc/lib -lgcc -lc
endif

# main.c might also need the old compiler, too.
src/main_2.o: CC1 := $(CC1_OLD)
src/math.o: CC1 := $(CC1_OLD)

#src/rom3a.o: CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O1 -fhex-asm
#src/rom3a.o: CC1 := $(CC1_OLD)
src/text.o: CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm

#### Main Targets ####

compare: $(ROM)
	md5sum -c checksum.md5

clean:
	$(RM) $(ROM) $(ELF) $(MAP) $(OFILES) src/*.s graphics/*/*.4bpp graphics/*/*.lz

#### Recipes ####

# Get rid of the idiotic built-in rules
.SUFFIXES:

# Stop deleting my files
.PRECIOUS: %.4bpp

# Link ELF file
$(ELF): $(OFILES) $(LDSCRIPT)
	$(LD) -T $(LDSCRIPT) -Map $(MAP) $(OFILES) $(LIB) -o $@

# Build GBA ROM
%.gba: %.elf
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0x8800000 $< $@

# C source code
%.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CC1FLAGS) -o $*.s
	echo '.ALIGN 2, 0' >> $*.s
	$(AS) $(ASFLAGS) $*.s -o $*.o

# Assembly source code
%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

# Graphics files
%.4bpp: %.png
	$(GBAGFX) $< $@
%.gbapal: %.pal
	$(GBAGFX) $< $@
%.lz: %
	$(GBAGFX) $< $@

include gfxdep.mk
