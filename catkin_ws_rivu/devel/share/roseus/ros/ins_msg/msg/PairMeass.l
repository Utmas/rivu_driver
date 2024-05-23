;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::PairMeass)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'PairMeass (find-package "INS_MSG")))
(unless (find-package "INS_MSG::PAIRMEASS")
  (make-package "INS_MSG::PAIRMEASS"))

(in-package "ROS")
;;//! \htmlinclude PairMeass.msg.html


(defclass ins_msg::PairMeass
  :super ros::object
  :slots (_swarm_id _node_id _los_flag _stamps _distance _aoa _pdoa1 _pdoa2 ))

(defmethod ins_msg::PairMeass
  (:init
   (&key
    ((:swarm_id __swarm_id) 0)
    ((:node_id __node_id) 0)
    ((:los_flag __los_flag) 0)
    ((:stamps __stamps) (make-array 2 :initial-element 0 :element-type :integer))
    ((:distance __distance) 0)
    ((:aoa __aoa) 0)
    ((:pdoa1 __pdoa1) 0)
    ((:pdoa2 __pdoa2) 0)
    )
   (send-super :init)
   (setq _swarm_id (round __swarm_id))
   (setq _node_id (round __node_id))
   (setq _los_flag (round __los_flag))
   (setq _stamps __stamps)
   (setq _distance (round __distance))
   (setq _aoa (round __aoa))
   (setq _pdoa1 (round __pdoa1))
   (setq _pdoa2 (round __pdoa2))
   self)
  (:swarm_id
   (&optional __swarm_id)
   (if __swarm_id (setq _swarm_id __swarm_id)) _swarm_id)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:los_flag
   (&optional __los_flag)
   (if __los_flag (setq _los_flag __los_flag)) _los_flag)
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:aoa
   (&optional __aoa)
   (if __aoa (setq _aoa __aoa)) _aoa)
  (:pdoa1
   (&optional __pdoa1)
   (if __pdoa1 (setq _pdoa1 __pdoa1)) _pdoa1)
  (:pdoa2
   (&optional __pdoa2)
   (if __pdoa2 (setq _pdoa2 __pdoa2)) _pdoa2)
  (:serialization-length
   ()
   (+
    ;; uint16 _swarm_id
    2
    ;; uint8 _node_id
    1
    ;; uint8 _los_flag
    1
    ;; uint64[2] _stamps
    (* 8    2)
    ;; uint16 _distance
    2
    ;; int16 _aoa
    2
    ;; int16 _pdoa1
    2
    ;; int16 _pdoa2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _swarm_id
       (write-word _swarm_id s)
     ;; uint8 _node_id
       (write-byte _node_id s)
     ;; uint8 _los_flag
       (write-byte _los_flag s)
     ;; uint64[2] _stamps
     (dotimes (i 2)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _stamps i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _stamps i)) (= (length ((elt _stamps i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _stamps i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _stamps i) . bv) 1) -1) s))
             ((and (class (elt _stamps i)) (= (length ((elt _stamps i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _stamps i) . bv) 0) s)
              (write-long (if (>= (elt _stamps i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _stamps i) s)(write-long (if (>= (elt _stamps i) 0) 0 #xffffffff) s)))
       )
     ;; uint16 _distance
       (write-word _distance s)
     ;; int16 _aoa
       (write-word _aoa s)
     ;; int16 _pdoa1
       (write-word _pdoa1 s)
     ;; int16 _pdoa2
       (write-word _pdoa2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _swarm_id
     (setq _swarm_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _node_id
     (setq _node_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _los_flag
     (setq _los_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64[2] _stamps
   (dotimes (i (length _stamps))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _stamps i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _stamps i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; uint16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _aoa
     (setq _aoa (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pdoa1
     (setq _pdoa1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pdoa2
     (setq _pdoa2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ins_msg::PairMeass :md5sum-) "776a952d5c4aa0b600c75e49a23de2f6")
(setf (get ins_msg::PairMeass :datatype-) "ins_msg/PairMeass")
(setf (get ins_msg::PairMeass :definition-)
      "
uint16      swarm_id
uint8       node_id
uint8       los_flag
uint64[2]   stamps

uint16      distance
int16       aoa
int16       pdoa1
int16       pdoa2


")



(provide :ins_msg/PairMeass "776a952d5c4aa0b600c75e49a23de2f6")


