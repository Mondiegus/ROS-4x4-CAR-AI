// Generated by gencpp from file location_monitor/landmarkDistance.msg
// DO NOT EDIT!


#ifndef LOCATION_MONITOR_MESSAGE_LANDMARKDISTANCE_H
#define LOCATION_MONITOR_MESSAGE_LANDMARKDISTANCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace location_monitor
{
template <class ContainerAllocator>
struct landmarkDistance_
{
  typedef landmarkDistance_<ContainerAllocator> Type;

  landmarkDistance_()
    : name()
    , distance(0.0)  {
    }
  landmarkDistance_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::location_monitor::landmarkDistance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::location_monitor::landmarkDistance_<ContainerAllocator> const> ConstPtr;

}; // struct landmarkDistance_

typedef ::location_monitor::landmarkDistance_<std::allocator<void> > landmarkDistance;

typedef boost::shared_ptr< ::location_monitor::landmarkDistance > landmarkDistancePtr;
typedef boost::shared_ptr< ::location_monitor::landmarkDistance const> landmarkDistanceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::location_monitor::landmarkDistance_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::location_monitor::landmarkDistance_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::location_monitor::landmarkDistance_<ContainerAllocator1> & lhs, const ::location_monitor::landmarkDistance_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::location_monitor::landmarkDistance_<ContainerAllocator1> & lhs, const ::location_monitor::landmarkDistance_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace location_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::location_monitor::landmarkDistance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::location_monitor::landmarkDistance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::location_monitor::landmarkDistance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::location_monitor::landmarkDistance_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::location_monitor::landmarkDistance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::location_monitor::landmarkDistance_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::location_monitor::landmarkDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2f8ddf8c9e39a28149179429f5ae342";
  }

  static const char* value(const ::location_monitor::landmarkDistance_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2f8ddf8c9e39a28ULL;
  static const uint64_t static_value2 = 0x149179429f5ae342ULL;
};

template<class ContainerAllocator>
struct DataType< ::location_monitor::landmarkDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "location_monitor/landmarkDistance";
  }

  static const char* value(const ::location_monitor::landmarkDistance_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::location_monitor::landmarkDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name # name of the landmark\n"
"float64 distance # Distance to the landmark in m\n"
;
  }

  static const char* value(const ::location_monitor::landmarkDistance_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::location_monitor::landmarkDistance_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct landmarkDistance_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::location_monitor::landmarkDistance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::location_monitor::landmarkDistance_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCATION_MONITOR_MESSAGE_LANDMARKDISTANCE_H