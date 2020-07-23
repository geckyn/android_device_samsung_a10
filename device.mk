#
# Copyright (C) 2020 The LineageOS Project
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

DEVICE_PATH := device/samsung/a10

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Audio
PRODUCT_PACKAGES += \
    libaudioroute \
    libtinyalsa \
    libtinycompress \
    tinymix

PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.usb.default

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    android.hardware.bluetooth.a2dp@1.0

# Camera
PRODUCT_PACKAGES += \
    Snap

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libc2dcolorconvert \
    libmm-omxcore \
    libstagefrighthw

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# Ril
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0.so

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.exynos7885

# Soundtrigger
PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.2-impl \
    android.hardware.soundtrigger@2.0-service

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0.so \
    android.hardware.wifi@1.1.so \
    android.hardware.wifi@1.2.so \
    android.hardware.wifi.supplicant@1.0.so \
    android.hardware.wifi.supplicant@1.1.so \
    android.hardware.wifi@1.0-service

# call the proprietary setup
$(call inherit-product, vendor/samsung/a10/a10-vendor.mk)
