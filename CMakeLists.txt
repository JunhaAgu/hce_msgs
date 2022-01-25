cmake_minimum_required(VERSION 3.0.2)
project(hce_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++14)

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

  apriltag_ros
  excavator_msgs
  vision_msgs
)

#messages
add_message_files(
   FILES
   controlInputsStamped.msg 
   packetsFromExcavator.msg
   packetsToExcavator.msg
   ExMeasureStamped.msg
   ExMeasure.msg
   ExPressure.msg
   ExAngle.msg
   ExVelocity.msg
   Predictions.msg
   StateInput.msg
   DataCamlidarStamped.msg
   DataToReconstructor.msg
)

#services
add_service_files(
  FILES
  CamlidarStamped.srv # to get lidar-image data from 'hce_camlidar' module
  CallReconstructor.srv
  CallDumpDetector.srv
  #HceSingleImage.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs

  apriltag_ros
  excavator_msgs
  vision_msgs
)

catkin_package(
  DEPENDS 
  #Eigen
  CATKIN_DEPENDS message_runtime roscpp message_filters excavator_msgs vision_msgs
)
