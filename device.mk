#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sony sm8150-common
$(call inherit-product, device/sony/sm8150-common/kumano.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Overlays
PRODUCT_PACKAGES += \
   SonyGriffinSystemUIRes 

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# HDR
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libhdr_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/libhdr_somc.xml

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp-typef.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp-typef.conf \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/sony/griffin/griffin-vendor.mk)
