# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/lge/lu2300/BoardConfigVendor.mk

BOARD_USE_FROYO_LIBCAMERA := true

TARGET_USES_2G_VM_SPLIT := true

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := qsd8k
#TARGET_BOOTLOADER_BOARD_NAME := lu2300
# For sensor lib
TARGET_BOOTLOADER_BOARD_NAME := qcom

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

TARGET_USES_OLD_LIBSENSORS_HAL := true
TARGET_SENSORS_NO_OPEN_CHECK := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qcom
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#BOARD_OPENCORE_LIBRARIES := libOmxCore
#BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

#?
TARGET_DO_NOT_SETS_CAN_DRAW := true

# For use OptimusQ Adreno 200. Essential config!
BOARD_NO_RGBX_8888 := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_32BPP := true
#BOARD_USE_QCOM_PMEM := true
#TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

TARGET_PROVIDES_LIBAUDIO := true

BOARD_EGL_CFG := device/lge/lu2300/files/egl.cfg

WPA_SUPPLICANT_VERSION := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4325
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "wireless"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP := true

BOARD_VENDOR_USE_AKMD := akm8973

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_BASE    := 0x20000000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyMSM2 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a20000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00c20000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x16a00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x01520000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/lu2300/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/lu2300/recovery_kernel

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
