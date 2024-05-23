;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::UwbMsg)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'UwbMsg (find-package "INS_MSG")))
(unless (find-package "INS_MSG::UWBMSG")
  (make-package "INS_MSG::UWBMSG"))

(in-package "ROS")
;;//! \htmlinclude UwbMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ins_msg::UwbMsg
  :super ros::object
  :slots (_header _utime _anchor_serial _range _blinkTxTime _blinkRxTime _respTxTime _respRxTimeStamp _carrierintegrator _msg_cnt ))

(defmethod ins_msg::UwbMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utime __utime) 0)
    ((:anchor_serial __anchor_serial) (make-array 8 :initial-element 0 :element-type :char))
    ((:range __range) (make-array 8 :initial-element 0 :element-type :integer))
    ((:blinkTxTime __blinkTxTime) (make-array 8 :initial-element 0 :element-type :integer))
    ((:blinkRxTime __blinkRxTime) (make-array 8 :initial-element 0 :element-type :integer))
    ((:respTxTime __respTxTime) (make-array 8 :initial-element 0 :element-type :integer))
    ((:respRxTimeStamp __respRxTimeStamp) (make-array 8 :initial-element 0 :element-type :integer))
    ((:carrierintegrator __carrierintegrator) (make-array 8 :initial-element 0 :element-type :integer))
    ((:msg_cnt __msg_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _utime (round __utime))
   (setq _anchor_serial __anchor_serial)
   (setq _range __range)
   (setq _blinkTxTime __blinkTxTime)
   (setq _blinkRxTime __blinkRxTime)
   (setq _respTxTime __respTxTime)
   (setq _respRxTimeStamp __respRxTimeStamp)
   (setq _carrierintegrator __carrierintegrator)
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
  (:anchor_serial
   (&optional __anchor_serial)
   (if __anchor_serial (setq _anchor_serial __anchor_serial)) _anchor_serial)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:blinkTxTime
   (&optional __blinkTxTime)
   (if __blinkTxTime (setq _blinkTxTime __blinkTxTime)) _blinkTxTime)
  (:blinkRxTime
   (&optional __blinkRxTime)
   (if __blinkRxTime (setq _blinkRxTime __blinkRxTime)) _blinkRxTime)
  (:respTxTime
   (&optional __respTxTime)
   (if __respTxTime (setq _respTxTime __respTxTime)) _respTxTime)
  (:respRxTimeStamp
   (&optional __respRxTimeStamp)
   (if __respRxTimeStamp (setq _respRxTimeStamp __respRxTimeStamp)) _respRxTimeStamp)
  (:carrierintegrator
   (&optional __carrierintegrator)
   (if __carrierintegrator (setq _carrierintegrator __carrierintegrator)) _carrierintegrator)
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
    ;; uint8[8] _anchor_serial
    (* 1    8)
    ;; uint16[8] _range
    (* 2    8)
    ;; uint64[8] _blinkTxTime
    (* 8    8)
    ;; uint64[8] _blinkRxTime
    (* 8    8)
    ;; uint64[8] _respTxTime
    (* 8    8)
    ;; uint64[8] _respRxTimeStamp
    (* 8    8)
    ;; uint64[8] _carrierintegrator
    (* 8    8)
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
     ;; uint8[8] _anchor_serial
     (princ _anchor_serial s)
     ;; uint16[8] _range
     (dotimes (i 8)
       (write-word (elt _range i) s)
       )
     ;; uint64[8] _blinkTxTime
     (dotimes (i 8)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _blinkTxTime i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _blinkTxTime i)) (= (length ((elt _blinkTxTime i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _blinkTxTime i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _blinkTxTime i) . bv) 1) -1) s))
             ((and (class (elt _blinkTxTime i)) (= (length ((elt _blinkTxTime i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _blinkTxTime i) . bv) 0) s)
              (write-long (if (>= (elt _blinkTxTime i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _blinkTxTime i) s)(write-long (if (>= (elt _blinkTxTime i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[8] _blinkRxTime
     (dotimes (i 8)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _blinkRxTime i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _blinkRxTime i)) (= (length ((elt _blinkRxTime i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _blinkRxTime i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _blinkRxTime i) . bv) 1) -1) s))
             ((and (class (elt _blinkRxTime i)) (= (length ((elt _blinkRxTime i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _blinkRxTime i) . bv) 0) s)
              (write-long (if (>= (elt _blinkRxTime i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _blinkRxTime i) s)(write-long (if (>= (elt _blinkRxTime i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[8] _respTxTime
     (dotimes (i 8)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _respTxTime i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _respTxTime i)) (= (length ((elt _respTxTime i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _respTxTime i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _respTxTime i) . bv) 1) -1) s))
             ((and (class (elt _respTxTime i)) (= (length ((elt _respTxTime i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _respTxTime i) . bv) 0) s)
              (write-long (if (>= (elt _respTxTime i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _respTxTime i) s)(write-long (if (>= (elt _respTxTime i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[8] _respRxTimeStamp
     (dotimes (i 8)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _respRxTimeStamp i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _respRxTimeStamp i)) (= (length ((elt _respRxTimeStamp i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _respRxTimeStamp i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _respRxTimeStamp i) . bv) 1) -1) s))
             ((and (class (elt _respRxTimeStamp i)) (= (length ((elt _respRxTimeStamp i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _respRxTimeStamp i) . bv) 0) s)
              (write-long (if (>= (elt _respRxTimeStamp i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _respRxTimeStamp i) s)(write-long (if (>= (elt _respRxTimeStamp i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[8] _carrierintegrator
     (dotimes (i 8)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _carrierintegrator i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _carrierintegrator i)) (= (length ((elt _carrierintegrator i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _carrierintegrator i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _carrierintegrator i) . bv) 1) -1) s))
             ((and (class (elt _carrierintegrator i)) (= (length ((elt _carrierintegrator i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _carrierintegrator i) . bv) 0) s)
              (write-long (if (>= (elt _carrierintegrator i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _carrierintegrator i) s)(write-long (if (>= (elt _carrierintegrator i) 0) 0 #xffffffff) s)))
       )
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
   ;; uint8[8] _anchor_serial
   (setq _anchor_serial (make-array 8 :element-type :char))
   (replace _anchor_serial buf :start2 ptr-) (incf ptr- 8)
   ;; uint16[8] _range
   (dotimes (i (length _range))
     (setf (elt _range i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint64[8] _blinkTxTime
   (dotimes (i (length _blinkTxTime))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _blinkTxTime i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _blinkTxTime i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint64[8] _blinkRxTime
   (dotimes (i (length _blinkRxTime))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _blinkRxTime i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _blinkRxTime i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint64[8] _respTxTime
   (dotimes (i (length _respTxTime))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _respTxTime i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _respTxTime i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint64[8] _respRxTimeStamp
   (dotimes (i (length _respRxTimeStamp))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _respRxTimeStamp i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _respRxTimeStamp i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint64[8] _carrierintegrator
   (dotimes (i (length _carrierintegrator))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _carrierintegrator i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _carrierintegrator i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint8 _msg_cnt
     (setq _msg_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ins_msg::UwbMsg :md5sum-) "ffd92547deeeddbef8f9dc9786fea207")
(setf (get ins_msg::UwbMsg :datatype-) "ins_msg/UwbMsg")
(setf (get ins_msg::UwbMsg :definition-)
      "Header header

int64 utime


uint8[8] anchor_serial
uint16[8] range


uint64[8] blinkTxTime
uint64[8] blinkRxTime
uint64[8] respTxTime
uint64[8] respRxTimeStamp
uint64[8] carrierintegrator

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



(provide :ins_msg/UwbMsg "ffd92547deeeddbef8f9dc9786fea207")


