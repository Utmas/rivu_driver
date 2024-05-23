// Auto-generated. Do not edit!

// (in-package ins_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UwbPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dev_id = null;
      this.pos = null;
      this.cov = null;
    }
    else {
      if (initObj.hasOwnProperty('dev_id')) {
        this.dev_id = initObj.dev_id
      }
      else {
        this.dev_id = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('cov')) {
        this.cov = initObj.cov
      }
      else {
        this.cov = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UwbPos
    // Serialize message field [dev_id]
    bufferOffset = _serializer.uint32(obj.dev_id, buffer, bufferOffset);
    // Check that the constant length array field [pos] has the right length
    if (obj.pos.length !== 3) {
      throw new Error('Unable to serialize array field pos - length must be 3')
    }
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, 3);
    // Check that the constant length array field [cov] has the right length
    if (obj.cov.length !== 6) {
      throw new Error('Unable to serialize array field cov - length must be 6')
    }
    // Serialize message field [cov]
    bufferOffset = _arraySerializer.float32(obj.cov, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UwbPos
    let len;
    let data = new UwbPos(null);
    // Deserialize message field [dev_id]
    data.dev_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [cov]
    data.cov = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/UwbPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6aff7b7e64b76ac4c0149132212ab48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32     dev_id
    float32[3] pos
    float32[6] cov
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UwbPos(null);
    if (msg.dev_id !== undefined) {
      resolved.dev_id = msg.dev_id;
    }
    else {
      resolved.dev_id = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = new Array(3).fill(0)
    }

    if (msg.cov !== undefined) {
      resolved.cov = msg.cov;
    }
    else {
      resolved.cov = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = UwbPos;
