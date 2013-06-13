SUPERUSER_EMBEDDED := true

# brand
PRODUCT_BRAND ?= Droid_Concepts

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39E BUILD_VERSION_TAGS=release-keys USER=davros BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
ro.modversion=Droid_Concepts-$(shell date +"%m-%d-%y")

# packages
PRODUCT_PACKAGES += \
   Camera \
    DCWallpapers \
    DCBeats \
    Gallery2 \
    Galaxy4 \
    HoloSpiralWallpaper \
    LatinIME \
    LiveWallpapers \
    LiveWallpapersPicker \
    LockClock \
    NoiseField \
    PermissionsManager \
    PhaseBeam \
    PhotoTable \
    QuickSearchBox \
    Torch \
    Wallpapers 

# tools
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    nano
	
# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Droid_Concepts/prebuilt SPEED FREEK init.d and build.prop tweaks
include vendor/Droid_Concepts/config/speed_freek.mk

# themes
include vendor/Droid_Concepts/config/theme_chooser.mk

#korean
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/Droid_Concepts/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/Droid_Concepts/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/common/etc/init.dc.rc:root/init.dc.rc

# Common Droid_Concepts/prebuilt apps and libs
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Calendar.apk:system/app/Calendar.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Gmail2.apk:system/app/Gmail2.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GoogleVoice.apk:system/app/GoogleVoice.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Hangouts.apk:system/app/Hangouts.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/PartnerBookmarksProvider.apk:system/app/PartnerBookmarksProvider.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Talkback.apk:system/app/Talkback.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Velvet.apk:system/app/Velvet.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/YouTube.apk:system/app/YouTube.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/app/Wallet.apk:system/app/Wallet.apk \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libgoggles_clientvision.so:system/lib/libgoggles_clientvision.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libttspico.so:system/lib/libttspico.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so

PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/media/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/media/notifications/Simple_High.mp3:system/media/audio/notifications/Simple_High.mp3 \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/media/ringtones/AIB2.m4a:system/media/audio/ringtones/AIB2.m4a \
    vendor/Droid_Concepts/prebuilt/Droid_Concepts/media/ringtones/Halo.m4a:system/media/audio/ringtones/Halo.m4a 

# Inherit media effect blobs
-include vendor/Droid_Concepts/prebuilt/config/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/Droid_Concepts/prebuilt/config/common_facelock.mk

# Inherit drm blobs
-include vendor/Droid_Concepts/prebuilt/config/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/Droid_Concepts/prebuilt/config/common_speech_recognition.mk

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/Droid_Concepts/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Droid_Concepts/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Droid_Concepts/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

#backup tool
Droid_Concepts_BUILD = true
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/Droid_Concepts/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/Droid_Concepts/prebuilt/common/bin/50-Droid_Concepts.sh:system/addon.d/50-Droid_Concepts.sh \
    vendor/Droid_Concepts/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/config/permissions/com.Droid_Concepts.android.xml:system/etc/permissions/com.Droid_Concepts.android.xml \
    vendor/Droid_Concepts/config/permissions/com.Droid_Concepts.nfc.enhanced.xml:system/etc/permissions/com.Droid_Concepts.nfc.enhanced.xml

# version
RELEASE = false
Droid_Concepts_VERSION_MAJOR = 1
Droid_Concepts_VERSION_MINOR = 7

#Set Droid_Concepts_BUILDTYPE and goo.im properties
ifdef Droid_Concepts_NIGHTLY
    Droid_Concepts_BUILDTYPE := NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.rom=Droid_Conceptsjb2exp \
        ro.goo.developerid=Droid_Concepts \
        ro.goo.version=$(shell date +%Y%m%d)
endif
ifdef Droid_Concepts_EXPERIMENTAL
    Droid_Concepts_BUILDTYPE := EXPERIMENTAL
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.rom=Droid_Conceptsjb2exp \
        ro.goo.developerid=Droid_Concepts \
        ro.goo.version=$(shell date +%Y%m%d)
endif
ifdef Droid_Concepts_RELEASE
    Droid_Concepts_BUILDTYPE := RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.rom=Droid_Conceptsjb2 \
        ro.goo.developerid=Droid_Concepts \
        ro.goo.version=$(shell date +%Y%m%d)
endif
#Set Unofficial if no buildtype set (Buildtype should ONLY be set by Droid_Concepts Devs!)
ifdef Droid_Concepts_BUILDTYPE
else
    Droid_Concepts_BUILDTYPE := UNOFFICIAL
    Droid_Concepts_VERSION_MAJOR :=
    Droid_Concepts_VERSION_MINOR :=
endif

#Set Droid_Concepts version
ifdef Droid_Concepts_RELEASE
    Droid_Concepts_VERSION := "Droid_Concepts-v"$(Droid_Concepts_VERSION_MAJOR).$(Droid_Concepts_VERSION_MINOR)
else
    Droid_Concepts_VERSION := "Droid_Concepts"-$(shell date +%Y%m%d-%H%M)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.droid_concepts.version=$(DROID_CONCEPTS_VERSION)
