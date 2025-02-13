# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ins_msg/UwbAoaMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ins_msg.msg
import std_msgs.msg

class UwbAoaMsg(genpy.Message):
  _md5sum = "38d0a653ce9de672e25f5c2f6393f060"
  _type = "ins_msg/UwbAoaMsg"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

int64       utime

uint32      dev_id

PairMeass[19] pair_meass

uint8       status
uint8       msg_cnt

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

================================================================================
MSG: ins_msg/PairMeass

uint16      swarm_id
uint8       node_id
uint8       los_flag
uint64[2]   stamps

uint16      distance
int16       aoa
int16       pdoa1
int16       pdoa2

"""
  __slots__ = ['header','utime','dev_id','pair_meass','status','msg_cnt']
  _slot_types = ['std_msgs/Header','int64','uint32','ins_msg/PairMeass[19]','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,utime,dev_id,pair_meass,status,msg_cnt

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UwbAoaMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.utime is None:
        self.utime = 0
      if self.dev_id is None:
        self.dev_id = 0
      if self.pair_meass is None:
        self.pair_meass = [ins_msg.msg.PairMeass() for _ in range(19)]
      if self.status is None:
        self.status = 0
      if self.msg_cnt is None:
        self.msg_cnt = 0
    else:
      self.header = std_msgs.msg.Header()
      self.utime = 0
      self.dev_id = 0
      self.pair_meass = [ins_msg.msg.PairMeass() for _ in range(19)]
      self.status = 0
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
      _x = self
      buff.write(_get_struct_qI().pack(_x.utime, _x.dev_id))
      if len(self.pair_meass) != 19:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (19, len(self.pair_meass), 'self.pair_meass')))
      for val1 in self.pair_meass:
        _x = val1
        buff.write(_get_struct_H2B().pack(_x.swarm_id, _x.node_id, _x.los_flag))
        buff.write(_get_struct_2Q().pack(*val1.stamps))
        _x = val1
        buff.write(_get_struct_H3h().pack(_x.distance, _x.aoa, _x.pdoa1, _x.pdoa2))
      _x = self
      buff.write(_get_struct_2B().pack(_x.status, _x.msg_cnt))
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
      if self.pair_meass is None:
        self.pair_meass = None
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
      _x = self
      start = end
      end += 12
      (_x.utime, _x.dev_id,) = _get_struct_qI().unpack(str[start:end])
      self.pair_meass = []
      for i in range(0, 19):
        val1 = ins_msg.msg.PairMeass()
        _x = val1
        start = end
        end += 4
        (_x.swarm_id, _x.node_id, _x.los_flag,) = _get_struct_H2B().unpack(str[start:end])
        start = end
        end += 16
        val1.stamps = _get_struct_2Q().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.distance, _x.aoa, _x.pdoa1, _x.pdoa2,) = _get_struct_H3h().unpack(str[start:end])
        self.pair_meass.append(val1)
      _x = self
      start = end
      end += 2
      (_x.status, _x.msg_cnt,) = _get_struct_2B().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_qI().pack(_x.utime, _x.dev_id))
      if len(self.pair_meass) != 19:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (19, len(self.pair_meass), 'self.pair_meass')))
      for val1 in self.pair_meass:
        _x = val1
        buff.write(_get_struct_H2B().pack(_x.swarm_id, _x.node_id, _x.los_flag))
        buff.write(val1.stamps.tostring())
        _x = val1
        buff.write(_get_struct_H3h().pack(_x.distance, _x.aoa, _x.pdoa1, _x.pdoa2))
      _x = self
      buff.write(_get_struct_2B().pack(_x.status, _x.msg_cnt))
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
      if self.pair_meass is None:
        self.pair_meass = None
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
      _x = self
      start = end
      end += 12
      (_x.utime, _x.dev_id,) = _get_struct_qI().unpack(str[start:end])
      self.pair_meass = []
      for i in range(0, 19):
        val1 = ins_msg.msg.PairMeass()
        _x = val1
        start = end
        end += 4
        (_x.swarm_id, _x.node_id, _x.los_flag,) = _get_struct_H2B().unpack(str[start:end])
        start = end
        end += 16
        val1.stamps = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=2)
        _x = val1
        start = end
        end += 8
        (_x.distance, _x.aoa, _x.pdoa1, _x.pdoa2,) = _get_struct_H3h().unpack(str[start:end])
        self.pair_meass.append(val1)
      _x = self
      start = end
      end += 2
      (_x.status, _x.msg_cnt,) = _get_struct_2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_2Q = None
def _get_struct_2Q():
    global _struct_2Q
    if _struct_2Q is None:
        _struct_2Q = struct.Struct("<2Q")
    return _struct_2Q
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_H2B = None
def _get_struct_H2B():
    global _struct_H2B
    if _struct_H2B is None:
        _struct_H2B = struct.Struct("<H2B")
    return _struct_H2B
_struct_H3h = None
def _get_struct_H3h():
    global _struct_H3h
    if _struct_H3h is None:
        _struct_H3h = struct.Struct("<H3h")
    return _struct_H3h
_struct_qI = None
def _get_struct_qI():
    global _struct_qI
    if _struct_qI is None:
        _struct_qI = struct.Struct("<qI")
    return _struct_qI
