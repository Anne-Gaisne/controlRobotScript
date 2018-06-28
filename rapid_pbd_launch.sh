#!/bin/bash

cd ~/local/collada
caddy &
#placing the script in communication with the robot
cd ~/catkin_ws
#change ROS_MASTER_URI and ROS_IP to your environment
source /opt/ros/indigo/setup.bash
source ./devel/setup.bash
./baxter.sh &
export ROS_PACKAGE_PATH=~/git/byu/development:$ROS_PACKAGE_PATH
export ROS_MASTER_URI=http://192.168.0.133:11311
export ROS_IP=192.168.0.132

rosrun baxter_tools enable_robot.py -e
rosrun baxter_interface gripper_action_server.py &
rosrun baxter_interface head_action_server.py &
rosrun baxter_interface joint_trajectory_action_server.py &
roslaunch rapid_pbd baxter_moveit.launch right_electric_gripper:=false &
roslaunch kinect2_bridge kinect2_bridge.launch publish_tf:=true &
roslaunch rapid_pbd web_prereqs.launch &
roslaunch rapid_pbd baxter.launch sim:=false point_cloud_topic:="/kinect2/sd/points" depth_topic:="/kinect2/sd/image_depth" color_topic:="/kinect2/sd/image_color_rect" --screen &
roslaunch rapid_pbd editor.launch robot:=baxter --screen



