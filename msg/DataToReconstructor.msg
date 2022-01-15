Header header
sensor_msgs/Image img0 # boom upper
sensor_msgs/Image img1 # boom lower
sensor_msgs/Image img2 # cabin upper
sensor_msgs/Image img3 # cabin lower

# LiDAR 0 (boom)
hce_msgs/DataLidar lidar0

# LiDAR 1 (cabin)
hce_msgs/DataLidar lidar1

# Real-time pose of the boom upper camera (img0)
geometry_msgs/Pose T_GC_boomupper # w.r.t. {B} (창현 정의한 바디프레임)
geometry_msgs/Pose T_GC_cabinupper # w.r.t. {B}