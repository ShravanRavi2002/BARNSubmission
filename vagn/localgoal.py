import os
import rospy
from actionlib_msgs.msg import GoalStatus
import subprocess
import time
import signal
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Path
from nav_msgs.msg import Odometry

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from std_msgs.msg import String
import dynamic_reconfigure.client
import math
global localG
global odom

def callback(data):
    global localG
    global pose_pub
    global odom
    localgoal = data.poses[-1]
    localG = localgoal
    if(odom == None):
        return
    posx = odom.pose.pose.position.x
    posy = odom.pose.pose.position.y
    diffx = odom.pose.pose.position.x - data.poses[0].pose.position.x
    diffy = odom.pose.pose.position.y - data.poses[0].pose.position.y
    for possibleGoal in data.poses:
        possibleGoal.pose.position.x = possibleGoal.pose.position.x + diffx
        possibleGoal.pose.position.y = possibleGoal.pose.position.y + diffy
        goalx = possibleGoal.pose.position.x
        goaly = possibleGoal.pose.position.y

        dist = math.sqrt((posx - goalx)**2 + (posy - goaly)**2)
        
        if(dist < 1 and dist > 0.75):
            pose_pub.publish(possibleGoal)
            return

def callbackO(data):
    global odom
    odom = data

def main():
    global pose_pub
    global localG 
    localG = None
    global odom 
    odom = None
    rospy.init_node('listen',anonymous=True)
    pose_pub = rospy.Publisher("move_base_simple/localgoal",PoseStamped,queue_size=1)
    rospy.Subscriber("/move_base/TrajectoryPlannerROS/global_plan", Path, callback)
    rospy.Subscriber("odometry/filtered", Odometry, callbackO)

    rospy.spin()

if __name__ == '__main__':
    main()