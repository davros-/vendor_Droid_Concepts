# gps
PRODUCT_COPY_FILES += \
    vendor/Droid_Conccepts/prebuilt/common/etc/gps-cdma.conf:system/etc/gps.conf

# apns
PRODUCT_COPY_FILES += \
    vendor/Droid_Conccepts/prebuilt/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2
