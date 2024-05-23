; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbAoaMsg.msg.html

(cl:defclass <UwbAoaMsg> (roslisp-msg-protocol:ros-message)
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
   (pair_meass
    :reader pair_meass
    :initarg :pair_meass
    :type (cl:vector ins_msg-msg:PairMeass)
   :initform (cl:make-array 19 :element-type 'ins_msg-msg:PairMeass :initial-element (cl:make-instance 'ins_msg-msg:PairMeass)))
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

(cl:defclass UwbAoaMsg (<UwbAoaMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbAoaMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbAoaMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbAoaMsg> is deprecated: use ins_msg-msg:UwbAoaMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:header-val is deprecated.  Use ins_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utime-val :lambda-list '(m))
(cl:defmethod utime-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:utime-val is deprecated.  Use ins_msg-msg:utime instead.")
  (utime m))

(cl:ensure-generic-function 'dev_id-val :lambda-list '(m))
(cl:defmethod dev_id-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:dev_id-val is deprecated.  Use ins_msg-msg:dev_id instead.")
  (dev_id m))

(cl:ensure-generic-function 'pair_meass-val :lambda-list '(m))
(cl:defmethod pair_meass-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:pair_meass-val is deprecated.  Use ins_msg-msg:pair_meass instead.")
  (pair_meass m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:status-val is deprecated.  Use ins_msg-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'msg_cnt-val :lambda-list '(m))
(cl:defmethod msg_cnt-val ((m <UwbAoaMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:msg_cnt-val is deprecated.  Use ins_msg-msg:msg_cnt instead.")
  (msg_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbAoaMsg>) ostream)
  "Serializes a message object of type '<UwbAoaMsg>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pair_meass))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbAoaMsg>) istream)
  "Deserializes a message object of type '<UwbAoaMsg>"
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
  (cl:setf (cl:slot-value msg 'pair_meass) (cl:make-array 19))
  (cl:let ((vals (cl:slot-value msg 'pair_meass)))
    (cl:dotimes (i 19)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ins_msg-msg:PairMeass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbAoaMsg>)))
  "Returns string type for a message object of type '<UwbAoaMsg>"
  "ins_msg/UwbAoaMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbAoaMsg)))
  "Returns string type for a message object of type 'UwbAoaMsg"
  "ins_msg/UwbAoaMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbAoaMsg>)))
  "Returns md5sum for a message object of type '<UwbAoaMsg>"
  "38d0a653ce9de672e25f5c2f6393f060")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbAoaMsg)))
  "Returns md5sum for a message object of type 'UwbAoaMsg"
  "38d0a653ce9de672e25f5c2f6393f060")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbAoaMsg>)))
  "Returns full string definition for message of type '<UwbAoaMsg>"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%uint32      dev_id~%~%PairMeass[19] pair_meass~%~%uint8       status~%uint8       msg_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ins_msg/PairMeass~%~%uint16      swarm_id~%uint8       node_id~%uint8       los_flag~%uint64[2]   stamps~%~%uint16      distance~%int16       aoa~%int16       pdoa1~%int16       pdoa2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbAoaMsg)))
  "Returns full string definition for message of type 'UwbAoaMsg"
  (cl:format cl:nil "Header header~%~%int64       utime~%~%uint32      dev_id~%~%PairMeass[19] pair_meass~%~%uint8       status~%uint8       msg_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ins_msg/PairMeass~%~%uint16      swarm_id~%uint8       node_id~%uint8       los_flag~%uint64[2]   stamps~%~%uint16      distance~%int16       aoa~%int16       pdoa1~%int16       pdoa2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbAoaMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pair_meass) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbAoaMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbAoaMsg
    (cl:cons ':header (header msg))
    (cl:cons ':utime (utime msg))
    (cl:cons ':dev_id (dev_id msg))
    (cl:cons ':pair_meass (pair_meass msg))
    (cl:cons ':status (status msg))
    (cl:cons ':msg_cnt (msg_cnt msg))
))
