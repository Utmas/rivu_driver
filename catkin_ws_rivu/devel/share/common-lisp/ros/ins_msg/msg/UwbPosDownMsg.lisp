; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbPosDownMsg.msg.html

(cl:defclass <UwbPosDownMsg> (roslisp-msg-protocol:ros-message)
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
   (uwb_poss
    :reader uwb_poss
    :initarg :uwb_poss
    :type ins_msg-msg:UwbPos
    :initform (cl:make-instance 'ins_msg-msg:UwbPos))
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

(cl:defclass UwbPosDownMsg (<UwbPosDownMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbPosDownMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbPosDownMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbPosDownMsg> is deprecated: use ins_msg-msg:UwbPosDownMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbPosDownMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <UwbPosDownMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'uwb_poss-val :lambda-list '(m))
(cl:defmethod uwb_poss-val ((m <UwbPosDownMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:uwb_poss-val is deprecated.  Use ins_msg-msg:uwb_poss instead.")
  (uwb_poss m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UwbPosDownMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:status-val is deprecated.  Use ins_msg-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <UwbPosDownMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbPosDownMsg>) ostream)
  "Serializes a message object of type '<UwbPosDownMsg>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uwb_poss) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbPosDownMsg>) istream)
  "Deserializes a message object of type '<UwbPosDownMsg>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uwb_poss) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbPosDownMsg>)))
  "Returns string type for a message object of type '<UwbPosDownMsg>"
  "ins_msg/UwbPosDownMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbPosDownMsg)))
  "Returns string type for a message object of type 'UwbPosDownMsg"
  "ins_msg/UwbPosDownMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbPosDownMsg>)))
  "Returns md5sum for a message object of type '<UwbPosDownMsg>"
  "005914774339b077b09ea7254ee22520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbPosDownMsg)))
  "Returns md5sum for a message object of type 'UwbPosDownMsg"
  "005914774339b077b09ea7254ee22520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbPosDownMsg>)))
  "Returns full string definition for message of type '<UwbPosDownMsg>"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%UwbPos      uwb_poss~%~%uint8       status~%uint8       msg_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ins_msg/UwbPos~%uint32     dev_id~%float32[3] pos~%float32[6] cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbPosDownMsg)))
  "Returns full string definition for message of type 'UwbPosDownMsg"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%UwbPos      uwb_poss~%~%uint8       status~%uint8       msg_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ins_msg/UwbPos~%uint32     dev_id~%float32[3] pos~%float32[6] cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbPosDownMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uwb_poss))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbPosDownMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbPosDownMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':uwb_poss (uwb_poss msg))
    (cl:cons ':status (status msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
