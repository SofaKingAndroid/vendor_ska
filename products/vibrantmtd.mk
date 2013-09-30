# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/ska/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/ska/configs/gsm.mk)

# Inherit Aries-common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ska/overlay/aries-common

# Setup device specific product configuration.
PRODUCT_NAME := ska_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := vibrantmtd
PRODUCT_MODEL := SGH-T959
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation-alt.zip
