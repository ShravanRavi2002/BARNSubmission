; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-srv)


;//! \htmlinclude SocialPipsSrv-request.msg.html

(cl:defclass <SocialPipsSrv-request> (roslisp-msg-protocol:ros-message)
  ((robot_poses
    :reader robot_poses
    :initarg :robot_poses
    :type (cl:vector amrl_msgs-msg:Pose2Df)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:Pose2Df :initial-element (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
   (robot_vels
    :reader robot_vels
    :initarg :robot_vels
    :type (cl:vector amrl_msgs-msg:Pose2Df)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:Pose2Df :initial-element (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
   (human_poses
    :reader human_poses
    :initarg :human_poses
    :type (cl:vector amrl_msgs-msg:Pose2Df)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:Pose2Df :initial-element (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
   (human_vels
    :reader human_vels
    :initarg :human_vels
    :type (cl:vector amrl_msgs-msg:Pose2Df)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:Pose2Df :initial-element (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df))
   (local_target
    :reader local_target
    :initarg :local_target
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df))
   (door_pose
    :reader door_pose
    :initarg :door_pose
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df))
   (door_state
    :reader door_state
    :initarg :door_state
    :type cl:fixnum
    :initform 0)
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:fixnum
    :initform 0)
   (follow_target
    :reader follow_target
    :initarg :follow_target
    :type cl:integer
    :initform 0))
)

(cl:defclass SocialPipsSrv-request (<SocialPipsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SocialPipsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SocialPipsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-srv:<SocialPipsSrv-request> is deprecated: use amrl_msgs-srv:SocialPipsSrv-request instead.")))

(cl:ensure-generic-function 'robot_poses-val :lambda-list '(m))
(cl:defmethod robot_poses-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:robot_poses-val is deprecated.  Use amrl_msgs-srv:robot_poses instead.")
  (robot_poses m))

(cl:ensure-generic-function 'robot_vels-val :lambda-list '(m))
(cl:defmethod robot_vels-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:robot_vels-val is deprecated.  Use amrl_msgs-srv:robot_vels instead.")
  (robot_vels m))

(cl:ensure-generic-function 'human_poses-val :lambda-list '(m))
(cl:defmethod human_poses-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:human_poses-val is deprecated.  Use amrl_msgs-srv:human_poses instead.")
  (human_poses m))

(cl:ensure-generic-function 'human_vels-val :lambda-list '(m))
(cl:defmethod human_vels-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:human_vels-val is deprecated.  Use amrl_msgs-srv:human_vels instead.")
  (human_vels m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:goal_pose-val is deprecated.  Use amrl_msgs-srv:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'local_target-val :lambda-list '(m))
(cl:defmethod local_target-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:local_target-val is deprecated.  Use amrl_msgs-srv:local_target instead.")
  (local_target m))

(cl:ensure-generic-function 'door_pose-val :lambda-list '(m))
(cl:defmethod door_pose-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:door_pose-val is deprecated.  Use amrl_msgs-srv:door_pose instead.")
  (door_pose m))

(cl:ensure-generic-function 'door_state-val :lambda-list '(m))
(cl:defmethod door_state-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:door_state-val is deprecated.  Use amrl_msgs-srv:door_state instead.")
  (door_state m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:robot_state-val is deprecated.  Use amrl_msgs-srv:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'follow_target-val :lambda-list '(m))
(cl:defmethod follow_target-val ((m <SocialPipsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:follow_target-val is deprecated.  Use amrl_msgs-srv:follow_target instead.")
  (follow_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SocialPipsSrv-request>) ostream)
  "Serializes a message object of type '<SocialPipsSrv-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_vels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_vels))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_state)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'follow_target)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SocialPipsSrv-request>) istream)
  "Deserializes a message object of type '<SocialPipsSrv-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:Pose2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_vels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_vels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:Pose2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:Pose2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_vels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_vels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:Pose2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_state)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'follow_target) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SocialPipsSrv-request>)))
  "Returns string type for a service object of type '<SocialPipsSrv-request>"
  "amrl_msgs/SocialPipsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SocialPipsSrv-request)))
  "Returns string type for a service object of type 'SocialPipsSrv-request"
  "amrl_msgs/SocialPipsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SocialPipsSrv-request>)))
  "Returns md5sum for a message object of type '<SocialPipsSrv-request>"
  "5aa4c05a0d89a6541e472d48f0f846f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SocialPipsSrv-request)))
  "Returns md5sum for a message object of type 'SocialPipsSrv-request"
  "5aa4c05a0d89a6541e472d48f0f846f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SocialPipsSrv-request>)))
  "Returns full string definition for message of type '<SocialPipsSrv-request>"
  (cl:format cl:nil "Pose2Df[] robot_poses~%Pose2Df[] robot_vels~%Pose2Df[] human_poses~%Pose2Df[] human_vels~%Pose2Df goal_pose~%Pose2Df local_target~%Pose2Df door_pose~%uint8 door_state~%~%~%~%~%uint8 robot_state~%~%int32 follow_target~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SocialPipsSrv-request)))
  "Returns full string definition for message of type 'SocialPipsSrv-request"
  (cl:format cl:nil "Pose2Df[] robot_poses~%Pose2Df[] robot_vels~%Pose2Df[] human_poses~%Pose2Df[] human_vels~%Pose2Df goal_pose~%Pose2Df local_target~%Pose2Df door_pose~%uint8 door_state~%~%~%~%~%uint8 robot_state~%~%int32 follow_target~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SocialPipsSrv-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_vels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_vels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_pose))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SocialPipsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SocialPipsSrv-request
    (cl:cons ':robot_poses (robot_poses msg))
    (cl:cons ':robot_vels (robot_vels msg))
    (cl:cons ':human_poses (human_poses msg))
    (cl:cons ':human_vels (human_vels msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':local_target (local_target msg))
    (cl:cons ':door_pose (door_pose msg))
    (cl:cons ':door_state (door_state msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':follow_target (follow_target msg))
))
;//! \htmlinclude SocialPipsSrv-response.msg.html

(cl:defclass <SocialPipsSrv-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0))
)

(cl:defclass SocialPipsSrv-response (<SocialPipsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SocialPipsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SocialPipsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-srv:<SocialPipsSrv-response> is deprecated: use amrl_msgs-srv:SocialPipsSrv-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SocialPipsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-srv:action-val is deprecated.  Use amrl_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SocialPipsSrv-response>) ostream)
  "Serializes a message object of type '<SocialPipsSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SocialPipsSrv-response>) istream)
  "Deserializes a message object of type '<SocialPipsSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SocialPipsSrv-response>)))
  "Returns string type for a service object of type '<SocialPipsSrv-response>"
  "amrl_msgs/SocialPipsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SocialPipsSrv-response)))
  "Returns string type for a service object of type 'SocialPipsSrv-response"
  "amrl_msgs/SocialPipsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SocialPipsSrv-response>)))
  "Returns md5sum for a message object of type '<SocialPipsSrv-response>"
  "5aa4c05a0d89a6541e472d48f0f846f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SocialPipsSrv-response)))
  "Returns md5sum for a message object of type 'SocialPipsSrv-response"
  "5aa4c05a0d89a6541e472d48f0f846f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SocialPipsSrv-response>)))
  "Returns full string definition for message of type '<SocialPipsSrv-response>"
  (cl:format cl:nil "int32 action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SocialPipsSrv-response)))
  "Returns full string definition for message of type 'SocialPipsSrv-response"
  (cl:format cl:nil "int32 action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SocialPipsSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SocialPipsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SocialPipsSrv-response
    (cl:cons ':action (action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SocialPipsSrv)))
  'SocialPipsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SocialPipsSrv)))
  'SocialPipsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SocialPipsSrv)))
  "Returns string type for a service object of type '<SocialPipsSrv>"
  "amrl_msgs/SocialPipsSrv")