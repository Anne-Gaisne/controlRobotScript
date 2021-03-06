# Baxter control

This directory is to share a small script that allow you to control basic function of Baxter.

## Installation ##

Put controlRobot.sh and rapid_pbd_launch.sh at the root of your catkin workspace along side baxter.sh.
Change ROS_MASTER_UI and ROS_IP in both files to reflect your environment.
Give a permission to execute them :
```
chmod u+x controlRobot.sh
chmod u+x rapid_pbd_launch.sh
```
[Baxter_eyes](https://github.com/Anne-Gaisne/baxter_eyes) package is recommended.
rapid_pbd_launch.sh is a script to launch the application [rapid_pbd](https://github.com/ysl208/rapid_pbd).

## Usage ##

All the command given are executed from the root of your catkin workspace (~/catkin_ws)
- To enable Baxter :
```
./controlRobot.sh -e
```
- To disable Baxter :
```
./controlRobot.sh -d
```
- To reset Baxter :
```
./controlRobot.sh -r
```
- To tuck Baxter's arm :
```
./controlRobot.sh -t
```
- To untuck Baxter's arm :
```
./controlRobot.sh -u
```
- To display eyes on Baxter's screen (baxter_eyes package mandatory) :
```
./controlRobot.sh -y
```
- To display Camera on Baxter's screen (baxter_eyes package mandatory) :
```
./controlRobot.sh -c cameraTopicImage1 cmTopicImg2 cmTopicImg3 cmTopicImg4
```
cameraTopicImage can be none to display nothing. Please note that if all entry are at none or not valid the script will execute but no change will be shown on Baxter's screen.
If one of the cameraTopicImage doesn't exist it will leave a blank space.
