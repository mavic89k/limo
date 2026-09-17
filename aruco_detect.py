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

        # 이미지 구독
        self.sub = self.create_subscription(
            Image, "/image_raw", self.image_callback, 10
        )

        # 퍼블리셔
        self.stop_pub = self.create_publisher(Twist, "/cmd_vel_stop", 10)
        self.park_pub = self.create_publisher(Twist, "/cmd_vel_park", 10)

        self.stop_flag_pub = self.create_publisher(Bool, "/aruco_stop_detected", 10)
        self.park_flag_pub = self.create_publisher(Bool, "/aruco_park_detected", 10)

        # ArUco 설정
        self.aruco_dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)
        self.parameters = aruco.DetectorParameters()
        self.detector = aruco.ArucoDetector(self.aruco_dict, self.parameters)

        self.get_logger().info("📸 ArUco Detector Node Started (/image_raw 사용)")

    def make_stop_twist(self):
        t = Twist()
        t.linear.x = 0.0
        t.angular.z = 0.0
        return t

    def image_callback(self, msg):
        frame = self.bridge.imgmsg_to_cv2(msg, "bgr8")

        corners, ids, _ = self.detector.detectMarkers(frame)

        # 매 프레임마다 false 초기화
        stop_flag = Bool()
        park_flag = Bool()

        if ids is not None:
            for c, marker in zip(corners, ids):
                marker_id = int(marker[0])

                if marker_id == 0:
                    # STOP 신호
                    self.get_logger().info("🔵 ID 0번 마커 감지 → STOP")
                    self.stop_pub.publish(self.make_stop_twist())

                    stop_flag.data = True

                elif marker_id == 1:
                    # PARK 신호
                    self.get_logger().info("🟢 ID 1번 마커 감지 → PARK")
                    self.park_pub.publish(self.make_stop_twist())

                    park_flag.data = True

                # 중심점 디버깅 표시
                pts = c[0]
                cx = int((pts[0][0] + pts[2][0]) / 2)
                cy = int((pts[0][1] + pts[2][1]) / 2)
                cv2.circle(frame, (cx, cy), 5, (0, 255, 0), -1)
                cv2.putText(frame, f"ID:{marker_id}", (cx + 10, cy),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,255,0), 2)

            aruco.drawDetectedMarkers(frame, corners, ids)

        # Bool 신호 퍼블리시
        self.stop_flag_pub.publish(stop_flag)
        self.park_flag_pub.publish(park_flag)

        # 화면 출력
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

