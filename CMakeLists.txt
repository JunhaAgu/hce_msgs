cmake_minimum_required(VERSION 2.8.3)
project(hce_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  cv_bridge

  message_generation

  std_msgs
  nav_msgs
  geometry_msgs
  sensor_msgs
  
  pcl_conversions
  pcl_ros
  message_filters
  image_transport
)

#messages
add_message_files(
   FILES
   controlInputsStamped.msg 
   packetsFromExcavator.msg
   packetsToExcavator.msg
)

#services
add_service_files(
  FILES
  profilePolynomialStamped.srv
  profilePointsStamped.srv
  lidarImageDataStamped.srv
  relativeLidarPoseStamped.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

catkin_package(
  DEPENDS 
  #Eigen
  CATKIN_DEPENDS message_runtime roscpp message_filters
)
