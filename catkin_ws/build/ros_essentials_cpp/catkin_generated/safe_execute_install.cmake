execute_process(COMMAND "/home/utkarsh/catkin_ws/build/ros_essentials_cpp/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/utkarsh/catkin_ws/build/ros_essentials_cpp/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
