#
# Copyright (C) 2012 The Android Open-Source Project
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

#----------------------------------------------------------------------

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/pantech/ef47s/ef47s-vendor.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

#----------------------------------------------------------------------

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Radio fixes
#FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

#----------------------------------------------------------------------

LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#----------------------------------------------------------------------

# Bluetooth firmware

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/ueventd.ef47s.rc:root/ueventd.rc
    $(LOCAL_PATH)/rootdir/etc/init.pantech.usb.rc:root/init.pantech.usb.rc
    $(LOCAL_PATH)/rootdir/etc/init.pantech.usb.sh:root/init.pantech.usb.sh

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab


# Wlan prima module
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/prima/prima_wlan.ko:/system/lib/modules/prima/prima_wlan.ko

#----------------------------------------------------------------------

# FM Radio
#PRODUCT_PACKAGES += FmRadioReceiver

# Keylayouts and Keychars
PRODUCT_PACKAGES += \
    qt602240_ts_input_ef47s.kl

# Ramdisk
PRODUCT_PACKAGES += init.ef47s.rc

#----------------------------------------------------------------------

# inherit pantech/msm8960-common
$(call inherit-product-if-exists, device/pantech/msm8960-common/msm8960-common.mk)
