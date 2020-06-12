// Generated by gencpp from file automi_v1/map.msg
// DO NOT EDIT!


#ifndef AUTOMI_V1_MESSAGE_MAP_H
#define AUTOMI_V1_MESSAGE_MAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <automi_v1/object.h>

namespace automi_v1
{
template <class ContainerAllocator>
struct map_
{
  typedef map_<ContainerAllocator> Type;

  map_()
    : header()
    , bot_pos()
    , objects()  {
    }
  map_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , bot_pos(_alloc)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _bot_pos_type;
  _bot_pos_type bot_pos;

   typedef std::vector< ::automi_v1::object_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::automi_v1::object_<ContainerAllocator> >::other >  _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::automi_v1::map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::automi_v1::map_<ContainerAllocator> const> ConstPtr;

}; // struct map_

typedef ::automi_v1::map_<std::allocator<void> > map;

typedef boost::shared_ptr< ::automi_v1::map > mapPtr;
typedef boost::shared_ptr< ::automi_v1::map const> mapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::automi_v1::map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::automi_v1::map_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::automi_v1::map_<ContainerAllocator1> & lhs, const ::automi_v1::map_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.bot_pos == rhs.bot_pos &&
    lhs.objects == rhs.objects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::automi_v1::map_<ContainerAllocator1> & lhs, const ::automi_v1::map_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace automi_v1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::automi_v1::map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::automi_v1::map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automi_v1::map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automi_v1::map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automi_v1::map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automi_v1::map_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::automi_v1::map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbb542f532cb6f654d6a20efa3e5f086";
  }

  static const char* value(const ::automi_v1::map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdbb542f532cb6f65ULL;
  static const uint64_t static_value2 = 0x4d6a20efa3e5f086ULL;
};

template<class ContainerAllocator>
struct DataType< ::automi_v1::map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "automi_v1/map";
  }

  static const char* value(const ::automi_v1::map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::automi_v1::map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header \n"
"\n"
"#bot \n"
"geometry_msgs/Vector3 bot_pos\n"
"#bot orient in some form\n"
"\n"
"automi_v1/object[] objects\n"
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
"================================================================================\n"
"MSG: automi_v1/object\n"
"Header header \n"
"geometry_msgs/Vector3 pos\n"
"geometry_msgs/Vector3 orient\n"
"float32[] dims\n"
"uint8 type\n"
"float32 occupancy_ratio\n"
;
  }

  static const char* value(const ::automi_v1::map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::automi_v1::map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.bot_pos);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::automi_v1::map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::automi_v1::map_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "bot_pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.bot_pos);
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::automi_v1::object_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOMI_V1_MESSAGE_MAP_H