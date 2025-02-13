// Generated by gencpp from file ins_msg/WheelSpeedMsg.msg
// DO NOT EDIT!


#ifndef INS_MSG_MESSAGE_WHEELSPEEDMSG_H
#define INS_MSG_MESSAGE_WHEELSPEEDMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ins_msg
{
template <class ContainerAllocator>
struct WheelSpeedMsg_
{
  typedef WheelSpeedMsg_<ContainerAllocator> Type;

  WheelSpeedMsg_()
    : header()
    , utime(0)
    , left_wheel_speed(0.0)
    , left_encoder_sum(0)
    , right_wheel_speed(0.0)
    , right_encoder_sum(0)
    , steering_angle(0.0)
    , msg_cnt(0)  {
    }
  WheelSpeedMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , utime(0)
    , left_wheel_speed(0.0)
    , left_encoder_sum(0)
    , right_wheel_speed(0.0)
    , right_encoder_sum(0)
    , steering_angle(0.0)
    , msg_cnt(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _utime_type;
  _utime_type utime;

   typedef float _left_wheel_speed_type;
  _left_wheel_speed_type left_wheel_speed;

   typedef int64_t _left_encoder_sum_type;
  _left_encoder_sum_type left_encoder_sum;

   typedef float _right_wheel_speed_type;
  _right_wheel_speed_type right_wheel_speed;

   typedef int64_t _right_encoder_sum_type;
  _right_encoder_sum_type right_encoder_sum;

   typedef float _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef uint8_t _msg_cnt_type;
  _msg_cnt_type msg_cnt;





  typedef boost::shared_ptr< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> const> ConstPtr;

}; // struct WheelSpeedMsg_

typedef ::ins_msg::WheelSpeedMsg_<std::allocator<void> > WheelSpeedMsg;

typedef boost::shared_ptr< ::ins_msg::WheelSpeedMsg > WheelSpeedMsgPtr;
typedef boost::shared_ptr< ::ins_msg::WheelSpeedMsg const> WheelSpeedMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ins_msg::WheelSpeedMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ins_msg::WheelSpeedMsg_<ContainerAllocator1> & lhs, const ::ins_msg::WheelSpeedMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.utime == rhs.utime &&
    lhs.left_wheel_speed == rhs.left_wheel_speed &&
    lhs.left_encoder_sum == rhs.left_encoder_sum &&
    lhs.right_wheel_speed == rhs.right_wheel_speed &&
    lhs.right_encoder_sum == rhs.right_encoder_sum &&
    lhs.steering_angle == rhs.steering_angle &&
    lhs.msg_cnt == rhs.msg_cnt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ins_msg::WheelSpeedMsg_<ContainerAllocator1> & lhs, const ::ins_msg::WheelSpeedMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ins_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96bbad967ec029252d2e525db16ca7a1";
  }

  static const char* value(const ::ins_msg::WheelSpeedMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96bbad967ec02925ULL;
  static const uint64_t static_value2 = 0x2d2e525db16ca7a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ins_msg/WheelSpeedMsg";
  }

  static const char* value(const ::ins_msg::WheelSpeedMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"int64 utime\n"
"float32 left_wheel_speed\n"
"int64 left_encoder_sum\n"
"float32 right_wheel_speed\n"
"int64 right_encoder_sum\n"
"float32 steering_angle\n"
"uint8 msg_cnt\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ins_msg::WheelSpeedMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.utime);
      stream.next(m.left_wheel_speed);
      stream.next(m.left_encoder_sum);
      stream.next(m.right_wheel_speed);
      stream.next(m.right_encoder_sum);
      stream.next(m.steering_angle);
      stream.next(m.msg_cnt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelSpeedMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ins_msg::WheelSpeedMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ins_msg::WheelSpeedMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "utime: ";
    Printer<int64_t>::stream(s, indent + "  ", v.utime);
    s << indent << "left_wheel_speed: ";
    Printer<float>::stream(s, indent + "  ", v.left_wheel_speed);
    s << indent << "left_encoder_sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.left_encoder_sum);
    s << indent << "right_wheel_speed: ";
    Printer<float>::stream(s, indent + "  ", v.right_wheel_speed);
    s << indent << "right_encoder_sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.right_encoder_sum);
    s << indent << "steering_angle: ";
    Printer<float>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "msg_cnt: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.msg_cnt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INS_MSG_MESSAGE_WHEELSPEEDMSG_H
