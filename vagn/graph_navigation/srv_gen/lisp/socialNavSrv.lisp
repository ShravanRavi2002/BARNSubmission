; Auto-generated. Do not edit!


(cl:in-package graph_navigation-srv)


;//! \htmlinclude socialNavSrv-request.msg.html

(cl:defclass <socialNavSrv-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df))
   (loc
    :reader loc
    :initarg :loc
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (odom
    :reader odom
    :initarg :odom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (laser
    :reader laser
    :initarg :laser
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (human_poses
    :reader human_poses
    :initarg :human_poses
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (human_vels
    :reader human_vels
    :initarg :human_vels
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass socialNavSrv-request (<socialNavSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <socialNavSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'socialNavSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_navigation-srv:<socialNavSrv-request> is deprecated: use graph_navigation-srv:socialNavSrv-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:action-val is deprecated.  Use graph_navigation-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:goal_pose-val is deprecated.  Use graph_navigation-srv:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'loc-val :lambda-list '(m))
(cl:defmethod loc-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:loc-val is deprecated.  Use graph_navigation-srv:loc instead.")
  (loc m))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:odom-val is deprecated.  Use graph_navigation-srv:odom instead.")
  (odom m))

(cl:ensure-generic-function 'laser-val :lambda-list '(m))
(cl:defmethod laser-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:laser-val is deprecated.  Use graph_navigation-srv:laser instead.")
  (laser m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:time-val is deprecated.  Use graph_navigation-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'human_poses-val :lambda-list '(m))
(cl:defmethod human_poses-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:human_poses-val is deprecated.  Use graph_navigation-srv:human_poses instead.")
  (human_poses m))

(cl:ensure-generic-function 'human_vels-val :lambda-list '(m))
(cl:defmethod human_vels-val ((m <socialNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:human_vels-val is deprecated.  Use graph_navigation-srv:human_vels instead.")
  (human_vels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <socialNavSrv-request>) ostream)
  "Serializes a message object of type '<socialNavSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laser) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'human_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'human_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'human_vels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'human_vels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <socialNavSrv-request>) istream)
  "Deserializes a message object of type '<socialNavSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laser) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_vels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_vels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<socialNavSrv-request>)))
  "Returns string type for a service object of type '<socialNavSrv-request>"
  "graph_navigation/socialNavSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'socialNavSrv-request)))
  "Returns string type for a service object of type 'socialNavSrv-request"
  "graph_navigation/socialNavSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<socialNavSrv-request>)))
  "Returns md5sum for a message object of type '<socialNavSrv-request>"
  "f7baac1423368c10d81e6b27873e08cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'socialNavSrv-request)))
  "Returns md5sum for a message object of type 'socialNavSrv-request"
  "f7baac1423368c10d81e6b27873e08cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<socialNavSrv-request>)))
  "Returns full string definition for message of type '<socialNavSrv-request>"
  (cl:format cl:nil "int32 action~%amrl_msgs/Pose2Df goal_pose~%geometry_msgs/Pose2D loc~%nav_msgs/Odometry odom~%sensor_msgs/LaserScan laser~%float64 time~%geometry_msgs/Pose2D[] human_poses~%geometry_msgs/Pose2D[] human_vels~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'socialNavSrv-request)))
  "Returns full string definition for message of type 'socialNavSrv-request"
  (cl:format cl:nil "int32 action~%amrl_msgs/Pose2Df goal_pose~%geometry_msgs/Pose2D loc~%nav_msgs/Odometry odom~%sensor_msgs/LaserScan laser~%float64 time~%geometry_msgs/Pose2D[] human_poses~%geometry_msgs/Pose2D[] human_vels~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <socialNavSrv-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laser))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_vels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <socialNavSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'socialNavSrv-request
    (cl:cons ':action (action msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':loc (loc msg))
    (cl:cons ':odom (odom msg))
    (cl:cons ':laser (laser msg))
    (cl:cons ':time (time msg))
    (cl:cons ':human_poses (human_poses msg))
    (cl:cons ':human_vels (human_vels msg))
))
;//! \htmlinclude socialNavSrv-response.msg.html

(cl:defclass <socialNavSrv-response> (roslisp-msg-protocol:ros-message)
  ((cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type cl:float
    :initform 0.0)
   (cmd_curve
    :reader cmd_curve
    :initarg :cmd_curve
    :type cl:float
    :initform 0.0)
   (local_target
    :reader local_target
    :initarg :local_target
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (target_id
    :reader target_id
    :initarg :target_id
    :type cl:integer
    :initform 0))
)

(cl:defclass socialNavSrv-response (<socialNavSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <socialNavSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'socialNavSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_navigation-srv:<socialNavSrv-response> is deprecated: use graph_navigation-srv:socialNavSrv-response instead.")))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <socialNavSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:cmd_vel-val is deprecated.  Use graph_navigation-srv:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'cmd_curve-val :lambda-list '(m))
(cl:defmethod cmd_curve-val ((m <socialNavSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:cmd_curve-val is deprecated.  Use graph_navigation-srv:cmd_curve instead.")
  (cmd_curve m))

(cl:ensure-generic-function 'local_target-val :lambda-list '(m))
(cl:defmethod local_target-val ((m <socialNavSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:local_target-val is deprecated.  Use graph_navigation-srv:local_target instead.")
  (local_target m))

(cl:ensure-generic-function 'target_id-val :lambda-list '(m))
(cl:defmethod target_id-val ((m <socialNavSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:target_id-val is deprecated.  Use graph_navigation-srv:target_id instead.")
  (target_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <socialNavSrv-response>) ostream)
  "Serializes a message object of type '<socialNavSrv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_curve))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_target) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <socialNavSrv-response>) istream)
  "Deserializes a message object of type '<socialNavSrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_curve) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_target) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<socialNavSrv-response>)))
  "Returns string type for a service object of type '<socialNavSrv-response>"
  "graph_navigation/socialNavSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'socialNavSrv-response)))
  "Returns string type for a service object of type 'socialNavSrv-response"
  "graph_navigation/socialNavSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<socialNavSrv-response>)))
  "Returns md5sum for a message object of type '<socialNavSrv-response>"
  "f7baac1423368c10d81e6b27873e08cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'socialNavSrv-response)))
  "Returns md5sum for a message object of type 'socialNavSrv-response"
  "f7baac1423368c10d81e6b27873e08cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<socialNavSrv-response>)))
  "Returns full string definition for message of type '<socialNavSrv-response>"
  (cl:format cl:nil "float32 cmd_vel~%float32 cmd_curve~%geometry_msgs/Pose2D local_target~%int32 target_id~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'socialNavSrv-response)))
  "Returns full string definition for message of type 'socialNavSrv-response"
  (cl:format cl:nil "float32 cmd_vel~%float32 cmd_curve~%geometry_msgs/Pose2D local_target~%int32 target_id~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <socialNavSrv-response>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_target))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <socialNavSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'socialNavSrv-response
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':cmd_curve (cmd_curve msg))
    (cl:cons ':local_target (local_target msg))
    (cl:cons ':target_id (target_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'socialNavSrv)))
  'socialNavSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'socialNavSrv)))
  'socialNavSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'socialNavSrv)))
  "Returns string type for a service object of type '<socialNavSrv>"
  "graph_navigation/socialNavSrv")