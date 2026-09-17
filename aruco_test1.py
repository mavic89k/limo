import cv2
import cv2.aruco as aruco

# 1. 카메라 연결
cap = cv2.VideoCapture(0)  # LIMO 카메라라면 /dev/video0 또는 ros2 로 브릿지 필요

# 2. 사용할 딕셔너리 선택
aruco_dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)
parameters = aruco.DetectorParameters()

# 3. Detector 생성
detector = aruco.ArucoDetector(aruco_dict, parameters)

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # 4. 마커 검출
    corners, ids, rejected = detector.detectMarkers(frame)

    # 5. 마커를 찾았을 때
    if ids is not None:
        for corner, marker_id in zip(corners, ids):

            # Corners: 4개 좌표 (좌상, 우상, 우하, 좌하)
            pts = corner[0]

            # 중심점 계산
            cx = int((pts[0][0] + pts[2][0]) / 2)
            cy = int((pts[0][1] + pts[2][1]) / 2)

            # 화면에 표시
            cv2.circle(frame, (cx, cy), 5, (0, 255, 0), -1)
            cv2.putText(frame, f"ID:{marker_id[0]}  ({cx},{cy})",
                        (cx+10, cy), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0,255,0), 2)

            # 마커 윤곽선 그리기
            aruco.drawDetectedMarkers(frame, corners, ids)

    cv2.imshow("Aruco Detect", frame)
    if cv2.waitKey(1) & 0xFF == 27:
        break

cap.release()
cv2.destroyAllWindows()

