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

TARGET_TEGRA_VERSION  := t124
TARGET_TEGRA_GPU      ?= nvgpu-t124
TARGET_TEGRA_KEYSTORE ?= nvkeystore-t124

# System properties
include device/nvidia/t124-common/system_prop.mk

PRODUCT_PACKAGES += \
    init.t124.rc \
    init.tlk.rc \
    ueventd.ardbeg.rc

# Camera Shims
ifeq ($(TARGET_TEGRA_CAMERA),nvcamera-t124)
PRODUCT_PACKAGES += \
    libcamera_shim \
    libEGL_vndk
endif

ifeq ($(TARGET_TEGRA_GPU),nvgpu-t124)
# Graphics Shims
PRODUCT_PACKAGES += \
    libshim_zw
else ifeq ($(TARGET_TEGRA_GPU),drm)
PRODUCT_PACKAGES += \
    hwcomposer.drm \
    gralloc.gbm \
    libGLES_mesa
endif

include device/nvidia/tegra-common/tegra.mk
