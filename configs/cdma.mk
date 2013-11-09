# specify phone type - needed by 2G toggle
PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2
# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml
