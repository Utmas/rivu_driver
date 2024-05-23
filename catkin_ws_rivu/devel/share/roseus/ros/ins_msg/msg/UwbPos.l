;; Auto-generated. Do not edit!


(when (boundp 'ins_msg::UwbPos)
  (if (not (find-package "INS_MSG"))
    (make-package "INS_MSG"))
  (shadow 'UwbPos (find-package "INS_MSG")))
(unless (find-package "INS_MSG::UWBPOS")
  (make-package "INS_MSG::UWBPOS"))

(in-package "ROS")
;;//! \htmlinclude UwbPos.msg.html


(defclass ins_msg::UwbPos
  :super ros::object
  :slots (_dev_id _pos _cov ))

(defmethod ins_msg::UwbPos
  (:init
   (&key
    ((:dev_id __dev_id) 0)
    ((:pos __pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:cov __cov) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _dev_id (round __dev_id))
   (setq _pos __pos)
   (setq _cov __cov)
   self)
  (:dev_id
   (&optional __dev_id)
   (if __dev_id (setq _dev_id __dev_id)) _dev_id)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:cov
   (&optional __cov)
   (if __cov (setq _cov __cov)) _cov)
  (:serialization-length
   ()
   (+
    ;; uint32 _dev_id
    4
    ;; float32[3] _pos
    (* 4    3)
    ;; float32[6] _cov
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _dev_id
       (write-long _dev_id s)
     ;; float32[3] _pos
     (dotimes (i 3)
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _cov
     (dotimes (i 6)
       (sys::poke (elt _cov i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _dev_id
     (setq _dev_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[3] _pos
   (dotimes (i (length _pos))
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _cov
   (dotimes (i (length _cov))
     (setf (elt _cov i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get ins_msg::UwbPos :md5sum-) "b6aff7b7e64b76ac4c0149132212ab48")
(setf (get ins_msg::UwbPos :datatype-) "ins_msg/UwbPos")
(setf (get ins_msg::UwbPos :definition-)
      "uint32     dev_id
float32[3] pos
float32[6] cov

")



(provide :ins_msg/UwbPos "b6aff7b7e64b76ac4c0149132212ab48")


