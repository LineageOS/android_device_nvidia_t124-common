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

TARGET_TEGRA_VERSION := t124
TARGET_TEGRA_GPU     ?= nvgpu-t124

# System properties
include $(LOCAL_PATH)/system_prop.mk

PRODUCT_PACKAGES += \
    init.t124.rc

ifeq ($(TARGET_TEGRA_GPU),nvgpu-t124)
# Graphics Shims
PRODUCT_PACKAGES += \
    init.nvgpu_shims.rc \
    libshim_zw
endif

$(call inherit-product, device/nvidia/tegra-common/tegra.mk)
