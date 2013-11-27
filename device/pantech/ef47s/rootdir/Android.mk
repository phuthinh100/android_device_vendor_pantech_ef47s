LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# files that live under device/pantech/ef47s/rootdir/etc/

include $(CLEAR_VARS)
LOCAL_MODULE       := init.ef47s.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.qcom.rc
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
