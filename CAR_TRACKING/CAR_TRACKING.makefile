# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
#Debug_Include_Path=-I"../../../../../../OpenCV2.0/include/opencv" 
OPENCV_INC=/usr/local/include/opencv
LEGACY_INC=/usr/local/include/opencv2/legacy
Debug_Include_Path= -I$(OPENCV_INC) -I"/usr/src/linux-headers-3.2.0-33/arch/um/include/shared" -I$(LEGACY_INC) 
Release_Include_Path= -I$(OPENCV_INC) -I"/usr/src/linux-headers-3.2.0-33/arch/um/include/shared" -I$(LEGACY_INC) 

# Library paths...

Debug_Library_Path= -L/usr/local/lib 
Release_Library_Path= -L/usr/local/lib 

# Additional libraries...
Debug_Libraries=-Wl,--start-group   -Wl,--end-group -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_ts -lopencv_video -lopencv_videostab -lm -lstdc++ -lpthread
Release_Libraries = -Wl,--start-group   -Wl,--end-group -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_ts -lopencv_video -lopencv_videostab -lstdc++ -lm -lpthread

# Preprocessor definitions...
Debug_Preprocessor_Definitions=-D GCC_BUILD -D _DEBUG -D _CONSOLE 
Release_Preprocessor_Definitions=-D GCC_BUILD -D NDEBUG -D _CONSOLE 

# Implictly linked object files...
Debug_Implicitly_Linked_Objects=
Release_Implicitly_Linked_Objects=

# Compiler flags...
Debug_Compiler_Flags=-O0 -g 
Release_Compiler_Flags=-O2 

# Builds all configurations for this project...
.PHONY: build_all_configurations
build_all_configurations: Debug Release 

# Builds the Debug configuration...
.PHONY: Debug
Debug: create_folders gccDebug/detect.o gccDebug/dt.o gccDebug/fconvsMT.o gccDebug/featurepyramid.o gccDebug/get_boxes.o gccDebug/laser_func.o gccDebug/load_model.o gccDebug/main.o gccDebug/nms.o gccDebug/resize.o gccDebug/showboxes.o gccDebug/tracking.o
	gcc gccDebug/detect.o gccDebug/dt.o gccDebug/fconvsMT.o gccDebug/featurepyramid.o gccDebug/get_boxes.o gccDebug/laser_func.o gccDebug/load_model.o gccDebug/main.o gccDebug/nms.o gccDebug/resize.o gccDebug/showboxes.o gccDebug/tracking.o $(Debug_Library_Path) $(Debug_Libraries) -Wl,-rpath,./ -o ../gccDebug/CAR_TRACKING.exe

# Compiles file detect.cpp for the Debug configuration...
-include gccDebug/detect.d
gccDebug/detect.o: detect.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c detect.cpp $(Debug_Include_Path) -o gccDebug/detect.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM detect.cpp $(Debug_Include_Path) > gccDebug/detect.d

# Compiles file dt.cpp for the Debug configuration...
-include gccDebug/dt.d
gccDebug/dt.o: dt.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c dt.cpp $(Debug_Include_Path) -o gccDebug/dt.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM dt.cpp $(Debug_Include_Path) > gccDebug/dt.d

# Compiles file fconvsMT.cpp for the Debug configuration...
-include gccDebug/fconvsMT.d
gccDebug/fconvsMT.o: fconvsMT.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c fconvsMT.cpp $(Debug_Include_Path) $(Debug_Library_Path) -o gccDebug/fconvsMT.o -lm
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM fconvsMT.cpp $(Debug_Include_Path) > gccDebug/fconvsMT.d

# Compiles file featurepyramid.cpp for the Debug configuration...
-include gccDebug/featurepyramid.d
gccDebug/featurepyramid.o: featurepyramid.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c featurepyramid.cpp $(Debug_Include_Path) -o gccDebug/featurepyramid.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM featurepyramid.cpp $(Debug_Include_Path) > gccDebug/featurepyramid.d

