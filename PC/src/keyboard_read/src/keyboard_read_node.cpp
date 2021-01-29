#include "ros/ros.h"
#include "std_msgs/Int8.h"
#include "termio.h"

int getch()
{
    static struct termios oldt, newt;
    tcgetattr( STDIN_FILENO, &oldt);           // save old settings
    newt = oldt;
    newt.c_lflag &= ~(ICANON);                 // disable buffering      
    tcsetattr( STDIN_FILENO, TCSANOW, &newt);  // apply new settings

    int c = getchar();  // read character (non-blocking)

    tcsetattr( STDIN_FILENO, TCSANOW, &oldt);  // restore old settings
    return c;
}

int main(int argc, char** argv)
{
    ros::Time::init();
    ros::init(argc, argv, "keyboard_read");
    ros::Rate loop_rate(10);

    ros::NodeHandle nh_keyboardRead;
    ros::Publisher publishKey = nh_keyboardRead.advertise<std_msgs::Int8>("pressedKey", 5);
    
    while(ros::ok)
    {
        std_msgs::Int8 c;
        c.data = getch();   // call your non-blocking input function
        ROS_INFO("%c", c.data);
        publishKey.publish(c);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}