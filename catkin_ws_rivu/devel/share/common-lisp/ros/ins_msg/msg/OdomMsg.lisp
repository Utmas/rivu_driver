; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude OdomMsg.msg.html

(cl:defclass <OdomMsg> (roslisp-msg-protocol:ros-message)
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
   (pulse_cnt
    :reader pulse_cnt
    :initarg :pulse_cnt
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (msg_cnt
    :reader msg_cnt
    :initarg :msg_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OdomMsg (<OdomMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<OdomMsg> is deprecated: use ins_msg-msg:OdomMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdomMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <OdomMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'pulse_cnt-val :lambda-list '(m))
(cl:defmethod pulse_cnt-val ((m <OdomMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:pulse_cnt-val is deprecated.  Use ins_msg-msg:pulse_cnt instead.")
  (pulse_cnt m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <OdomMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:speed-val is deprecated.  Use ins_msg-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <OdomMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomMsg>) ostream)
  "Serializes a message object of type '<OdomMsg>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pulse_cnt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomMsg>) istream)
  "Deserializes a message object of type '<OdomMsg>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pulse_cnt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomMsg>)))
  "Returns string type for a message object of type '<OdomMsg>"
  "ins_msg/OdomMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomMsg)))
  "Returns string type for a message object of type 'OdomMsg"
  "ins_msg/OdomMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomMsg>)))
  "Returns md5sum for a message object of type '<OdomMsg>"
  "88e4a3d41ea05a905c3200bd7c3d7905")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomMsg)))
  "Returns md5sum for a message object of type 'OdomMsg"
  "88e4a3d41ea05a905c3200bd7c3d7905")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomMsg>)))
  "Returns full string definition for message of type '<OdomMsg>"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%float32 pulse_cnt~%float32 speed~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomMsg)))
  "Returns full string definition for message of type 'OdomMsg"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%float32 pulse_cnt~%float32 speed~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':pulse_cnt (pulse_cnt msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
