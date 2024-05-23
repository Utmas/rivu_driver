;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::GnssMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'GnssMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::GNSSMSG")
  (make-package "INS_MSG::GNSSMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::GnssMsg
  :super ros::object
  :slots (_header _utime _pos_type _meas_enable _GNSS_mask _ant_num _sv_num_tracked _sv_num_used _diff_age _sol_age _ms _longitude _latitude _height _ve _vn _vu _roll _pitch _heading _std_longitude _std_latitude _std_height _std_ve _std_vn _std_vu _std_roll _std_pitch _std_heading _undulation _baseline_length _distance_travelled _msg_cnt ))

(defmethod ins_msg::GnssMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:pos_type __pos_type) 0)
    ((:meas_enable __meas_enable) 0)
    ((:GNSS_mask __GNSS_mask) 0)
    ((:ant_num __ant_num) 0)
    ((:sv_num_tracked __sv_num_tracked) 0)
    ((:sv_num_used __sv_num_used) 0)
    ((:diff_age __diff_age) 0)
    ((:sol_age __sol_age) 0)
    ((:ms __ms) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:height __height) 0.0)
    ((:ve __ve) 0.0)
    ((:vn __vn) 0.0)
    ((:vu __vu) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:heading __heading) 0.0)
    ((:std_longitude __std_longitude) 0.0)
    ((:std_latitude __std_latitude) 0.0)
    ((:std_height __std_height) 0.0)
    ((:std_ve __std_ve) 0.0)
    ((:std_vn __std_vn) 0.0)
    ((:std_vu __std_vu) 0.0)
    ((:std_roll __std_roll) 0.0)
    ((:std_pitch __std_pitch) 0.0)
    ((:std_heading __std_heading) 0.0)
    ((:undulation __undulation) 0.0)
    ((:baseline_length __baseline_length) 0.0)
    ((:distance_travelled __distance_travelled) 0.0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _pos_type (round __pos_type))
   (setq _meas_enable (round __meas_enable))
   (setq _GNSS_mask (round __GNSS_mask))
   (setq _ant_num (round __ant_num))
   (setq _sv_num_tracked (round __sv_num_tracked))
   (setq _sv_num_used (round __sv_num_used))
   (setq _diff_age (round __diff_age))
   (setq _sol_age (round __sol_age))
   (setq _ms (float __ms))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _height (float __height))
   (setq _ve (float __ve))
   (setq _vn (float __vn))
   (setq _vu (float __vu))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _heading (float __heading))
   (setq _std_longitude (float __std_longitude))
   (setq _std_latitude (float __std_latitude))
   (setq _std_height (float __std_height))
   (setq _std_ve (float __std_ve))
   (setq _std_vn (float __std_vn))
   (setq _std_vu (float __std_vu))
   (setq _std_roll (float __std_roll))
   (setq _std_pitch (float __std_pitch))
   (setq _std_heading (float __std_heading))
   (setq _undulation (float __undulation))
   (setq _baseline_length (float __baseline_length))
   (setq _distance_travelled (float __distance_travelled))
   (setq _msg_cnt (round __msg_cnt))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:utime
   (&optional __utime)
   (if __utime (setq _utime __utime)) _utime)
  (:pos_type
   (&optional __pos_type)
   (if __pos_type (setq _pos_type __pos_type)) _pos_type)
  (:meas_enable
   (&optional __meas_enable)
   (if __meas_enable (setq _meas_enable __meas_enable)) _meas_enable)
  (:GNSS_mask
   (&optional __GNSS_mask)
   (if __GNSS_mask (setq _GNSS_mask __GNSS_mask)) _GNSS_mask)
  (:ant_num
   (&optional __ant_num)
   (if __ant_num (setq _ant_num __ant_num)) _ant_num)
  (:sv_num_tracked
   (&optional __sv_num_tracked)
   (if __sv_num_tracked (setq _sv_num_tracked __sv_num_tracked)) _sv_num_tracked)
  (:sv_num_used
   (&optional __sv_num_used)
   (if __sv_num_used (setq _sv_num_used __sv_num_used)) _sv_num_used)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:sol_age
   (&optional __sol_age)
   (if __sol_age (setq _sol_age __sol_age)) _sol_age)
  (:ms
   (&optional __ms)
   (if __ms (setq _ms __ms)) _ms)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:ve
   (&optional __ve)
   (if __ve (setq _ve __ve)) _ve)
  (:vn
   (&optional __vn)
   (if __vn (setq _vn __vn)) _vn)
  (:vu
   (&optional __vu)
   (if __vu (setq _vu __vu)) _vu)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:std_longitude
   (&optional __std_longitude)
   (if __std_longitude (setq _std_longitude __std_longitude)) _std_longitude)
  (:std_latitude
   (&optional __std_latitude)
   (if __std_latitude (setq _std_latitude __std_latitude)) _std_latitude)
  (:std_height
   (&optional __std_height)
   (if __std_height (setq _std_height __std_height)) _std_height)
  (:std_ve
   (&optional __std_ve)
   (if __std_ve (setq _std_ve __std_ve)) _std_ve)
  (:std_vn
   (&optional __std_vn)
   (if __std_vn (setq _std_vn __std_vn)) _std_vn)
  (:std_vu
   (&optional __std_vu)
   (if __std_vu (setq _std_vu __std_vu)) _std_vu)
  (:std_roll
   (&optional __std_roll)
   (if __std_roll (setq _std_roll __std_roll)) _std_roll)
  (:std_pitch
   (&optional __std_pitch)
   (if __std_pitch (setq _std_pitch __std_pitch)) _std_pitch)
  (:std_heading
   (&optional __std_heading)
   (if __std_heading (setq _std_heading __std_heading)) _std_heading)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:baseline_length
   (&optional __baseline_length)
   (if __baseline_length (setq _baseline_length __baseline_length)) _baseline_length)
  (:distance_travelled
   (&optional __distance_travelled)
   (if __distance_travelled (setq _distance_travelled __distance_travelled)) _distance_travelled)
  (:msg_cnt
   (&optional __msg_cnt)
   (if __msg_cnt (setq _msg_cnt __msg_cnt)) _msg_cnt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _utime
    8
    ;; uint8 _pos_type
    1
    ;; uint8 _meas_enable
    1
    ;; uint8 _GNSS_mask
    1
    ;; uint8 _ant_num
    1
    ;; uint8 _sv_num_tracked
    1
    ;; uint8 _sv_num_used
    1
    ;; uint8 _diff_age
    1
    ;; uint8 _sol_age
    1
    ;; float64 _ms
    8
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _height
    8
    ;; float64 _ve
    8
    ;; float64 _vn
    8
    ;; float64 _vu
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _heading
    8
    ;; float64 _std_longitude
    8
    ;; float64 _std_latitude
    8
    ;; float64 _std_height
    8
    ;; float64 _std_ve
    8
    ;; float64 _std_vn
    8
    ;; float64 _std_vu
    8
    ;; float64 _std_roll
    8
    ;; float64 _std_pitch
    8
    ;; float64 _std_heading
    8
    ;; float64 _undulation
    8
    ;; float64 _baseline_length
    8
    ;; float64 _distance_travelled
    8
    ;; uint8 _msg_cnt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _utime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _utime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _utime) (= (length (_utime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_utime . bv) 0) 0) s)
              (write-long (ash (elt (_utime . bv) 1) -1) s))
             ((and (class _utime) (= (length (_utime . bv)) 1)) ;; big1
              (write-long (elt (_utime . bv) 0) s)
              (write-long (if (>= _utime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _utime s)(write-long (if (>= _utime 0) 0 #xffffffff) s)))
     ;; uint8 _pos_type
       (write-byte _pos_type s)
     ;; uint8 _meas_enable
       (write-byte _meas_enable s)
     ;; uint8 _GNSS_mask
       (write-byte _GNSS_mask s)
     ;; uint8 _ant_num
       (write-byte _ant_num s)
     ;; uint8 _sv_num_tracked
       (write-byte _sv_num_tracked s)
     ;; uint8 _sv_num_used
       (write-byte _sv_num_used s)
     ;; uint8 _diff_age
       (write-byte _diff_age s)
     ;; uint8 _sol_age
       (write-byte _sol_age s)
     ;; float64 _ms
       (sys::poke _ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ve
       (sys::poke _ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vn
       (sys::poke _vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vu
       (sys::poke _vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_longitude
       (sys::poke _std_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_latitude
       (sys::poke _std_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_height
       (sys::poke _std_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_ve
       (sys::poke _std_ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vn
       (sys::poke _std_vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vu
       (sys::poke _std_vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_roll
       (sys::poke _std_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pitch
       (sys::poke _std_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_heading
       (sys::poke _std_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _baseline_length
       (sys::poke _baseline_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_travelled
       (sys::poke _distance_travelled (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _msg_cnt
       (write-byte _msg_cnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _utime
#+(or :alpha :irix6 :x86_64)
      (setf _utime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _utime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _pos_type
     (setq _pos_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _meas_enable
     (setq _meas_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _GNSS_mask
     (setq _GNSS_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ant_num
     (setq _ant_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sv_num_tracked
     (setq _sv_num_tracked (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sv_num_used
     (setq _sv_num_used (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _diff_age
     (setq _diff_age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sol_age
     (setq _sol_age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _ms
     (setq _ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ve
     (setq _ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vn
     (setq _vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vu
     (setq _vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_longitude
     (setq _std_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_latitude
     (setq _std_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_height
     (setq _std_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_ve
     (setq _std_ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vn
     (setq _std_vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vu
     (setq _std_vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_roll
     (setq _std_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pitch
     (setq _std_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_heading
     (setq _std_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _undulation
     (setq _undulation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _baseline_length
     (setq _baseline_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_travelled
     (setq _distance_travelled (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::GnssMsg :md5sum-) "5e909199f164c7ad5309f93f3a377827")
(setf (get ins_msg::GnssMsg :datatype-) "ins_msg/GnssMsg")
(setf (get ins_msg::GnssMsg :definition-)
      "Header header

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

float64 distance_travelled

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

")



(provide :ins_msg/GnssMsg "5e909199f164c7ad5309f93f3a377827")


