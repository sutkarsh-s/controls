# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from automi_v1/map.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import automi_v1.msg
import std_msgs.msg

class map(genpy.Message):
  _md5sum = "dbb542f532cb6f654d6a20efa3e5f086"
  _type = "automi_v1/map"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header 

#bot 
geometry_msgs/Vector3 bot_pos
#bot orient in some form

automi_v1/object[] objects

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: automi_v1/object
Header header 
geometry_msgs/Vector3 pos
geometry_msgs/Vector3 orient
float32[] dims
uint8 type
float32 occupancy_ratio
"""
  __slots__ = ['header','bot_pos','objects']
  _slot_types = ['std_msgs/Header','geometry_msgs/Vector3','automi_v1/object[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,bot_pos,objects

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(map, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bot_pos is None:
        self.bot_pos = geometry_msgs.msg.Vector3()
      if self.objects is None:
        self.objects = []
    else:
      self.header = std_msgs.msg.Header()
      self.bot_pos = geometry_msgs.msg.Vector3()
      self.objects = []

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
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.bot_pos.x, _x.bot_pos.y, _x.bot_pos.z))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.pos
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.orient
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.dims)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.dims))
        _x = val1
        buff.write(_get_struct_Bf().pack(_x.type, _x.occupancy_ratio))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bot_pos is None:
        self.bot_pos = geometry_msgs.msg.Vector3()
      if self.objects is None:
        self.objects = None
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.bot_pos.x, _x.bot_pos.y, _x.bot_pos.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = automi_v1.msg.object()
        _v5 = val1.header
        start = end
        end += 4
        (_v5.seq,) = _get_struct_I().unpack(str[start:end])
        _v6 = _v5.stamp
        _x = _v6
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.frame_id = str[start:end].decode('utf-8')
        else:
          _v5.frame_id = str[start:end]
        _v7 = val1.pos
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orient
        _x = _v8
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.dims = struct.unpack(pattern, str[start:end])
        _x = val1
        start = end
        end += 5
        (_x.type, _x.occupancy_ratio,) = _get_struct_Bf().unpack(str[start:end])
        self.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


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
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.bot_pos.x, _x.bot_pos.y, _x.bot_pos.z))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _v9 = val1.header
        buff.write(_get_struct_I().pack(_v9.seq))
        _v10 = _v9.stamp
        _x = _v10
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v9.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v11 = val1.pos
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = val1.orient
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.dims)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.dims.tostring())
        _x = val1
        buff.write(_get_struct_Bf().pack(_x.type, _x.occupancy_ratio))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bot_pos is None:
        self.bot_pos = geometry_msgs.msg.Vector3()
      if self.objects is None:
        self.objects = None
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.bot_pos.x, _x.bot_pos.y, _x.bot_pos.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = automi_v1.msg.object()
        _v13 = val1.header
        start = end
        end += 4
        (_v13.seq,) = _get_struct_I().unpack(str[start:end])
        _v14 = _v13.stamp
        _x = _v14
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.frame_id = str[start:end].decode('utf-8')
        else:
          _v13.frame_id = str[start:end]
        _v15 = val1.pos
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.orient
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.dims = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        _x = val1
        start = end
        end += 5
        (_x.type, _x.occupancy_ratio,) = _get_struct_Bf().unpack(str[start:end])
        self.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

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
_struct_Bf = None
def _get_struct_Bf():
    global _struct_Bf
    if _struct_Bf is None:
        _struct_Bf = struct.Struct("<Bf")
    return _struct_Bf
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
