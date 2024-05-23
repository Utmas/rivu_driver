// Auto-generated. Do not edit!

// (in-package ins_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BmpMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.bmp = null;
      this.msg_cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('utime')) {
        this.utime = initObj.utime
      }
      else {
        this.utime = 0;
      }
      if (initObj.hasOwnProperty('bmp')) {
        this.bmp = initObj.bmp
      }
      else {
        this.bmp = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('msg_cnt')) {
        this.msg_cnt = initObj.msg_cnt
      }
      else {
        this.msg_cnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BmpMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Check that the constant length array field [bmp] has the right length
    if (obj.bmp.length !== 2) {
      throw new Error('Unable to serialize array field bmp - length must be 2')
    }
    // Serialize message field [bmp]
    bufferOffset = _arraySerializer.float32(obj.bmp, buffer, bufferOffset, 2);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BmpMsg
    let len;
    let data = new BmpMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [bmp]
    data.bmp = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/BmpMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67477f8e9a0765cd62377fffd76480bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 utime
    float32[2] bmp
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BmpMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.utime !== undefined) {
      resolved.utime = msg.utime;
    }
    else {
      resolved.utime = 0
    }

    if (msg.bmp !== undefined) {
      resolved.bmp = msg.bmp;
    }
    else {
      resolved.bmp = new Array(2).fill(0)
    }

    if (msg.msg_cnt !== undefined) {
      resolved.msg_cnt = msg.msg_cnt;
    }
    else {
      resolved.msg_cnt = 0
    }

    return resolved;
    }
};

module.exports = BmpMsg;
