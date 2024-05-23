; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude PairMeass.msg.html

(cl:defclass <PairMeass> (roslisp-msg-protocol:ros-message)
  ((swarm_id
    :reader swarm_id
    :initarg :swarm_id
    :type cl:fixnum
    :initform 0)
   (node_id
    :reader node_id
    :initarg :node_id
    :type cl:fixnum
    :initform 0)
   (los_flag
    :reader los_flag
    :initarg :los_flag
    :type cl:fixnum
    :initform 0)
   (stamps
    :reader stamps
    :initarg :stamps
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0))
   (distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (aoa
    :reader aoa
    :initarg :aoa
    :type cl:fixnum
    :initform 0)
   (pdoa1
    :reader pdoa1
    :initarg :pdoa1
    :type cl:fixnum
    :initform 0)
   (pdoa2
    :reader pdoa2
    :initarg :pdoa2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PairMeass (<PairMeass>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PairMeass>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PairMeass)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<PairMeass> is deprecated: use ins_msg-msg:PairMeass instead.")))

(cl:ensure-generic-function 'swarm_id-val :lambda-list '(m))
(cl:defmethod swarm_id-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:swarm_id-val is deprecated.  Use ins_msg-msg:swarm_id instead.")
  (swarm_id m))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:node_id-val is deprecated.  Use ins_msg-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'los_flag-val :lambda-list '(m))
(cl:defmethod los_flag-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:los_flag-val is deprecated.  Use ins_msg-msg:los_flag instead.")
  (los_flag m))

(cl:ensure-generic-function 'stamps-val :lambda-list '(m))
(cl:defmethod stamps-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:stamps-val is deprecated.  Use ins_msg-msg:stamps instead.")
  (stamps m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:distance-val is deprecated.  Use ins_msg-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'aoa-val :lambda-list '(m))
(cl:defmethod aoa-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:aoa-val is deprecated.  Use ins_msg-msg:aoa instead.")
  (aoa m))

(cl:ensure-generic-function 'pdoa1-val :lambda-list '(m))
(cl:defmethod pdoa1-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:pdoa1-val is deprecated.  Use ins_msg-msg:pdoa1 instead.")
  (pdoa1 m))

(cl:ensure-generic-function 'pdoa2-val :lambda-list '(m))
(cl:defmethod pdoa2-val ((m <PairMeass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:pdoa2-val is deprecated.  Use ins_msg-msg:pdoa2 instead.")
  (pdoa2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PairMeass>) ostream)
  "Serializes a message object of type '<PairMeass>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swarm_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'swarm_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'los_flag)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'stamps))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'aoa)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pdoa1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pdoa2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PairMeass>) istream)
  "Deserializes a message object of type '<PairMeass>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swarm_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'swarm_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'los_flag)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stamps) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'stamps)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aoa) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pdoa1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pdoa2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PairMeass>)))
  "Returns string type for a message object of type '<PairMeass>"
  "ins_msg/PairMeass")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PairMeass)))
  "Returns string type for a message object of type 'PairMeass"
  "ins_msg/PairMeass")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PairMeass>)))
  "Returns md5sum for a message object of type '<PairMeass>"
  "776a952d5c4aa0b600c75e49a23de2f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PairMeass)))
  "Returns md5sum for a message object of type 'PairMeass"
  "776a952d5c4aa0b600c75e49a23de2f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PairMeass>)))
  "Returns full string definition for message of type '<PairMeass>"
  (cl:format cl:nil "~%uint16      swarm_id~%uint8       node_id~%uint8       los_flag~%uint64[2]   stamps~%~%uint16      distance~%int16       aoa~%int16       pdoa1~%int16       pdoa2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PairMeass)))
  "Returns full string definition for message of type 'PairMeass"
  (cl:format cl:nil "~%uint16      swarm_id~%uint8       node_id~%uint8       los_flag~%uint64[2]   stamps~%~%uint16      distance~%int16       aoa~%int16       pdoa1~%int16       pdoa2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PairMeass>))
  (cl:+ 0
     2
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'stamps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PairMeass>))
  "Converts a ROS message object to a list"
  (cl:list 'PairMeass
    (cl:cons ':swarm_id (swarm_id msg))
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':los_flag (los_flag msg))
    (cl:cons ':stamps (stamps msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':aoa (aoa msg))
    (cl:cons ':pdoa1 (pdoa1 msg))
    (cl:cons ':pdoa2 (pdoa2 msg))
))
