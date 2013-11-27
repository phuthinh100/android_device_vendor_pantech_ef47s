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

# Also get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/pantech/qcom-common/qcom-common-vendor.mk)

#----------------------------------------------------------------------

# Below projects/packages with LOCAL_MODULEs will be used by
# PRODUCT_PACKAGES to build LOCAL_MODULEs that are tagged with
# optional tag, which will not be available on target unless
# explicitly list here. Where project corresponds to the vars here
# in CAPs.

#ANGLE
PRODUCT_PACKAGES += libangle

#AUDIO_HARDWARE (audio.primary.msm8660: disabled, must be in your device tree)
PRODUCT_PACKAGES += \
    audio.primary.msm8960 \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default

#AUDIO_POLICY
PRODUCT_PACKAGES += \
    audio_policy.msm8660 \
    audio_policy.msm8960 \
    audio_policy.default \
    audio_policy.conf

#AMPLOADER
PRODUCT_PACKAGES += amploader

#APPS
PRODUCT_PACKAGES += \
    QualcommSoftAP \
    TSCalibration

#BRCTL
PRODUCT_PACKAGES += \
    brctl \
    libbridge


#BSON
PRODUCT_PACKAGES += libbson

#BT
PRODUCT_PACKAGES += \
    javax.btobex \
    libattrib_static \
    hcidump.sh

#C2DColorConvert
PRODUCT_PACKAGES += libc2dcolorconvert

#CIMAX
PRODUCT_PACKAGES += libcimax_spi

#CONNECTIVITY
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext

#CURL
PRODUCT_PACKAGES += \
    libcurl \
    curl

#DASH
PRODUCT_PACKAGES += \
#    libdashplayer \
    qcmediaplayer

#E2FSPROGS
PRODUCT_PACKAGES += e2fsck

#EBTABLES
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

#FM
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni

#GPS
PRODUCT_PACKAGES += \
    gps.conf \
    gps.default \
    gps.mahimahi \
    libloc_adapter \
    libgps.utils \
    libloc_eng \
    libloc_api_v02

#HDMID
PRODUCT_PACKAGES += hdmid

#HOSTAPD
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    nt_password_hash \
    hlr_auc_gw \
    test-milenage \
    hostapd.conf \
    hostapd_default.conf \
    hostapd.deny \
    hostapd.accept

#I420COLORCONVERT
PRODUCT_PACKAGES += libI420colorconvert

#INIT
PRODUCT_PACKAGES += \
    init.qcom.composition_type.sh \
    init.target.8x25.sh \
    init.qcom.mdm_links.sh \
    init.qcom.modem_links.sh \
    init.qcom.thermal_conf.sh \
    init.qcom.sensor.sh \
    init.target.rc \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.rc \
    init.qcom.factory.sh \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.wifi.sh \
    vold.fstab \
    init.qcom.ril.path.sh \
    init.qcom.ril.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    usf_post_boot.sh \
    init.qcom.efs.sync.sh \
    ueventd.qcom.rc \
    init.ath3k.bt.sh \
    init.qcom.audio.sh

#IPROUTE2
PRODUCT_PACKAGES += \
    ip \
    libiprouteutil

#IPTABLES
PRODUCT_PACKAGES += \
    libiptc \
    libext \
    iptables

#KERNEL_TESTS
PRODUCT_PACKAGES += mm-audio-native-test

#KS
PRODUCT_PACKAGES += \
    ks \
    qcks \
    efsks

#LIB_NL
PRODUCT_PACKAGES += libnl_2

#LIB_XML2
PRODUCT_PACKAGES += libxml2

#LIBCAMERA
PRODUCT_PACKAGES += \
    camera.msm8660 \
    camera.msm8960 \
    libcamera \
    libmmcamera_interface \
    libmmcamera_interface2 \
    libmmjpeg_interface \
    libqomx_core \
    mm-qcamera-app

#LIBCOPYBITP
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    copybit.msm8960

#LIBGESTURES
PRODUCT_PACKAGES += \
    libgestures \
    gestures.msm8960

#LIBGRALLOC
PRODUCT_PACKAGES += \
    gralloc.default \
    gralloc.msm8660 \
    gralloc.msm8960 \
    libmemalloc

#LIBLIGHTS
PRODUCT_PACKAGES += \
    lights.msm8660 \
    lights.msm8960

#LIBHWCOMPOSER
PRODUCT_PACKAGES += \
    hwcomposer.msm8660 \
    hwcomposer.msm8960

