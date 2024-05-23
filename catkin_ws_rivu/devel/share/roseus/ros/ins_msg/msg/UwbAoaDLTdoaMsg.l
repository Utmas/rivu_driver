;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::UwbAoaDLTdoaMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'UwbAoaDLTdoaMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::UWBAOADLTDOAMSG")
  (make-package "INS_MSG::UWBAOADLTDOAMSG"))

(in-package "ROS")
;;//! \htmlinclude UwbAoaDLTdoaMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::UwbAoaDLTdoaMsg
  :super ros::object
  :slots (_header _utime _dev_id _dists _aoas _status _msg_cnt ))

(defmethod ins_msg::UwbAoaDLTdoaMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:dev_id __dev_id) 0)
    ((:dists __dists) (make-array 400 :initial-element 0 :element-type :integer))
    ((:aoas __aoas) (make-array 20 :initial-element 0 :element-type :integer))
    ((:status __status) 0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _dev_id (round __dev_id))
   (setq _dists __dists)
   (setq _aoas __aoas)
   (setq _status (round __status))
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
  (:dev_id
   (&optional __dev_id)
   (if __dev_id (setq _dev_id __dev_id)) _dev_id)
  (:dists
   (&optional __dists)
   (if __dists (setq _dists __dists)) _dists)
  (:aoas
   (&optional __aoas)
   (if __aoas (setq _aoas __aoas)) _aoas)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
    ;; uint32 _dev_id
    4
    ;; uint16[400] _dists
    (* 2    400)
    ;; uint16[20] _aoas
    (* 2    20)
    ;; uint8 _status
    1
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
     ;; uint32 _dev_id
       (write-long _dev_id s)
     ;; uint16[400] _dists
     (dotimes (i 400)
       (write-word (elt _dists i) s)
       )
     ;; uint16[20] _aoas
     (dotimes (i 20)
       (write-word (elt _aoas i) s)
       )
     ;; uint8 _status
       (write-byte _status s)
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
   ;; uint32 _dev_id
     (setq _dev_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16[400] _dists
   (dotimes (i (length _dists))
     (setf (elt _dists i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint16[20] _aoas
   (dotimes (i (length _aoas))
     (setf (elt _aoas i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::UwbAoaDLTdoaMsg :md5sum-) "828ed3404304c69ebe54efff42237d34")
(setf (get ins_msg::UwbAoaDLTdoaMsg :datatype-) "ins_msg/UwbAoaDLTdoaMsg")
(setf (get ins_msg::UwbAoaDLTdoaMsg :definition-)
      "Header header

int64       utime

uint32      dev_id

uint16[400] dists
uint16[20]  aoas

uint8       status
uint8       msg_cnt




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



(provide :ins_msg/UwbAoaDLTdoaMsg "828ed3404304c69ebe54efff42237d34")


