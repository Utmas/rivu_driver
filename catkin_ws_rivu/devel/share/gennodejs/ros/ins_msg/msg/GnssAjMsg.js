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

class GnssAjMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utime = null;
      this.pos_type = null;
      this.meas_enable = null;
      this.GNSS_mask = null;
      this.ant_num = null;
      this.sv_num_tracked = null;
      this.sv_num_used = null;
      this.diff_age = null;
      this.sol_age = null;
      this.ms = null;
      this.longitude = null;
      this.latitude = null;
      this.height = null;
      this.ve = null;
      this.vn = null;
      this.vu = null;
      this.roll = null;
      this.pitch = null;
      this.heading = null;
      this.std_longitude = null;
      this.std_latitude = null;
      this.std_height = null;
      this.std_ve = null;
      this.std_vn = null;
      this.std_vu = null;
      this.std_roll = null;
      this.std_pitch = null;
      this.std_heading = null;
      this.undulation = null;
      this.baseline_length = null;
      this.chan_valid = null;
      this.chan_svid = null;
      this.chan_plllock = null;
      this.chan_cn0 = null;
      this.chan_pseudoRange = null;
      this.chan_carrPhase = null;
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
      if (initObj.hasOwnProperty('pos_type')) {
        this.pos_type = initObj.pos_type
      }
      else {
        this.pos_type = 0;
      }
      if (initObj.hasOwnProperty('meas_enable')) {
        this.meas_enable = initObj.meas_enable
      }
      else {
        this.meas_enable = 0;
      }
      if (initObj.hasOwnProperty('GNSS_mask')) {
        this.GNSS_mask = initObj.GNSS_mask
      }
      else {
        this.GNSS_mask = 0;
      }
      if (initObj.hasOwnProperty('ant_num')) {
        this.ant_num = initObj.ant_num
      }
      else {
        this.ant_num = 0;
      }
      if (initObj.hasOwnProperty('sv_num_tracked')) {
        this.sv_num_tracked = initObj.sv_num_tracked
      }
      else {
        this.sv_num_tracked = 0;
      }
      if (initObj.hasOwnProperty('sv_num_used')) {
        this.sv_num_used = initObj.sv_num_used
      }
      else {
        this.sv_num_used = 0;
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0;
      }
      if (initObj.hasOwnProperty('sol_age')) {
        this.sol_age = initObj.sol_age
      }
      else {
        this.sol_age = 0;
      }
      if (initObj.hasOwnProperty('ms')) {
        this.ms = initObj.ms
      }
      else {
        this.ms = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('ve')) {
        this.ve = initObj.ve
      }
      else {
        this.ve = 0.0;
      }
      if (initObj.hasOwnProperty('vn')) {
        this.vn = initObj.vn
      }
      else {
        this.vn = 0.0;
      }
      if (initObj.hasOwnProperty('vu')) {
        this.vu = initObj.vu
      }
      else {
        this.vu = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('std_longitude')) {
        this.std_longitude = initObj.std_longitude
      }
      else {
        this.std_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('std_latitude')) {
        this.std_latitude = initObj.std_latitude
      }
      else {
        this.std_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('std_height')) {
        this.std_height = initObj.std_height
      }
      else {
        this.std_height = 0.0;
      }
      if (initObj.hasOwnProperty('std_ve')) {
        this.std_ve = initObj.std_ve
      }
      else {
        this.std_ve = 0.0;
      }
      if (initObj.hasOwnProperty('std_vn')) {
        this.std_vn = initObj.std_vn
      }
      else {
        this.std_vn = 0.0;
      }
      if (initObj.hasOwnProperty('std_vu')) {
        this.std_vu = initObj.std_vu
      }
      else {
        this.std_vu = 0.0;
      }
      if (initObj.hasOwnProperty('std_roll')) {
        this.std_roll = initObj.std_roll
      }
      else {
        this.std_roll = 0.0;
      }
      if (initObj.hasOwnProperty('std_pitch')) {
        this.std_pitch = initObj.std_pitch
      }
      else {
        this.std_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('std_heading')) {
        this.std_heading = initObj.std_heading
      }
      else {
        this.std_heading = 0.0;
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('baseline_length')) {
        this.baseline_length = initObj.baseline_length
      }
      else {
        this.baseline_length = 0.0;
      }
      if (initObj.hasOwnProperty('chan_valid')) {
        this.chan_valid = initObj.chan_valid
      }
      else {
        this.chan_valid = new Array(48).fill(0);
      }
      if (initObj.hasOwnProperty('chan_svid')) {
        this.chan_svid = initObj.chan_svid
      }
      else {
        this.chan_svid = new Array(48).fill(0);
      }
      if (initObj.hasOwnProperty('chan_plllock')) {
        this.chan_plllock = initObj.chan_plllock
      }
      else {
        this.chan_plllock = new Array(48).fill(0);
      }
      if (initObj.hasOwnProperty('chan_cn0')) {
        this.chan_cn0 = initObj.chan_cn0
      }
      else {
        this.chan_cn0 = new Array(48).fill(0);
      }
      if (initObj.hasOwnProperty('chan_pseudoRange')) {
        this.chan_pseudoRange = initObj.chan_pseudoRange
      }
      else {
        this.chan_pseudoRange = new Array(48).fill(0);
      }
      if (initObj.hasOwnProperty('chan_carrPhase')) {
        this.chan_carrPhase = initObj.chan_carrPhase
      }
      else {
        this.chan_carrPhase = new Array(48).fill(0);
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
    // Serializes a message object of type GnssAjMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utime]
    bufferOffset = _serializer.int64(obj.utime, buffer, bufferOffset);
    // Serialize message field [pos_type]
    bufferOffset = _serializer.uint8(obj.pos_type, buffer, bufferOffset);
    // Serialize message field [meas_enable]
    bufferOffset = _serializer.uint8(obj.meas_enable, buffer, bufferOffset);
    // Serialize message field [GNSS_mask]
    bufferOffset = _serializer.uint8(obj.GNSS_mask, buffer, bufferOffset);
    // Serialize message field [ant_num]
    bufferOffset = _serializer.uint8(obj.ant_num, buffer, bufferOffset);
    // Serialize message field [sv_num_tracked]
    bufferOffset = _serializer.uint8(obj.sv_num_tracked, buffer, bufferOffset);
    // Serialize message field [sv_num_used]
    bufferOffset = _serializer.uint8(obj.sv_num_used, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.uint8(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [sol_age]
    bufferOffset = _serializer.uint8(obj.sol_age, buffer, bufferOffset);
    // Serialize message field [ms]
    bufferOffset = _serializer.float64(obj.ms, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [ve]
    bufferOffset = _serializer.float64(obj.ve, buffer, bufferOffset);
    // Serialize message field [vn]
    bufferOffset = _serializer.float64(obj.vn, buffer, bufferOffset);
    // Serialize message field [vu]
    bufferOffset = _serializer.float64(obj.vu, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [std_longitude]
    bufferOffset = _serializer.float64(obj.std_longitude, buffer, bufferOffset);
    // Serialize message field [std_latitude]
    bufferOffset = _serializer.float64(obj.std_latitude, buffer, bufferOffset);
    // Serialize message field [std_height]
    bufferOffset = _serializer.float64(obj.std_height, buffer, bufferOffset);
    // Serialize message field [std_ve]
    bufferOffset = _serializer.float64(obj.std_ve, buffer, bufferOffset);
    // Serialize message field [std_vn]
    bufferOffset = _serializer.float64(obj.std_vn, buffer, bufferOffset);
    // Serialize message field [std_vu]
    bufferOffset = _serializer.float64(obj.std_vu, buffer, bufferOffset);
    // Serialize message field [std_roll]
    bufferOffset = _serializer.float64(obj.std_roll, buffer, bufferOffset);
    // Serialize message field [std_pitch]
    bufferOffset = _serializer.float64(obj.std_pitch, buffer, bufferOffset);
    // Serialize message field [std_heading]
    bufferOffset = _serializer.float64(obj.std_heading, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float64(obj.undulation, buffer, bufferOffset);
    // Serialize message field [baseline_length]
    bufferOffset = _serializer.float64(obj.baseline_length, buffer, bufferOffset);
    // Check that the constant length array field [chan_valid] has the right length
    if (obj.chan_valid.length !== 48) {
      throw new Error('Unable to serialize array field chan_valid - length must be 48')
    }
    // Serialize message field [chan_valid]
    bufferOffset = _arraySerializer.uint8(obj.chan_valid, buffer, bufferOffset, 48);
    // Check that the constant length array field [chan_svid] has the right length
    if (obj.chan_svid.length !== 48) {
      throw new Error('Unable to serialize array field chan_svid - length must be 48')
    }
    // Serialize message field [chan_svid]
    bufferOffset = _arraySerializer.uint8(obj.chan_svid, buffer, bufferOffset, 48);
    // Check that the constant length array field [chan_plllock] has the right length
    if (obj.chan_plllock.length !== 48) {
      throw new Error('Unable to serialize array field chan_plllock - length must be 48')
    }
    // Serialize message field [chan_plllock]
    bufferOffset = _arraySerializer.float32(obj.chan_plllock, buffer, bufferOffset, 48);
    // Check that the constant length array field [chan_cn0] has the right length
    if (obj.chan_cn0.length !== 48) {
      throw new Error('Unable to serialize array field chan_cn0 - length must be 48')
    }
    // Serialize message field [chan_cn0]
    bufferOffset = _arraySerializer.float32(obj.chan_cn0, buffer, bufferOffset, 48);
    // Check that the constant length array field [chan_pseudoRange] has the right length
    if (obj.chan_pseudoRange.length !== 48) {
      throw new Error('Unable to serialize array field chan_pseudoRange - length must be 48')
    }
    // Serialize message field [chan_pseudoRange]
    bufferOffset = _arraySerializer.float64(obj.chan_pseudoRange, buffer, bufferOffset, 48);
    // Check that the constant length array field [chan_carrPhase] has the right length
    if (obj.chan_carrPhase.length !== 48) {
      throw new Error('Unable to serialize array field chan_carrPhase - length must be 48')
    }
    // Serialize message field [chan_carrPhase]
    bufferOffset = _arraySerializer.float64(obj.chan_carrPhase, buffer, bufferOffset, 48);
    // Serialize message field [msg_cnt]
    bufferOffset = _serializer.uint8(obj.msg_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssAjMsg
    let len;
    let data = new GnssAjMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utime]
    data.utime = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pos_type]
    data.pos_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meas_enable]
    data.meas_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [GNSS_mask]
    data.GNSS_mask = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ant_num]
    data.ant_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sv_num_tracked]
    data.sv_num_tracked = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sv_num_used]
    data.sv_num_used = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sol_age]
    data.sol_age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ms]
    data.ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ve]
    data.ve = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vn]
    data.vn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vu]
    data.vu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_longitude]
    data.std_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_latitude]
    data.std_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_height]
    data.std_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_ve]
    data.std_ve = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vn]
    data.std_vn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vu]
    data.std_vu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_roll]
    data.std_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pitch]
    data.std_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_heading]
    data.std_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [baseline_length]
    data.baseline_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [chan_valid]
    data.chan_valid = _arrayDeserializer.uint8(buffer, bufferOffset, 48)
    // Deserialize message field [chan_svid]
    data.chan_svid = _arrayDeserializer.uint8(buffer, bufferOffset, 48)
    // Deserialize message field [chan_plllock]
    data.chan_plllock = _arrayDeserializer.float32(buffer, bufferOffset, 48)
    // Deserialize message field [chan_cn0]
    data.chan_cn0 = _arrayDeserializer.float32(buffer, bufferOffset, 48)
    // Deserialize message field [chan_pseudoRange]
    data.chan_pseudoRange = _arrayDeserializer.float64(buffer, bufferOffset, 48)
    // Deserialize message field [chan_carrPhase]
    data.chan_carrPhase = _arrayDeserializer.float64(buffer, bufferOffset, 48)
    // Deserialize message field [msg_cnt]
    data.msg_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1433;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ins_msg/GnssAjMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af6424f77909d0493d683711d8a26092';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 utime
    
    
    uint8 pos_type 			# 0:NONE, 1:SP_2D, 2:SP_3D, 3:DGPS, 4:RTK_float, 5:RTK_fix
    uint8 meas_enable 		# bit0:pos, bit1:vel, bit2:roll, bit3:pitch, bit4:heading, bit5~7:unused
    uint8 GNSS_mask 		# 0~8 bit for GPS, GLONASS, BDS, Galileo, QZSS, RNSS, SBAS, PSAT
    uint8 ant_num
    uint8 sv_num_tracked
    uint8 sv_num_used
    uint8 diff_age
    uint8 sol_age
    
    float64 ms          	# Milliseconds from the beginning of the GPS reference week
    float64 longitude
    float64 latitude
    float64 height
    float64 ve
    float64 vn
    float64 vu
    float64 roll
    float64 pitch
    float64 heading
    
    float64 std_longitude
    float64 std_latitude
    float64 std_height
    float64 std_ve
    float64 std_vn
    float64 std_vu
    float64 std_roll
    float64 std_pitch
    float64 std_heading
    
    float64 undulation
    float64 baseline_length
    
    uint8[48] chan_valid         # chan valid
    uint8[48] chan_svid          # chan svid
    float32[48] chan_plllock         # chan plllock
    float32[48] chan_cn0             # chan cn0
    float64[48] chan_pseudoRange    # chan pseudoRange
    float64[48] chan_carrPhase      # chan carrPhase
    
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
    const resolved = new GnssAjMsg(null);
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

    if (msg.pos_type !== undefined) {
      resolved.pos_type = msg.pos_type;
    }
    else {
      resolved.pos_type = 0
    }

    if (msg.meas_enable !== undefined) {
      resolved.meas_enable = msg.meas_enable;
    }
    else {
      resolved.meas_enable = 0
    }

    if (msg.GNSS_mask !== undefined) {
      resolved.GNSS_mask = msg.GNSS_mask;
    }
    else {
      resolved.GNSS_mask = 0
    }

    if (msg.ant_num !== undefined) {
      resolved.ant_num = msg.ant_num;
    }
    else {
      resolved.ant_num = 0
    }

    if (msg.sv_num_tracked !== undefined) {
      resolved.sv_num_tracked = msg.sv_num_tracked;
    }
    else {
      resolved.sv_num_tracked = 0
    }

    if (msg.sv_num_used !== undefined) {
      resolved.sv_num_used = msg.sv_num_used;
    }
    else {
      resolved.sv_num_used = 0
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0
    }

    if (msg.sol_age !== undefined) {
      resolved.sol_age = msg.sol_age;
    }
    else {
      resolved.sol_age = 0
    }

    if (msg.ms !== undefined) {
      resolved.ms = msg.ms;
    }
    else {
      resolved.ms = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.ve !== undefined) {
      resolved.ve = msg.ve;
    }
    else {
      resolved.ve = 0.0
    }

    if (msg.vn !== undefined) {
      resolved.vn = msg.vn;
    }
    else {
      resolved.vn = 0.0
    }

    if (msg.vu !== undefined) {
      resolved.vu = msg.vu;
    }
    else {
      resolved.vu = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.std_longitude !== undefined) {
      resolved.std_longitude = msg.std_longitude;
    }
    else {
      resolved.std_longitude = 0.0
    }

    if (msg.std_latitude !== undefined) {
      resolved.std_latitude = msg.std_latitude;
    }
    else {
      resolved.std_latitude = 0.0
    }

    if (msg.std_height !== undefined) {
      resolved.std_height = msg.std_height;
    }
    else {
      resolved.std_height = 0.0
    }

    if (msg.std_ve !== undefined) {
      resolved.std_ve = msg.std_ve;
    }
    else {
      resolved.std_ve = 0.0
    }

    if (msg.std_vn !== undefined) {
      resolved.std_vn = msg.std_vn;
    }
    else {
      resolved.std_vn = 0.0
    }

    if (msg.std_vu !== undefined) {
      resolved.std_vu = msg.std_vu;
    }
    else {
      resolved.std_vu = 0.0
    }

    if (msg.std_roll !== undefined) {
      resolved.std_roll = msg.std_roll;
    }
    else {
      resolved.std_roll = 0.0
    }

    if (msg.std_pitch !== undefined) {
      resolved.std_pitch = msg.std_pitch;
    }
    else {
      resolved.std_pitch = 0.0
    }

    if (msg.std_heading !== undefined) {
      resolved.std_heading = msg.std_heading;
    }
    else {
      resolved.std_heading = 0.0
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.baseline_length !== undefined) {
      resolved.baseline_length = msg.baseline_length;
    }
    else {
      resolved.baseline_length = 0.0
    }

    if (msg.chan_valid !== undefined) {
      resolved.chan_valid = msg.chan_valid;
    }
    else {
      resolved.chan_valid = new Array(48).fill(0)
    }

    if (msg.chan_svid !== undefined) {
      resolved.chan_svid = msg.chan_svid;
    }
    else {
      resolved.chan_svid = new Array(48).fill(0)
    }

    if (msg.chan_plllock !== undefined) {
      resolved.chan_plllock = msg.chan_plllock;
    }
    else {
      resolved.chan_plllock = new Array(48).fill(0)
    }

    if (msg.chan_cn0 !== undefined) {
      resolved.chan_cn0 = msg.chan_cn0;
    }
    else {
      resolved.chan_cn0 = new Array(48).fill(0)
    }

    if (msg.chan_pseudoRange !== undefined) {
      resolved.chan_pseudoRange = msg.chan_pseudoRange;
    }
    else {
      resolved.chan_pseudoRange = new Array(48).fill(0)
    }

    if (msg.chan_carrPhase !== undefined) {
      resolved.chan_carrPhase = msg.chan_carrPhase;
    }
    else {
      resolved.chan_carrPhase = new Array(48).fill(0)
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

module.exports = GnssAjMsg;
