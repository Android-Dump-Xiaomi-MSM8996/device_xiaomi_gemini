# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gemini device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := gemini
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_gemini
PRODUCT_MODEL := MI 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := gemini
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gemini-user 8.0.0 OPR1.170623.032 V10.2.2.0.OAAMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/gemini/gemini:8.0.0/OPR1.170623.032/V10.2.2.0.OAAMIXM:user/release-keys
