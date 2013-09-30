# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1
