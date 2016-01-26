LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -O3 -Wno-error=implicit-function-declaration
LOCAL_MODULE := libopendelta
LOCAL_SRC_FILES += xdelta3-3.0.7/xdelta3.c zipadjust.c delta.c delta_jni.c
LOCAL_LDLIBS := -lz

LOCAL_C_INCLUDES += external/zlib
LOCAL_SHARED_LIBRARIES := libz

include $(BUILD_SHARED_LIBRARY)
