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
float32[] T_OC_boomlower  # {B} to boom lower camera
float32[] T_OC_cabinlower # {B} to cabin lower camera
float32[] T_clcu_cabin    # cabin lower camera to cabin upper camera
float32[] T_clcu_boom     # boom lower camera to boom upper camera
float32[] T_cl_cabin      # cabin upper camera to cabin lidar
float32[] T_cl_boom       # boom upper camera to boom lidar