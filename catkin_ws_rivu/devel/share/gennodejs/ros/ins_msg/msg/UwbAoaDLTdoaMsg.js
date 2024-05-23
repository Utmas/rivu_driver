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

class UwbAoaDLTdoaMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.dev_id = null;
      this.dists = null;
      this.aoas = null;
      this.status = null;
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
      if (initObj.hasOwnProperty('dev_id')) {
        this.dev_id = initObj.dev_id
      }
      else {
        this.dev_id = 0;
      }
      if (initObj.hasOwnProperty('dists')) {
        this.dists = initObj.dists
      }
      else {
        this.dists = new Array(400).fill(0);
      }
      if (initObj.hasOwnProperty('aoas')) {
        this.aoas = initObj.aoas
      }
      else {
        this.aoas = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
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
    // Serializes a message object of type UwbAoaDLTdoaMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Serialize message field [dev_id]
    bufferOffset = _serializer.uint32(obj.dev_id, buffer, bufferOffset);
    // Check that the constant length array field [dists] has the right length
    if (obj.dists.length !== 400) {
      throw new Error('Unable to serialize array field dists - length must be 400')
    }
    // Serialize message field [dists]
    bufferOffset = _arraySerializer.uint16(obj.dists, buffer, bufferOffset, 400);
    // Check that the constant length array field [aoas] has the right length
    if (obj.aoas.length !== 20) {
      throw new Error('Unable to serialize array field aoas - length must be 20')
    }
    // Serialize message field [aoas]
    bufferOffset = _arraySerializer.uint16(obj.aoas, buffer, bufferOffset, 20);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UwbAoaDLTdoaMsg
    let len;
    let data = new UwbAoaDLTdoaMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dev_id]
    data.dev_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dists]
    data.dists = _arrayDeserializer.uint16(buffer, bufferOffset, 400)
    // Deserialize message field [aoas]
    data.aoas = _arrayDeserializer.uint16(buffer, bufferOffset, 20)
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 854;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/UwbAoaDLTdoaMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '828ed3404304c69ebe54efff42237d34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64       utime
    
    uint32      dev_id
    
    uint16[400] dists
    uint16[20]  aoas
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UwbAoaDLTdoaMsg(null);
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

    if (msg.dev_id !== undefined) {
      resolved.dev_id = msg.dev_id;
    }
    else {
      resolved.dev_id = 0
    }

    if (msg.dists !== undefined) {
      resolved.dists = msg.dists;
    }
    else {
      resolved.dists = new Array(400).fill(0)
    }

    if (msg.aoas !== undefined) {
      resolved.aoas = msg.aoas;
    }
    else {
      resolved.aoas = new Array(20).fill(0)
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
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

module.exports = UwbAoaDLTdoaMsg;
