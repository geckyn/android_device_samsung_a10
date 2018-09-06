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

BUILD_TOP := $(shell pwd)

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := exynos7885
TARGET_BOOTLOADER_BOARD_NAME := universal7885
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos7885 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPSA10A003
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/exynos7885
TARGET_KERNEL_CONFIG := a10_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
BOARD_KERNEL_SEPARATED_DTBO := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g71

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# AUDIO
USE_XML_AUDIO_POLICY_CONF := 1

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/libbt_vndcfg.txt

# VNDK
BOARD_VNDK_VERSION := current
BOARD_VNDK_RUNTIME_DISABLE := true

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# Enable 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true
TARGET_USES_HWC2 := true


# HWComposer
TARGET_HWC2_NO_SKIPVALIDATE := true

# DEX Pre-optimization
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
    WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
  endif
endif


# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := a10

# Partition Sizes ( commented sizes approximated)
BOARD_BOOTIMAGE_PARTITION_SIZE     := 37748736 # 37MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528 # 55MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3556769792 #3.56GB
BOARD_CACHEIMAGE_PARTITION_SIZE    := 419430400 # 419MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE   := 394264576 # 394MB
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# Reserve space for data encryption (26109542400 - 20480)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26109521920 # 26GB
TARGET_USES_MKE2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7885

# Root
BOARD_ROOT_EXTRA_FOLDERS := \
    efs \
    dqmdbg \
    keydata \
    keyrefuge \
    omr

# Ril
ENABLE_VENDOR_RIL_SERVICE := true

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# SELinux
BOARD_SEPOLICY_VERS := 28.0
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# System-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# System.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Vendor Security Patch
VENDOR_SECURITY_PATCH := 2019-12-01

# Lineage hardware
BOARD_HARDWARE_CLASS := \
    hardware/samsung/lineagehw

# Inherit from the proprietary version
-include vendor/samsung/a10/BoardConfigVendor.mk
