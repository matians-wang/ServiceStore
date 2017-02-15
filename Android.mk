LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4

common_ui:= ../BorqsWidget
res_dirs:= res $(common_ui)/res
src_dirs:= src $(common_ui)/src

LOCAL_SRC_FILES := $(call all-java-files-under, $(src_dirs))
LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dirs))

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := AppStore

LOCAL_CERTIFICATE := platform

LOCAL_AAPT_FLAGS:= \
--auto-add-overlay \
--extra-packages com.borqs.common.widget


include $(BUILD_PACKAGE)

#Use the following include to make instrumentation test cases for FileManager
include $(CLEAR_VARS)
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libxutils:libs/xUtils.jar
include $(BUILD_MULTI_PREBUILT)