# Compiles file get_boxes.cpp for the Debug configuration...
-include gccDebug/get_boxes.d
gccDebug/get_boxes.o: get_boxes.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c get_boxes.cpp $(Debug_Include_Path) -o gccDebug/get_boxes.o 
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM get_boxes.cpp $(Debug_Include_Path) > gccDebug/get_boxes.d

# Compiles file laser_func.cpp for the Debug configuration...
-include gccDebug/laser_func.d
gccDebug/laser_func.o: laser_func.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c laser_func.cpp $(Debug_Include_Path) -o gccDebug/laser_func.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM laser_func.cpp $(Debug_Include_Path) > gccDebug/laser_func.d

# Compiles file load_model.cpp for the Debug configuration...
-include gccDebug/load_model.d
gccDebug/load_model.o: load_model.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c load_model.cpp $(Debug_Include_Path) -o gccDebug/load_model.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM load_model.cpp $(Debug_Include_Path) > gccDebug/load_model.d

# Compiles file main.cpp for the Debug configuration...
-include gccDebug/main.d
gccDebug/main.o: main.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c main.cpp $(Debug_Include_Path) -o gccDebug/main.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM main.cpp $(Debug_Include_Path) > gccDebug/main.d

# Compiles file nms.cpp for the Debug configuration...
-include gccDebug/nms.d
gccDebug/nms.o: nms.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c nms.cpp $(Debug_Include_Path) -o gccDebug/nms.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM nms.cpp $(Debug_Include_Path) > gccDebug/nms.d

# Compiles file resize.cc for the Debug configuration...
-include gccDebug/resize.d
gccDebug/resize.o: resize.cc
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c resize.cc $(Debug_Include_Path) -o gccDebug/resize.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM resize.cc $(Debug_Include_Path) > gccDebug/resize.d

# Compiles file showboxes.cpp for the Debug configuration...
-include gccDebug/showboxes.d
gccDebug/showboxes.o: showboxes.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c showboxes.cpp $(Debug_Include_Path) -o gccDebug/showboxes.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM showboxes.cpp $(Debug_Include_Path) > gccDebug/showboxes.d

# Compiles file tracking.cpp for the Debug configuration...
-include gccDebug/tracking.d
gccDebug/tracking.o: tracking.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c tracking.cpp $(Debug_Include_Path) -o gccDebug/tracking.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM tracking.cpp $(Debug_Include_Path) > gccDebug/tracking.d



# Builds the Release configuration...
.PHONY: Release
Release: create_folders gccRelease/detect.o gccRelease/dt.o gccRelease/fconvsMT.o gccRelease/featurepyramid.o gccRelease/get_boxes.o gccRelease/laser_func.o gccRelease/load_model.o gccRelease/main.o gccRelease/nms.o gccRelease/resize.o gccRelease/showboxes.o gccRelease/tracking.o
	gcc gccRelease/detect.o gccRelease/dt.o gccRelease/fconvsMT.o gccRelease/featurepyramid.o gccRelease/get_boxes.o gccRelease/laser_func.o gccRelease/load_model.o gccRelease/main.o gccRelease/nms.o gccRelease/resize.o gccRelease/showboxes.o gccRelease/tracking.o $(Release_Library_Path) $(Release_Libraries) -Wl,-rpath,./ -o ../gccRelease/CAR_TRACKING.exe

# Compiles file detect.cpp for the Release configuration...
-include gccRelease/detect.d
gccRelease/detect.o: detect.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c detect.cpp $(Release_Include_Path) -o gccRelease/detect.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM detect.cpp $(Release_Include_Path) > gccRelease/detect.d

# Compiles file dt.cpp for the Release configuration...
-include gccRelease/dt.d
gccRelease/dt.o: dt.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c dt.cpp $(Release_Include_Path) -o gccRelease/dt.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM dt.cpp $(Release_Include_Path) > gccRelease/dt.d

