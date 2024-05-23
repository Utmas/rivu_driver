# Install script for directory: /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gnss/dev/module_test/catkin_ws_rivu/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ins_msg/msg" TYPE FILE FILES
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/ByteVector.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/ImuMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/GnssMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/GnssAjMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/InsMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/PairMeass.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbAoaMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbAoaDLTdoaMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbTdoaPosMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/WheelSpeedMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/EkfStatusMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbPosUpMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbPosDownMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/UwbPos.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/MagMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/BmpMsg.msg"
    "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/msg/OdomMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ins_msg/cmake" TYPE FILE FILES "/home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/interface/driver_msgs/ins_msg/catkin_generated/installspace/ins_msg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gnss/dev/module_test/catkin_ws_rivu/devel/include/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gnss/dev/module_test/catkin_ws_rivu/devel/share/roseus/ros/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gnss/dev/module_test/catkin_ws_rivu/devel/share/common-lisp/ros/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gnss/dev/module_test/catkin_ws_rivu/devel/share/gennodejs/ros/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/python3/dist-packages/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/python3/dist-packages/ins_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/interface/driver_msgs/ins_msg/catkin_generated/installspace/ins_msg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ins_msg/cmake" TYPE FILE FILES "/home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/interface/driver_msgs/ins_msg/catkin_generated/installspace/ins_msg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ins_msg/cmake" TYPE FILE FILES
    "/home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/interface/driver_msgs/ins_msg/catkin_generated/installspace/ins_msgConfig.cmake"
    "/home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/interface/driver_msgs/ins_msg/catkin_generated/installspace/ins_msgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ins_msg" TYPE FILE FILES "/home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/interface/driver_msgs/ins_msg/package.xml")
endif()

