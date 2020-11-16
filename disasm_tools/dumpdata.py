#!/usr/bin/env python
#
# Simple tool to dump ROM data in various formats
#

import sys
from elftools.elf.elffile import ELFFile

romFileName = 'baserom.gba'
elfFileName = 'zeldaalttp.elf'

if len(sys.argv) != 4:
    print('usage: ' + sys.argv[0] + ' offset size fmt')
    sys.exit(1)

offset = int(sys.argv[1], 0)
size   = int(sys.argv[2], 0)
fmt    = sys.argv[3]

symbols = {}

# auto-convert ROM address
if offset & 0x08000000:
    offset -= 0x08000000

def check_size(elemSize):
    if size % elemSize != 0:
        print('Error: size is not a multiple of ' + str(elemSize))
        sys.exit(1)

def read_bytes(f, length):
    data = bytearray(f.read(length))
    if len(data) < length:
        print('Error: trying to read past end of file')
        sys.exit(1)
    return data

def read_symbols():
    #return
    try:
        with open(elfFileName, 'rb') as f:
            elf = ELFFile(f)
            for section in elf.iter_sections():
                if section.name == '.symtab':
                    # TODO: this is too slow
                    for symbol in section.iter_symbols():
                        if len(symbol.name) >= 1 and not symbol.name[0] in ('_', '.', '$', '*'):
                            symbols[symbol['st_value']] = symbol.name
    except IOError as e:
        print('Error: could not read "' + elfFileName + '".')

def read_u8(f):
    data = read_bytes(f, 1)
    return data[0]

def read_u16(f):
    data = read_bytes(f, 2)
    return data[0] | (data[1] << 8)

def read_u32(f):
    data = read_bytes(f, 4)
    return data[0] | (data[1] << 8) | (data[2] << 16) | (data[3] << 24)

def read_ptr(f):
    value = read_u32(f)
    if value in symbols:
        return symbols[value]
    else:
        return hex(value)

try:
    with open(romFileName, 'rb') as f:
        f.seek(offset, 0)
        if fmt == 'u8':
            elemSize = 1
            readFunc = read_u8
        elif fmt == 'u16':
            elemSize = 2
            readFunc = read_u16
        elif fmt == 'ptr':
            elemSize = 4
            readFunc = read_ptr
            read_symbols()
        else:
            print('Error: invalid format ' + fmt)
            sys.exit(1)
        i = 0
        print('{')
        while i < size:
            print('    ' + str(readFunc(f)) + ',')
            i += elemSize
        print('};')
        print('i = ' + str(i))
        print('addr = ' + hex(offset + i))
        if i < size:
            print('bytes left: ' + str(size - i))
except IOError as e:
    print('Error: could not read "' + romFileName + '".')
