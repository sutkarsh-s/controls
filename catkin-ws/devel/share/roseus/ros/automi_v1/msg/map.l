;; Auto-generated. Do not edit!


(when (boundp 'automi_v1::map)
  (if (not (find-package "AUTOMI_V1"))
    (make-package "AUTOMI_V1"))
  (shadow 'map (find-package "AUTOMI_V1")))
(unless (find-package "AUTOMI_V1::MAP")
  (make-package "AUTOMI_V1::MAP"))

(in-package "ROS")
;;//! \htmlinclude map.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass automi_v1::map
  :super ros::object
  :slots (_header _bot_pos _objects ))

(defmethod automi_v1::map
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bot_pos __bot_pos) (instance geometry_msgs::Vector3 :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance automi_v1::object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bot_pos __bot_pos)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bot_pos
   (&rest __bot_pos)
   (if (keywordp (car __bot_pos))
       (send* _bot_pos __bot_pos)
     (progn
       (if __bot_pos (setq _bot_pos (car __bot_pos)))
       _bot_pos)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _bot_pos
    (send _bot_pos :serialization-length)
    ;; automi_v1/object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _bot_pos
       (send _bot_pos :serialize s)
     ;; automi_v1/object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _bot_pos
     (send _bot_pos :deserialize buf ptr-) (incf ptr- (send _bot_pos :serialization-length))
   ;; automi_v1/object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance automi_v1::object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get automi_v1::map :md5sum-) "dbb542f532cb6f654d6a20efa3e5f086")
(setf (get automi_v1::map :datatype-) "automi_v1/map")
(setf (get automi_v1::map :definition-)
      "Header header 

#bot 
geometry_msgs/Vector3 bot_pos
#bot orient in some form

automi_v1/object[] objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: automi_v1/object
Header header 
geometry_msgs/Vector3 pos
geometry_msgs/Vector3 orient
float32[] dims
uint8 type
float32 occupancy_ratio

")



(provide :automi_v1/map "dbb542f532cb6f654d6a20efa3e5f086")


