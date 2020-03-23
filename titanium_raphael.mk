#
# Copyright (C) 2020 The TitaniumOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common TitaniumOS stuff.
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TITANIUM_BUILD_TYPE := OFFICIAL
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/titanium/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := titanium_raphael

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.titanium.maintainer=iamsaikat

BUILD_FINGERPRINT := "Xiaomi/raphaelin/raphaelin:9/PKQ1.181121.001/V10.3.3.0.PFKINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)
