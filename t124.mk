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
TARGET_TEGRA_KEYSTORE ?= nvkeystore
TARGET_TEGRA_PHS      ?= ussrd

# System properties
include $(LOCAL_PATH)/system_prop.mk

PRODUCT_PACKAGES += \
    init.t124.rc \
    init.tlk.rc

ifeq ($(TARGET_TEGRA_PHS),ussrd)
PRODUCT_PACKAGES += \
    init.ussrd.rc \
    ussr_setup.sh \
    ussrd.conf
endif

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml

# NVIDIA
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.feature.opengl4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nvidia.feature.opengl4.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.nvidia.nvsi.xml

# Graphics Shims
PRODUCT_PACKAGES += \
    libshim_zw

$(call inherit-product, device/nvidia/tegra-common/tegra.mk)
