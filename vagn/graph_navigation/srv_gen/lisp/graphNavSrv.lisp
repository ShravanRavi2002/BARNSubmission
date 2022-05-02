; Auto-generated. Do not edit!


(cl:in-package graph_navigation-srv)


;//! \htmlinclude graphNavSrv-request.msg.html

(cl:defclass <graphNavSrv-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df))
   (end
    :reader end
    :initarg :end
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
)

(cl:defclass graphNavSrv-request (<graphNavSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graphNavSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graphNavSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_navigation-srv:<graphNavSrv-request> is deprecated: use graph_navigation-srv:graphNavSrv-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <graphNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:start-val is deprecated.  Use graph_navigation-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <graphNavSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:end-val is deprecated.  Use graph_navigation-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graphNavSrv-request>) ostream)
  "Serializes a message object of type '<graphNavSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graphNavSrv-request>) istream)
  "Deserializes a message object of type '<graphNavSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graphNavSrv-request>)))
  "Returns string type for a service object of type '<graphNavSrv-request>"
  "graph_navigation/graphNavSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graphNavSrv-request)))
  "Returns string type for a service object of type 'graphNavSrv-request"
  "graph_navigation/graphNavSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graphNavSrv-request>)))
  "Returns md5sum for a message object of type '<graphNavSrv-request>"
  "c6e7260a7c65d3e3a90b70afa473a36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graphNavSrv-request)))
  "Returns md5sum for a message object of type 'graphNavSrv-request"
  "c6e7260a7c65d3e3a90b70afa473a36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graphNavSrv-request>)))
  "Returns full string definition for message of type '<graphNavSrv-request>"
  (cl:format cl:nil "amrl_msgs/Pose2Df start~%amrl_msgs/Pose2Df end~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graphNavSrv-request)))
  "Returns full string definition for message of type 'graphNavSrv-request"
  (cl:format cl:nil "amrl_msgs/Pose2Df start~%amrl_msgs/Pose2Df end~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graphNavSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graphNavSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'graphNavSrv-request
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude graphNavSrv-response.msg.html

(cl:defclass <graphNavSrv-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass graphNavSrv-response (<graphNavSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graphNavSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graphNavSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_navigation-srv:<graphNavSrv-response> is deprecated: use graph_navigation-srv:graphNavSrv-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <graphNavSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_navigation-srv:plan-val is deprecated.  Use graph_navigation-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graphNavSrv-response>) ostream)
  "Serializes a message object of type '<graphNavSrv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graphNavSrv-response>) istream)
  "Deserializes a message object of type '<graphNavSrv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graphNavSrv-response>)))
  "Returns string type for a service object of type '<graphNavSrv-response>"
  "graph_navigation/graphNavSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graphNavSrv-response)))
  "Returns string type for a service object of type 'graphNavSrv-response"
  "graph_navigation/graphNavSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graphNavSrv-response>)))
  "Returns md5sum for a message object of type '<graphNavSrv-response>"
  "c6e7260a7c65d3e3a90b70afa473a36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graphNavSrv-response)))
  "Returns md5sum for a message object of type 'graphNavSrv-response"
  "c6e7260a7c65d3e3a90b70afa473a36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graphNavSrv-response>)))
  "Returns full string definition for message of type '<graphNavSrv-response>"
  (cl:format cl:nil "int32[] plan~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graphNavSrv-response)))
  "Returns full string definition for message of type 'graphNavSrv-response"
  (cl:format cl:nil "int32[] plan~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graphNavSrv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graphNavSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'graphNavSrv-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'graphNavSrv)))
  'graphNavSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'graphNavSrv)))
  'graphNavSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graphNavSrv)))
  "Returns string type for a service object of type '<graphNavSrv>"
  "graph_navigation/graphNavSrv")