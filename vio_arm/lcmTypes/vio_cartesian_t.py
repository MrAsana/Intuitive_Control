"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

from io import BytesIO
import struct

class vio_cartesian_t(object):
    __slots__ = ["rot", "pos"]

    __typenames__ = ["double", "double"]

    __dimensions__ = [[3], [3]]

    def __init__(self):
        self.rot = [ 0.0 for dim0 in range(3) ]
        self.pos = [ 0.0 for dim0 in range(3) ]

    def encode(self):
        buf = BytesIO()
        buf.write(vio_cartesian_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack('>3d', *self.rot[:3]))
        buf.write(struct.pack('>3d', *self.pos[:3]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != vio_cartesian_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return vio_cartesian_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = vio_cartesian_t()
        self.rot = struct.unpack('>3d', buf.read(24))
        self.pos = struct.unpack('>3d', buf.read(24))
        return self
    _decode_one = staticmethod(_decode_one)

    def _get_hash_recursive(parents):
        if vio_cartesian_t in parents: return 0
        tmphash = (0x953ae5880ab08ac3) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff) + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if vio_cartesian_t._packed_fingerprint is None:
            vio_cartesian_t._packed_fingerprint = struct.pack(">Q", vio_cartesian_t._get_hash_recursive([]))
        return vio_cartesian_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

    def get_hash(self):
        """Get the LCM hash of the struct"""
        return struct.unpack(">Q", vio_cartesian_t._get_packed_fingerprint())[0]
