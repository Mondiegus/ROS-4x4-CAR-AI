#include "ros/ros.h"
#include "std_msgs/Int8.h"

void listenerCallback(const std_msgs::Int8::ConstPtr& msg)
{
    char letter = msg->data;
    ROS_INFO("i received: %c", letter);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("pressedKey", 5, listenerCallback);
    ros::spin();

    return 0; 
}