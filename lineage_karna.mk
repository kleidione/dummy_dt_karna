# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from karna device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := karna
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_karna
PRODUCT_MODEL := POCO X3 NFC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := karna
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 RKQ1.200826.002 V12.5.5.0.RJGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/karna_global/karna:11/RKQ1.200826.002/V12.5.5.0.RJGMIXM:user/release-keys
