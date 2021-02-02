import rospy
from std_msgs.msg import Int8
import RPi.GPIO as GPIO

speed = 0
def speed_func():
    global speed
    if speed <= -100:
        speed = -100
    if speed >= 100:
        speed = 100
    if speed <= 0:
        GPIO.output(7, GPIO.LOW)
    else:
        GPIO.output(7, GPIO.HIGH)

    pin11.ChangeDutyCycle(abs(speed))
    pin13.ChangeDutyCycle(abs(speed))

def w():
    global speed
    speed += 10
    speed_func()
    rospy.loginfo("PRESSED W, moving forward, speed = %d", speed)

def s():
    global speed
    speed -= 10
    speed_func()
    rospy.loginfo("PRESSED S, moving backward, speed = %d", speed)

def d():
    GPIO.output(35, GPIO.HIGH)
    GPIO.output(33, GPIO.HIGH)
    GPIO.output(35, GPIO.LOW)
    GPIO.output(37, GPIO.HIGH)
    rospy.loginfo("PRESSED A")

def a():
    GPIO.output(35, GPIO.HIGH)
    GPIO.output(33, GPIO.HIGH)
    GPIO.output(33, GPIO.LOW)
    GPIO.output(37, GPIO.HIGH)
    rospy.loginfo("PRESSED D")

def b():
    global speed
    speed = 0
    GPIO.output(35, GPIO.LOW)
    GPIO.output(33, GPIO.LOW)
    pin11.ChangeDutyCycle(0)
    pin13.ChangeDutyCycle(0)
    rospy.loginfo("PRESSED B")

def r():
    pin11.start(0)
    pin13.start(0)
    rospy.loginfo("ENGINE STARTED")

def k():
    pin11.stop()
    pin13.stop()
    rospy.loginfo("ENGINE STOPPED")

def reactOnCar(data):
    switcher = {
        "w":w,
        "s":s,
        "a":a,
        "d":d,
        "r":r,
        "k":k,
        " ":b
        } 

    func=switcher.get(chr(data),lambda :'Invalid')

    return func()


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %c", data.data)
    reactOnCar(data.data)

def listener():
    rospy.init_node("listenerpy", anonymous=True)
    rospy.Subscriber("pressedKey", Int8, callback)
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
    while(True):
        listener()