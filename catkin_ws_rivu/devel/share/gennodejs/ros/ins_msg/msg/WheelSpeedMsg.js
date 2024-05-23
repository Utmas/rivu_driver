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

class WheelSpeedMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.left_wheel_speed = null;
      this.left_encoder_sum = null;
      this.right_wheel_speed = null;
      this.right_encoder_sum = null;
      this.steering_angle = null;
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
      if (initObj.hasOwnProperty('left_wheel_speed')) {
        this.left_wheel_speed = initObj.left_wheel_speed
      }
      else {
        this.left_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('left_encoder_sum')) {
        this.left_encoder_sum = initObj.left_encoder_sum
      }
      else {
        this.left_encoder_sum = 0;
      }
      if (initObj.hasOwnProperty('right_wheel_speed')) {
        this.right_wheel_speed = initObj.right_wheel_speed
      }
      else {
        this.right_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('right_encoder_sum')) {
        this.right_encoder_sum = initObj.right_encoder_sum
      }
      else {
        this.right_encoder_sum = 0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
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
    // Serializes a message object of type WheelSpeedMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Serialize message field [left_wheel_speed]
    bufferOffset = _serializer.float32(obj.left_wheel_speed, buffer, bufferOffset);
    // Serialize message field [left_encoder_sum]
    bufferOffset = _serializer.int64(obj.left_encoder_sum, buffer, bufferOffset);
    // Serialize message field [right_wheel_speed]
    bufferOffset = _serializer.float32(obj.right_wheel_speed, buffer, bufferOffset);
    // Serialize message field [right_encoder_sum]
    bufferOffset = _serializer.int64(obj.right_encoder_sum, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float32(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeedMsg
    let len;
    let data = new WheelSpeedMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [left_wheel_speed]
    data.left_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_encoder_sum]
    data.left_encoder_sum = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [right_wheel_speed]
    data.right_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_encoder_sum]
    data.right_encoder_sum = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/WheelSpeedMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96bbad967ec029252d2e525db16ca7a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 utime
    float32 left_wheel_speed
    int64 left_encoder_sum
    float32 right_wheel_speed
    int64 right_encoder_sum
    float32 steering_angle
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
    const resolved = new WheelSpeedMsg(null);
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

    if (msg.left_wheel_speed !== undefined) {
      resolved.left_wheel_speed = msg.left_wheel_speed;
    }
    else {
      resolved.left_wheel_speed = 0.0
    }

    if (msg.left_encoder_sum !== undefined) {
      resolved.left_encoder_sum = msg.left_encoder_sum;
    }
    else {
      resolved.left_encoder_sum = 0
    }

    if (msg.right_wheel_speed !== undefined) {
      resolved.right_wheel_speed = msg.right_wheel_speed;
    }
    else {
      resolved.right_wheel_speed = 0.0
    }

    if (msg.right_encoder_sum !== undefined) {
      resolved.right_encoder_sum = msg.right_encoder_sum;
    }
    else {
      resolved.right_encoder_sum = 0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
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

module.exports = WheelSpeedMsg;
