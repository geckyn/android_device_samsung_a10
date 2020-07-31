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

PRODUCT_SOONG_NAMESPACES += \
    device/samsung/a10

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
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_board_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_board_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_sec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_sec.xml \
    $(LOCAL_PATH)/configs/audio/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/playback_record_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/playback_record_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/tms_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/tms_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ac4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ac4.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ddp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ddp.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_c2.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_ape.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sec_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_primary.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_qcp.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sec_secondary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_secondary.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sec_video_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_video_primary.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.compute.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.level.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.version.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(LOCAL_PATH)/configs/public.libraries.txt.backup:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt.backup

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.exynos7884B \
    init.a10.rc \
    init.baseband.rc \
    init.exynos7884B.rc \
    init.exynos7884B.usb.rc \
    init.gps.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.wifi.rc \
    wifi_slsi.rc \
    ueventd.exynos7884B.rc

# Treble
PRODUCT_USE_VNDK_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy

# Usb hal
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.a10

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(LOCAL_PATH)/configs/wifi/mx:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx \
    $(LOCAL_PATH)/configs/wifi/mx140.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_bt.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_bt.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/common/log-strings.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/common/log-strings.bin \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/bt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/bt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/cortexM4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/cortexM4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/cortexR4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/cortexR4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/mailbox16.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/mailbox16.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/mailbox4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/mailbox4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/mailbox8.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/mailbox8.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/moredump.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/moredump.bin \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/moredump.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/moredump.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/pl192vic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/pl192vic.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/rf_chip_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/rf_chip_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/hardware/moredump/wlan_sys_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/hardware/moredump/wlan_sys_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/hip_signals.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/hip_signals.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/id.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/id.txt \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/mib_out.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/mib_out.xml \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/symbols.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/symbols.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/unicli.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/unicli.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/unitab.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/unitab.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/univif.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/univif.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140/debug/wlan/xide_mib.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140/debug/wlan/xide_mib.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/common/log-strings.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/common/log-strings.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/bt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/bt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/cortexM4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/cortexM4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/cortexR4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/cortexR4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/mailbox16.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/mailbox16.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/mailbox4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/mailbox4.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/mailbox8.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/mailbox8.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/moredump.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/moredump.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/moredump.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/moredump.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/pl192vic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/pl192vic.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/rf_chip_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/rf_chip_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/hardware/moredump/wlan_sys_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/hardware/moredump/wlan_sys_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/hip_signals.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/hip_signals.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/id.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/id.txt \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/mib_out.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/mib_out.xml \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/symbols.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/symbols.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/unicli.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/unicli.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/unitab.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/unitab.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/univif.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/univif.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t/debug/wlan/xide_mib.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t/debug/wlan/xide_mib.dbg \
    $(LOCAL_PATH)/configs/wifi/mx140_t_wlan.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t_wlan.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_t_wlan_t.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t_wlan_t.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan_t.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan_t.hcf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/platform.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/platform.txt \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# call the proprietary setup
$(call inherit-product, vendor/samsung/a10/a10-vendor.mk)
