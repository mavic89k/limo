#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
from std_msgs.msg import Bool
from cv_bridge import CvBridge

import cv2
import cv2.aruco as aruco


class ArucoDetectorNode(Node):
    def __init__(self):
        super().__init__("aruco_detector")

        self.bridge = CvBridge()

        self.sub = self.create_subscription(
            Image, "/image_raw", self.image_callback, 10
        )

        # Twist publishers (arbiter uses them)
        self.stop_pub = self.create_publisher(Twist, "/cmd_vel_stop", 10)
        self.park_pub = self.create_publisher(Twist, "/cmd_vel_park", 10)

        # ⭐ Bool publishers (arbiter NEEDS these!)
        self.stop_flag_pub = self.create_publisher(Bool, "/aruco_stop_detected", 10)
        self.park_flag_pub = self.create_publisher(Bool, "/aruco_park_detected", 10)

        # ArUco 설정
        self.aruco_dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)
        self.parameters = aruco.DetectorParameters()
        self.detector = aruco.ArucoDetector(self.aruco_dict, self.parameters)

        self.get_logger().info("📸 ArUco Detector Node Started")


    def make_stop_twist(self):
        t = Twist()
        t.linear.x = 0.0
        t.angular.z = 0.0
        return t


    def image_callback(self, msg):
        frame = self.bridge.imgmsg_to_cv2(msg, "bgr8")

        corners, ids, rejected = self.detector.detectMarkers(frame)

        # 기본적으로 detection 신호 초기화 (미검출 시 False)
        self.stop_flag_pub.publish(Bool(data=False))
        self.park_flag_pub.publish(Bool(data=False))

        if ids is not None:
            for corner, marker_id in zip(corners, ids):

                marker_id = int(marker_id[0])

                if marker_id == 0:
                    self.get_logger().info("🔵 ID 0 STOP MARKER")
                    self.stop_pub.publish(self.make_stop_twist())
                    self.stop_flag_pub.publish(Bool(data=True))   # ⭐ 중요

                elif marker_id == 1:
                    self.get_logger().info("🟢 ID 1 PARK MARKER")
                    self.park_pub.publish(self.make_stop_twist())
                    self.park_flag_pub.publish(Bool(data=True))   # ⭐ 중요

                # 디버그 표시
                pts = corner[0]
                cx = int((pts[0][0] + pts[2][0]) / 2)
                cy = int((pts[0][1] + pts[2][1]) / 2)
                cv2.circle(frame, (cx, cy), 5, (0,255,0), -1)

            aruco.drawDetectedMarkers(frame, corners, ids)

        cv2.imshow("Aruco Detect", frame)
        cv2.waitKey(1)



def main(args=None):
    rclpy.init(args=args)
    node = ArucoDetectorNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    main()

