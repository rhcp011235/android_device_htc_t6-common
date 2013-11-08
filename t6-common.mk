#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.firmware_links.sh \
    init.qcom.usb.rc \
    init.qcom.rc \
    remount.qcom \
    ueventd.qcom.rc \
    init.recovery.qcom.rc

# Post boot service
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.post_boot.sh:system/etc/init.post_boot.sh

# Recovery
PRODUCT_PACKAGES += \
    choice_fn \
    detect_key \
    offmode_charging \
    power_test

# Recovery Images
PRODUCT_PACKAGES += \
    charging_00.png \
    charging_01.png \
    charging_02.png \
    charging_03.png \
    charging_04.png \
    charging_05.png \
    charging_06.png \
    charging_07.png \
    charging_08.png \
    charging_09.png \
    error.png \
    r_0.png \
    r_1.png \
    r_2.png \
    r_3.png \
    r_4.png \
    r_5.png \
    r_6.png \
    r_7.png \
    r_8.png \
    r_9.png \
    r_percent.png \
    w_0.png \
    w_1.png \
    w_2.png \
    w_3.png \
    w_4.png \
    w_5.png \
    w_6.png \
    w_7.png \
    w_8.png \
    w_9.png \
    w_percent.png \
    y_0.png \
    y_1.png \
    y_2.png \
    y_3.png \
    y_4.png \
    y_5.png \
    y_6.png \
    y_7.png \
    y_8.png \
    y_9.png \
    y_percent.png


# QC thermald config
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_PACKAGES += \
    libnetcmdiface

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Sound configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AudioBTID.csv:system/etc/AudioBTID.csv \
    $(LOCAL_PATH)/configs/AudioBTIDnew.csv:system/etc/AudioBTIDnew.csvs \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl \
    $(LOCAL_PATH)/keylayout/max1187x_touchscreen_0.kl:system/usr/keylayout/max1187x_touchscreen_0.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/max1187x_touchscreen_0.idc:system/usr/idc/max1187x_touchscreen_0.idc

# Audio
PRODUCT_PACKAGES += \
    libaudioamp

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8960

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8960 \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Misc Packages
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/htc/m7-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/htc/m7-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.nfc.fw_download=true \
    debug.nfc.fw_boot_download=false \
    debug.nfc.se=true \
    ro.nfc.port=I2C \
    ro.sf.lcd_density=480 \
    persist.timed.enable=true \
    persist.gps.qmienabled=true \
    ro.baseband.arch=mdm \
    ro.cam.hw.version=m7 \
    ro.opengles.version=196608 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Include non-opensource parts
#$(call inherit-product, vendor/htc/t6-common/t6-common-vendor.mk)
