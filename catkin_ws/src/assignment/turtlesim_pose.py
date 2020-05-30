#!/usr/bin/env python

import rospy
import Pose from turtlesim.msg

def poseCalllback(pose_message):
    print ('x = %f'.%pose_message.x)
    print ('y = %f' %pose_message.y)
    print ('yaw = %f'.%pose_message.theta) 
   
if __name__ == '__main__':
    try:
        rospy.init_node('turtlesim_motion_pose', anonymous=true)
        rospy.subscriber('/turtle1/pose',turtlesim_motion_pose,poseCalllback)
        rospy.spin()
         
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated.")