#
# Copyright (C) 2026
#

LOCAL_PATH := device/multilaser/ml11

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

TARGET_BOARD_PLATFORM := sun8iw5p1
TARGET_BOOTLOADER_BOARD_NAME := ml11

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

###########################################################
## Kernel
###########################################################

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_SECOND_OFFSET := 0x00f00000

BOARD_KERNEL_CMDLINE :=

BOARD_CUSTOM_BOOTIMG := true

###########################################################
## Boot Image
###########################################################

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_FLASH_BLOCK_SIZE := 131072

###########################################################
## Filesystem
###########################################################

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true

###########################################################
## Recovery
###########################################################

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_RECOVERY_INITRC := \
    $(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc

###########################################################
## TWRP
###########################################################

TW_THEME := portrait_hdpi

DEVICE_RESOLUTION := 1024x600

RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_NO_REBOOT_BOOTLOADER := true
TW_NO_CPU_TEMP := true
TW_NO_SCREEN_TIMEOUT := true

TW_INCLUDE_CRYPTO := false

TW_INCLUDE_FB2PNG := true

TW_EXCLUDE_DEFAULT_USB_INIT := true

TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight.0/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162

TW_HAS_DOWNLOAD_MODE := false

TW_USE_TOOLBOX := true

TW_DEFAULT_LANGUAGE := en

###########################################################
## USB
###########################################################

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

###########################################################
## SELinux
###########################################################

BOARD_SEPOLICY_DIRS += \
    device/multilaser/ml11/sepolicy

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_USES_GENERIC_AUDIO := true

TARGET_RECOVERY_UI_LIB := librecovery_ui_default

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_SUPPRESS_SECURE_ERASE := true

BOARD_HAS_NO_REAL_SDCARD := false

RECOVERY_SDCARD_ON_DATA := true

TW_INTERNAL_STORAGE_PATH := "/data/media"

TW_INTERNAL_STORAGE_MOUNT_POINT := "/data"

TW_EXTERNAL_STORAGE_PATH := "/external_sd"

TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
