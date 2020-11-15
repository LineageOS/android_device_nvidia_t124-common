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
T124_SECURITY_PATH := ../../../../../vendor/nvidia/t124/security

include $(CLEAR_VARS)
LOCAL_MODULE               := ss_status
LOCAL_SRC_FILES_32         := $(T124_SECURITY_PATH)/bin32/ss_status
LOCAL_SRC_FILES_64         := $(T124_SECURITY_PATH)/bin64/ss_status
LOCAL_MULTILIB             := first
LOCAL_MODULE_CLASS         := EXECUTABLES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := tlk_daemon
LOCAL_SRC_FILES_32         := $(T124_SECURITY_PATH)/bin32/tlk_daemon
LOCAL_SRC_FILES_64         := $(T124_SECURITY_PATH)/bin64/tlk_daemon
LOCAL_MULTILIB             := first
LOCAL_MODULE_CLASS         := EXECUTABLES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libtlk_secure_hdcp_up
LOCAL_SRC_FILES_32         := $(T124_SECURITY_PATH)/lib/libtlk_secure_hdcp_up.so
LOCAL_SRC_FILES_64         := $(T124_SECURITY_PATH)/lib64/libtlk_secure_hdcp_up.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libtsec_wrapper
LOCAL_SRC_FILES_32         := $(T124_SECURITY_PATH)/lib/libtsec_wrapper.so
LOCAL_SRC_FILES_64         := $(T124_SECURITY_PATH)/lib64/libtsec_wrapper.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libtsechdcp
LOCAL_SRC_FILES_32         := $(T124_SECURITY_PATH)/lib/libtsechdcp.so
LOCAL_SRC_FILES_64         := $(T124_SECURITY_PATH)/lib64/libtsechdcp.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_ARCH_PREBUILT)
