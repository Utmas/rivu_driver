;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::UwbAoaMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'UwbAoaMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::UWBAOAMSG")
  (make-package "INS_MSG::UWBAOAMSG"))

(in-package "ROS")
;;//! \htmlinclude UwbAoaMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::UwbAoaMsg
  :super ros::object
  :slots (_header _utime _dev_id _pair_meass _status _msg_cnt ))

(defmethod ins_msg::UwbAoaMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:dev_id __dev_id) 0)
    ((:pair_meass __pair_meass) (let (r) (dotimes (i 19) (push (instance ins_msg::PairMeass :init) r)) r))
    ((:status __status) 0)
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _dev_id (round __dev_id))
   (setq _pair_meass __pair_meass)
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
  (:pair_meass
   (&rest __pair_meass)
   (if (keywordp (car __pair_meass))
       (send* _pair_meass __pair_meass)
     (progn
       (if __pair_meass (setq _pair_meass (car __pair_meass)))
       _pair_meass)))
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
    ;; ins_msg/PairMeass[19] _pair_meass
    (apply #'+ (send-all _pair_meass :serialization-length))
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
     ;; ins_msg/PairMeass[19] _pair_meass
     (dolist (elem _pair_meass)
       (send elem :serialize s)
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
   ;; ins_msg/PairMeass[19] _pair_meass
   (dotimes (i 19)
     (send (elt _pair_meass i) :deserialize buf ptr-) (incf ptr- (send (elt _pair_meass i) :serialization-length))
     )
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::UwbAoaMsg :md5sum-) "38d0a653ce9de672e25f5c2f6393f060")
(setf (get ins_msg::UwbAoaMsg :datatype-) "ins_msg/UwbAoaMsg")
(setf (get ins_msg::UwbAoaMsg :definition-)
      "Header header

int64       utime

uint32      dev_id

PairMeass[19] pair_meass

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

================================================================================
MSG: ins_msg/PairMeass

uint16      swarm_id
uint8       node_id
uint8       los_flag
uint64[2]   stamps

uint16      distance
int16       aoa
int16       pdoa1
int16       pdoa2


")



(provide :ins_msg/UwbAoaMsg "38d0a653ce9de672e25f5c2f6393f060")


