import os
import rospy
from actionlib_msgs.msg import GoalStatus
import subprocess
import time
import signal
from geometry_msgs.msg import PoseStamped

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from std_msgs.msg import String
import dynamic_reconfigure.client
import sys
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Bool

global ls 
global turn
global hallucinate 
global pose_pub
global flag 
global cleared

def callback(data):
    global turn
    global hallucinate
    global flag
    if(turn == False):
        if(data.data == False):
            return
        else:
            turn = True
    else:
        if(data.data == True):
            turn = True
            return
        else:
            print("clearing!")
            if(flag == False):
                flag = True
                os.system("rosservice call move_base/clear_costmaps")
            hallucinate = True


global count
def callbackscan(data):
    global ls 
    global count
    global pose_pub
    global hallucinate
    global flag
    global cleared
    ls = data
    if(count > 0):
        count = count - 1
        #make fake obstacles
        ls.angle_min = -3.1415
        ls.angle_max = 3.1415
        num_append = 959 - len(ls.ranges)
        print("APPENDING:")
        print(num_append)
        each_side = int(num_append / 2)
        #print(ls.ranges)
        #print(type(ls.ranges))
        tempRange = list(ls.ranges)
        for i in range(each_side):
            tempRange.insert(0,0.75)
        for i in range(each_side):
            tempRange.append(0.75)
        if(num_append % 2 != 0):
            tempRange.append(0.75) 
        ls.ranges = tempRange 
        #rint(ls.ranges)
    pose_pub.publish(ls)
    
def main():
    global pose_pub
    rospy.init_node('hall',anonymous=True)
    pose_pub = rospy.Publisher("scan_hall",LaserScan,queue_size=1)
    rospy.Subscriber("front/scan", LaserScan, callbackscan)
    rospy.Subscriber("turninplace", Bool, callback)

    rospy.spin()

if __name__ == '__main__':
    global ls
    global count
    count = 100
    global cleared
    cleared = False
    global flag
    flag = False
    global turn
    turn = False
    global pose_pub
    pose_pub = None
    global hallucinate
    hallucinate = False
    ls = None
    main()