#LIBAUDIOPARAM -- Exposing AudioParameter as dynamic library for SRS TruMedia to work
PRODUCT_PACKAGES += libaudioparameter

#LIBAUDIORESAMPLER -- High-quality audio resampler
LIBAUDIORESAMPLER := libaudio-resampler

#LIBOPENCOREHW
PRODUCT_PACKAGES += libopencorehw

#LIBOVERLAY
PRODUCT_PACKAGES += \
    liboverlay \
    overlay.default

#LIBGENLOCK
PRODUCT_PACKAGES += libgenlock

#LIBPERFLOCK
PRODUCT_PACKAGES += org.codeaurora.Performance

#LIBQCOMUI
#PRODUCT_PACKAGES += libQcomUI

#LIBQDUTILS
PRODUCT_PACKAGES += libqdutils

#LIBQDMETADATA
PRODUCT_PACKAGES += libqdMetaData

#LIBPOWER
PRODUCT_PACKAGES += power.qcom

#LOC_API
PRODUCT_PACKAGES += libloc_api-rpc-qc

#MEDIA_PROFILES
PRODUCT_PACKAGES += media_profiles.xml

#MM_AUDIO
PRODUCT_PACKAGES += \
    libOmxAacDec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxMp3Dec \
    libOmxQcelp13Enc \
    libOmxAc3HwDec

#MM_CORE
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore

#MM_VIDEO
PRODUCT_PACKAGES += \
    ast-mm-vdec-omx-test \
    libdivxdrmdecrypt \
    liblasic \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libstagefrighthw \
    mm-vdec-omx-property-mgr \
    mm-vdec-omx-test \
    mm-venc-omx-test \
    mm-venc-omx-test720p \
    mm-video-driver-test \
    mm-video-encdrv-test

#OPENCORE
PRODUCT_PACKAGES += \
    libomx_aacdec_sharedlibrary \
    libomx_amrdec_sharedlibrary \
    libomx_amrenc_sharedlibrary \
    libomx_avcdec_sharedlibrary \
    libomx_m4vdec_sharedlibrary \
    libomx_mp3dec_sharedlibrary \
    libomx_sharedlibrary \
    libopencore_author \
    libopencore_common \
    libopencore_download \
    libopencore_downloadreg \
    libopencore_mp4local \
    libopencore_mp4localreg \
    libopencore_net_support \
    libopencore_player \
    libopencore_rtsp \
    libopencore_rtspreg \
    libpvdecoder_gsmamr \
    libpvplayer_engine \
    libpvamrwbdecoder \
    libpvauthorengine \
    libomx_amr_component_lib \
    pvplayer \
    pvplayer_engine_test

#PPP
PRODUCT_PACKAGES += ip-up-vpn

#PVOMX
PRODUCT_PACKAGES += \
    libqcomm_omx \
    01_qcomm_omx

#RF4CE
PRODUCT_PACKAGES += \
    RemoTI_RNP.cfg \
    rf4ce

#SOFTAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk

#STK
PRODUCT_PACKAGES += Stk

#STM LOG
PRODUCT_PACKAGES += libstm-log

#TSLIB_EXTERNAL
PRODUCT_PACKAGES += \
    corgi \
    dejitter \
    inputraw \
    linear \
    variance \
    pthres \
    libtslib \
    tsprint \
    tstest \
    tsutils \
    tscalib \
    ts

#QRGND
PRODUCT_PACKAGES += qrngd

#WPA
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    wpa_supplicant_wcn.conf \
    wpa_supplicant_ath6kl.conf

#ZLIB
PRODUCT_PACKAGES += \
    gzip \
    minigzip \
    libunz

#Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

#VT_JNI
#PRODUCT_PACKAGES += libvt_jni

#CRDA
PRODUCT_PACKAGES += \
    crda \
    regdbdump \
    regulatory.bin \
    linville.key.pub.pem \
    init.crda.sh

# Bugmailer
#PRODUCT_PACKAGES += send_bug

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Torch
PRODUCT_PACKAGES += \
    Apollo \
    Torch

# Wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam

#----------------------------------------------------------------------

# Bugmailer
PRODUCT_COPY_FILES += \
#    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
#    system/extras/bugmailer/send_bug:system/bin/send_bug

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Postrecoveryboot
PRODUCT_COPY_FILES += \
    device/pantech/qcom-common/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/pantech/qcom-common/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# enable overlays to use our version of
# source/resources etc.
DEVICE_PACKAGE_OVERLAYS += device/pantech/qcom-common/overlay

# Propertys spacific for this device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

#----------------------------------------------------------------------

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
