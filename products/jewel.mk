# Inherit some common CM stuff.
$(call inherit-product, vendor/ska/configs/common.mk)

# Inherit cdma stuffs
$(call inherit-product, vendor/ska/configs/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/jewel/jewel.mk)

# Device naming
PRODUCT_DEVICE := jewel
PRODUCT_NAME := ska_jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=JRO03C BUILD_FINGERPRINT="htc/jewel/jewel:4.1.1/JRO03C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"

PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
