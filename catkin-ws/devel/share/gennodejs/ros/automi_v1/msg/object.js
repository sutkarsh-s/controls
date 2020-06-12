// Auto-generated. Do not edit!

// (in-package automi_v1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos = null;
      this.orient = null;
      this.dims = null;
      this.type = null;
      this.occupancy_ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orient')) {
        this.orient = initObj.orient
      }
      else {
        this.orient = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('dims')) {
        this.dims = initObj.dims
      }
      else {
        this.dims = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('occupancy_ratio')) {
        this.occupancy_ratio = initObj.occupancy_ratio
      }
      else {
        this.occupancy_ratio = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [orient]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orient, buffer, bufferOffset);
    // Serialize message field [dims]
    bufferOffset = _arraySerializer.float32(obj.dims, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [occupancy_ratio]
    bufferOffset = _serializer.float32(obj.occupancy_ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object
    let len;
    let data = new object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orient]
    data.orient = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dims]
    data.dims = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [occupancy_ratio]
    data.occupancy_ratio = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.dims.length;
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automi_v1/object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ca7eab4d3814df94540aa2e716e6f4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    geometry_msgs/Vector3 pos
    geometry_msgs/Vector3 orient
    float32[] dims
    uint8 type
    float32 occupancy_ratio
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Vector3.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Vector3()
    }

    if (msg.orient !== undefined) {
      resolved.orient = geometry_msgs.msg.Vector3.Resolve(msg.orient)
    }
    else {
      resolved.orient = new geometry_msgs.msg.Vector3()
    }

    if (msg.dims !== undefined) {
      resolved.dims = msg.dims;
    }
    else {
      resolved.dims = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.occupancy_ratio !== undefined) {
      resolved.occupancy_ratio = msg.occupancy_ratio;
    }
    else {
      resolved.occupancy_ratio = 0.0
    }

    return resolved;
    }
};

module.exports = object;
