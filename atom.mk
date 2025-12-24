LOCAL_PATH := $(call my-dir)

################################################################################
# sdformat
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := sdformat
LOCAL_DESCRIPTION := Robot and simulation model format.
LOCAL_CATEGORY_PATH := sphinx/

LOCAL_LIBRARIES := \
	ign-math \
	ign-tools

LOCAL_EXPORT_LDLIBS := -lsdformat9

LOCAL_CXXFLAGS := -std=c++17
LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/sdformat-9.10

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False \
	-DUSE_UPSTREAM_CFLAGS:BOOL=False \
	-DIGNITION-MATH_INCLUDE_DIRS=$(TARGET_OUT_STAGING)/usr/include/ignition/math2 \
	-DIGNITION-MATH_LIBRARIES=$(TARGET_OUT_STAGING)/usr/lib/libignition-math2.so \
	-DIGNITION-MATH_LIBRARY_DIRS=$(TARGET_OUT_STAGING)/usr/lib

include $(BUILD_CMAKE)

