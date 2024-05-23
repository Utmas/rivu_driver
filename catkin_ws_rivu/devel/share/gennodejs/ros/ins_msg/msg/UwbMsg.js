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

class UwbMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.anchor_serial = null;
      this.range = null;
      this.blinkTxTime = null;
      this.blinkRxTime = null;
      this.respTxTime = null;
      this.respRxTimeStamp = null;
      this.carrierintegrator = null;
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
      if (initObj.hasOwnProperty('anchor_serial')) {
        this.anchor_serial = initObj.anchor_serial
      }
      else {
        this.anchor_serial = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('blinkTxTime')) {
        this.blinkTxTime = initObj.blinkTxTime
      }
      else {
        this.blinkTxTime = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('blinkRxTime')) {
        this.blinkRxTime = initObj.blinkRxTime
      }
      else {
        this.blinkRxTime = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('respTxTime')) {
        this.respTxTime = initObj.respTxTime
      }
      else {
        this.respTxTime = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('respRxTimeStamp')) {
        this.respRxTimeStamp = initObj.respRxTimeStamp
      }
      else {
        this.respRxTimeStamp = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('carrierintegrator')) {
        this.carrierintegrator = initObj.carrierintegrator
      }
      else {
        this.carrierintegrator = new Array(8).fill(0);
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
    // Serializes a message object of type UwbMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Check that the constant length array field [anchor_serial] has the right length
    if (obj.anchor_serial.length !== 8) {
      throw new Error('Unable to serialize array field anchor_serial - length must be 8')
    }
    // Serialize message field [anchor_serial]
    bufferOffset = _arraySerializer.uint8(obj.anchor_serial, buffer, bufferOffset, 8);
    // Check that the constant length array field [range] has the right length
    if (obj.range.length !== 8) {
      throw new Error('Unable to serialize array field range - length must be 8')
    }
    // Serialize message field [range]
    bufferOffset = _arraySerializer.uint16(obj.range, buffer, bufferOffset, 8);
    // Check that the constant length array field [blinkTxTime] has the right length
    if (obj.blinkTxTime.length !== 8) {
      throw new Error('Unable to serialize array field blinkTxTime - length must be 8')
    }
    // Serialize message field [blinkTxTime]
    bufferOffset = _arraySerializer.uint64(obj.blinkTxTime, buffer, bufferOffset, 8);
    // Check that the constant length array field [blinkRxTime] has the right length
    if (obj.blinkRxTime.length !== 8) {
      throw new Error('Unable to serialize array field blinkRxTime - length must be 8')
    }
    // Serialize message field [blinkRxTime]
    bufferOffset = _arraySerializer.uint64(obj.blinkRxTime, buffer, bufferOffset, 8);
    // Check that the constant length array field [respTxTime] has the right length
    if (obj.respTxTime.length !== 8) {
      throw new Error('Unable to serialize array field respTxTime - length must be 8')
    }
    // Serialize message field [respTxTime]
    bufferOffset = _arraySerializer.uint64(obj.respTxTime, buffer, bufferOffset, 8);
    // Check that the constant length array field [respRxTimeStamp] has the right length
    if (obj.respRxTimeStamp.length !== 8) {
      throw new Error('Unable to serialize array field respRxTimeStamp - length must be 8')
    }
    // Serialize message field [respRxTimeStamp]
    bufferOffset = _arraySerializer.uint64(obj.respRxTimeStamp, buffer, bufferOffset, 8);
    // Check that the constant length array field [carrierintegrator] has the right length
    if (obj.carrierintegrator.length !== 8) {
      throw new Error('Unable to serialize array field carrierintegrator - length must be 8')
    }
    // Serialize message field [carrierintegrator]
    bufferOffset = _arraySerializer.uint64(obj.carrierintegrator, buffer, bufferOffset, 8);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UwbMsg
    let len;
    let data = new UwbMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [anchor_serial]
    data.anchor_serial = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.uint16(buffer, bufferOffset, 8)
    // Deserialize message field [blinkTxTime]
    data.blinkTxTime = _arrayDeserializer.uint64(buffer, bufferOffset, 8)
    // Deserialize message field [blinkRxTime]
    data.blinkRxTime = _arrayDeserializer.uint64(buffer, bufferOffset, 8)
    // Deserialize message field [respTxTime]
    data.respTxTime = _arrayDeserializer.uint64(buffer, bufferOffset, 8)
    // Deserialize message field [respRxTimeStamp]
    data.respRxTimeStamp = _arrayDeserializer.uint64(buffer, bufferOffset, 8)
    // Deserialize message field [carrierintegrator]
    data.carrierintegrator = _arrayDeserializer.uint64(buffer, bufferOffset, 8)
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 353;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/UwbMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffd92547deeeddbef8f9dc9786fea207';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UwbMsg(null);
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

    if (msg.anchor_serial !== undefined) {
      resolved.anchor_serial = msg.anchor_serial;
    }
    else {
      resolved.anchor_serial = new Array(8).fill(0)
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = new Array(8).fill(0)
    }

    if (msg.blinkTxTime !== undefined) {
      resolved.blinkTxTime = msg.blinkTxTime;
    }
    else {
      resolved.blinkTxTime = new Array(8).fill(0)
    }

    if (msg.blinkRxTime !== undefined) {
      resolved.blinkRxTime = msg.blinkRxTime;
    }
    else {
      resolved.blinkRxTime = new Array(8).fill(0)
    }

    if (msg.respTxTime !== undefined) {
      resolved.respTxTime = msg.respTxTime;
    }
    else {
      resolved.respTxTime = new Array(8).fill(0)
    }

    if (msg.respRxTimeStamp !== undefined) {
      resolved.respRxTimeStamp = msg.respRxTimeStamp;
    }
    else {
      resolved.respRxTimeStamp = new Array(8).fill(0)
    }

    if (msg.carrierintegrator !== undefined) {
      resolved.carrierintegrator = msg.carrierintegrator;
    }
    else {
      resolved.carrierintegrator = new Array(8).fill(0)
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

module.exports = UwbMsg;
