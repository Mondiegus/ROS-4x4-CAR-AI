#include <vector>
#include <string>

#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "location_monitor/landmarkDistance.h"

using namespace ros;
using std::string;
using std::vector;
using location_monitor::landmarkDistance;


class Landmark
{
    public:
        Landmark(string name, double x, double y) : name(name), x(x), y(y) {}
        
        string name; 
        double x;
        double y;        
};

class LandmarkMonitor
{
    public:
        LandmarkMonitor() : landmark_() 
        {
            InitLandmarks();
        }

        void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg)
        {
            landmarkDistance theClosest =  FindClosest(msg->pose.pose.position.x, msg->pose.pose.position.y);
            ROS_INFO("Closest obj = name: %s, distance: %f", theClosest.name.c_str(), theClosest.distance);
            ROS_INFO("x: %f, y: %f", msg->pose.pose.position.x,msg->pose.pose.position.y);
        }

    private:
        vector<Landmark> landmark_;
        
        landmarkDistance FindClosest(double x, double y)
        {
            landmarkDistance result;
            result.distance = -1;
            for(auto i : landmark_)
            {
                double xd = i.x - x;
                double yd = i.y - y;
                double distance = sqrt(xd*xd + yd*yd);

                if(result.distance < 0 || distance < result.distance)
                {
                    result.distance = distance;
                    result.name = i.name;
                }
            }
            return result;
        }

        void InitLandmarks()
        {
            landmark_.push_back(Landmark("Cube", 0.31, -0.99));
            landmark_.push_back(Landmark("Dumpster", 0.11, -2.42));
            landmark_.push_back(Landmark("Cylinder", -1.14, -2.88));
            landmark_.push_back(Landmark("Barrier", -2.59, -0.83));
            landmark_.push_back(Landmark("Bookshelf", -0.09, 0.53));
        }
};


int main(int argc, char** argv)
{
    init(argc, argv, "location_monitor");
    NodeHandle nh;
    LandmarkMonitor monitor;
    Subscriber sub = nh.subscribe("odom", 10, &LandmarkMonitor::OdomCallback, &monitor);
    spin();

    return 0; 
}