// Generated by gencpp from file automi_v1/object.msg
// DO NOT EDIT!


#ifndef AUTOMI_V1_MESSAGE_OBJECT_H
#define AUTOMI_V1_MESSAGE_OBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace automi_v1
{
template <class ContainerAllocator>
struct object_
{
  typedef object_<ContainerAllocator> Type;

  object_()
    : header()
    , pos()
    , orient()
    , dims()
    , type(0)
    , occupancy_ratio(0.0)  {
    }
  object_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pos(_alloc)
    , orient(_alloc)
    , dims(_alloc)
    , type(0)
    , occupancy_ratio(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _pos_type;
  _pos_type pos;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _orient_type;
  _orient_type orient;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _dims_type;
  _dims_type dims;

   typedef uint8_t _type_type;
  _type_type type;

   typedef float _occupancy_ratio_type;
  _occupancy_ratio_type occupancy_ratio;





  typedef boost::shared_ptr< ::automi_v1::object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::automi_v1::object_<ContainerAllocator> const> ConstPtr;

}; // struct object_

typedef ::automi_v1::object_<std::allocator<void> > object;

typedef boost::shared_ptr< ::automi_v1::object > objectPtr;
typedef boost::shared_ptr< ::automi_v1::object const> objectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::automi_v1::object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::automi_v1::object_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::automi_v1::object_<ContainerAllocator1> & lhs, const ::automi_v1::object_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pos == rhs.pos &&
    lhs.orient == rhs.orient &&
    lhs.dims == rhs.dims &&
    lhs.type == rhs.type &&
    lhs.occupancy_ratio == rhs.occupancy_ratio;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::automi_v1::object_<ContainerAllocator1> & lhs, const ::automi_v1::object_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace automi_v1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::automi_v1::object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::automi_v1::object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automi_v1::object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automi_v1::object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automi_v1::object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automi_v1::object_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::automi_v1::object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7ca7eab4d3814df94540aa2e716e6f4a";
  }

  static const char* value(const ::automi_v1::object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7ca7eab4d3814df9ULL;
  static const uint64_t static_value2 = 0x4540aa2e716e6f4aULL;
};

template<class ContainerAllocator>
struct DataType< ::automi_v1::object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "automi_v1/object";
  }

  static const char* value(const ::automi_v1::object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::automi_v1::object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header \n"
"geometry_msgs/Vector3 pos\n"
"geometry_msgs/Vector3 orient\n"
"float32[] dims\n"
"uint8 type\n"
"float32 occupancy_ratio\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::automi_v1::object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::automi_v1::object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pos);
      stream.next(m.orient);
      stream.next(m.dims);
      stream.next(m.type);
      stream.next(m.occupancy_ratio);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::automi_v1::object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::automi_v1::object_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.pos);
    s << indent << "orient: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.orient);
    s << indent << "dims[]" << std::endl;
    for (size_t i = 0; i < v.dims.size(); ++i)
    {
      s << indent << "  dims[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.dims[i]);
    }
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "occupancy_ratio: ";
    Printer<float>::stream(s, indent + "  ", v.occupancy_ratio);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOMI_V1_MESSAGE_OBJECT_H
