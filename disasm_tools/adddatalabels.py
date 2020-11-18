#!/usr/bin/env python
#
# Adds data labels, splitting incbins when necessary
#

import sys
import glob
import re

addresses = []

for arg in sys.argv[1:]:
    addresses.append(int(arg, 0))
addresses = sorted(addresses)

def split_incbin(start, end):
    text = ''
    #print('split incbin')
    pos = start
    while pos < end:
        #print('pos = 0x%X, end = 0x%X' % (pos, end))
        split = end
        # find address
        for addr in addresses:
            fileaddr = addr - 0x08000000
            if fileaddr > pos and fileaddr < end:
                split = fileaddr
                break
        text += ('\t.INCBIN "baserom.gba", 0x%X, 0x%X-0x%X\n' % (pos, split, pos))
        pos = split
    return text

for fname in glob.glob('data/*.s'):
    print('fname: ' + fname)
    with open(fname, 'r') as f:
        output = ''
        for line in f.readlines():
            m = re.search(r'incbin\s+"baserom\.gba",\s+(\w+),\s+(\w+)\s*-(\w+)', line, re.IGNORECASE)
            if m:
                output += split_incbin(int(m.group(1), 0), int(m.group(2), 0))
            else:
                output += line
    with open(fname, 'w') as f:
        f.write(output)
