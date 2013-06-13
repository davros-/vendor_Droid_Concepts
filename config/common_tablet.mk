# audio
include frameworks/base/data/sounds/NewAudio.mk

# common
$(call inherit-product, vendor/Droid_Concepts/config/common.mk)

# gps
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/common/etc/gps.conf:system/etc/gps.conf

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=AIB2.m4a \
    ro.config.notification_sound=Fluorine.ogg \
    ro.config.alarm_alert=Cesium.ogg

