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
float32[] T_OC_boomupper  # {B} to boom upper camera
float32[] T_OC_cabinupper # {B} to boom lower camera
float32[] T_cucl_cabin    # boom upper camera to boom lower camera
float32[] T_cucl_boom     # cabin upper camera to cabin lower camera
float32[] T_cl_cabin      # cabin upper camera to cabin lidar
float32[] T_cl_boom       # boom upper camera to boom lidar