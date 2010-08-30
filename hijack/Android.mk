LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),droidx)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hijack.c
LOCAL_MODULE := hijack
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := libbusybox libclearsilverregex libm libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_CFLAGS += -DBOARD_HIJACK_RECOVERY_PATH=\"$(BOARD_HIJACK_RECOVERY_PATH)\"
include $(BUILD_EXECUTABLE)

endif
