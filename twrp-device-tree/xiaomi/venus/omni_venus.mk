#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

PRODUCT_DEVICE := venus
PRODUCT_NAME := omni_venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2011K2G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="venus_global-user 12 RKQ1.211001.001 V13.0.5.0.SKBMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/venus_global/venus:12/RKQ1.211001.001/V13.0.5.0.SKBMIXM:user/release-keys
