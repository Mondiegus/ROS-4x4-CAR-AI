import rospy
from std_msgs.msg import String
import RPi.GPIO as GPIO

def speed_func(val):
    if speed <= 0:
        GPIO.output(7, GPIO.LOW)
    else:
        GPIO.output(7, GPIO.HIGH)

    pin11.ChangeDutyCycle(abs(speed))
    pin13.ChangeDutyCycle(abs(speed))

    rospy.loginfo("PRESSED forward or backward XD speed = %d", val)

def a():
    GPIO.output(35, GPIO.HIGH)
    GPIO.output(33, GPIO.HIGH)
    GPIO.output(35, GPIO.LOW)
    GPIO.output(37, GPIO.HIGH)

    rospy.loginfo("PRESSED A")

def d():
    GPIO.output(35, GPIO.HIGH)
    GPIO.output(33, GPIO.HIGH)
    GPIO.output(33, GPIO.LOW)
    GPIO.output(37, GPIO.HIGH)

    rospy.loginfo("PRESSED D")

def release_steering_engine():
    GPIO.output(35, GPIO.LOW)
    GPIO.output(33, GPIO.LOW)

def brake(val):
    pin11.ChangeDutyCycle(0)
    pin13.ChangeDutyCycle(0)

    rospy.loginfo("PRESSED B")

def hand_brake():
    pin11.ChangeDutyCycle(0)
    pin13.ChangeDutyCycle(0)

    rospy.loginfo("PRESSED HAND_BRAKE")

def start_engines():
    pin11.start(0)
    pin13.start(0)

    rospy.loginfo("ENGINE STARTED")

def stop_engines():
    GPIO.output(35, GPIO.LOW)
    GPIO.output(33, GPIO.LOW)
    pin11.stop()
    pin13.stop()
    
    rospy.loginfo("ENGINE STOPPED")

def reactOnCar(data):
    if 45 == data[0]:
        d()
    elif -45 == data[0]:
        a()
    elif 0 == data[0]:
        release_steering_engine()

    speed_func(data[1])
    brake(data[2])
    if(data[3]):
        hand_brake()

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %c", data.data)
    pad_actions = data.data.split("||")
    reactOnCar(pad_actions)

def listener():
    rospy.init_node("listenerpy", anonymous=True)
    rospy.Subscriber("pad", String, callback) # 4 elemts  sting separated by ||
    rospy.spin()

if __name__ == "__main__":
    GPIO.setwarnings(False)
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(7, GPIO.OUT)
    GPIO.setup(31, GPIO.OUT)

    GPIO.setup(11, GPIO.OUT)
    pin11 = GPIO.PWM(11,50)
    GPIO.setup(13, GPIO.OUT)
    pin13 = GPIO.PWM(13,50)
    GPIO.setup(23, GPIO.OUT)
    pin23 = GPIO.PWM(23,50)
    GPIO.setup(24, GPIO.OUT)
    pin24 = GPIO.PWM(24,50)
    GPIO.setup(33, GPIO.OUT)
    pin33 = GPIO.PWM(33,50)
    GPIO.setup(35, GPIO.OUT)
    pin33 = GPIO.PWM(35,50)
    GPIO.setup(37, GPIO.OUT)
    pin37 = GPIO.PWM(37,50)
    rospy.loginfo("Started")

    start_engines()
    
    while(True):
        listener()

if __name__ == "__del__":
    stop_engines()