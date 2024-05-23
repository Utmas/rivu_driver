;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::WheelSpeedMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'WheelSpeedMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::WHEELSPEEDMSG")
  (make-package "INS_MSG::WHEELSPEEDMSG"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::WheelSpeedMsg
  :super ros::object
  :slots (_header _utime _left_wheel_speed _left_encoder_sum _right_wheel_speed _right_encoder_sum _steering_angle _msg_cnt ))

(defmethod ins_msg::WheelSpeedMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:left_wheel_speed __left_wheel_speed) 0.0)
    ((:left_encoder_sum __left_encoder_sum) 0)
    ((:right_wheel_speed __right_wheel_speed) 0.0)
    ((:right_encoder_sum __right_encoder_sum) 0)
    ((:steering_angle __steering_angle) 0.0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _left_wheel_speed (float __left_wheel_speed))
   (setq _left_encoder_sum (round __left_encoder_sum))
   (setq _right_wheel_speed (float __right_wheel_speed))
   (setq _right_encoder_sum (round __right_encoder_sum))
   (setq _steering_angle (float __steering_angle))
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
  (:left_wheel_speed
   (&optional __left_wheel_speed)
   (if __left_wheel_speed (setq _left_wheel_speed __left_wheel_speed)) _left_wheel_speed)
  (:left_encoder_sum
   (&optional __left_encoder_sum)
   (if __left_encoder_sum (setq _left_encoder_sum __left_encoder_sum)) _left_encoder_sum)
  (:right_wheel_speed
   (&optional __right_wheel_speed)
   (if __right_wheel_speed (setq _right_wheel_speed __right_wheel_speed)) _right_wheel_speed)
  (:right_encoder_sum
   (&optional __right_encoder_sum)
   (if __right_encoder_sum (setq _right_encoder_sum __right_encoder_sum)) _right_encoder_sum)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
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
    ;; float32 _left_wheel_speed
    4
    ;; int64 _left_encoder_sum
    8
    ;; float32 _right_wheel_speed
    4
    ;; int64 _right_encoder_sum
    8
    ;; float32 _steering_angle
    4
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
     ;; float32 _left_wheel_speed
       (sys::poke _left_wheel_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _left_encoder_sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _left_encoder_sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _left_encoder_sum) (= (length (_left_encoder_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_left_encoder_sum . bv) 0) 0) s)
              (write-long (ash (elt (_left_encoder_sum . bv) 1) -1) s))
             ((and (class _left_encoder_sum) (= (length (_left_encoder_sum . bv)) 1)) ;; big1
              (write-long (elt (_left_encoder_sum . bv) 0) s)
              (write-long (if (>= _left_encoder_sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _left_encoder_sum s)(write-long (if (>= _left_encoder_sum 0) 0 #xffffffff) s)))
     ;; float32 _right_wheel_speed
       (sys::poke _right_wheel_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _right_encoder_sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _right_encoder_sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _right_encoder_sum) (= (length (_right_encoder_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_right_encoder_sum . bv) 0) 0) s)
              (write-long (ash (elt (_right_encoder_sum . bv) 1) -1) s))
             ((and (class _right_encoder_sum) (= (length (_right_encoder_sum . bv)) 1)) ;; big1
              (write-long (elt (_right_encoder_sum . bv) 0) s)
              (write-long (if (>= _right_encoder_sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _right_encoder_sum s)(write-long (if (>= _right_encoder_sum 0) 0 #xffffffff) s)))
     ;; float32 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _left_wheel_speed
     (setq _left_wheel_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _left_encoder_sum
#+(or :alpha :irix6 :x86_64)
      (setf _left_encoder_sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _left_encoder_sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _right_wheel_speed
     (setq _right_wheel_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _right_encoder_sum
#+(or :alpha :irix6 :x86_64)
      (setf _right_encoder_sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _right_encoder_sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::WheelSpeedMsg :md5sum-) "96bbad967ec029252d2e525db16ca7a1")
(setf (get ins_msg::WheelSpeedMsg :datatype-) "ins_msg/WheelSpeedMsg")
(setf (get ins_msg::WheelSpeedMsg :definition-)
      "Header header

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

")



(provide :ins_msg/WheelSpeedMsg "96bbad967ec029252d2e525db16ca7a1")


