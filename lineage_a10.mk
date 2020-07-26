# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a10 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a10
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a10
PRODUCT_MODEL := SM-A105F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a10
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a10dd-user 10 QP1A.190711.020 A105FDDU3BTF1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a10dd/a10:10/QP1A.190711.020/A105FDDU3BTF1:user/release-keys
