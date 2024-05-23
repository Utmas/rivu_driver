; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbTdoaPosMsg.msg.html

(cl:defclass <UwbTdoaPosMsg> (roslisp-msg-protocol:ros-message)
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
   (tagID
    :reader tagID
    :initarg :tagID
    :type cl:fixnum
    :initform 0)
   (position_x
    :reader position_x
    :initarg :position_x
    :type cl:integer
    :initform 0)
   (position_y
    :reader position_y
    :initarg :position_y
    :type cl:integer
    :initform 0)
   (position_z
    :reader position_z
    :initarg :position_z
    :type cl:integer
    :initform 0)
   (msg_cnt
    :reader msg_cnt
    :initarg :msg_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UwbTdoaPosMsg (<UwbTdoaPosMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbTdoaPosMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbTdoaPosMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbTdoaPosMsg> is deprecated: use ins_msg-msg:UwbTdoaPosMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'tagID-val :lambda-list '(m))
(cl:defmethod tagID-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:tagID-val is deprecated.  Use ins_msg-msg:tagID instead.")
  (tagID m))

(cl:ensure-generic-function 'position_x-val :lambda-list '(m))
(cl:defmethod position_x-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:position_x-val is deprecated.  Use ins_msg-msg:position_x instead.")
  (position_x m))

(cl:ensure-generic-function 'position_y-val :lambda-list '(m))
(cl:defmethod position_y-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:position_y-val is deprecated.  Use ins_msg-msg:position_y instead.")
  (position_y m))

(cl:ensure-generic-function 'position_z-val :lambda-list '(m))
(cl:defmethod position_z-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:position_z-val is deprecated.  Use ins_msg-msg:position_z instead.")
  (position_z m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <UwbTdoaPosMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbTdoaPosMsg>) ostream)
  "Serializes a message object of type '<UwbTdoaPosMsg>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbTdoaPosMsg>) istream)
  "Deserializes a message object of type '<UwbTdoaPosMsg>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbTdoaPosMsg>)))
  "Returns string type for a message object of type '<UwbTdoaPosMsg>"
  "ins_msg/UwbTdoaPosMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbTdoaPosMsg)))
  "Returns string type for a message object of type 'UwbTdoaPosMsg"
  "ins_msg/UwbTdoaPosMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbTdoaPosMsg>)))
  "Returns md5sum for a message object of type '<UwbTdoaPosMsg>"
  "1e21e1d55bc631d4c24f529d0745ed3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbTdoaPosMsg)))
  "Returns md5sum for a message object of type 'UwbTdoaPosMsg"
  "1e21e1d55bc631d4c24f529d0745ed3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbTdoaPosMsg>)))
  "Returns full string definition for message of type '<UwbTdoaPosMsg>"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%~%uint8 tagID~%uint32 position_x~%uint32 position_y~%uint32 position_z~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbTdoaPosMsg)))
  "Returns full string definition for message of type 'UwbTdoaPosMsg"
  (cl:format cl:nil "Header header~%~%int64 utime~%~%~%uint8 tagID~%uint32 position_x~%uint32 position_y~%uint32 position_z~%~%uint8 msg_cnt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbTdoaPosMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbTdoaPosMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbTdoaPosMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':tagID (tagID msg))
    (cl:cons ':position_x (position_x msg))
    (cl:cons ':position_y (position_y msg))
    (cl:cons ':position_z (position_z msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
