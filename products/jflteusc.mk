# Inherit AOSP device configuration for jflteusc
$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/ska/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/ska/configs/common.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/ska/overlay/jf-common

# Setup device specific product configuration.
PRODUCT_NAME := ska_jflteusc
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflteusc
PRODUCT_MODEL := SCH-R970
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteusc TARGET_DEVICE=jflteusc BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.2.2/JDQ39/R970VXUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jflteusc-user 4.2.2 JDQ39 R970VXUAMDB release-keys"

# boot animation
PRODUCT_COPY_FILES += \
       vendor/ska/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
