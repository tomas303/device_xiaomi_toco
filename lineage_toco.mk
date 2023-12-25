#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from toco device
$(call inherit-product, device/xiaomi/toco/device.mk)

# Inherit some common Project Elixir stuff.
#$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/toco-miuicamera/products/miuicamera.mk)




# Lawnchair launcher
FORCE_LAWNCHAIR := true

# Project Elixir Stuff
IS_PHONE := true
ELIXIR_BUILD_TYPE := OFFICIAL
ELIXIR_MAINTAINER := DennisMurimi
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true





# Device identifier. This must come after all inclusions.
#PRODUCT_NAME := aosp_toco
#PRODUCT_DEVICE := toco
#PRODUCT_BRAND := Xiaomi
#PRODUCT_MODEL := Mi Note 10 Lite
#PRODUCT_MANUFACTURER := Xiaomi
#
#PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="toco-user 12 RKQ1.210614.002 V13.0.4.0.SFNMIXM release-keys"
#
#BUILD_FINGERPRINT := Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys

PRODUCT_NAME := lineage_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 12 RKQ1.210614.002 V13.0.4.0.SFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys






