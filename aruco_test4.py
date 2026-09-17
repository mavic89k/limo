#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import cv2.aruco as aruco
import numpy as np


class ArucoDepthNode(Node):
    def __init__(self):
        super().__init__('aruco_depth_node')

        self.bridge = CvBridge()
        self.color_img = None
        self.depth_img = None

        # --- 카메라 토픽 구독 ---
        self.create_subscription(Image, "/camera/color/image_raw", self.color_callback, 10)
        self.create_subscription(Image, "/camera/depth/image_raw", self.depth_callback, 10)

        # Aruco 설정
        self.aruco_dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)
        self.detector = aruco.ArucoDetector(self.aruco_dict, aruco.DetectorParameters())

        self.get_logger().info("Aruco + Depth Node Started")

    def color_callback(self, msg):
        self.color_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        self.process()

    def depth_callback(self, msg):
        # depth 데이터 형식을 있는 그대로 받음
        self.depth_img = self.bridge.imgmsg_to_cv2(msg, msg.encoding)

    def process(self):
        if self.color_img is None or self.depth_img is None:
            return

        frame = self.color_img.copy()
        depth = self.depth_img.astype(np.float32)

        corners, ids, _ = self.detector.detectMarkers(frame)

        if ids is not None:
            for corner, marker_id in zip(corners, ids):
                pts = corner[0]
                cx = int((pts[0][0] + pts[2][0]) / 2)
                cy = int((pts[0][1] + pts[2][1]) / 2)

                # depth값 읽기
                if 0 <= cx < depth.shape[1] and 0 <= cy < depth.shape[0]:
                    dist = depth[cy, cx]

                    if dist == 0:
                        region = depth[cy-2:cy+3, cx-2:cx+3]
                        dist = float(np.mean(region))

                    cv2.putText(
                        frame,
                        f"ID:{marker_id[0]}  Dist:{dist:.2f}m",
                        (cx + 10, cy),
                        cv2.FONT_HERSHEY_SIMPLEX,
                        0.7,
                        (0, 255, 0),
                        2
                    )
                    cv2.circle(frame, (cx, cy), 5, (0, 255, 0), -1)

            aruco.drawDetectedMarkers(frame, corners, ids)

        cv2.imshow("Aruco + Depth", frame)
        cv2.waitKey(1)


def main(args=None):
    rclpy.init(args=args)
    node = ArucoDepthNode()
    rclpy.spin(node)


if __name__ == '__main__':
    main()

