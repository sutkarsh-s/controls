;; Auto-generated. Do not edit!


(when (boundp 'automi_v1::object)
  (if (not (find-package "AUTOMI_V1"))
    (make-package "AUTOMI_V1"))
  (shadow 'object (find-package "AUTOMI_V1")))
(unless (find-package "AUTOMI_V1::OBJECT")
  (make-package "AUTOMI_V1::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass automi_v1::object
  :super ros::object
  :slots (_header _pos _orient _dims _type _occupancy_ratio ))

(defmethod automi_v1::object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos __pos) (instance geometry_msgs::Vector3 :init))
    ((:orient __orient) (instance geometry_msgs::Vector3 :init))
    ((:dims __dims) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) 0)
    ((:occupancy_ratio __occupancy_ratio) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos __pos)
   (setq _orient __orient)
   (setq _dims __dims)
   (setq _type (round __type))
   (setq _occupancy_ratio (float __occupancy_ratio))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:orient
   (&rest __orient)
   (if (keywordp (car __orient))
       (send* _orient __orient)
     (progn
       (if __orient (setq _orient (car __orient)))
       _orient)))
  (:dims
   (&optional __dims)
   (if __dims (setq _dims __dims)) _dims)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:occupancy_ratio
   (&optional __occupancy_ratio)
   (if __occupancy_ratio (setq _occupancy_ratio __occupancy_ratio)) _occupancy_ratio)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Vector3 _orient
    (send _orient :serialization-length)
    ;; float32[] _dims
    (* 4    (length _dims)) 4
    ;; uint8 _type
    1
    ;; float32 _occupancy_ratio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Vector3 _orient
       (send _orient :serialize s)
     ;; float32[] _dims
     (write-long (length _dims) s)
     (dotimes (i (length _dims))
       (sys::poke (elt _dims i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _occupancy_ratio
       (sys::poke _occupancy_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Vector3 _orient
     (send _orient :deserialize buf ptr-) (incf ptr- (send _orient :serialization-length))
   ;; float32[] _dims
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dims (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dims i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _occupancy_ratio
     (setq _occupancy_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get automi_v1::object :md5sum-) "7ca7eab4d3814df94540aa2e716e6f4a")
(setf (get automi_v1::object :datatype-) "automi_v1/object")
(setf (get automi_v1::object :definition-)
      "Header header 
geometry_msgs/Vector3 pos
geometry_msgs/Vector3 orient
float32[] dims
uint8 type
float32 occupancy_ratio

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
")



(provide :automi_v1/object "7ca7eab4d3814df94540aa2e716e6f4a")


