# Release name
PRODUCT_RELEASE_NAME := Nexus6

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/eos/config/common.mk)
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

# Custom overlay.
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := eos_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="shamu/shamu:6.0/MRA58K/2256973:user/release-keys" 

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-SHAMU.zip:system/media/bootanimation.zip

# libxml2
PRODUCT_PACKAGES += \
    libxml2

