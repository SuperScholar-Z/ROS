# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/ubuntu1404/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu1404/ros_ws/build

# Include any dependencies generated for this target.
include learning_image_transport/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include learning_image_transport/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include learning_image_transport/CMakeFiles/server.dir/flags.make

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o: learning_image_transport/CMakeFiles/server.dir/flags.make
learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o: /home/ubuntu1404/ros_ws/src/learning_image_transport/src/server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu1404/ros_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/ubuntu1404/ros_ws/build/learning_image_transport && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/ubuntu1404/ros_ws/src/learning_image_transport/src/server.cpp

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/ubuntu1404/ros_ws/build/learning_image_transport && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu1404/ros_ws/src/learning_image_transport/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/ubuntu1404/ros_ws/build/learning_image_transport && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu1404/ros_ws/src/learning_image_transport/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.requires:
.PHONY : learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.requires

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.provides: learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f learning_image_transport/CMakeFiles/server.dir/build.make learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.provides

learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.provides.build: learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: learning_image_transport/CMakeFiles/server.dir/build.make
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libcv_bridge.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libimage_transport.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libmessage_filters.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libclass_loader.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/libPocoFoundation.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libroslib.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/librospack.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libroscpp.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/librosconsole.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/liblog4cxx.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/librostime.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /opt/ros/indigo/lib/libcpp_common.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server: learning_image_transport/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server"
	cd /home/ubuntu1404/ros_ws/build/learning_image_transport && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
learning_image_transport/CMakeFiles/server.dir/build: /home/ubuntu1404/ros_ws/devel/lib/learning_image_transport/server
.PHONY : learning_image_transport/CMakeFiles/server.dir/build

learning_image_transport/CMakeFiles/server.dir/requires: learning_image_transport/CMakeFiles/server.dir/src/server.cpp.o.requires
.PHONY : learning_image_transport/CMakeFiles/server.dir/requires

learning_image_transport/CMakeFiles/server.dir/clean:
	cd /home/ubuntu1404/ros_ws/build/learning_image_transport && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : learning_image_transport/CMakeFiles/server.dir/clean

learning_image_transport/CMakeFiles/server.dir/depend:
	cd /home/ubuntu1404/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1404/ros_ws/src /home/ubuntu1404/ros_ws/src/learning_image_transport /home/ubuntu1404/ros_ws/build /home/ubuntu1404/ros_ws/build/learning_image_transport /home/ubuntu1404/ros_ws/build/learning_image_transport/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : learning_image_transport/CMakeFiles/server.dir/depend
