sudo update-grub
sudo grub-install /dev/nvme0n1
sudo update-grub
sudo reboot
lsb_release -a
lsblk
sudo efibootmgr -v
ping -c 3 google.com
uname -a
sudo apt update && sudo apt install -y curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo tee /etc/apt/keyrings/ros-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt install -y ros-humble-desktop
sudo apt install -y python3-colcon-common-extensions python3 -rosdep python3 -argcomplete
sudo apt install -y python3-colcon-common-extensions python3-rosdep python3-argcomplete
sudo rosdep init
rosdep update
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
source ~/.bashrc
ros2 run demo_nodes_cpp talker
printenv | grep ROS
ros2
source /opt/ros/humble/setup.bash 
ros
ros2 run demo_nodes_cpp talker
ros2 run demo_nodes_cpp listener
ros2 run demo_nodes_cpp listner
ros2 topic list
clear
ros2 run tf2_tools view_frames
ros2 node list
ros2 topic echo /scan --once
ros2 topic list 
ros2 topic info /scan
ros2 topic list
ros2 node list
clear
ros2 topic list
ros2 run rqt_image_view rqt_image_view 
ros2 node list
git clone https://github.com/agilexrobotics/limo_ros.git
colcon build --packages-select limo_ros
colcon build
gedit ~/limo_ws/src/limo_ros2/limo_bringup/CMakeLists.txt
gedit ~/limo_ws/limo_ros/limo_bringup/CMakeLists.txt 
colcon build
ros2 launch limo_ros/limo_bringup/launch/limo_cartographer.launch 
source install/setup.bash 
colcon build
source install/setup.bash 
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py 
sudo apt update
sudo apt install ros-humble-cartographer ros-humble-cartographer-ros ros-humble-cartographer-ros-msgs
ros2 launch limo_bringup limo_cartographer_launch.py 
cd ~/limo_ws
find . -name "build_map_2d.lua"
mkdir -p ~/limo_ws/src/limo_ros2/limo_bringup/param
cp ~/limo_ws/limo_ros/limo_bringup/param/build_map_2d.lua ~/limo_ws/src/limo_ros2/limo_bringup/param/
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
gedit limo_ros/limo_bringup/CMakeLists.txt 
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
clear
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
clear
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
clear
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
clear
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
ls /home/pcu/copy_ws/src/limo_ros2/limo_cartographer/config/
ls limo_ros/limo_bringup/param/
colcon build
source install/setup.bash 
ros2 launch limo_bringup limo_cartographer_launch.py
clear
ros2 run teleop_twist_keyboard teleop_twist_keyboard
mkdir limo_ws
cd limo_ws/
git clone https://github.com/agilexrobotics/limo_ros.git
sudo apt install git
git clone https://github.com/agilexrobotics/limo_ros.git
colcon build
mkdir limo_ws
cd ~
mkdir limo_ws
cd limo_ws/
git clone https://github.com/agilexrobotics/limo_ros2.git
colcon build
sudo apt install gedit
gedit limo_ros2/limo_car/CMakeLists.txt 
colcon build
gedit limo_ros2/limo_car/CMakeLists.txt 
colcon build
gedit limo_ros2/limo_car/CMakeLists.txt 
colcon build
source install/setup.bash 
ros2 launch limo_base start_limo.launch.py 
ls limo_ros2/limo_base/launch/
ros2 launch limo_base limo_base.launch.py 
ls /dev/ttyUSB* /dev/ttyACM*
ls /dev/tty*
sudo dmesg | grep ttyUSB
sudo cat /dev/ttyUSB0
sudo cat /dev/ttyUSB1
sudo rm -f /dev/ttylimo          # (기존 링크가 있으면 삭제)
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo chmod 666 /dev/ttyUSB1
sudo chmod 666 /dev/ttylimo
ls -l /dev/ttylimo
ros2 launch limo_base limo_base.launch.py
ls /dev/tty*
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttylimo
ls -l /dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py
ls /dev/ttyUSB*
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB2
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ls /dev/ttyUSB*
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB2
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttylimo
sudo usermod -aG dialout $USER
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB2
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ros2 topic list
ros2 topic ehco /cmd_vel
clear
ros2 topic list
clear
ros2 topic list
ros2 node list
ros2 topic list
ros2 node info /limo_base_node
ros2 topic echo /limo_base/cmd_vel
ros2 topic echo /cmd_vel
cd limo_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB2
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB0
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB0
ls /dev/tty*
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB2
ros2 launch limo_base limo_base.launch.py port_name:=/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB0
ros2 run teleop_twist_keyboard teleop_twist_keyboard
clear
ros2 run teleop_twist_keyboard teleop_twist_keyboard
clear
ros2 run teleop_twist_keyboard teleop_twist_keyboard
clear
ros2 run teleop_twist_keyboard teleop_twist_keyboard
ls /dev/video*
ros2 run v4l2_camera v4l2_camera_node --ros-args -p video_device:=/dev/video0 -p image_size:=640x480 -p framerate:=30
git clone https://gitlab.com/boldhearts/ros2_v4l2_camera.git
cd ros2_v4l2_camera
colcon build
ros2 run v4l2_camera v4l2_camera_node --ros-args -p image_size:="[640,480]" -p camera_frame_id:="camera_optical_link"
sudo apt update
sudo apt install ros-humble-camera-info-manager ros-humble-cv-bridge ros-humble-image-transport
colcon build --symlink-install
sudo apt install ros-humble-cv-bridge ros-humble-image-transport
sudo apt install ros-humble-camera-info-manager
colcon build
sudo apt install libopencv-dev
colcon build
ros2 pkg prefix cv_bridge
source /opt/ros/humble/setup.bash
cd ~/limo_ws/ros2_v4l2_camera
rm -rf build install log
colcon build
ros2 run v4l2_camera v4l2_camera_node
ros2 pkg list | grep v4l2_camera
ros2 pkg prefix cv_bridge
ros2 pkg list | grep cv_bridge
ls /opt/ros/humble/include/cv_bridge
ament_find_package(cv_bridge)
colcon build
cd ~/limo_ws/ros2_v4l2_camera
rm -rf build install log
colcon build --symlink-install
ros2 topic echo /cmd_vel 
칟ㅁㄱ
clear
ls -l /dev/ttyUSB0
groups
sudo usermod -aG dialout $USER
newgrp dialout
ls -l /dev/ttyUSB0
clear
chmod /dev/ttyUSB0 777
sudo chmod /dev/ttyUSB0 777
chmod --help
sudo chmod /dev/ttyUSB0 rwxrwxrwx
sudo chmod 666 /dev/ttyUSB0
ls -l /dev/ttyUSB0
sudo chmod 777 /dev/ttyUSB0
ls -l /dev/ttyUSB0
ros2 run rqt_image_view rqt_image_view 
ros2 topic list
echo $ROS_DISTRO    # humble 인지 확인
source /opt/ros/humble/setup.bash
grep -qxF 'source /opt/ros/humble/setup.bash' ~/.bashrc || echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc
source /opt/ros/humble/setup.bash
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttylimo
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_bringup limo_base.launch.py port_name:=/dev/ttyUSB0
source /opt/ros/humble/setup.bash
mkdir -p ~/agilex_ws/src
cd ~/agilex_ws/src
git clone https://github.com/agilexrobotics/limo_ros2.git
cd ~/agilex_ws
rosdep update
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install
cd ~/agilex_ws/src/limo_ros2/limo_car
mkdir -p log
touch log/.gitkeep
cd ~/agilex_ws
rm -rf build install log
colcon build --symlink-install
mkdir -p ~/agilex_ws/src/limo_ros2/limo_car/src
cd ~/agilex_ws
rm -rf build install log
colcon build --symlink-install
nano ~/agilex_ws/src/limo_ros2/limo_car/CMakeLists.txt
agilex_ws
cd ~/agilex_ws
rm -rf build install log
colcon build --symlink-install --packages-skip limo_car
source install/setup.bash
source /opt/ros/humble/setup.bash
[200~source /opt/ros/humble/setup.bash~
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_bringup limo_base.launch.py port_name:=/dev/ttyUSB0
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run limo_base limo_base_node --ros-args -p port_name:=/dev/ttyUSB0
ros2 pkg executables limo_base
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run limo_base limo_base --ros-args -p port_name:=/dev/ttyUSB0
cd ~/agilex_ws
ros2 run limo_base limo_base --ros-args -p port_name:=/dev/ttyUSB0
..
../
/..
cd..
..cd
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
[200~ros2 run limo_base limo_base --ros-args -p port_name:=ttyUSB0~
ros2 run limo_base limo_base --ros-args -p port_name:=ttyUSB0
source ~/agilex_ws/install/setup.bash
sudo apt install -y ros-humble-teleop-twist-keyboard
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -p speed:=0.25 -p turn:=0.8
source ~/agilex_ws/install/setup.bash
ros2 topic hz /cmd_vel
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 topic hz /cmd_vel
[200~ros2 topic info /cmd_vel --verbose~
ros2 topic info /cmd_vel --verbose
source ~/agilex_ws/install/setup.bash
ros2 topic echo /wheel/odom | head -n 20
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run limo_base limo_base --ros-args -p port_name:=ttyUSB0
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
sudo apt install -y ros-humble-teleop-twist-keyboard
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -p speed:=0.25 -p turn:=0.8
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 topic hz /cmd_vel
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.6}, angular: {z: 0.0}}' -r 10
ros2 node info /limo_base
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
groups | grep dialout || sudo usermod -aG dialout $USER
ls -l /dev/ttyUSB* /dev/ttyACM* 2>/dev/null || true
groups | grep dialout || sudo usermod -aG dialout $ttyUSB0
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_base limo_base.launch.py serial_port:=/dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py serial_port:=/ttyUSB0
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_base limo_base.launch.py serial_port:=/dev/ttyUSB0
ros2 launch limo_bringup limo_base.launch.py serial_port:=/dev/ttyUSB0
sudo ln -sf /dev/ttyUSB0 /dev/ttylimo
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_base limo_base.launch.py
ros2 node list | grep limo_base
ros2 topic info /cmd_vel
칟ㅁㄱ
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
sudo apt install -y ros-humble-teleop-twist-keyboard
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r cmd_vel:=/cmd_vel
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
sudo apt update && sudo apt install -y ros-humble-teleop-twist-keyboard
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r cmd_vel:=/cmd_vel
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.15, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
[200~ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.2}, angular: {z: 0.0}}' -r 10~
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.2}, angular: {z: 0.0}}' -r 10
source /opt/ros/humble/setup.bash
ros2 topic echo /cmd_vel
ros2 topic echo /limo_status -n 1
ros2 topic echo /limo_status
clear
source /opt/ros/humble/setup.bash
ros2 topic list -t
source /opt/ros/humble/setup.bash
ros2 topic echo /wheel/odom
ros2 topic pub /cmd_vel geometry_msgs/Twist \
[200~ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.15, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.15, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
ros2 launch limo_base limo_base.launch.py
mkdir -p ~/agilex_ws/src && cd ~/agilex_ws/src
git clone https://github.com/agilexrobotics/limo_ros2.git
cd limo_ros2 && git checkout humble && cd ..
cd ~/agilex_ws
rosdep install --from-paths src --ignore-src -r -y
cd ~/agilex_ws
ㅍ
source /opt/ros/humble/setup.bash
colcon build --symlink-install --packages-select limo_base limo_msgs limo_description
source ~/agilex_ws/install/setup.bash
ros2 pkg list | grep -E '^limo_'
sudo ln -sf /dev/ttyUSB1 /dev/ttylimo
sudo ln -sf /dev/ttyUSB1 /dev/ttyUSB0
ls -l /dev/ttyUSB0 /dev/ttyUSB1 /dev/ttylimo
sudo test -L /dev/ttyUSB0 && sudo rm /dev/ttyUSB0
sudo udevadm control --reload-rules
sudo udevadm trigger
ls -l /dev/ttyUSB0 /dev/ttyUSB1 /dev/ttylimo
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 launch limo_base limo_base.launch.py
source /opt/ros/humble/setup.bash
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
source /opt/ros/humble/setup.bash
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
sudo apt -y install ros-humble-teleop-twist-keyboard
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r cmd_vel:=/cmd_vel
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0.2, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}' -r 10
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear:{x:0.20}, angular:{z:0.50}}' -r 10
ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear:{x:0.20}, angular:{z:0.50}}' -r 10
ros2 topic pub /cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.5}}" -r 10
source /opt/ros/humble/setup.bash
ros2 topic echo /wheel/odom | head -n 20
clear
source /opt/ros/humble/setup.bash
ros2 topic echo /wheel/odom | head -n 20
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
sudo ln -sf /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash 2>/dev/null || true
sudo apt -y install ros-humble-teleop-twist-keyboard
ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r cmd_vel:=/cmd_vel
python3 -m pip install --user opencv-contrib-python transforms3d
sudo apt update
sudo apt install -y python3-pip
python3 -m pip install --user --upgrade pip
python3 -m pip install --user numpy opencv-contrib-python transforms3d
python3 - <<'PY'
import cv2, sys
print("OpenCV:", cv2.__version__)
print("Has aruco:", hasattr(cv2, "aruco"))
PY

