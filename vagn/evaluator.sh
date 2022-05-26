#!/bin/bash
rosbag record -a -o /jackal_ws/src/nav-competition-icra2022/bind/$1.bag __name:=my_bag > /dev/null 2>&1 &
#rosbag record front/scan odometry/filtered visualization localization tf tf_static -o /jackal_ws/src/nav-competition-icra2022/bind/$1.bag __name:=my_bag > /dev/null 2>&1 &
cd /jackal_ws/src/nav-competition-icra2022/vagn
python localgoal.py & #> /jackal_ws/src/nav-competition-icra2022/bind/$1localgoal.txt 2>&1 &
python local_spoofer.py & #> /jackal_ws/src/nav-competition-icra2022/bind/$1spoof.txt 2>&1 &
python hall.py &

cd enml
./bin/enml &
cd ..

cd graph_navigation
./bin/navigation --dw 10.0 --cw 0.2 --fw 0.1 move_base_simple/goal:=move_base_simple/localgoal &