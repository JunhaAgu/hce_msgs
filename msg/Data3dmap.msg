sensor_msgs/Image scene_image # CV_8UC1 (gray image)
sensor_msgs/Image depth_image # CV_32FC1 (depth (float) image)
geometry_msgs/Point[] points  # 3D points reconstructed (represented in {G})
geometry_msgs/Point[] current_ground # 2D profile of the terrain (represented in {G})
# 0,0) 이 꼭 있어야 함. 
# x 범위는 무조건 0~15 m 사이의 데이터가 다 있어야 함. 
# 만약, 먼 데이터가 없으면 마지막으로 젤일 먼 데이터로 쭉 밀기 (수평이다)