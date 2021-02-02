# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/catkin_ws/src/usb_cam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/catkin_ws/build/usb_cam

# Include any dependencies generated for this target.
include CMakeFiles/usb_cam_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/usb_cam_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/usb_cam_node.dir/flags.make

CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o: CMakeFiles/usb_cam_node.dir/flags.make
CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o: /home/pi/catkin_ws/src/usb_cam/nodes/usb_cam_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/catkin_ws/build/usb_cam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o -c /home/pi/catkin_ws/src/usb_cam/nodes/usb_cam_node.cpp

CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/catkin_ws/src/usb_cam/nodes/usb_cam_node.cpp > CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i

CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/catkin_ws/src/usb_cam/nodes/usb_cam_node.cpp -o CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s

# Object files for target usb_cam_node
usb_cam_node_OBJECTS = \
"CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o"

# External object files for target usb_cam_node
usb_cam_node_EXTERNAL_OBJECTS =

/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: CMakeFiles/usb_cam_node.dir/build.make
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /home/pi/catkin_ws/devel/.private/usb_cam/lib/libusb_cam.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /home/pi/catkin_ws/devel/.private/image_transport/lib/libimage_transport.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libmessage_filters.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libclass_loader.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/libPocoFoundation.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libdl.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libroslib.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/librospack.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libpython3.7m.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_program_options.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libtinyxml2.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /home/pi/catkin_ws/devel/.private/camera_info_manager/lib/libcamera_info_manager.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /home/pi/catkin_ws/devel/.private/camera_calibration_parsers/lib/libcamera_calibration_parsers.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libroscpp.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/librosconsole.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/librostime.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /opt/ros/noetic/lib/libcpp_common.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node: CMakeFiles/usb_cam_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/catkin_ws/build/usb_cam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usb_cam_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/usb_cam_node.dir/build: /home/pi/catkin_ws/devel/.private/usb_cam/lib/usb_cam/usb_cam_node

.PHONY : CMakeFiles/usb_cam_node.dir/build

CMakeFiles/usb_cam_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/usb_cam_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/usb_cam_node.dir/clean

CMakeFiles/usb_cam_node.dir/depend:
	cd /home/pi/catkin_ws/build/usb_cam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src/usb_cam /home/pi/catkin_ws/src/usb_cam /home/pi/catkin_ws/build/usb_cam /home/pi/catkin_ws/build/usb_cam /home/pi/catkin_ws/build/usb_cam/CMakeFiles/usb_cam_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/usb_cam_node.dir/depend

