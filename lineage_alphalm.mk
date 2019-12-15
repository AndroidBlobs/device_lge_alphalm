# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alphalm device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lge
PRODUCT_DEVICE := alphalm
PRODUCT_MANUFACTURER := lge
PRODUCT_NAME := lineage_alphalm
PRODUCT_MODEL := LM-G820

PRODUCT_GMS_CLIENTID_BASE := android-lge
TARGET_VENDOR := lge
TARGET_VENDOR_PRODUCT_NAME := alphalm
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="alphalm_lao_com-user 9 PKQ1.181203.001 190911746d0fb release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := lge/alphalm_lao_com/alphalm:9/PKQ1.181203.001/190911746d0fb:user/release-keys
