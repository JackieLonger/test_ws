cmake_minimum_required(VERSION 3.5)
project(cpp_subscriber)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

add_executable(subscriber src/subscriber.cpp)  # 確保路徑正確
ament_target_dependencies(subscriber rclcpp std_msgs)

install(TARGETS
  subscriber
  DESTINATION lib/${PROJECT_NAME})

ament_package()
