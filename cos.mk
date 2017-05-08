# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common CosmicOS stuff.
$(call inherit-product, vendor/cos/common.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cos_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := true

#Official Builds Tag
COS_RELEASE=true

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G47O/3852959:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G47O 3852959 release-keys"

#Don't ship SuperSU
#WITH_SUPERSU := false

#Ship snap cam && cam 2
#PRODUCT_PACKAGES += \
#    Camera2 \
#    Snap
