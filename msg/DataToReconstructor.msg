Header header
sensor_msgs/Image img0 # boom upper
sensor_msgs/Image img1 # boom lower
sensor_msgs/Image img2 # cabin upper
sensor_msgs/Image img3 # cabin lower

# LiDAR 0 (boom)
hce_msgs/DataLidar lidar0

# LiDAR 1 (cabin)
hce_msgs/DataLidar lidar1

# Real-time pose of sensors
geometry_msgs/Pose T_BC_boomupper  # {B} to boom upper camera
geometry_msgs/Pose T_BC_cabinupper # {B} to boom lower camera
geometry_msgs/Pose T_cucl_cabin    # boom upper camera to boom lower camera
geometry_msgs/Pose T_cucl_boom     # cabin upper camera to cabin lower camera
geometry_msgs/Pose T_cl_cabin      # cabin upper camera to cabin lidar
geometry_msgs/Pose T_cl_boom       # boom upper camera to boom lidar