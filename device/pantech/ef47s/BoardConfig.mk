#
# Copyright (C) 2012 The Android Open Source Project
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

# inherit from the proprietary version
-include vendor/pantech/ef47s/BoardConfigVendor.mk

# Headers path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/ef47s/include

# inherit from pantech msm8960-common
-include device/pantech/msm8960-common/BoardConfigCommon.mk

#----------------------------------------------------------------------

# Assert
TARGET_OTA_ASSERT_DEVICE :=SKY_IM-A830S,ef47s

# Audio
#BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef47s/bluetooth
#BLUETOOTH_HCI_USE_MCT := true

# Board info
BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ef47s

# Camera
BOARD_PANTECH_CAMERA := true
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
TARGET_DISABLE_ARM_PIE := true

# File system
BOARD_BOOTIMAGE_PARTITION_SIZE          := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 13562281984
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 8388608      # 8192×1024     (mmcblk0p15)
BOARD_CACHEIMAGE_PARTITION_SIZE         := 340787200    # 332800×1024   (mmcblk0p16)
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE    := 268435456    # 262144×1024   (mmcblk0p17)
BOARD_FLASH_BLOCK_SIZE                  := 131072       # (BOARD_KERNEL_PAGESIZE * 64)

# FM radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# HDMI
#TARGET_QCOM_HDMI_OUT:= false

# Kernel
BOARD_KERNEL_BASE               := 0x80200000
BOARD_KERNEL_CMDLINE            := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
BOARD_KERNEL_PAGESIZE           := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
TARGET_KERNEL_CONFIG            := ef47s_custom_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN  := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE            := kernel/pantech/ef47s
TARGET_PREBUILT_KERNEL          := device/pantech/ef47s/prebuilt/kernel/kernel

# SD Card info
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Wifi (Add building support AR8151 ALX ethernet driver)
#BOARD_HAS_ATH_ETH_ALX := true
-include device/pantech/ef47s/wifi.mk

CONFIG_DRIVER_NL80211: = true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB: = lib_driver_cmd_bcmdhd 
BOARD_HOSTAPD_PRIVATE_LIB: = lib_driver_cmd_bcmdhd
