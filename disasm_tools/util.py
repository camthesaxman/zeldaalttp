from elftools.elf.elffile import ELFFile

elfFileName = 'zeldaalttp.elf'

symbols = {}

def read_symbols():
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

def read_bytes(f, length):
    data = bytearray(f.read(length))
    if len(data) < length:
        print('Error: trying to read past end of file')
        sys.exit(1)
    return data

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