source /opt/ros/humble/setup.bash
sudo apt install -y ros-humble-v4l2-camera
ros2 run v4l2_camera v4l2_camera_node   --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
cd ~/agilex_ws/src
[ -d ros2_aruco ] || git clone https://github.com/JMU-ROBOTICS-VIVA/ros2_aruco.git
cd ~/agilex_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
lsusb | grep -i camera
Bus 003 Device 004: ID 2bc5:050e Orbbec 3D Technology International, Inc USB 2.0 Camera
cd ~/agilex_ws/src
git clone https://github.com/orbbec/ros2_orbbec_camera.git
source /opt/ros/humble/setup.bash
sudo apt-get install -y ros-humble-v4l2-camera v4l-utils
ls -l /dev/video*
ros2 run v4l2_camera v4l2_camera_node   --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
ls -l /dev/video*
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=MJPG   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
ls -l /dev/video*
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
cd ~/agilex_ws/src/limo_ros2
[ -d limo_car ] && touch limo_car/COLCON_IGNORE
cd ~/agilex_ws
rm -rf build/limo_car install/limo_car
colcon build --symlink-install --packages-skip limo_car
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
source /opt/ros/humble/setup.bash
sudo apt-get install -y ros-humble-rqt-image-view
ros2 run rqt_image_view rqt_image_view
source /opt/ros/humble/setup.bash
ros2 topic list | grep camera
ros2 topic info /camera/image_raw
ros2 run rqt_image_view rqt_image_view
[200~source /opt/ros/humble/setup.bash~
ros2 topic list | grep camera
ros2 topic info /camera/image_raw
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
ros2 topic echo /camera/image_raw/header -n 1
ros2 topic hz /camera/image_raw
ros2 topic info /image_raw
ros2 topic hz /image_raw
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/image|/camera"
ros2 topic info /image_raw
ros2 topic hz /image_raw
sudo apt-get install -y ros-humble-rqt-image-view
ros2 run rqt_image_view rqt_image_view  
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args  -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/image_raw   -p camera_info_topic:=/camera/camera_info
ros2 topic list | grep aruco
ros2 topic echo /aruco_markers | head -n 30
ros2 topic echo /aruco_poses   | head -n 30
source /opt/ros/humble/setup.bash
python3 -m pip uninstall -y numpy || true
python3 -m pip install --user "numpy==1.26.4"
python3 -m pip uninstall -y opencv-python opencv-contrib-python || true
python3 - <<'PY'
import numpy as np, cv2
print("NumPy:", np.__version__)
print("Has cv2:", hasattr(cv2, "imshow"))
PY

source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/image_raw   -p camera_info_topic:=/camera/camera_info
ros2 topic list | grep aruco
ros2 topic echo /aruco_markers | head -n 30
ros2 topic echo /aruco_poses   | head -n 30
source /opt/ros/humble/setup.bash
sudo apt update
sudo apt install -y ros-humble-v4l2-camera ros-humble-rqt-image-view v4l-utils
sudo apt update
sudo apt install -y python3-pip ros-humble-v4l2-camera ros-humble-rqt-image-view
python3 -m pip uninstall -y numpy opencv-python opencv-contrib-python || true
python3 -m pip install --user "numpy==1.26.4" transforms3d
mkdir -p ~/agilex_ws/src && cd ~/agilex_ws/src
[ -d ros2_aruco ] || git clone https://github.com/JMU-ROBOTICS-VIVA/ros2_aruco.git
cd ~/agilex_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install --packages-skip limo_car
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
source /opt/ros/humble/setup.bash
ls -l /dev/video*
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
ls -l /dev/video*
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
pkill -f v4l2_camera_node || true
pkill -f rqt_image_view   || true
pkill -f image_view       || true
fuser -v /dev/video* 2>/dev/null || true
ls -l /dev/video*
v4l2-ctl --list-devices 2>/dev/null | sed 's/^/  /'
groups | grep video || sudo usermod -aG video $USER
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video1   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
ls -l /dev/video*
v4l2-ctl --list-devices 2>/dev/null
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -r image:=/camera/image_raw   -r camera_info:=/camera/camera_info
pkill -f v4l2_camera_node || true
pkill -f rqt_image_view   || true
pkill -f image_view       || true
sudo modprobe -r uvcvideo && sudo modprobe uvcvideo
fuser -v /dev/video* 2>/dev/null || true
ls -l /dev/video*
v4l2-ctl --list-devices 2>/dev/null | sed 's/^/  /'
groups | grep video || sudo usermod -aG video $USER
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p pixel_format:=YUYV   -p output_encoding:=rgb8
clear
[200~source /opt/ros/humble/setup.bash~
clear
source /opt/ros/humble/setup.bash
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info+
clear
ros2 run v4l2_camera v4l2_camera_node --ros-args   -p video_device:=/dev/video0   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
python3 -m pip uninstall -y numpy || true
python3 -m pip install --user "numpy==1.23.5"
python3 - <<'PY'
import numpy as np
print("NumPy =", np.__version__)
PY

source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
ros2 topic echo /camera/image_raw/header | head -n 1
ros2 topic hz /camera/image_raw
clear'
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
V
ros2 topic hz /camera/image_raw
clear
ros2 run v4l2_camera v4l2_camera_node --ros-args  -p video_device:=/dev/video0   -p image_size:="[640,480]"   -p frame_rate:=30   -p pixel_format:=YUYV   -p output_encoding:=rgb8   -r image_raw:=/camera/image_raw   -r camera_info:=/camera/camera_info
ros2 topic hz /camera/image_raw
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
ros2 topic hz /camera/image_raw
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
ros2 topic hz  /camera/image_raw
os2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic info /camera/image_raw
ros2 topic hz  /camera/image_raw
source /opt/ros/humble/setup.bash
ros2 topic info /camera/image_raw
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/image|/camera"
ros2 topic info /camera/image_raw  
clear
source /opt/ros/humble/setup.bash
ros2 topic list | grep -E "/camera|/image"
ros2 topic hz /image_raw
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
source /opt/ros/humble/setup.bash
ros2 topic hz /camera/image_raw
source /opt/ros/humble/setup.bash
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args   -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args  -p marker_size:=0.05   -p aruco_dictionary_id:=DICT_5X5_250   -p image_topic:=/camera/image_raw   -p camera_info_topic:=/camera/camera_info
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 run ros2_aruco aruco_node --ros-args \
celar
clear
ros2 run rqt_image_view rqt_image_view
source /opt/ros/humble/setup.bash
ros2 run rqt_image_view rqt_image_view      # /camera/image_raw 선택
source /opt/ros/humble/setup.bash
ros2 topic list | grep aruco
ros2 topic echo /aruco_markers | head -n 20
ros2 topic echo /aruco_poses   | head -n 20
clea
clear
source /opt/ros/humble/setup.bash
source ~/agilex_ws/install/setup.bash
ros2 pkg list | grep ros2_aruco_interfaces
ros2 interface show ros2_aruco_interfaces/msg/ArucoMarkers
ros2 topic type /aruco_markers
ros2 topic echo /aruco_markers | head -n 20
sudo apt install tree -y
cd ~/agilex_ws
tree -L 2
tree -L 2 ~/agilex_ws/src/limo_ros2
cd ~
cd limo_ws/limo_ros2/
ros2 launch limo_base/launch/limo_base.launch.py 
cd ~
cd agilex_ws/src/
cd limo_ros2/
clear
ros2 --version
printenv | grep ROS
apt list --installed | grep ros-
cat /opt/ros/humble/.rosdistro
ros2 topic list
ros2 run demo_nodes_cpp talker
printenv | grep ROS
mkdir -p ~/agilex_ws/src
cd ~/agilex_ws
colcon build
source install/setup.bash
ros2 pkg list | grep limo
cd ~/agilex_ws/src
ls
cd ~/agilex_ws/src/limo_ros2
ls
cd ~/agilex_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build
source install/setup.bash
ros2 pkg list | grep limo
ros2 launch limo_base limo_base.launch.py
ls /dev/ttyUSB*
sudo rm /dev/ttylimo 2>/dev/null
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ls -l /dev/ttylimo
sudo chmod 666 /dev/ttyUSB0
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch limo_base limo_base.launch.py
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 topic list
ros2 topic echo /wheel/odom
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 topic list
ros2 topic list | grep odom
ros2 topic echo /wheel/odom
ros2 topic list
ros2 node list
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 topic info /wheel/odom -v
ls /dev/ttyUSB*
ls -l /dev/ttylimo
ㅍ
sudo rm /dev/ydlidar 2>/dev/null
sudo ln -s /dev/ttyUSB1 /dev/ydlidar
sudo chmod 666 /dev/ttyUSB1
ls -l /dev/ydlidar
cd ~
git clone https://github.com/YDLIDAR/YDLidar-SDK.git
cd YDLidar-SDK/cmake
cmake ..
make
sudo make install
cd ~/agilex_ws/src
git clone -b humble https://github.com/YDLIDAR/ydlidar_ros2_driver.git
cd ~/agilex_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build
source install/setup.bash
ros2 pkg list | grep ydlidar
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch limo_base limo_base.launch.py
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
ls -l /dev/ttylimo
cd ~/agilex_ws/src/ydlidar_ros2_driver
ls
gedit ydlidar.yaml
nano ydlidar.yaml
gedit ydlidar.yaml
cd ~/agilex_ws/src/ydlidar_ros2_driver
ls -R
ls -l /dev/ttylimo
sudo chmod 666 /dev/ttyUSB1
cd ~/agilex_ws/src/ydlidar_ros2_driver/params
gedit ydlidar.yaml
cd ~/agilex_ws/src/ydlidar_ros2_driver/params
gedit ydlidar.yaml
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch limo_base limo_base.launch.py
cd ~/agilex_ws/src/limo_ros2
git status
cd ~/agilex_ws/src/limo_ros2
git restore limo_base/launch/limo_base.launch.py
git status
rm limo_car/CMakeLists.txt.save limo_car/COLCON_IGNORE
git status
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
ㅍ
source install/setup.bash
ros2 launch limo_base limo_base.launch.py
ros2 launch limo_base start_limo.launch.py 
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
cd ~/agilex_ws/src/ydlidar_ros2_driver/params
grep port ydlidar.yaml
cd ~/agilex_ws/src/ydlidar_ros2_driver/launch
gedit ydlidar_launch.py
cd ~/agilex_ws
grep port install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/params/ydlidar.yaml
cd ~/agilex_ws
gedit install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/params/ydlidar.yaml
grep port install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/params/ydlidar.yaml
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py   params_file:=$HOME/agilex_ws/install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/params/TG.yaml
cd ~/agilex_ws
mkdir -p config
gedit config/tmini_limo.yaml
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch limo_base limo_base.launch.py
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py   params_file:=$HOME/agilex_ws/config/tmini_limo.yaml
cp ~/agilex_ws/install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/params/G4.yaml    ~/agilex_ws/config/g4_limo.yaml
gedit ~/agilex_ws/config/g4_limo.yaml
ros2 launch ydlidar_ros2_driver ydlidar_launch.py   params_file:=$HOME/agilex_ws/config/g4_limo.yaml
gedit ~/agilex_ws/config/tmini_limo.yaml
cd ~/agilex_ws
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py   params_file:=$HOME/agilex_ws/config/tmini_limo.yaml
rivz2
rviz2
ros2 topic list
ros2 node list
cd agilex_ws/
source install/setup.bash 
cd ~/limo_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_bringup limo_start.launch 
ros2 launch limo_bringup limo_start.launch.py
source install/setup.bash 
ros2 launch limo_bringup limo_start.launch.py
ros2 launch limo_bringup limo_start.launch 
ros2 launch limo_base limo_base.launch.py 
ls -l /dev/ttyUSB*
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
lsusb | grep -i cp210
sudo dmesg | grep ttyUSB
sudo chmod 777 /dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB0
sudo chmod 777 /dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB0
ros2 topic list
ros2 topic echo /limo_status 
source install/setup.bash 
ros2 topic echo /limo_status 
ros2 topic info /limo_status
clear
ros2 topic echo /limo_status 
clear
cd ~
ros2 topic list
ros2 topic echo /limo_status 
nano ~/limo_ws/src/limo_ros2/limo_base/params/limo_base_params.yaml
nano ~/agilex_ws/src/limo_ros2/limo_base/params/
ls limo_ws/limo_ros2/limo_base/
clear
ros2 topic echo /limo_status 
ros2 topic echo /imu
source install/setup.bash 
ros2 topic info /limo_status
ros2 node list
ls -l /dev/ttyUSB*
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
source install/setup.bash 
cd limo_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
cd ~
ros2 topic echo /limo_status 
cd limo_ws/
source install/setup.bash 
ros2 topic echo /limo_status 
sudo dmesg | grep -E "ttyUSB0|ttyUSB1" -A 5
ros2 topic echo /limo_status 
cd limo_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
ls -l /dev/ttylimo
ros2 launch limo_base limo_base.launch.py
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py
history
ros2 run v4l2_camera v4l2_camera_node
source install/setup.bash 
cd line_track/
python3 line_tracking.red.py 
cd ..
source install/setup.bash 
ros2 topic echo /limo_status 
sudo ln -sf /dev/ttyUSB0 /dev/ttylimo
cd limo_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
ls -l /dev/ttylimo
ls -l /dev/ydlidar
sudo rm /dev/ttylimo
ls -l /dev/ttylimo
ls -l /dev/ttyUSB*
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
ls -l /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_base start_limo.launch.py 
sudo rm /home/pcu/agilex_ws/install/limo_base/share/limo_base/launch/start_limo.launch.py
nano ~/limo_ws/src/limo_base/launch/start_limo.launch.py
rm -rf build install log
colcon build
source install/setup.bash
colcon build
source install/setup.bash
source install/setup.bash 
ros2 topic echo /limo_status 
ros2 topic list
ros2 topic echo /limo_status 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
clear
ros2 launch limo_base open_ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base open_ydlidar_launch.py 
ls -l /dev/ydlidar
sudo chmod 777 /dev/ydlidar
ros2 launch limo_base open_ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base open_ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base open_ydlidar_launch.py 
rm -rf build install log
colcon build
source install/setup.bash
ros2 launch limo_base open_ydlidar_launch.py
ls ~/limo_ws/src/limo_base/launch/
cat ~/limo_ws/src/limo_base/launch/open_ydlidar_launch.py
ls ~/limo_ws/install/limo_base/share/limo_base/launch/
cat ~/limo_ws/install/limo_base/share/limo_base/launch/open_ydlidar_launch.py
ls limo_ros2/limo_base/launch/
cp ~/limo_ws/limo_ros2/limo_base/launch/open_ydlidar_launch.py    ~/limo_ws/src/limo_base/launch/open_ydlidar_launch.py
colcon build
source install/setup.bash 
ros2 launch limo_base open_ydlidar_launch.py 
cd 
cd ~
mkdir jin_ws
cd jin_ws/
mkdir src
cd src/
git clone https://github.com/agilexrobotics/limo_ros2.git
ls -l /dev/ttyUSB*
ls -l /dev/ttylimo
ls -l /dev/ydlidar
cd ..
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
cd ~/jin_ws/src/limo_ros2
rm -rf limo_car
cd ~/jin_ws/
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_base open_ydlidar_launch.py 
ros2 launch limo_base start_limo.launch.py 
cd src/
git clone https://github.com/rigbetellabs/ydlidar_ros2_driver-humble.git
cd ..
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
ls -l /dev/ydlidar
colcon build
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
clear
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
clear
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
clear
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
clear
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
cd src/
git clone https://github.com/AgileXRobot/ydlidar_ros2
git clone https://github.com/YDLIDAR/ydlidar_ros2.git
cd ..
colcon build
clear
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
clear
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
cd src/
git clone https://github.com/YDLIDAR/ydlidar_ros2_driver.git
git clone https://github.com/yangfuyuan/ydlidar_ros2_driver.git
cd ..
colcon build
clear
colcon build
clear
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/tty/USB0
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/tty/USB0
colcon build
source install/setup.bash 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py serial_port:=/dev/ydlidar
cd ~/jin_ws/src
rm -rf ydlidar_ros2_driver
cd ~/jin_ws/src
git clone https://github.com/YDLIDAR/ydlidar_sdk.git
git clone https://github.com/WeGo-Robotics/upgrade_limo.git
cd ..
colcon build
ls
cd src
ls
cd ~/jin_ws/src
rm -rf *
git clone https://github.com/WeGo-Robotics/upgrade_limo.git
cd ..
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ls src/upgrade_limo/ydlidar_ros2_driver/params/
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
clear
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
clear
cd ~/jin_ws
rm -rf build install log
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
rm -rf build install log
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
source install/setup.bash 
ros2 topic echo /limo_status 
cd src
ros2 topic echo /limo_status 
clear
cd ..
ros2 topic list
ros2 topic echo /ydlidar_ros2_driver_node/transition_event 
ros2 topic list
ps aux | grep yd
kill -9 81047
ps aux | grep yd
kill -9 81477
kill -9 81466
ps aux | grep yd
kill -9 81709
clear
ros2 topic list
ros2 topic echo /ydlidar_ros2_driver_node/transition_event 
clear
source install/setup.bash 
ros2 topic list
ros2 topic echo /scan 
ros2 launch limo_base limo_base.launch.py 
rviz
rviz2
ros2 run v4l2_camera v4l2_camera_node
source install/setup.bash 
cd src
cd limo_ros2/
cd ..
cd line_track/
python3 line_tracking.red.py 
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
cd ~
cd jin_ws/
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 topic list
ros2 node list
ros2 topic list
mkdir -p ~/jin_ws/src/upgrade_limo/cartographer_config
gedit ~/jin_ws/src/upgrade_limo/cartographer_config/build_map_2d.lua
gedit ~/jin_ws/src/upgrade_limo/cartographer_launch.py
cd ~/jin_ws
colcon build
source install/setup.bash 
rviz2
source ~/jin_ws/install/setup.bash
ros2 launch upgrade_limo cartographer_launch.py
colcon build
source install/setup.bash 
clear
ls src/upgrade_limo/
ls install/
ls build/
cd src/upgrade_limo/
python3 cartographer_launch.py 
cd ~/jin_ws/src/upgrade_limo
ros2 pkg create upgrade_limo --build-type ament_python
cd ~/jin_ws/src/upgrade_limo
mkdir launch
mkdir config
mv cartographer_launch.py launch/
mv cartographer_config/*.lua config/
gedit ~/jin_ws/src/upgrade_limo/package.xml
gedit ~/jin_ws/src/upgrade_limo/setup.py
cd ~/jin_ws
colcon build --packages-select upgrade_limo
cd ~/jin_ws/src/upgrade_limo
mkdir -p upgrade_limo
mkdir -p launch
mkdir -p config
touch upgrade_limo/__init__.py
nano ~/jin_ws/src/upgrade_limo/package.xml
nano ~/jin_ws/src/upgrade_limo/setup.py
mkdir -p ~/jin_ws/src/upgrade_limo/resource
touch ~/jin_ws/src/upgrade_limo/resource/upgrade_limo
nano ~/jin_ws/src/upgrade_limo/launch/cartographer_launch.py
[200~cd ~/jin_ws~
cd ~/jin_ws
colcon build --packages-select upgrade_limo
source ~/jin_ws/install/setup.bash
ros2 launch upgrade_limo cartographer_launch.py
cd ~/jin_ws
colcon build --symlink-install
rm -rf ~/jin_ws/build/limo_msgs
rm -rf ~/jin_ws/install/limo_msgs
rm -rf ~/jin_ws/log
cd ~/jin_ws
colcon build --symlink-install
source ~/jin_ws/install/setup.bash
ros2 launch upgrade_limo cartographer_launch.py
ros2 topic list
ros2 run tf2_tools view_frames.py
ros2 run foxglove_bridge foxglove_bridge
ros2 run rviz2 rviz2
ros2 launch upgrade_limo cartographer_launch.py 
nano ~/jin_ws/src/upgrade_limo/config/cartographer_ros.rviz
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
grep -R "occupancy_grid_node" ~/jin_ws/src/upgrade_limo -n
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
ros2 node list
rviz2
ros2 node list
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
clear
ros2 node list
grep -R "static_transform_publisher" -n src/upgrade_limo
clear
ros2 node list
rviz2
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
colcon build
source install/setup.bash 
ros2 launch upgrade_limo cartographer_launch.py 
clear
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
colcon build
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
cd jin_ws/
#!/usr/bin/python3
# Launch file for YDLIDAR ROS2 Driver (No TF included)
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch_ros.actions import LifecycleNode
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
import os
def generate_launch_description():
clear
rm -rf build install log
grep -n "source" ~/.bashrc
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
colcon build
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
cd jin_ws/
source install/setup.bash
ros2 launch limo_base limo_base.launch.py 
source install/setup.bash
ros2 launch limo_base limo_base.launch.py 
cj jin_ws/
cd jin_ws/
source install/setup.bash
ros2 launch limo_base limo_base.launch.py 
ls -l /dev/ttyUSB*
ls -l /dev/ttyACM*
ls -l /dev/ttylimo
.. cd
..cd
cd ..
ls -l /dev/ttylimo
/dev/ttyUSB0
/dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=/dev/ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB0
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB1
ros2 topic echo /wheel/odom
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB1
ros2 launch limo_base limo_base.launch.py port_name:=ttyUSB0
source install/setup.bash
cd jin_ws/
source install/setup.bash
cd src
cd line_track/
python3 line_tracking.red.py
ros2 run v4l2_camera v4l2_camera_node
ros2 node list
ros2 topic list 
ros2 run v4l2_camera v4l2_camera_node 
..
cd..
cd ..
cd limo_ws/line_track/
python3 line_tracking.red.py 
ros2 topic echo limo status
/scan
cd ,,
cd..
cd ..
source install setup.bash
source install/setup.bash
cd limo_ws/
source install/setup.bash
Cd..
ros2 topic echo /limo_status 
ros2 run v4l2_camera v4l2_camera_node 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
rce install/setup.bash
ros2 pkg list | grep ydlidar
source install/setup.bash
ros2 launch ydlidar_ros2_drirce install/setup.bash
ros2 launch ydlidar_ros2_drinch.py
ros2 launch ydlidar_ros2_drinch.py 
ros2 pkg list | grep ydlidar
ros2 pkg prefix ydlidar_ros2_driver
ls /home/pcu/jin_ws/install/ydlidar_ros2_driver/share/ydlidar_ros2_driver/launch
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
ls -l /dev/ttyUSB*
dmesg | grep ttyUSB
ros2 launch ydlidar_ros2_drirce install/setup.bash 
ros2 launch ydlidar_ros2_driver install/setup.bash
ros2 launch ydlidar_ros2_driver  install/setup.bash
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py
ros2 topic list
cd jin_ws/
source install/setup.bash 
ros2 launch ydlidar_ros2_driver 
ros2 luanch ydlidar_ros2
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
ls -l /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo chmod 777 /dev/ttyUSB0
ls -l /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
ros2 launch limo_base limo_base.launch.py
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
rviz2
ros2 launch slam_toolbox online_async_launch.py
rviz2
cd..
cd ..
nano yungi_ws
nano slam_toolbox_mapping.launch.py
python3 slam_toolbox_mapping.launch.py 
nano slam_toolbox_mapping.launch.py
python3 slam_toolbox_mapping.launch.py 
gedit front.py
python3 front.py 
clear
python3 front.py 
ros2 topic hz /scan
ros2 topic echo /scan --once | grep -v intensities
clear
ros2 topic echo /scan --once | grep -v intensities
python3 arbiter.py 
clear
python3 arbiter.py 
ros2 topic list
ros2 topic echo /scan --once
clear
ros2 topic echo /scan --once
ros2 topic echo /scan --once | grep ranges | wc -l
ros2 topic echo /scan --once > scan.txt
ros2 topic echo /scan --once
clear
ros2 topic echo /scan --once
ros2 topic echo /scan --once > scan.txt
clear
ros2 topic echo /scan --once
clear
ros2 topic echo /scan --once
clear
ros2 topic echo /scan --once
clear
python3 front.py 
clear
python3 front.py 
clear
python3 front.py 
clear
python3 front.py 
clear
ros2 topic echo /scan --once
clear
ros2 topic echo /scan --once
python3 front.py 
ros2 topic list 
ros2 topic echo /cmd_vel_yel
ros2 topic echo /limo_status 
cd ~/jin_ws/
ros2 topic echo /limo_status 
ros2 topic list
ros2 topic echo /limo_status 
ros2 topic echo /imu 
ros2 topic echo /limo_status 
cd ~
ros2 topic echo /limo_status 
python3 scan_node.py 
clear
python3 scan_node.py 
clear
python3 scan_node.py 
clear
python3 scan_node.py 
clear
python3 scan_node.py 
clear
python3 scan_node.py 
clear
python3 scan_node.py 
python3 scan_node.py
cd src/line_track/
python3 line_tracking.yellow.py 
gedit line_jun.py
python3 line_jun.py 
gedit yellow_node.py
gedit black_node.py
gedit scan_node.py
gedit arbiter.py
clear
python3 yellow_node.py 
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
clear
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
lsusb
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
clear
sudo ln -s /dev/ttyUSB1 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
source install/setup.bash 
ros2 topic echo /limo_status 
ros2 topic list
ros2 topic echo /limo_status 
clear
ros2 topic echo /limo_status 
ros2 topic echo /scan 
ros2 run v4l2_camera v4l2_camera_node
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
history
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
history | grep lidar
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
cd ~
ros2 run rqt_image_view rqt_image_view 
cleasr
clear
cd jin_ws/src/line_track/
python3 black_node.py 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           pip install opencv-python opencv-contrib-python
ls
python3 aruco_test1.py
python3 aruco_test1.py 
python3 aruco_test2.py 
ls
python3 aruco_test2.py 
python3 aruco_test3.py 
python3 aruco_test4.py 
python3 scan_node.py 
cd ~
python3 test_aruco.py 
python3 scan_node.py 
cd ~
python3 aruco_detect.py 
python3 arbiter2.py 
ros2 topic echo /cmd_vel_blk 
python3 arbiter2.py 
ros2 topic echo /cmd_vel_blk 
ros2 topic echo /limo_status 
cd ~/jin_ws/
source install/setup.bash 
ros2 topic echo /limo_status 
cd ~
gedit
gedit how
cd src/line_track/
ros2 topic echo /limo_status 
cd ~/jin_ws/
source install/setup.bash 
ros2 topic echo /limo_status 
cd src/line_track/
python3 red_node.py 
python3 black_node
python3 black_node.py 
history | grep camera
ros2 run v4l2_camera v4l2_camera_node
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo ln -s /dev/ttyUSB1 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo rm -f /dev/ydlidar
sudo ln -s /dev/ttyUSB1 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
sudo rm -f /dev/ydlidar
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
cd jin_ws/
source install/setup.bash 
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
source install/setup.
source install/setup.bash 
source install/setup.bash 
ros2 topic echi /lib
ros2 topic echo /limo_status 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
history | grep camera
ros2 run v4l2_camera v4l2_camera_node
cd src/li
cd src/line_track/
python3 red_node.py 
cd ~
cd jin_ws/src/line_track/
python3 red_node.py 
python3 black_node
python3 black_node.py 
ros2 topic echo /cmd_vel_stop 
ros2 topic echo /scan 
ros2 topic echo /limo_status 
cd jin_ws/
source install/setup.bash 
ros2 topic echo /limo_status 
cd src/line_track/
python3 scan_node.py 
cd ~
python3 aruco_detect.py 
python3 arbiter2.py 
cd~ jin_ws/
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSb1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
source install/setup.bash 
ros2 topic list
ros2 topic echo /limo_status 
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
ros2 launch ydlidar_ros2_driver ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 run v4l2_camera v4l2_camera_node
cd ~
cd jin_ws/src/line_track/
python3 red_node.py 
python3 black_node.py 
cd ..
python3 aruco_detect.py 
cd jin_ws/src/line_track/
python3 scan_node.py 
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
ros2 run v4l2_camera v4l2_camera_node
cd src/line_track/
python3 black_node
python3 black_node.py 
python3 red_node.py 
ros2 launch limo_base limo_base_launch.py
source install/setup.bash 
ros2 topic list
ros2 topic echo /cmd_vel_blk 
ros2 topic echo /cmd_vel_red 
source install/setup.bash 
ros2 topic echo /limo_status 
ros2 topic echo /scan
cd ~/jin_ws
source install/setup.bash
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo rm -f /dev/ydlidar
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py -
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo ln -s /dev/ttyUSB1 /dev/ydlidar
ls /dev/ydlidar
ls /dev/*
sudo ln -s /dev/ttyUSB3 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo rm -f /dev/ydlidar
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
sudo rm -f /dev/ydlidar
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ydlidar
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 run v4l2_camera v4l2_camera_node
cd ~/jin_ws/src/line_track/
python3 red_node.py 
python3 yellow_node.py 
cd ~
cd jin_ws/src/line_track/
python3 aruco_detect.py 
python3 scan_node.py 
gedit scan_node.py 
python3 scan_node.py 

python3 arbiter2.py 
gedit arbiter2.py 
python3 arbiter2.py 
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
ros2 topic echo /limo_status 
source install/setup.bash 
ros2 topic echo /limo_status 
source install/setup.bash 
ros2 topic echo /limo_status 
source install/setup.bash 
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 topic echo /scan 

ros2 topic echo /scan 
python3 arbiter2.py
cd jin_ws/
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB0 /dev/ttylimo
sudo rm -f /dev/ttylimo
sudo ln -s /dev/ttyUSB1 /dev/ttylimo
ros2 launch limo_base limo_base.launch.py 
ros2 topic echo /limo_status
source install/setup.bash 
ros2 topic echo /limo_status
ros2 launch limo_base limo_base.launch.py 
ros2 topic echo /limo_sta
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 run v4l2_camera v4l2_camera_node
cd ~/jin_ws/src/line_track/
python3 red_node.py
cd ~/jin_ws/src/line_track/
python3 yellow_node.py
python3 aruco_detect.py
python3 scan_node.py 
cd ~/jin_ws
source install/setup.bash 
ros2 launch limo_base limo_base.launch.py 
source install/setup.bash
ros2 launch ydlidar_ros2_driver ydlidar_launch.py 
ros2 run v4l2_camera v4l2_camera_node
cd ~/jin_ws/src/line_tpython3 arbiter2.pyrack/
clear
cd ~/jin_ws/src/line_python3 arbiter2.pyrack/
cd ~/jin_ws/src/line_track/
python3 arbiter2.py 
cd ~/jin_ws/src/line_python3 arbiter2.pyrack/
python3 red_node.py 
python3 yellow_node.py 
python3 aruco_detect.py
python3 arbiter2.py
ipconfig
ifconfig
sudo apt install net-tool
sudo apt install net-tools
ifconfig
ip addr
ifconfig
ifconpig
ifconfig
sudo apt install -y openssh-server
