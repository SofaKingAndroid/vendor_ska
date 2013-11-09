$(call inherit-product, device/samsung/jfltecan/full_jfltecan.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ska/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ska/configs/common.mk)
$(call inherit-product, vendor/ska/configs/common_versions.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/ska/overlay/jf-common

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevl TARGET_DEVICE=jfltecan BUILD_FINGERPRINT="samsung/jfltevl/jfltecan:4.2.2/JDQ39/I337MVLUAMDJ:user/release-keys" PRIVATE_BUILD_DESC="jfltevl-user 4.2.2 JDQ39 I337MVLUAMDJ release-keys"

PRODUCT_NAME := ska_jfltecan
PRODUCT_DEVICE := jfltecan

#bootanimation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
