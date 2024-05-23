# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ins_msg/UwbMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class UwbMsg(genpy.Message):
  _md5sum = "ffd92547deeeddbef8f9dc9786fea207"
  _type = "ins_msg/UwbMsg"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

int64 utime


uint8[8] anchor_serial
uint16[8] range


uint64[8] blinkTxTime
uint64[8] blinkRxTime
uint64[8] respTxTime
uint64[8] respRxTimeStamp
uint64[8] carrierintegrator

uint8 msg_cnt
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','utime','anchor_serial','range','blinkTxTime','blinkRxTime','respTxTime','respRxTimeStamp','carrierintegrator','msg_cnt']
  _slot_types = ['std_msgs/Header','int64','uint8[8]','uint16[8]','uint64[8]','uint64[8]','uint64[8]','uint64[8]','uint64[8]','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,utime,anchor_serial,range,blinkTxTime,blinkRxTime,respTxTime,respRxTimeStamp,carrierintegrator,msg_cnt

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UwbMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.utime is None:
        self.utime = 0
      if self.anchor_serial is None:
        self.anchor_serial = b'\0'*8
      if self.range is None:
        self.range = [0] * 8
      if self.blinkTxTime is None:
        self.blinkTxTime = [0] * 8
      if self.blinkRxTime is None:
        self.blinkRxTime = [0] * 8
      if self.respTxTime is None:
        self.respTxTime = [0] * 8
      if self.respRxTimeStamp is None:
        self.respRxTimeStamp = [0] * 8
      if self.carrierintegrator is None:
        self.carrierintegrator = [0] * 8
      if self.msg_cnt is None:
        self.msg_cnt = 0
    else:
      self.header = std_msgs.msg.Header()
      self.utime = 0
      self.anchor_serial = b'\0'*8
      self.range = [0] * 8
      self.blinkTxTime = [0] * 8
      self.blinkRxTime = [0] * 8
      self.respTxTime = [0] * 8
      self.respRxTimeStamp = [0] * 8
      self.carrierintegrator = [0] * 8
      self.msg_cnt = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.utime
      buff.write(_get_struct_q().pack(_x))
      _x = self.anchor_serial
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_8B().pack(*_x))
      else:
        buff.write(_get_struct_8s().pack(_x))
      buff.write(_get_struct_8H().pack(*self.range))
      buff.write(_get_struct_8Q().pack(*self.blinkTxTime))
      buff.write(_get_struct_8Q().pack(*self.blinkRxTime))
      buff.write(_get_struct_8Q().pack(*self.respTxTime))
      buff.write(_get_struct_8Q().pack(*self.respRxTimeStamp))
      buff.write(_get_struct_8Q().pack(*self.carrierintegrator))
      _x = self.msg_cnt
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 8
      (self.utime,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 8
      self.anchor_serial = str[start:end]
      start = end
      end += 16
      self.range = _get_struct_8H().unpack(str[start:end])
      start = end
      end += 64
      self.blinkTxTime = _get_struct_8Q().unpack(str[start:end])
      start = end
      end += 64
      self.blinkRxTime = _get_struct_8Q().unpack(str[start:end])
      start = end
      end += 64
      self.respTxTime = _get_struct_8Q().unpack(str[start:end])
      start = end
      end += 64
      self.respRxTimeStamp = _get_struct_8Q().unpack(str[start:end])
      start = end
      end += 64
      self.carrierintegrator = _get_struct_8Q().unpack(str[start:end])
      start = end
      end += 1
      (self.msg_cnt,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.utime
      buff.write(_get_struct_q().pack(_x))
      _x = self.anchor_serial
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_8B().pack(*_x))
      else:
        buff.write(_get_struct_8s().pack(_x))
      buff.write(self.range.tostring())
      buff.write(self.blinkTxTime.tostring())
      buff.write(self.blinkRxTime.tostring())
      buff.write(self.respTxTime.tostring())
      buff.write(self.respRxTimeStamp.tostring())
      buff.write(self.carrierintegrator.tostring())
      _x = self.msg_cnt
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 8
      (self.utime,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 8
      self.anchor_serial = str[start:end]
      start = end
      end += 16
      self.range = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=8)
      start = end
      end += 64
      self.blinkTxTime = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=8)
      start = end
      end += 64
      self.blinkRxTime = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=8)
      start = end
      end += 64
      self.respTxTime = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=8)
      start = end
      end += 64
      self.respRxTimeStamp = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=8)
      start = end
      end += 64
      self.carrierintegrator = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=8)
      start = end
      end += 1
      (self.msg_cnt,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_8B = None
def _get_struct_8B():
    global _struct_8B
    if _struct_8B is None:
        _struct_8B = struct.Struct("<8B")
    return _struct_8B
_struct_8H = None
def _get_struct_8H():
    global _struct_8H
    if _struct_8H is None:
        _struct_8H = struct.Struct("<8H")
    return _struct_8H
_struct_8Q = None
def _get_struct_8Q():
    global _struct_8Q
    if _struct_8Q is None:
        _struct_8Q = struct.Struct("<8Q")
    return _struct_8Q
_struct_8s = None
def _get_struct_8s():
    global _struct_8s
    if _struct_8s is None:
        _struct_8s = struct.Struct("<8s")
    return _struct_8s
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
