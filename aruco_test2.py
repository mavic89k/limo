import cv2
import cv2.aruco as aruco
import numpy as np

# 카메라
color_cap = cv2.VideoCapture(0)       # RGB 카메라
depth_cap = cv2.VideoCapture(1)       # Depth 카메라(depth map 제공하는 장치)

aruco_dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)
parameters = aruco.DetectorParameters()
detector = aruco.ArucoDetector(aruco_dict, parameters)

while True:
    ret_color, color_frame = color_cap.read()
    ret_depth, depth_frame = depth_cap.read()

    if not ret_color or not ret_depth:
        break

    # depth_frame이 16비트라면 normalize
    if depth_frame.dtype != np.float32:
        depth_frame = depth_frame.astype(np.float32)

    # Aruco detection
    corners, ids, _ = detector.detectMarkers(color_frame)

    if ids is not None:
        for corner, marker_id in zip(corners, ids):
            pts = corner[0]
            cx = int((pts[0][0] + pts[2][0]) / 2)
            cy = int((pts[0][1] + pts[2][1]) / 2)

            # ---- 깊이값 추출 ----
            depth_value = depth_frame[cy, cx]

            # 깊이가 0이면 노이즈 → 주변 평균 사용
            if depth_value == 0:
                region = depth_frame[cy-2:cy+3, cx-2:cx+3]
                depth_value = np.mean(region)

            # 화면 출력
            cv2.circle(color_frame, (cx, cy), 5, (0, 255, 0), -1)
            cv2.putText(color_frame,
                        f"ID:{marker_id[0]} Dist:{depth_value:.2f}m",
                        (cx+10, cy),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,255,0), 2)

            aruco.drawDetectedMarkers(color_frame, corners, ids)

    cv2.imshow("Aruco RGB", color_frame)
    cv2.imshow("Aruco Depth", depth_frame / depth_frame.max())

    if cv2.waitKey(1) & 0xFF == 27:
        break

color_cap.release()
depth_cap.release()
cv2.destroyAllWindows()

