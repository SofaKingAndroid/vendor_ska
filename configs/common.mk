SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ska/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/ska/overlay/dictionaries

PRODUCT_PACKAGES += \
    AOKPtips \
    Apollo \
    AppWidgetPicker \
    BluetoothExt \
    CMFileManager \
    CellBroadcastReceiver \
    DSPManager \
    FmRadio \
    LatinImeDictionaryPack \
    NocturnalTweaks \
    TeamNocturnal \
    PermissionsManager \
    Stk \
    Superuser \
    su \
    Torch

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

# Installer
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/ska/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/ska/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/ska/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/ska/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/ska/prebuilt/common/etc/init.d/02permissions:system/etc/init.d/02permissions \
    vendor/ska/prebuilt/common/etc/init.d/03sqlite:system/etc/init.d/03sqlite \
    vendor/ska/prebuilt/common/etc/init.d/04zipalign:system/etc/init.d/04zipalign \
    vendor/ska/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/ska/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += \
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
vendor/ska/proprietary/NovaLauncher/NovaLauncher.apk:system/app/NovaLauncher.apk

# Inherit common build.prop overrides
-include vendor/ska/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/ska/configs/themes_common.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# World APNs
PRODUCT_COPY_FILES += \
    vendor/ska/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
