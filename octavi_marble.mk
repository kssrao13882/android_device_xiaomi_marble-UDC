#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common OctaviOS stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
BUILD_WITH_GAPPS := true

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := octavi_marble
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64

# Official
OCTAVI_BUILD_TYPE := Official
OCTAVI_MAINTAINER := KSSRAO

# Gapps Build
WITH_GAPPS := true
