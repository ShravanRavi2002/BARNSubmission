/* Auto-generated by genmsg_cpp for file /home/amrl-user/nav_challange/live_play_eval/graph_navigation/srv/socialNavSrv.srv */
#ifndef GRAPH_NAVIGATION_SERVICE_SOCIALNAVSRV_H
#define GRAPH_NAVIGATION_SERVICE_SOCIALNAVSRV_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"

#include "amrl_msgs/Pose2Df.h"
#include "geometry_msgs/Pose2D.h"
#include "nav_msgs/Odometry.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Pose2D.h"
#include "geometry_msgs/Pose2D.h"


#include "geometry_msgs/Pose2D.h"

namespace graph_navigation
{
template <class ContainerAllocator>
struct socialNavSrvRequest_ {
  typedef socialNavSrvRequest_<ContainerAllocator> Type;

  socialNavSrvRequest_()
  : action(0)
  , goal_pose()
  , loc()
  , odom()
  , laser()
  , time(0.0)
  , human_poses()
  , human_vels()
  {
  }

  socialNavSrvRequest_(const ContainerAllocator& _alloc)
  : action(0)
  , goal_pose(_alloc)
  , loc(_alloc)
  , odom(_alloc)
  , laser(_alloc)
  , time(0.0)
  , human_poses(_alloc)
  , human_vels(_alloc)
  {
  }

  typedef int32_t _action_type;
  int32_t action;

  typedef  ::amrl_msgs::Pose2Df_<ContainerAllocator>  _goal_pose_type;
   ::amrl_msgs::Pose2Df_<ContainerAllocator>  goal_pose;

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _loc_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  loc;

  typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _odom_type;
   ::nav_msgs::Odometry_<ContainerAllocator>  odom;

  typedef  ::sensor_msgs::LaserScan_<ContainerAllocator>  _laser_type;
   ::sensor_msgs::LaserScan_<ContainerAllocator>  laser;

  typedef double _time_type;
  double time;

  typedef std::vector< ::geometry_msgs::Pose2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose2D_<ContainerAllocator> >::other >  _human_poses_type;
  std::vector< ::geometry_msgs::Pose2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose2D_<ContainerAllocator> >::other >  human_poses;

  typedef std::vector< ::geometry_msgs::Pose2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose2D_<ContainerAllocator> >::other >  _human_vels_type;
  std::vector< ::geometry_msgs::Pose2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose2D_<ContainerAllocator> >::other >  human_vels;


  typedef boost::shared_ptr< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct socialNavSrvRequest
typedef  ::graph_navigation::socialNavSrvRequest_<std::allocator<void> > socialNavSrvRequest;

typedef boost::shared_ptr< ::graph_navigation::socialNavSrvRequest> socialNavSrvRequestPtr;
typedef boost::shared_ptr< ::graph_navigation::socialNavSrvRequest const> socialNavSrvRequestConstPtr;



template <class ContainerAllocator>
struct socialNavSrvResponse_ {
  typedef socialNavSrvResponse_<ContainerAllocator> Type;

  socialNavSrvResponse_()
  : cmd_vel(0.0)
  , cmd_curve(0.0)
  , local_target()
  , target_id(0)
  {
  }

  socialNavSrvResponse_(const ContainerAllocator& _alloc)
  : cmd_vel(0.0)
  , cmd_curve(0.0)
  , local_target(_alloc)
  , target_id(0)
  {
  }

  typedef float _cmd_vel_type;
  float cmd_vel;

  typedef float _cmd_curve_type;
  float cmd_curve;

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _local_target_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  local_target;

  typedef int32_t _target_id_type;
  int32_t target_id;


