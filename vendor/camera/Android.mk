# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
T124_CAMERA_PATH := ../../../../../vendor/nvidia/t124/camera

include $(CLEAR_VARS)
LOCAL_MODULE               := model_frontal.xml
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/etc/model_frontal.xml
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := camera.tegra
LOCAL_VINTF_FRAGMENTS      := android.hardware.camera.provider@2.4-service.xml
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/hw/camera.tegra.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES     := liblog libcamera_shim
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcamerahdr_v3
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcamerahdr_v3.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_SHARED_LIBRARIES     := liblog
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcameranrr
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcameranrr.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcam_imageencoder
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcam_imageencoder.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcamerautils
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcamerautils.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcamlog
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcamlog.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_SHARED_LIBRARIES     := liblog
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcudautils
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvcudautils.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvfnet
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvfnet.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvfnetstoredefog
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvfnetstoredefog.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvfnetstorehdfx
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvfnetstorehdfx.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvisp_v3
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvisp_v3.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvmm_camera_v3
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvmm_camera_v3.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_SHARED_LIBRARIES     := liblog
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvodm_imager
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvodm_imager.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libscf
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libscf.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvvicsi_v3
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libnvvicsi_v3.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libopencv24_tegra
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libopencv24_tegra.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libtbb
LOCAL_SRC_FILES            := $(T124_CAMERA_PATH)/lib/libtbb.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libprotobuf-cpp-lold
LOCAL_SRC_FILES            := lib/libprotobuf-cpp-lold.so
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH   := arm
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)
