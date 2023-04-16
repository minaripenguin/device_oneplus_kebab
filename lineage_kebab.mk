#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Disable CSI checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false

# Official
RISING_MAINTAINER := minaripenguin
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_USE_PIXEL_FINGERPRINT := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
