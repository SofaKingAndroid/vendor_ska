# Inherit common stuff
$(call inherit-product, vendor/ska/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/ska/overlay/common_tablet

