; Auto-generated. Do not edit!


(cl:in-package automi_v1-msg)


;//! \htmlinclude object.msg.html

(cl:defclass <object> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orient
    :reader orient
    :initarg :orient
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dims
    :reader dims
    :initarg :dims
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (occupancy_ratio
    :reader occupancy_ratio
    :initarg :occupancy_ratio
    :type cl:float
    :initform 0.0))
)

(cl:defclass object (<object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automi_v1-msg:<object> is deprecated: use automi_v1-msg:object instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:header-val is deprecated.  Use automi_v1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:pos-val is deprecated.  Use automi_v1-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'orient-val :lambda-list '(m))
(cl:defmethod orient-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:orient-val is deprecated.  Use automi_v1-msg:orient instead.")
  (orient m))

(cl:ensure-generic-function 'dims-val :lambda-list '(m))
(cl:defmethod dims-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:dims-val is deprecated.  Use automi_v1-msg:dims instead.")
  (dims m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:type-val is deprecated.  Use automi_v1-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'occupancy_ratio-val :lambda-list '(m))
(cl:defmethod occupancy_ratio-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automi_v1-msg:occupancy_ratio-val is deprecated.  Use automi_v1-msg:occupancy_ratio instead.")
  (occupancy_ratio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object>) ostream)
  "Serializes a message object of type '<object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orient) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dims))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dims))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'occupancy_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object>) istream)
  "Deserializes a message object of type '<object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orient) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dims) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dims)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupancy_ratio) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object>)))
  "Returns string type for a message object of type '<object>"
  "automi_v1/object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object)))
  "Returns string type for a message object of type 'object"
  "automi_v1/object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object>)))
  "Returns md5sum for a message object of type '<object>"
  "7ca7eab4d3814df94540aa2e716e6f4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object)))
  "Returns md5sum for a message object of type 'object"
  "7ca7eab4d3814df94540aa2e716e6f4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object>)))
  "Returns full string definition for message of type '<object>"
  (cl:format cl:nil "Header header ~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 orient~%float32[] dims~%uint8 type~%float32 occupancy_ratio~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object)))
  "Returns full string definition for message of type 'object"
  (cl:format cl:nil "Header header ~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 orient~%float32[] dims~%uint8 type~%float32 occupancy_ratio~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orient))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dims) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object>))
  "Converts a ROS message object to a list"
  (cl:list 'object
    (cl:cons ':header (header msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':orient (orient msg))
    (cl:cons ':dims (dims msg))
    (cl:cons ':type (type msg))
    (cl:cons ':occupancy_ratio (occupancy_ratio msg))
))
