#
# Copyright (C) 2009 The Android Open Source Project
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

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/lu2300/lu2300-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/lu2300/overlay

# Sensors
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/sensors.qcom.so:system/lib/hw/sensors.qcom.so \
    device/lge/lu2300/files/install-recovery.sh:system/etc/install-recovery.sh

# Init
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/initlogo.rle:root/initlogo.rle \
    device/lge/lu2300/files/init.qcom.sh:root/init.qcom.sh \
    device/lge/lu2300/files/init.qcom.rc:root/init.qcom.rc \
    device/lge/lu2300/files/init.lu2300.rc:root/init.rc \
    device/lge/lu2300/files/ueventd.lu2300.rc:root/ueventd.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Keylayout
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lge/lu2300/files/8k_handset.kl:system/usr/keylayout/8k_handset.kl \
    device/lge/lu2300/files/pp2106_qwerty.kl:system/usr/keylayout/pp2106_qwerty.kl \
    device/lge/lu2300/files/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Root Explorer
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/RootExplorer.apk:system/app/RootExplorer.apk

# HangulIME
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/HangulIME.apk:system/app/HangulIME.apk \
    device/lge/lu2300/files/libjni_latinime2.so:system/lib/libjni_latinime2.so

# HIME
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/HIME.apk:system/app/HIME.apk \
    device/lge/lu2300/files/libaime_jni.so:system/lib/libaime_jni.so \
    device/lge/lu2300/files/libautohan_jni.so:system/lib/libautohan_jni.so

# OpQumizer
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/OpQumizer.apk:system/app/OpQumizer.apk

# 720p
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/libOmxVidEnc.so:obj/lib/libOmxVidEnc.so \
    device/lge/lu2300/files/libOmxVidEnc.so:obj/lib/libOmxVidEnc.so \
    device/lge/lu2300/files/libOmxVdec.so:obj/lib/libOmxVdec.so \
    device/lge/lu2300/files/libOmxVdec.so:system/lib/libOmxVdec.so

# GPS
PRODUCT_COPY_FILES += \
    device/lge/lu2300/files/gps.conf:system/etc/gps.conf

PRODUCT_PACKAGES += \
    copybit.qsd8k \
    gps.qcom \
    lights.qsd8k \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVidEnc \
    libcamera

PRODUCT_LOCALES += hdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/lu2300/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := lge_lu2300
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := lu2300
PRODUCT_MODEL := LG OptimusQ
PRODUCT_MANUFACTURER := LGE
