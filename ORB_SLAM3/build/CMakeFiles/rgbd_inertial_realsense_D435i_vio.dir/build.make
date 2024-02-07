# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amber/tools/ORB_SLAM3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amber/tools/ORB_SLAM3/build

# Include any dependencies generated for this target.
include CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/flags.make

CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o: CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/flags.make
CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o: ../RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc
CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o: CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amber/tools/ORB_SLAM3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o -MF CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o.d -o CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o -c /home/amber/tools/ORB_SLAM3/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc

CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amber/tools/ORB_SLAM3/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc > CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.i

CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amber/tools/ORB_SLAM3/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc -o CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.s

# Object files for target rgbd_inertial_realsense_D435i_vio
rgbd_inertial_realsense_D435i_vio_OBJECTS = \
"CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o"

# External object files for target rgbd_inertial_realsense_D435i_vio
rgbd_inertial_realsense_D435i_vio_EXTERNAL_OBJECTS =

../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/RGB-D-I-VIO/rgbd_inertial_realsense_D435i.cc.o
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/build.make
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: ../lib/libORB_SLAM3.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/local/lib/liblcm.so.1.5.0
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_alphamat.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_barcode.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_intensity_transform.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_mcc.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_rapid.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_wechat_qrcode.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.5.4d
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /home/amber/tools/Pangolin/build/src/libpangolin.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libGL.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libGLU.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libGLEW.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libEGL.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libwayland-client.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libwayland-egl.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libwayland-cursor.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libSM.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libICE.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libX11.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /usr/lib/x86_64-linux-gnu/libXext.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: ../Thirdparty/DBoW2/lib/libDBoW2.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: ../Thirdparty/g2o/lib/libg2o.so
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /opt/ros/humble/lib/x86_64-linux-gnu/librealsense2.so.2.54.1
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: /opt/ros/humble/lib/x86_64-linux-gnu/librsutils.a
../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio: CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amber/tools/ORB_SLAM3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/build: ../RGB-D-I-VIO/rgbd_inertial_realsense_D435i_vio
.PHONY : CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/build

CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/clean

CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/depend:
	cd /home/amber/tools/ORB_SLAM3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amber/tools/ORB_SLAM3 /home/amber/tools/ORB_SLAM3 /home/amber/tools/ORB_SLAM3/build /home/amber/tools/ORB_SLAM3/build /home/amber/tools/ORB_SLAM3/build/CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgbd_inertial_realsense_D435i_vio.dir/depend
