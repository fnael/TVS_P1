import os
import struct

os.makedirs("seeds", exist_ok=True)


def cmd(op, key):
    return bytes([op]) + struct.pack("<i", key)


# seed0: just an add
open("seeds/seed0", "wb").write(cmd(0, 42))

# seed1: add then get
open("seeds/seed1", "wb").write(cmd(0, 10) + cmd(1, 10))

# seed2: add then get_first_key
open("seeds/seed2", "wb").write(cmd(0, 5) + cmd(2, 0))

# seed3: add two keys then get_greater_than
open("seeds/seed3", "wb").write(cmd(0, 1) + cmd(0, 2) + cmd(3, 1))

# seed4: get on empty table
open("seeds/seed4", "wb").write(cmd(1, 99))

# seed5: get_first_key on empty table
open("seeds/seed5", "wb").write(cmd(2, 0))
