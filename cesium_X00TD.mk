#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc stuff
$(call inherit-product, vendor/cesium/config/common_full_phone.mk)

# Poduct spec
TARGET_BOOT_ANIMATION_RES := 1080

# Cesium build type
CUSTOM_BUILD_TYPE := OFFICIAL
CUSTOM_RELEASE_TYPE := release

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00TD
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := cesium_X00TD

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 1309 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Android/sdm660_64/sdm660_64:8.1.0/OPM1/15.2016.1805.318-20180712:user/release-keys

# The following system and vendor props will be set by vendor init
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.device \
    ro.product.model \
    ro.product.name

PRODUCT_VENDOR_PROPERTY_BLACKLIST := \
    ro.vendor.product.device \
    ro.vendor.product.model \
    ro.vendor.product.name

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

