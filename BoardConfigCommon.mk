#
# Copyright (C) 2018 The LineageOS Project
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
#

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Camera shims
ifeq ($(TARGET_TEGRA_CAMERA),nvcamera-t124)
TARGET_LD_SHIM_LIBS += /system/vendor/lib/hw/camera.tegra.so|/system/vendor/lib/libcamera_shim.so
endif

# nvgpu shims
TARGET_LD_SHIM_LIBS += \
  /system/vendor/lib/libglcore.so|/system/lib/libutilscallstack.so \

# liblog shims
TARGET_LD_SHIM_LIBS += \
  /system/vendor/lib/libnvcamlog.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvmm_camera_v3.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvcamerahdr_v3.so|/system/lib/liblog.so \
  /system/vendor/lib/hw/camera.tegra.so|/system/lib/liblog.so \
  /system/vendor/lib/egl/libEGL_tegra.so|/system/lib/liblog.so \
  /system/vendor/lib/libglcore.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvgr.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvmm_utils.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvomxadaptor.so|/system/lib/liblog.so \
  /system/vendor/lib/libnvomx.so|/system/lib/liblog.so \
  /system/vendor/lib/libmplmpu.so|/system/lib/liblog.so

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
ifeq ($(TARGET_TEGRA_GPU),drm)
TARGET_USES_HWC2 := true
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := nouveau
DEVICE_MANIFEST_FILE += device/nvidia/t124-common/t124-drm-manifest.xml
endif

# Nvmm shims
TARGET_LD_SHIM_LIBS += \
  /system/vendor/lib/libnvomxadaptor.so|/system/lib/libmedia_omx.so \
  /system/vendor/lib/libnvomxadaptor.so|/system/vendor/lib/libnvmm_shim.so

# Zygote whitelist extra paths
ZYGOTE_WHITELIST_PATH_EXTRA := \"/dev/nvhost-ctrl\",\"/dev/nvmap\",

include device/nvidia/tegra-common/BoardConfigTegra.mk
