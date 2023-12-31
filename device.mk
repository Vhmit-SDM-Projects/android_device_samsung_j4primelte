#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-service.msm8917
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/B13QL_s5k3l6xx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/B13QL_s5k3l6xx_module_info.xml \
    $(LOCAL_PATH)/configs/camera/Q05QL_s5k5e9yx_front_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q05QL_s5k5e9yx_front_module_info.xml \
    $(LOCAL_PATH)/configs/camera/s5k2p6sx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k2p6sx_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k2x7sp_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k2x7sp_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l6xx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l6xx_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l6xx_chromatix_j4primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l6xx_chromatix_j4primelte.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p8sp_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3p8sp_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h5yc_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h5yc_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k4hayx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4hayx_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k5e3yx_f2_2_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e3yx_f2_2_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k5e9yx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k5e9yx_q05ql_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_q05ql_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/sdm450_camera_j4primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j4primelte.xml \
    $(LOCAL_PATH)/configs/camera/sr259_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr259_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/sr544_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr544_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/sr556_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr556_chromatix.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common_system \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    ims-ext-common_system
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# Inherit from proprietary files
$(call inherit-product, vendor/samsung/j4primelte/j4primelte-vendor.mk)
