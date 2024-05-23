; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbAoaDLTdoaMsg.msg.html

(cl:defclass <UwbAoaDLTdoaMsg> (roslisp-msg-protocol:ros-message)
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
   (dev_id
    :reader dev_id
    :initarg :dev_id
    :type cl:integer
    :initform 0)
   (dists
    :reader dists
    :initarg :dists
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 400 :element-type 'cl:fixnum :initial-element 0))
   (aoas
    :reader aoas
    :initarg :aoas
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 20 :element-type 'cl:fixnum :initial-element 0))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (msg_cnt
    :reader msg_cnt
    :initarg :msg_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UwbAoaDLTdoaMsg (<UwbAoaDLTdoaMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbAoaDLTdoaMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbAoaDLTdoaMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbAoaDLTdoaMsg> is deprecated: use ins_msg-msg:UwbAoaDLTdoaMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'dev_id-val :lambda-list '(m))
(cl:defmethod dev_id-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:dev_id-val is deprecated.  Use ins_msg-msg:dev_id instead.")
  (dev_id m))

(cl:ensure-generic-function 'dists-val :lambda-list '(m))
(cl:defmethod dists-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:dists-val is deprecated.  Use ins_msg-msg:dists instead.")
  (dists m))

(cl:ensure-generic-function 'aoas-val :lambda-list '(m))
(cl:defmethod aoas-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:aoas-val is deprecated.  Use ins_msg-msg:aoas instead.")
  (aoas m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:status-val is deprecated.  Use ins_msg-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <UwbAoaDLTdoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbAoaDLTdoaMsg>) ostream)
  "Serializes a message object of type '<UwbAoaDLTdoaMsg>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'dists))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'aoas))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbAoaDLTdoaMsg>) istream)
  "Deserializes a message object of type '<UwbAoaDLTdoaMsg>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dists) (cl:make-array 400))
  (cl:let ((vals (cl:slot-value msg 'dists)))
    (cl:dotimes (i 400)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'aoas) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'aoas)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbAoaDLTdoaMsg>)))
  "Returns string type for a message object of type '<UwbAoaDLTdoaMsg>"
  "ins_msg/UwbAoaDLTdoaMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbAoaDLTdoaMsg)))
  "Returns string type for a message object of type 'UwbAoaDLTdoaMsg"
  "ins_msg/UwbAoaDLTdoaMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbAoaDLTdoaMsg>)))
  "Returns md5sum for a message object of type '<UwbAoaDLTdoaMsg>"
  "828ed3404304c69ebe54efff42237d34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbAoaDLTdoaMsg)))
  "Returns md5sum for a message object of type 'UwbAoaDLTdoaMsg"
  "828ed3404304c69ebe54efff42237d34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbAoaDLTdoaMsg>)))
  "Returns full string definition for message of type '<UwbAoaDLTdoaMsg>"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%uint32      dev_id~%~%uint16[400] dists~%uint16[20]  aoas~%~%uint8       status~%uint8       msg_cnt~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbAoaDLTdoaMsg)))
  "Returns full string definition for message of type 'UwbAoaDLTdoaMsg"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%uint32      dev_id~%~%uint16[400] dists~%uint16[20]  aoas~%~%uint8       status~%uint8       msg_cnt~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbAoaDLTdoaMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'aoas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbAoaDLTdoaMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbAoaDLTdoaMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':dev_id (dev_id msg))
    (cl:cons ':dists (dists msg))
    (cl:cons ':aoas (aoas msg))
    (cl:cons ':status (status msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
