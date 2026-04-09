LOCAL_PATH := $(call my-dir)

################################################################################
# sdformat
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := sdformat
LOCAL_DESCRIPTION := Robot and simulation model format.
LOCAL_CATEGORY_PATH := lib

LOCAL_LIBRARIES := \
	tinyxml2 \
	gz-cmake \
	gz-math \
	gz-utils

LOCAL_EXPORT_LDLIBS := -lsdformat

LOCAL_CXXFLAGS := -std=c++17
LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/sdformat16

include $(BUILD_CMAKE)


