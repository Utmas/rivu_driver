;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::ImuMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'ImuMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::IMUMSG")
  (make-package "INS_MSG::IMUMSG"))

(in-package "ROS")
;;//! \htmlinclude ImuMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::ImuMsg
  :super ros::object
  :slots (_header _utime _acc _gyro _attitude _temperature _msg_cnt ))

(defmethod ins_msg::ImuMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:acc __acc) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyro __gyro) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:attitude __attitude) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) 0.0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _acc __acc)
   (setq _gyro __gyro)
   (setq _attitude __attitude)
   (setq _temperature (float __temperature))
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
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:attitude
   (&optional __attitude)
   (if __attitude (setq _attitude __attitude)) _attitude)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
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
    ;; float32[3] _acc
    (* 4    3)
    ;; float32[3] _gyro
    (* 4    3)
    ;; float32[3] _attitude
    (* 4    3)
    ;; float32 _temperature
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
     ;; float32[3] _acc
     (dotimes (i 3)
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _gyro
     (dotimes (i 3)
       (sys::poke (elt _gyro i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _attitude
     (dotimes (i 3)
       (sys::poke (elt _attitude i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[3] _acc
   (dotimes (i (length _acc))
     (setf (elt _acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _gyro
   (dotimes (i (length _gyro))
     (setf (elt _gyro i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _attitude
   (dotimes (i (length _attitude))
     (setf (elt _attitude i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::ImuMsg :md5sum-) "4240c38970ed6906c83192bcdfb45a79")
(setf (get ins_msg::ImuMsg :datatype-) "ins_msg/ImuMsg")
(setf (get ins_msg::ImuMsg :definition-)
      "Header header

int64 utime
float32[3] acc
float32[3] gyro
float32[3] attitude
float32 temperature
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



(provide :ins_msg/ImuMsg "4240c38970ed6906c83192bcdfb45a79")


