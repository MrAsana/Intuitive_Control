"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

from io import BytesIO
import struct

class posCmd_t(object):
    __slots__ = ["jointTarget"]

    __typenames__ = ["double"]

    __dimensions__ = [[7]]

    def __init__(self):
        self.jointTarget = [ 0.0 for dim0 in range(7) ]

    def encode(self):
        buf = BytesIO()
        buf.write(posCmd_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack('>7d', *self.jointTarget[:7]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != posCmd_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return posCmd_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = posCmd_t()
        self.jointTarget = struct.unpack('>7d', buf.read(56))
        return self
    _decode_one = staticmethod(_decode_one)

    def _get_hash_recursive(parents):
        if posCmd_t in parents: return 0
        tmphash = (0x188bf3ed90575311) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff) + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if posCmd_t._packed_fingerprint is None:
            posCmd_t._packed_fingerprint = struct.pack(">Q", posCmd_t._get_hash_recursive([]))
        return posCmd_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

    def get_hash(self):
        """Get the LCM hash of the struct"""
        return struct.unpack(">Q", posCmd_t._get_packed_fingerprint())[0]

