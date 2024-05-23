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

class PairMeass {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swarm_id = null;
      this.node_id = null;
      this.los_flag = null;
      this.stamps = null;
      this.distance = null;
      this.aoa = null;
      this.pdoa1 = null;
      this.pdoa2 = null;
    }
    else {
      if (initObj.hasOwnProperty('swarm_id')) {
        this.swarm_id = initObj.swarm_id
      }
      else {
        this.swarm_id = 0;
      }
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
      }
      if (initObj.hasOwnProperty('los_flag')) {
        this.los_flag = initObj.los_flag
      }
      else {
        this.los_flag = 0;
      }
      if (initObj.hasOwnProperty('stamps')) {
        this.stamps = initObj.stamps
      }
      else {
        this.stamps = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('aoa')) {
        this.aoa = initObj.aoa
      }
      else {
        this.aoa = 0;
      }
      if (initObj.hasOwnProperty('pdoa1')) {
        this.pdoa1 = initObj.pdoa1
      }
      else {
        this.pdoa1 = 0;
      }
      if (initObj.hasOwnProperty('pdoa2')) {
        this.pdoa2 = initObj.pdoa2
      }
      else {
        this.pdoa2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PairMeass
    // Serialize message field [swarm_id]
    bufferOffset = _serializer.uint16(obj.swarm_id, buffer, bufferOffset);
    // Serialize message field [node_id]
    bufferOffset = _serializer.uint8(obj.node_id, buffer, bufferOffset);
    // Serialize message field [los_flag]
    bufferOffset = _serializer.uint8(obj.los_flag, buffer, bufferOffset);
    // Check that the constant length array field [stamps] has the right length
    if (obj.stamps.length !== 2) {
      throw new Error('Unable to serialize array field stamps - length must be 2')
    }
    // Serialize message field [stamps]
    bufferOffset = _arraySerializer.uint64(obj.stamps, buffer, bufferOffset, 2);
    // Serialize message field [distance]
    bufferOffset = _serializer.uint16(obj.distance, buffer, bufferOffset);
    // Serialize message field [aoa]
    bufferOffset = _serializer.int16(obj.aoa, buffer, bufferOffset);
    // Serialize message field [pdoa1]
    bufferOffset = _serializer.int16(obj.pdoa1, buffer, bufferOffset);
    // Serialize message field [pdoa2]
    bufferOffset = _serializer.int16(obj.pdoa2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PairMeass
    let len;
    let data = new PairMeass(null);
    // Deserialize message field [swarm_id]
    data.swarm_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [los_flag]
    data.los_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamps]
    data.stamps = _arrayDeserializer.uint64(buffer, bufferOffset, 2)
    // Deserialize message field [distance]
    data.distance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [aoa]
    data.aoa = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pdoa1]
    data.pdoa1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pdoa2]
    data.pdoa2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/PairMeass';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '776a952d5c4aa0b600c75e49a23de2f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint16      swarm_id
    uint8       node_id
    uint8       los_flag
    uint64[2]   stamps
    
    uint16      distance
    int16       aoa
    int16       pdoa1
    int16       pdoa2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PairMeass(null);
    if (msg.swarm_id !== undefined) {
      resolved.swarm_id = msg.swarm_id;
    }
    else {
      resolved.swarm_id = 0
    }

    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
    }

    if (msg.los_flag !== undefined) {
      resolved.los_flag = msg.los_flag;
    }
    else {
      resolved.los_flag = 0
    }

    if (msg.stamps !== undefined) {
      resolved.stamps = msg.stamps;
    }
    else {
      resolved.stamps = new Array(2).fill(0)
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.aoa !== undefined) {
      resolved.aoa = msg.aoa;
    }
    else {
      resolved.aoa = 0
    }

    if (msg.pdoa1 !== undefined) {
      resolved.pdoa1 = msg.pdoa1;
    }
    else {
      resolved.pdoa1 = 0
    }

    if (msg.pdoa2 !== undefined) {
      resolved.pdoa2 = msg.pdoa2;
    }
    else {
      resolved.pdoa2 = 0
    }

    return resolved;
    }
};

module.exports = PairMeass;
