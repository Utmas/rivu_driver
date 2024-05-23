;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::EkfStatusMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'EkfStatusMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::EKFSTATUSMSG")
  (make-package "INS_MSG::EKFSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude EkfStatusMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::EkfStatusMsg
  :super ros::object
  :slots (_header _utime _ref _obs _out _state_rpy _state_vel _state_pos _state_gyro_bias _state_acc_bias _state_scale _state_yaw_error _state_pitch_error _innov_speed _innov_rtk_pos _innov_rtk_vel _innov_rtk_hdg _R_speed _R_rtk_pos _R_rtk_vel _R_rtk_hdg _P _speed_imu_time _speed_rtk_time _delta_imu_time _msg_cnt ))

(defmethod ins_msg::EkfStatusMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:ref __ref) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:obs __obs) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:out __out) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_rpy __state_rpy) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_vel __state_vel) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_pos __state_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_gyro_bias __state_gyro_bias) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_acc_bias __state_acc_bias) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:state_scale __state_scale) 0.0)
    ((:state_yaw_error __state_yaw_error) 0.0)
    ((:state_pitch_error __state_pitch_error) 0.0)
    ((:innov_speed __innov_speed) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:innov_rtk_pos __innov_rtk_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:innov_rtk_vel __innov_rtk_vel) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:innov_rtk_hdg __innov_rtk_hdg) 0.0)
    ((:R_speed __R_speed) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:R_rtk_pos __R_rtk_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:R_rtk_vel __R_rtk_vel) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:R_rtk_hdg __R_rtk_hdg) 0.0)
    ((:P __P) (make-array 18 :initial-element 0.0 :element-type :float))
    ((:speed_imu_time __speed_imu_time) 0.0)
    ((:speed_rtk_time __speed_rtk_time) 0.0)
    ((:delta_imu_time __delta_imu_time) 0.0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _ref __ref)
   (setq _obs __obs)
   (setq _out __out)
   (setq _state_rpy __state_rpy)
   (setq _state_vel __state_vel)
   (setq _state_pos __state_pos)
   (setq _state_gyro_bias __state_gyro_bias)
   (setq _state_acc_bias __state_acc_bias)
   (setq _state_scale (float __state_scale))
   (setq _state_yaw_error (float __state_yaw_error))
   (setq _state_pitch_error (float __state_pitch_error))
   (setq _innov_speed __innov_speed)
   (setq _innov_rtk_pos __innov_rtk_pos)
   (setq _innov_rtk_vel __innov_rtk_vel)
   (setq _innov_rtk_hdg (float __innov_rtk_hdg))
   (setq _R_speed __R_speed)
   (setq _R_rtk_pos __R_rtk_pos)
   (setq _R_rtk_vel __R_rtk_vel)
   (setq _R_rtk_hdg (float __R_rtk_hdg))
   (setq _P __P)
   (setq _speed_imu_time (float __speed_imu_time))
   (setq _speed_rtk_time (float __speed_rtk_time))
   (setq _delta_imu_time (float __delta_imu_time))
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
  (:ref
   (&optional __ref)
   (if __ref (setq _ref __ref)) _ref)
  (:obs
   (&optional __obs)
   (if __obs (setq _obs __obs)) _obs)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:state_rpy
   (&optional __state_rpy)
   (if __state_rpy (setq _state_rpy __state_rpy)) _state_rpy)
  (:state_vel
   (&optional __state_vel)
   (if __state_vel (setq _state_vel __state_vel)) _state_vel)
  (:state_pos
   (&optional __state_pos)
   (if __state_pos (setq _state_pos __state_pos)) _state_pos)
  (:state_gyro_bias
   (&optional __state_gyro_bias)
   (if __state_gyro_bias (setq _state_gyro_bias __state_gyro_bias)) _state_gyro_bias)
  (:state_acc_bias
   (&optional __state_acc_bias)
   (if __state_acc_bias (setq _state_acc_bias __state_acc_bias)) _state_acc_bias)
  (:state_scale
   (&optional __state_scale)
   (if __state_scale (setq _state_scale __state_scale)) _state_scale)
  (:state_yaw_error
   (&optional __state_yaw_error)
   (if __state_yaw_error (setq _state_yaw_error __state_yaw_error)) _state_yaw_error)
  (:state_pitch_error
   (&optional __state_pitch_error)
   (if __state_pitch_error (setq _state_pitch_error __state_pitch_error)) _state_pitch_error)
  (:innov_speed
   (&optional __innov_speed)
   (if __innov_speed (setq _innov_speed __innov_speed)) _innov_speed)
  (:innov_rtk_pos
   (&optional __innov_rtk_pos)
   (if __innov_rtk_pos (setq _innov_rtk_pos __innov_rtk_pos)) _innov_rtk_pos)
  (:innov_rtk_vel
   (&optional __innov_rtk_vel)
   (if __innov_rtk_vel (setq _innov_rtk_vel __innov_rtk_vel)) _innov_rtk_vel)
  (:innov_rtk_hdg
   (&optional __innov_rtk_hdg)
   (if __innov_rtk_hdg (setq _innov_rtk_hdg __innov_rtk_hdg)) _innov_rtk_hdg)
  (:R_speed
   (&optional __R_speed)
   (if __R_speed (setq _R_speed __R_speed)) _R_speed)
  (:R_rtk_pos
   (&optional __R_rtk_pos)
   (if __R_rtk_pos (setq _R_rtk_pos __R_rtk_pos)) _R_rtk_pos)
  (:R_rtk_vel
   (&optional __R_rtk_vel)
   (if __R_rtk_vel (setq _R_rtk_vel __R_rtk_vel)) _R_rtk_vel)
  (:R_rtk_hdg
   (&optional __R_rtk_hdg)
   (if __R_rtk_hdg (setq _R_rtk_hdg __R_rtk_hdg)) _R_rtk_hdg)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:speed_imu_time
   (&optional __speed_imu_time)
   (if __speed_imu_time (setq _speed_imu_time __speed_imu_time)) _speed_imu_time)
  (:speed_rtk_time
   (&optional __speed_rtk_time)
   (if __speed_rtk_time (setq _speed_rtk_time __speed_rtk_time)) _speed_rtk_time)
  (:delta_imu_time
   (&optional __delta_imu_time)
   (if __delta_imu_time (setq _delta_imu_time __delta_imu_time)) _delta_imu_time)
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
    ;; float64[3] _ref
    (* 8    3)
    ;; float64[3] _obs
    (* 8    3)
    ;; float64[3] _out
    (* 8    3)
    ;; float64[3] _state_rpy
    (* 8    3)
    ;; float64[3] _state_vel
    (* 8    3)
    ;; float64[3] _state_pos
    (* 8    3)
    ;; float64[3] _state_gyro_bias
    (* 8    3)
    ;; float64[3] _state_acc_bias
    (* 8    3)
    ;; float64 _state_scale
    8
    ;; float64 _state_yaw_error
    8
    ;; float64 _state_pitch_error
    8
    ;; float64[3] _innov_speed
    (* 8    3)
    ;; float64[3] _innov_rtk_pos
    (* 8    3)
    ;; float64[3] _innov_rtk_vel
    (* 8    3)
    ;; float64 _innov_rtk_hdg
    8
    ;; float64[3] _R_speed
    (* 8    3)
    ;; float64[3] _R_rtk_pos
    (* 8    3)
    ;; float64[3] _R_rtk_vel
    (* 8    3)
    ;; float64 _R_rtk_hdg
    8
    ;; float64[18] _P
    (* 8    18)
    ;; float64 _speed_imu_time
    8
    ;; float64 _speed_rtk_time
    8
    ;; float64 _delta_imu_time
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
     ;; float64[3] _ref
     (dotimes (i 3)
       (sys::poke (elt _ref i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _obs
     (dotimes (i 3)
       (sys::poke (elt _obs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _out
     (dotimes (i 3)
       (sys::poke (elt _out i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _state_rpy
     (dotimes (i 3)
       (sys::poke (elt _state_rpy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _state_vel
     (dotimes (i 3)
       (sys::poke (elt _state_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _state_pos
     (dotimes (i 3)
       (sys::poke (elt _state_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _state_gyro_bias
     (dotimes (i 3)
       (sys::poke (elt _state_gyro_bias i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _state_acc_bias
     (dotimes (i 3)
       (sys::poke (elt _state_acc_bias i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _state_scale
       (sys::poke _state_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _state_yaw_error
       (sys::poke _state_yaw_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _state_pitch_error
       (sys::poke _state_pitch_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _innov_speed
     (dotimes (i 3)
       (sys::poke (elt _innov_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _innov_rtk_pos
     (dotimes (i 3)
       (sys::poke (elt _innov_rtk_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _innov_rtk_vel
     (dotimes (i 3)
       (sys::poke (elt _innov_rtk_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _innov_rtk_hdg
       (sys::poke _innov_rtk_hdg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _R_speed
     (dotimes (i 3)
       (sys::poke (elt _R_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _R_rtk_pos
     (dotimes (i 3)
       (sys::poke (elt _R_rtk_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _R_rtk_vel
     (dotimes (i 3)
       (sys::poke (elt _R_rtk_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _R_rtk_hdg
       (sys::poke _R_rtk_hdg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[18] _P
     (dotimes (i 18)
       (sys::poke (elt _P i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _speed_imu_time
       (sys::poke _speed_imu_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_rtk_time
       (sys::poke _speed_rtk_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_imu_time
       (sys::poke _delta_imu_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[3] _ref
   (dotimes (i (length _ref))
     (setf (elt _ref i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _obs
   (dotimes (i (length _obs))
     (setf (elt _obs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _out
   (dotimes (i (length _out))
     (setf (elt _out i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _state_rpy
   (dotimes (i (length _state_rpy))
     (setf (elt _state_rpy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _state_vel
   (dotimes (i (length _state_vel))
     (setf (elt _state_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _state_pos
   (dotimes (i (length _state_pos))
     (setf (elt _state_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _state_gyro_bias
   (dotimes (i (length _state_gyro_bias))
     (setf (elt _state_gyro_bias i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _state_acc_bias
   (dotimes (i (length _state_acc_bias))
     (setf (elt _state_acc_bias i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _state_scale
     (setq _state_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _state_yaw_error
     (setq _state_yaw_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _state_pitch_error
     (setq _state_pitch_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _innov_speed
   (dotimes (i (length _innov_speed))
     (setf (elt _innov_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _innov_rtk_pos
   (dotimes (i (length _innov_rtk_pos))
     (setf (elt _innov_rtk_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _innov_rtk_vel
   (dotimes (i (length _innov_rtk_vel))
     (setf (elt _innov_rtk_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _innov_rtk_hdg
     (setq _innov_rtk_hdg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _R_speed
   (dotimes (i (length _R_speed))
     (setf (elt _R_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _R_rtk_pos
   (dotimes (i (length _R_rtk_pos))
     (setf (elt _R_rtk_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _R_rtk_vel
   (dotimes (i (length _R_rtk_vel))
     (setf (elt _R_rtk_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _R_rtk_hdg
     (setq _R_rtk_hdg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[18] _P
   (dotimes (i (length _P))
     (setf (elt _P i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _speed_imu_time
     (setq _speed_imu_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_rtk_time
     (setq _speed_rtk_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_imu_time
     (setq _delta_imu_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::EkfStatusMsg :md5sum-) "5158c32f409803affa7d895a54503ab0")
(setf (get ins_msg::EkfStatusMsg :datatype-) "ins_msg/EkfStatusMsg")
(setf (get ins_msg::EkfStatusMsg :definition-)
      "Header header

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

")



(provide :ins_msg/EkfStatusMsg "5158c32f409803affa7d895a54503ab0")


