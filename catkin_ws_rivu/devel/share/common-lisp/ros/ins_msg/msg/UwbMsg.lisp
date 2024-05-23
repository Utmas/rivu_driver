; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbMsg.msg.html

(cl:defclass <UwbMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (utime
    :reader utime
    :initarg :utime
    :type cl:integer
    :initform 0)
   (anchor_serial
    :reader anchor_serial
    :initarg :anchor_serial
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (blinkTxTime
    :reader blinkTxTime
    :initarg :blinkTxTime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 8 :element-type 'cl:integer :initial-element 0))
   (blinkRxTime
    :reader blinkRxTime
    :initarg :blinkRxTime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 8 :element-type 'cl:integer :initial-element 0))
   (respTxTime
    :reader respTxTime
    :initarg :respTxTime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 8 :element-type 'cl:integer :initial-element 0))
   (respRxTimeStamp
    :reader respRxTimeStamp
    :initarg :respRxTimeStamp
    :type (cl:vector cl:integer)
   :initform (cl:make-array 8 :element-type 'cl:integer :initial-element 0))
   (carrierintegrator
    :reader carrierintegrator
    :initarg :carrierintegrator
    :type (cl:vector cl:integer)
   :initform (cl:make-array 8 :element-type 'cl:integer :initial-element 0))
   (msg_cnt
    :reader msg_cnt
    :initarg :msg_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UwbMsg (<UwbMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbMsg> is deprecated: use ins_msg-msg:UwbMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'anchor_serial-val :lambda-list '(m))
(cl:defmethod anchor_serial-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:anchor_serial-val is deprecated.  Use ins_msg-msg:anchor_serial instead.")
  (anchor_serial m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:range-val is deprecated.  Use ins_msg-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'blinkTxTime-val :lambda-list '(m))
(cl:defmethod blinkTxTime-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:blinkTxTime-val is deprecated.  Use ins_msg-msg:blinkTxTime instead.")
  (blinkTxTime m))

(cl:ensure-generic-function 'blinkRxTime-val :lambda-list '(m))
(cl:defmethod blinkRxTime-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:blinkRxTime-val is deprecated.  Use ins_msg-msg:blinkRxTime instead.")
  (blinkRxTime m))

(cl:ensure-generic-function 'respTxTime-val :lambda-list '(m))
(cl:defmethod respTxTime-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:respTxTime-val is deprecated.  Use ins_msg-msg:respTxTime instead.")
  (respTxTime m))

(cl:ensure-generic-function 'respRxTimeStamp-val :lambda-list '(m))
(cl:defmethod respRxTimeStamp-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:respRxTimeStamp-val is deprecated.  Use ins_msg-msg:respRxTimeStamp instead.")
  (respRxTimeStamp m))

(cl:ensure-generic-function 'carrierintegrator-val :lambda-list '(m))
(cl:defmethod carrierintegrator-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:carrierintegrator-val is deprecated.  Use ins_msg-msg:carrierintegrator instead.")
  (carrierintegrator m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <UwbMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbMsg>) ostream)
  "Serializes a message object of type '<UwbMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'utime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'anchor_serial))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'range))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'blinkTxTime))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'blinkRxTime))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'respTxTime))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'respRxTimeStamp))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'carrierintegrator))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbMsg>) istream)
  "Deserializes a message object of type '<UwbMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utime) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:setf (cl:slot-value msg 'anchor_serial) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'anchor_serial)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'range) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'blinkTxTime) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'blinkTxTime)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'blinkRxTime) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'blinkRxTime)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'respTxTime) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'respTxTime)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'respRxTimeStamp) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'respRxTimeStamp)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'carrierintegrator) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'carrierintegrator)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbMsg>)))
  "Returns string type for a message object of type '<UwbMsg>"
  "ins_msg/UwbMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbMsg)))
  "Returns string type for a message object of type 'UwbMsg"
  "ins_msg/UwbMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbMsg>)))
  "Returns md5sum for a message object of type '<UwbMsg>"
  "ffd92547deeeddbef8f9dc9786fea207")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbMsg)))
  "Returns md5sum for a message object of type 'UwbMsg"
  "ffd92547deeeddbef8f9dc9786fea207")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbMsg>)))
  "Returns full string definition for message of type '<UwbMsg>"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%~%uint8[8] anchor_serial~%uint16[8] range~%~%~%uint64[8] blinkTxTime~%uint64[8] blinkRxTime~%uint64[8] respTxTime~%uint64[8] respRxTimeStamp~%uint64[8] carrierintegrator~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbMsg)))
  "Returns full string definition for message of type 'UwbMsg"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%~%uint8[8] anchor_serial~%uint16[8] range~%~%~%uint64[8] blinkTxTime~%uint64[8] blinkRxTime~%uint64[8] respTxTime~%uint64[8] respRxTimeStamp~%uint64[8] carrierintegrator~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'anchor_serial) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'blinkTxTime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'blinkRxTime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'respTxTime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'respRxTimeStamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'carrierintegrator) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':anchor_serial (anchor_serial msg))
    (cl:cons ':range (range msg))
    (cl:cons ':blinkTxTime (blinkTxTime msg))
    (cl:cons ':blinkRxTime (blinkRxTime msg))
    (cl:cons ':respTxTime (respTxTime msg))
    (cl:cons ':respRxTimeStamp (respRxTimeStamp msg))
    (cl:cons ':carrierintegrator (carrierintegrator msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
