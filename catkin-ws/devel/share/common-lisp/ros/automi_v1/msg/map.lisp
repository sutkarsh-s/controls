; Auto-generated. Do not edit!


(cl:in-package automi_v1-msg)


;//! \htmlinclude map.msg.html

(cl:defclass <map> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bot_pos
    :reader bot_pos
    :initarg :bot_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector automi_v1-msg:object)
   :initform (cl:make-array 0 :element-type 'automi_v1-msg:object :initial-element (cl:make-instance 'automi_v1-msg:object))))
)

(cl:defclass map (<map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automi_v1-msg:<map> is deprecated: use automi_v1-msg:map instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:header-val is deprecated.  Use automi_v1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bot_pos-val :lambda-list '(m))
(cl:defmethod bot_pos-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:bot_pos-val is deprecated.  Use automi_v1-msg:bot_pos instead.")
  (bot_pos m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:objects-val is deprecated.  Use automi_v1-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <map>) ostream)
  "Serializes a message object of type '<map>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bot_pos) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <map>) istream)
  "Deserializes a message object of type '<map>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bot_pos) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'automi_v1-msg:object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<map>)))
  "Returns string type for a message object of type '<map>"
  "automi_v1/map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'map)))
  "Returns string type for a message object of type 'map"
  "automi_v1/map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<map>)))
  "Returns md5sum for a message object of type '<map>"
  "dbb542f532cb6f654d6a20efa3e5f086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'map)))
  "Returns md5sum for a message object of type 'map"
  "dbb542f532cb6f654d6a20efa3e5f086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<map>)))
  "Returns full string definition for message of type '<map>"
  (cl:format cl:nil "Header header ~%~%#bot ~%geometry_msgs/Vector3 bot_pos~%#bot orient in some form~%~%automi_v1/object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: automi_v1/object~%Header header ~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 orient~%float32[] dims~%uint8 type~%float32 occupancy_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'map)))
  "Returns full string definition for message of type 'map"
  (cl:format cl:nil "Header header ~%~%#bot ~%geometry_msgs/Vector3 bot_pos~%#bot orient in some form~%~%automi_v1/object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: automi_v1/object~%Header header ~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 orient~%float32[] dims~%uint8 type~%float32 occupancy_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <map>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bot_pos))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <map>))
  "Converts a ROS message object to a list"
  (cl:list 'map
    (cl:cons ':header (header msg))
    (cl:cons ':bot_pos (bot_pos msg))
    (cl:cons ':objects (objects msg))
))
