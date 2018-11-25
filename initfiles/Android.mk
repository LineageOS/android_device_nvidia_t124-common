LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t124.rc
LOCAL_MODULE_TAGS          := optional eng
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t124.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := ussrd.conf
LOCAL_MODULE_TAGS          := optional eng
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := ussrd.conf
LOCAL_VENDOR_MODULE        := true
include $(BUILD_PREBUILT)
