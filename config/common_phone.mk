# audio
include frameworks/base/data/sounds/NewAudio.mk

# common
$(call inherit-product, vendor/carbon/config/common.mk)

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# media
#PRODUCT_COPY_FILES += \
#    vendor/carbon/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# packages
PRODUCT_PACKAGES += \
  Mms \
  Stk

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=AIB2.m4a \
    ro.config.notification_sound=Fluorine.ogg \
    ro.config.alarm_alert=Cesium.ogg

