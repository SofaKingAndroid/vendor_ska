# specify phone type - needed by 2G toggle
PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1
    
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