# Compiles file fconvsMT.cpp for the Release configuration...
-include gccRelease/fconvsMT.d
gccRelease/fconvsMT.o: fconvsMT.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c fconvsMT.cpp $(Release_Include_Path)  $(Release_Library_Path) -o gccRelease/fconvsMT.o -lm
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM fconvsMT.cpp $(Release_Include_Path) > gccRelease/fconvsMT.d

# Compiles file featurepyramid.cpp for the Release configuration...
-include gccRelease/featurepyramid.d
gccRelease/featurepyramid.o: featurepyramid.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c featurepyramid.cpp $(Release_Include_Path) -o gccRelease/featurepyramid.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM featurepyramid.cpp $(Release_Include_Path) > gccRelease/featurepyramid.d

# Compiles file get_boxes.cpp for the Release configuration...
-include gccRelease/get_boxes.d
gccRelease/get_boxes.o: get_boxes.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c get_boxes.cpp $(Release_Include_Path) -o gccRelease/get_boxes.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM get_boxes.cpp $(Release_Include_Path) > gccRelease/get_boxes.d

# Compiles file laser_func.cpp for the Release configuration...
-include gccRelease/laser_func.d
gccRelease/laser_func.o: laser_func.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c laser_func.cpp $(Release_Include_Path) -o gccRelease/laser_func.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM laser_func.cpp $(Release_Include_Path) > gccRelease/laser_func.d

# Compiles file load_model.cpp for the Release configuration...
-include gccRelease/load_model.d
gccRelease/load_model.o: load_model.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c load_model.cpp $(Release_Include_Path) -o gccRelease/load_model.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM load_model.cpp $(Release_Include_Path) > gccRelease/load_model.d

# Compiles file main.cpp for the Release configuration...
-include gccRelease/main.d
gccRelease/main.o: main.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c main.cpp $(Release_Include_Path) -o gccRelease/main.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM main.cpp $(Release_Include_Path) > gccRelease/main.d

# Compiles file nms.cpp for the Release configuration...
-include gccRelease/nms.d
gccRelease/nms.o: nms.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c nms.cpp $(Release_Include_Path) -o gccRelease/nms.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM nms.cpp $(Release_Include_Path) > gccRelease/nms.d

# Compiles file resize.cc for the Release configuration...
-include gccRelease/resize.d
gccRelease/resize.o: resize.cc
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c resize.cc $(Release_Include_Path) -o gccRelease/resize.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM resize.cc $(Release_Include_Path) > gccRelease/resize.d

# Compiles file showboxes.cpp for the Release configuration...
-include gccRelease/showboxes.d
gccRelease/showboxes.o: showboxes.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c showboxes.cpp $(Release_Include_Path) -o gccRelease/showboxes.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM showboxes.cpp $(Release_Include_Path) > gccRelease/showboxes.d

# Compiles file tracking.cpp for the Release configuration...
-include gccRelease/tracking.d
gccRelease/tracking.o: tracking.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c tracking.cpp $(Release_Include_Path) -o gccRelease/tracking.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM tracking.cpp $(Release_Include_Path) > gccRelease/tracking.d



# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p gccDebug
	mkdir -p ../gccDebug
	mkdir -p gccRelease
	mkdir -p ../gccRelease

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f gccDebug/*.o
	rm -f gccDebug/*.d
	rm -f ../gccDebug/*.a
	rm -f ../gccDebug/*.so
	rm -f ../gccDebug/*.dll
	rm -f ../gccDebug/*.exe
	rm -f gccRelease/*.o
	rm -f gccRelease/*.d
	rm -f ../gccRelease/*.a
	rm -f ../gccRelease/*.so
	rm -f ../gccRelease/*.dll
	rm -f ../gccRelease/*.exe
#########delete folders for each configuraton
	rm -rf gccDebug
	rm -rf ../gccDebug
	rm -rf gccRelease
	rm -rf ../gccRelease
