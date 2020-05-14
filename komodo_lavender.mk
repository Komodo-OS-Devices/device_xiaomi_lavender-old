#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit dalvik from native
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Inherit some common Komodo OS stuff.
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := komodo_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

# Official tag
KOMODO_OFFICIAL := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=lavender \
    PRODUCT_NAME=lavender

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
