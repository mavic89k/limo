cmake_minimum_required(VERSION 3.8)
project(limo_car)

# --- Compiler options ---
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# --- Dependencies ---
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)

# --- Include directories ---
include_directories(include)

# --- Executable (노드 파일 있을 때만 활성화) ---
# 예: src/limo_car_node.cpp
# add_executable(limo_car_node src/limo_car_node.cpp)
# ament_target_dependencies(limo_car_node
#   rclcpp
#   sensor_msgs
#   geometry_msgs
#   nav_msgs
# )

# --- Install resources (launch/urdf 등) ---
install(
  DIRECTORY launch gazebo meshes rviz urdf
  DESTINATION share/${PROJECT_NAME}
)

# --- Install binaries (위에서 add_executable 했다면 활성화) ---
# install(TARGETS
#   limo_car_node
#   DESTINATION lib/${PROJECT_NAME}
# )

# --- Testing (optional) ---
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  set(ament_cmake_cpplint_FOUND TRUE)
  set(ament_cmake_copyright_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()

