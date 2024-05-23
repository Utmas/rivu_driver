; Auto-generated. Do not edit!


(cl:in-package ins_msg-msg)


;//! \htmlinclude UwbPos.msg.html

(cl:defclass <UwbPos> (roslisp-msg-protocol:ros-message)
  ((dev_id
    :reader dev_id
    :initarg :dev_id
    :type cl:integer
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (cov
    :reader cov
    :initarg :cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UwbPos (<UwbPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ins_msg-msg:<UwbPos> is deprecated: use ins_msg-msg:UwbPos instead.")))

(cl:ensure-generic-function 'dev_id-val :lambda-list '(m))
(cl:defmethod dev_id-val ((m <UwbPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:dev_id-val is deprecated.  Use ins_msg-msg:dev_id instead.")
  (dev_id m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <UwbPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:pos-val is deprecated.  Use ins_msg-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'cov-val :lambda-list '(m))
(cl:defmethod cov-val ((m <UwbPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ins_msg-msg:cov-val is deprecated.  Use ins_msg-msg:cov instead.")
  (cov m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbPos>) ostream)
  "Serializes a message object of type '<UwbPos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cov))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbPos>) istream)
  "Deserializes a message object of type '<UwbPos>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'cov) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'cov)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbPos>)))
  "Returns string type for a message object of type '<UwbPos>"
  "ins_msg/UwbPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbPos)))
  "Returns string type for a message object of type 'UwbPos"
  "ins_msg/UwbPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbPos>)))
  "Returns md5sum for a message object of type '<UwbPos>"
  "b6aff7b7e64b76ac4c0149132212ab48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbPos)))
  "Returns md5sum for a message object of type 'UwbPos"
  "b6aff7b7e64b76ac4c0149132212ab48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbPos>)))
  "Returns full string definition for message of type '<UwbPos>"
  (cl:format cl:nil "uint32     dev_id~%float32[3] pos~%float32[6] cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbPos)))
  "Returns full string definition for message of type 'UwbPos"
  (cl:format cl:nil "uint32     dev_id~%float32[3] pos~%float32[6] cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbPos>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbPos>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbPos
    (cl:cons ':dev_id (dev_id msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':cov (cov msg))
))
