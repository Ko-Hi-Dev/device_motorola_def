#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_BUILD_RAMDISK_IMAGE := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := def
PRODUCT_NAME := omni_def
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Motorola One Hyper
PRODUCT_MANUFACTURER := Motorola

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/motorola/$(PRODUCT_DEVICE)/device.mk)
