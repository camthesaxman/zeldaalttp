#### Tools ####

# Get rid of the idiotic built-in rules
.SUFFIXES:

# Stop deleting my files
.PRECIOUS: %.4bpp

GBAGFX   := tools/gbagfx/gbagfx
CC1      := tools/agbcc/bin/agbcc
CC1_OLD  := tools/agbcc/bin/old_agbcc
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy
SCANINC  := tools/scaninc/scaninc

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS := -Itools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -Iasminclude


#### Files ####

ROM      := zeldaalttp.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt

SUBDIRS := \
        src \
        asm \
        data

C_SOURCES   := $(foreach dir, $(SUBDIRS), $(wildcard $(dir)/*.c))
ASM_SOURCES := $(foreach dir, $(SUBDIRS), $(wildcard $(dir)/*.s))

C_OBJECTS   := $(C_SOURCES:%.c=%.o)
ASM_OBJECTS := $(ASM_SOURCES:%.s=%.o)

SOURCES  := $(C_SOURCES) $(ASM_SOURCES)
OFILES   := $(C_OBJECTS) $(ASM_OBJECTS)

ifeq ($(OS),Windows_NT)
  LIB := tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a
else
  LIB := -L tools/agbcc/lib -lgcc -lc
endif

ifeq ($(NODEP),)
  src/%.o:  C_DEP   = $(shell $(SCANINC) -I include src/$(*F).c)
  asm/%.o:  ASM_DEP = $(shell $(SCANINC) -I asminclude asm/$(*F).s)
  data/%.o: ASM_DEP = $(shell $(SCANINC) -I asminclude data/$(*F).s)
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

clean: tidy
	$(RM) graphics/*/*.4bpp graphics/*/*.lz

tidy:
	$(RM) $(ROM) $(ELF) $(MAP) $(OFILES) $(C_SOURCES:%.c=%.s) $(ASM_SOURCES:%.s=%.o)

# Link ELF file
$(ELF): $(OFILES) $(LDSCRIPT)
	$(LD) -T $(LDSCRIPT) -Map $(MAP) $(OFILES) $(LIB) -o $@

# Build GBA ROM
%.gba: %.elf
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0x8800000 $< $@

#### Recipes ####

# C source code
src/%.o: src/%.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CC1FLAGS) -o src/$*.s
	echo '.ALIGN 2, 0' >> src/$*.s
	$(AS) $(ASFLAGS) src/$*.s -o src/$*.o

# Assembly source code
asm/%.o: asm/%.s
	$(AS) $(ASFLAGS) $< -o $@

data/%.o: data/%.s
	$(AS) $(ASFLAGS) $< -o $@

# Graphics files
%.4bpp: %.png
	$(GBAGFX) $< $@
%.gbapal: %.pal
	$(GBAGFX) $< $@
%.lz: %
	$(GBAGFX) $< $@

%.h: ;
%.inc: ;

include gfxdep.mk