  typedef boost::shared_ptr< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct socialNavSrvResponse
typedef  ::graph_navigation::socialNavSrvResponse_<std::allocator<void> > socialNavSrvResponse;

typedef boost::shared_ptr< ::graph_navigation::socialNavSrvResponse> socialNavSrvResponsePtr;
typedef boost::shared_ptr< ::graph_navigation::socialNavSrvResponse const> socialNavSrvResponseConstPtr;


struct socialNavSrv
{

typedef socialNavSrvRequest Request;
typedef socialNavSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct socialNavSrv
} // namespace graph_navigation

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "13277f5033f27d56fe4431aa1fedc627";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x13277f5033f27d56ULL;
  static const uint64_t static_value2 = 0xfe4431aa1fedc627ULL;
};

template<class ContainerAllocator>
struct DataType< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "graph_navigation/socialNavSrvRequest";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 action\n\
amrl_msgs/Pose2Df goal_pose\n\
geometry_msgs/Pose2D loc\n\
nav_msgs/Odometry odom\n\
sensor_msgs/LaserScan laser\n\
float64 time\n\
geometry_msgs/Pose2D[] human_poses\n\
geometry_msgs/Pose2D[] human_vels\n\
\n\
================================================================================\n\
MSG: amrl_msgs/Pose2Df\n\
float32 x\n\
float32 y\n\
float32 theta\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# Deprecated\n\
# Please use the full 3D pose.\n\
\n\
# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\
\n\
# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\
\n\
\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
================================================================================\n\
MSG: nav_msgs/Odometry\n\
# This represents an estimate of a position and velocity in free space.  \n\
# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n\
# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n\
Header header\n\
string child_frame_id\n\
geometry_msgs/PoseWithCovariance pose\n\
geometry_msgs/TwistWithCovariance twist\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseWithCovariance\n\
# This represents a pose in free space with uncertainty.\n\
\n\
Pose pose\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TwistWithCovariance\n\
# This expresses velocity in free space with uncertainty.\n\
\n\
Twist twist\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: sensor_msgs/LaserScan\n\
# Single scan from a planar laser range-finder\n\
#\n\
# If you have another ranging device with different behavior (e.g. a sonar\n\
# array), please find or create a different message, since applications\n\
# will make fairly laser-specific assumptions about this data\n\
\n\
Header header            # timestamp in the header is the acquisition time of \n\
                         # the first ray in the scan.\n\
                         #\n\
                         # in frame frame_id, angles are measured around \n\
                         # the positive Z axis (counterclockwise, if Z is up)\n\
                         # with zero angle being forward along the x axis\n\
                         \n\
float32 angle_min        # start angle of the scan [rad]\n\
float32 angle_max        # end angle of the scan [rad]\n\
float32 angle_increment  # angular distance between measurements [rad]\n\
\n\
float32 time_increment   # time between measurements [seconds] - if your scanner\n\
                         # is moving, this will be used in interpolating position\n\
                         # of 3d points\n\
float32 scan_time        # time between scans [seconds]\n\
\n\
float32 range_min        # minimum range value [m]\n\
float32 range_max        # maximum range value [m]\n\
\n\
float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)\n\
float32[] intensities    # intensity data [device-specific units].  If your\n\
                         # device does not provide intensities, please leave\n\
                         # the array empty.\n\
\n\
";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cad38f811f0bb09a90ee26031f3342ab";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xcad38f811f0bb09aULL;
  static const uint64_t static_value2 = 0x90ee26031f3342abULL;
};

template<class ContainerAllocator>
struct DataType< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "graph_navigation/socialNavSrvResponse";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 cmd_vel\n\
float32 cmd_curve\n\
geometry_msgs/Pose2D local_target\n\
int32 target_id\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# Deprecated\n\
# Please use the full 3D pose.\n\
\n\
# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\
\n\
# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\
\n\
\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
";
  }

  static const char* value(const  ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::graph_navigation::socialNavSrvRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.action);
    stream.next(m.goal_pose);
    stream.next(m.loc);
    stream.next(m.odom);
    stream.next(m.laser);
    stream.next(m.time);
    stream.next(m.human_poses);
    stream.next(m.human_vels);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct socialNavSrvRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::graph_navigation::socialNavSrvResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.cmd_vel);
    stream.next(m.cmd_curve);
    stream.next(m.local_target);
    stream.next(m.target_id);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct socialNavSrvResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<graph_navigation::socialNavSrv> {
  static const char* value() 
  {
    return "f7baac1423368c10d81e6b27873e08cf";
  }

  static const char* value(const graph_navigation::socialNavSrv&) { return value(); } 
};

template<>
struct DataType<graph_navigation::socialNavSrv> {
  static const char* value() 
  {
    return "graph_navigation/socialNavSrv";
  }

  static const char* value(const graph_navigation::socialNavSrv&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<graph_navigation::socialNavSrvRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "f7baac1423368c10d81e6b27873e08cf";
  }

  static const char* value(const graph_navigation::socialNavSrvRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<graph_navigation::socialNavSrvRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "graph_navigation/socialNavSrv";
  }

  static const char* value(const graph_navigation::socialNavSrvRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<graph_navigation::socialNavSrvResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "f7baac1423368c10d81e6b27873e08cf";
  }

  static const char* value(const graph_navigation::socialNavSrvResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<graph_navigation::socialNavSrvResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "graph_navigation/socialNavSrv";
  }

  static const char* value(const graph_navigation::socialNavSrvResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // GRAPH_NAVIGATION_SERVICE_SOCIALNAVSRV_H
