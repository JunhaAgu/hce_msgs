Header header
sensor_msgs/Image img0 # boom upper
sensor_msgs/Image img1 # boom lower
sensor_msgs/Image img2 # cabin upper
sensor_msgs/Image img3 # cabin lower

# LiDAR 0 (boom)
uint32 n_pts0
uint32 n_channels0
float64[] x0
float64[] y0
float64[] z0
float64[] ring0
float64[] intensity0
float64[] time0

# LiDAR 1 (cabin)
uint32 n_pts1
uint32 n_channels1
float64[] x1
float64[] y1
float64[] z1
float64[] ring1
float64[] intensity1
float64[] time1

# Real-time pose of the boom upper camera (img0)
geometry_msgs/PoseStamped pose_boomcam0 # w.r.t. {B} (창현 정의한 바디프레임)