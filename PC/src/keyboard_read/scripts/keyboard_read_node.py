#!/usr/bin/env python
import pygame
import rospy
from std_msgs.msg import String
 
# joystick.get_axis(0) - left knob X axis
# joystick.get_axis(1) - left knob Y axis inverted
# joystick.get_axis(2) - left trigger axis
# joystick.get_axis(3) - right knob X axis
# joystick.get_axis(4) - right knob Y axis inverted
# joystick.get_axis(5) - rigth trigger axis
# joystick.get_button(0) - A
# joystick.get_button(1) - B
# joystick.get_button(2) - X
# joystick.get_button(3) - Y
# joystick.get_button(4) -  LB
# joystick.get_button(5) -  RB
# joystick.get_button(6) -  BACK
# joystick.get_button(7) -  START
# joystick.get_button(8) -  XBOX
# joystick.get_button(9) -  LEFT KNOB
# joystick.get_button(10) - RIGHT KNOB

def talker(joystick):
    pub = rospy.Publisher('pad', String, queue_size=10)
    rospy.init_node('pad', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        pygame.event.get()
        # hello_str = "hello world %s" % rospy.get_time()
        steering_wheel = round(joystick.get_axis(3),2)*45 #Steering angle around 90 deegres
        acc = ((-1)*round(joystick.get_axis(1),2))*100
        brake = (round(joystick.get_axis(5),2) + 1) * 50
        hand_brake = joystick.get_button(5)

        if abs(steering_wheel)<3:
            steering_wheel = 0
        if abs(acc)<10:
            acc = 0
        if abs(brake)<5:
            brake = 0

        hello_str = f"{steering_wheel}||{acc}||{brake}||{hand_brake}"
        # hello_str = ""
        # for x in range(0,11):
        #     hello_str += f", {joystick.get_button(x)}"
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()
 
if __name__ == '__main__':
    try:
        pygame.init()
        pygame.joystick.init()
        joystick = pygame.joystick.Joystick(0)
        print("Joystick name is: ", joystick.get_name())
        # for x in range(pygame.joystick.get_count()):
        # for x in range(pygame.joystick.get_count()):
        # 	self.joystick = pygame.joystick.Joystick(x)
        # 	print("Joystick name is: ", self.joystick.get_name())
        joystick.init()
        talker(joystick)
    except rospy.ROSInterruptException:
        pass

if __name__ == '__del__':
    joystick.quit()