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

class EkfStatusMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.ref = null;
      this.obs = null;
      this.out = null;
      this.state_rpy = null;
      this.state_vel = null;
      this.state_pos = null;
      this.state_gyro_bias = null;
      this.state_acc_bias = null;
      this.state_scale = null;
      this.state_yaw_error = null;
      this.state_pitch_error = null;
      this.innov_speed = null;
      this.innov_rtk_pos = null;
      this.innov_rtk_vel = null;
      this.innov_rtk_hdg = null;
      this.R_speed = null;
      this.R_rtk_pos = null;
      this.R_rtk_vel = null;
      this.R_rtk_hdg = null;
      this.P = null;
      this.speed_imu_time = null;
      this.speed_rtk_time = null;
      this.delta_imu_time = null;
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
      if (initObj.hasOwnProperty('ref')) {
        this.ref = initObj.ref
      }
      else {
        this.ref = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('out')) {
        this.out = initObj.out
      }
      else {
        this.out = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_rpy')) {
        this.state_rpy = initObj.state_rpy
      }
      else {
        this.state_rpy = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_vel')) {
        this.state_vel = initObj.state_vel
      }
      else {
        this.state_vel = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_pos')) {
        this.state_pos = initObj.state_pos
      }
      else {
        this.state_pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_gyro_bias')) {
        this.state_gyro_bias = initObj.state_gyro_bias
      }
      else {
        this.state_gyro_bias = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_acc_bias')) {
        this.state_acc_bias = initObj.state_acc_bias
      }
      else {
        this.state_acc_bias = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('state_scale')) {
        this.state_scale = initObj.state_scale
      }
      else {
        this.state_scale = 0.0;
      }
      if (initObj.hasOwnProperty('state_yaw_error')) {
        this.state_yaw_error = initObj.state_yaw_error
      }
      else {
        this.state_yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('state_pitch_error')) {
        this.state_pitch_error = initObj.state_pitch_error
      }
      else {
        this.state_pitch_error = 0.0;
      }
      if (initObj.hasOwnProperty('innov_speed')) {
        this.innov_speed = initObj.innov_speed
      }
      else {
        this.innov_speed = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('innov_rtk_pos')) {
        this.innov_rtk_pos = initObj.innov_rtk_pos
      }
      else {
        this.innov_rtk_pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('innov_rtk_vel')) {
        this.innov_rtk_vel = initObj.innov_rtk_vel
      }
      else {
        this.innov_rtk_vel = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('innov_rtk_hdg')) {
        this.innov_rtk_hdg = initObj.innov_rtk_hdg
      }
      else {
        this.innov_rtk_hdg = 0.0;
      }
      if (initObj.hasOwnProperty('R_speed')) {
        this.R_speed = initObj.R_speed
      }
      else {
        this.R_speed = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('R_rtk_pos')) {
        this.R_rtk_pos = initObj.R_rtk_pos
      }
      else {
        this.R_rtk_pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('R_rtk_vel')) {
        this.R_rtk_vel = initObj.R_rtk_vel
      }
      else {
        this.R_rtk_vel = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('R_rtk_hdg')) {
        this.R_rtk_hdg = initObj.R_rtk_hdg
      }
      else {
        this.R_rtk_hdg = 0.0;
      }
      if (initObj.hasOwnProperty('P')) {
        this.P = initObj.P
      }
      else {
        this.P = new Array(18).fill(0);
      }
      if (initObj.hasOwnProperty('speed_imu_time')) {
        this.speed_imu_time = initObj.speed_imu_time
      }
      else {
        this.speed_imu_time = 0.0;
      }
      if (initObj.hasOwnProperty('speed_rtk_time')) {
        this.speed_rtk_time = initObj.speed_rtk_time
      }
      else {
        this.speed_rtk_time = 0.0;
      }
      if (initObj.hasOwnProperty('delta_imu_time')) {
        this.delta_imu_time = initObj.delta_imu_time
      }
      else {
        this.delta_imu_time = 0.0;
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
    // Serializes a message object of type EkfStatusMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Check that the constant length array field [ref] has the right length
    if (obj.ref.length !== 3) {
      throw new Error('Unable to serialize array field ref - length must be 3')
    }
    // Serialize message field [ref]
    bufferOffset = _arraySerializer.float64(obj.ref, buffer, bufferOffset, 3);
    // Check that the constant length array field [obs] has the right length
    if (obj.obs.length !== 3) {
      throw new Error('Unable to serialize array field obs - length must be 3')
    }
    // Serialize message field [obs]
    bufferOffset = _arraySerializer.float64(obj.obs, buffer, bufferOffset, 3);
    // Check that the constant length array field [out] has the right length
    if (obj.out.length !== 3) {
      throw new Error('Unable to serialize array field out - length must be 3')
    }
    // Serialize message field [out]
    bufferOffset = _arraySerializer.float64(obj.out, buffer, bufferOffset, 3);
    // Check that the constant length array field [state_rpy] has the right length
    if (obj.state_rpy.length !== 3) {
      throw new Error('Unable to serialize array field state_rpy - length must be 3')
    }
    // Serialize message field [state_rpy]
    bufferOffset = _arraySerializer.float64(obj.state_rpy, buffer, bufferOffset, 3);
    // Check that the constant length array field [state_vel] has the right length
    if (obj.state_vel.length !== 3) {
      throw new Error('Unable to serialize array field state_vel - length must be 3')
    }
    // Serialize message field [state_vel]
    bufferOffset = _arraySerializer.float64(obj.state_vel, buffer, bufferOffset, 3);
    // Check that the constant length array field [state_pos] has the right length
    if (obj.state_pos.length !== 3) {
      throw new Error('Unable to serialize array field state_pos - length must be 3')
    }
    // Serialize message field [state_pos]
    bufferOffset = _arraySerializer.float64(obj.state_pos, buffer, bufferOffset, 3);
    // Check that the constant length array field [state_gyro_bias] has the right length
    if (obj.state_gyro_bias.length !== 3) {
      throw new Error('Unable to serialize array field state_gyro_bias - length must be 3')
    }
    // Serialize message field [state_gyro_bias]
    bufferOffset = _arraySerializer.float64(obj.state_gyro_bias, buffer, bufferOffset, 3);
    // Check that the constant length array field [state_acc_bias] has the right length
    if (obj.state_acc_bias.length !== 3) {
      throw new Error('Unable to serialize array field state_acc_bias - length must be 3')
    }
    // Serialize message field [state_acc_bias]
    bufferOffset = _arraySerializer.float64(obj.state_acc_bias, buffer, bufferOffset, 3);
    // Serialize message field [state_scale]
    bufferOffset = _serializer.float64(obj.state_scale, buffer, bufferOffset);
    // Serialize message field [state_yaw_error]
    bufferOffset = _serializer.float64(obj.state_yaw_error, buffer, bufferOffset);
    // Serialize message field [state_pitch_error]
    bufferOffset = _serializer.float64(obj.state_pitch_error, buffer, bufferOffset);
    // Check that the constant length array field [innov_speed] has the right length
    if (obj.innov_speed.length !== 3) {
      throw new Error('Unable to serialize array field innov_speed - length must be 3')
    }
    // Serialize message field [innov_speed]
    bufferOffset = _arraySerializer.float64(obj.innov_speed, buffer, bufferOffset, 3);
    // Check that the constant length array field [innov_rtk_pos] has the right length
    if (obj.innov_rtk_pos.length !== 3) {
      throw new Error('Unable to serialize array field innov_rtk_pos - length must be 3')
    }
    // Serialize message field [innov_rtk_pos]
    bufferOffset = _arraySerializer.float64(obj.innov_rtk_pos, buffer, bufferOffset, 3);
    // Check that the constant length array field [innov_rtk_vel] has the right length
    if (obj.innov_rtk_vel.length !== 3) {
      throw new Error('Unable to serialize array field innov_rtk_vel - length must be 3')
    }
    // Serialize message field [innov_rtk_vel]
    bufferOffset = _arraySerializer.float64(obj.innov_rtk_vel, buffer, bufferOffset, 3);
    // Serialize message field [innov_rtk_hdg]
    bufferOffset = _serializer.float64(obj.innov_rtk_hdg, buffer, bufferOffset);
    // Check that the constant length array field [R_speed] has the right length
    if (obj.R_speed.length !== 3) {
      throw new Error('Unable to serialize array field R_speed - length must be 3')
    }
    // Serialize message field [R_speed]
    bufferOffset = _arraySerializer.float64(obj.R_speed, buffer, bufferOffset, 3);
    // Check that the constant length array field [R_rtk_pos] has the right length
    if (obj.R_rtk_pos.length !== 3) {
      throw new Error('Unable to serialize array field R_rtk_pos - length must be 3')
    }
    // Serialize message field [R_rtk_pos]
    bufferOffset = _arraySerializer.float64(obj.R_rtk_pos, buffer, bufferOffset, 3);
    // Check that the constant length array field [R_rtk_vel] has the right length
    if (obj.R_rtk_vel.length !== 3) {
      throw new Error('Unable to serialize array field R_rtk_vel - length must be 3')
    }
    // Serialize message field [R_rtk_vel]
    bufferOffset = _arraySerializer.float64(obj.R_rtk_vel, buffer, bufferOffset, 3);
    // Serialize message field [R_rtk_hdg]
    bufferOffset = _serializer.float64(obj.R_rtk_hdg, buffer, bufferOffset);
    // Check that the constant length array field [P] has the right length
    if (obj.P.length !== 18) {
      throw new Error('Unable to serialize array field P - length must be 18')
    }
    // Serialize message field [P]
    bufferOffset = _arraySerializer.float64(obj.P, buffer, bufferOffset, 18);
    // Serialize message field [speed_imu_time]
    bufferOffset = _serializer.float64(obj.speed_imu_time, buffer, bufferOffset);
    // Serialize message field [speed_rtk_time]
    bufferOffset = _serializer.float64(obj.speed_rtk_time, buffer, bufferOffset);
    // Serialize message field [delta_imu_time]
    bufferOffset = _serializer.float64(obj.delta_imu_time, buffer, bufferOffset);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EkfStatusMsg
    let len;
    let data = new EkfStatusMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ref]
    data.ref = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [obs]
    data.obs = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [out]
    data.out = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_rpy]
    data.state_rpy = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_vel]
    data.state_vel = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_pos]
    data.state_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_gyro_bias]
    data.state_gyro_bias = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_acc_bias]
    data.state_acc_bias = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [state_scale]
    data.state_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state_yaw_error]
    data.state_yaw_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state_pitch_error]
    data.state_pitch_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [innov_speed]
    data.innov_speed = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [innov_rtk_pos]
    data.innov_rtk_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [innov_rtk_vel]
    data.innov_rtk_vel = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [innov_rtk_hdg]
    data.innov_rtk_hdg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R_speed]
    data.R_speed = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [R_rtk_pos]
    data.R_rtk_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [R_rtk_vel]
    data.R_rtk_vel = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [R_rtk_hdg]
    data.R_rtk_hdg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [P]
    data.P = _arrayDeserializer.float64(buffer, bufferOffset, 18)
    // Deserialize message field [speed_imu_time]
    data.speed_imu_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_rtk_time]
    data.speed_rtk_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_imu_time]
    data.delta_imu_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 553;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/EkfStatusMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5158c32f409803affa7d895a54503ab0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 utime
    
    float64[3] ref
    float64[3] obs
    float64[3] out
    
    float64[3] state_rpy
    float64[3] state_vel
    float64[3] state_pos
    float64[3] state_gyro_bias
    float64[3] state_acc_bias
    float64 state_scale
    float64 state_yaw_error
    float64 state_pitch_error
    
    float64[3] innov_speed
    float64[3] innov_rtk_pos
    float64[3] innov_rtk_vel
    float64 innov_rtk_hdg
    
    float64[3] R_speed
    float64[3] R_rtk_pos
    float64[3] R_rtk_vel
    float64 R_rtk_hdg
    
    float64[18] P
    
    float64 speed_imu_time
    float64 speed_rtk_time
    float64 delta_imu_time
    
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
    const resolved = new EkfStatusMsg(null);
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

    if (msg.ref !== undefined) {
      resolved.ref = msg.ref;
    }
    else {
      resolved.ref = new Array(3).fill(0)
    }

    if (msg.obs !== undefined) {
      resolved.obs = msg.obs;
    }
    else {
      resolved.obs = new Array(3).fill(0)
    }

    if (msg.out !== undefined) {
      resolved.out = msg.out;
    }
    else {
      resolved.out = new Array(3).fill(0)
    }

    if (msg.state_rpy !== undefined) {
      resolved.state_rpy = msg.state_rpy;
    }
    else {
      resolved.state_rpy = new Array(3).fill(0)
    }

    if (msg.state_vel !== undefined) {
      resolved.state_vel = msg.state_vel;
    }
    else {
      resolved.state_vel = new Array(3).fill(0)
    }

    if (msg.state_pos !== undefined) {
      resolved.state_pos = msg.state_pos;
    }
    else {
      resolved.state_pos = new Array(3).fill(0)
    }

    if (msg.state_gyro_bias !== undefined) {
      resolved.state_gyro_bias = msg.state_gyro_bias;
    }
    else {
      resolved.state_gyro_bias = new Array(3).fill(0)
    }

    if (msg.state_acc_bias !== undefined) {
      resolved.state_acc_bias = msg.state_acc_bias;
    }
    else {
      resolved.state_acc_bias = new Array(3).fill(0)
    }

    if (msg.state_scale !== undefined) {
      resolved.state_scale = msg.state_scale;
    }
    else {
      resolved.state_scale = 0.0
    }

    if (msg.state_yaw_error !== undefined) {
      resolved.state_yaw_error = msg.state_yaw_error;
    }
    else {
      resolved.state_yaw_error = 0.0
    }

    if (msg.state_pitch_error !== undefined) {
      resolved.state_pitch_error = msg.state_pitch_error;
    }
    else {
      resolved.state_pitch_error = 0.0
    }

    if (msg.innov_speed !== undefined) {
      resolved.innov_speed = msg.innov_speed;
    }
    else {
      resolved.innov_speed = new Array(3).fill(0)
    }

    if (msg.innov_rtk_pos !== undefined) {
      resolved.innov_rtk_pos = msg.innov_rtk_pos;
    }
    else {
      resolved.innov_rtk_pos = new Array(3).fill(0)
    }

    if (msg.innov_rtk_vel !== undefined) {
      resolved.innov_rtk_vel = msg.innov_rtk_vel;
    }
    else {
      resolved.innov_rtk_vel = new Array(3).fill(0)
    }

    if (msg.innov_rtk_hdg !== undefined) {
      resolved.innov_rtk_hdg = msg.innov_rtk_hdg;
    }
    else {
      resolved.innov_rtk_hdg = 0.0
    }

    if (msg.R_speed !== undefined) {
      resolved.R_speed = msg.R_speed;
    }
    else {
      resolved.R_speed = new Array(3).fill(0)
    }

    if (msg.R_rtk_pos !== undefined) {
      resolved.R_rtk_pos = msg.R_rtk_pos;
    }
    else {
      resolved.R_rtk_pos = new Array(3).fill(0)
    }

    if (msg.R_rtk_vel !== undefined) {
      resolved.R_rtk_vel = msg.R_rtk_vel;
    }
    else {
      resolved.R_rtk_vel = new Array(3).fill(0)
    }

    if (msg.R_rtk_hdg !== undefined) {
      resolved.R_rtk_hdg = msg.R_rtk_hdg;
    }
    else {
      resolved.R_rtk_hdg = 0.0
    }

    if (msg.P !== undefined) {
      resolved.P = msg.P;
    }
    else {
      resolved.P = new Array(18).fill(0)
    }

    if (msg.speed_imu_time !== undefined) {
      resolved.speed_imu_time = msg.speed_imu_time;
    }
    else {
      resolved.speed_imu_time = 0.0
    }

    if (msg.speed_rtk_time !== undefined) {
      resolved.speed_rtk_time = msg.speed_rtk_time;
    }
    else {
      resolved.speed_rtk_time = 0.0
    }

    if (msg.delta_imu_time !== undefined) {
      resolved.delta_imu_time = msg.delta_imu_time;
    }
    else {
      resolved.delta_imu_time = 0.0
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

module.exports = EkfStatusMsg;
