#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from msm8916-common
include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/yu/tomato

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_CAMERA_SENSORS := imx135_cp8675 imx214_cp8675 ov5648_cp8675
USE_DEVICE_SPECIFIC_CAMERA := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_PERSISTIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1836056576
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13494087680

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(DEVICE_PATH)/init/init_tomato.cpp

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_CONFIG := lineageos_tomato_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Properties
TARGET_SYSTEM_PROP := device/yu/tomato/system.prop

# Recovery
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# TWRP
ifeq ($(WITH_TWRP),true)
include $(DEVICE_PATH)/twrp.mk
endif

# Widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Inherit from proprietary files
include vendor/yu/tomato/BoardConfigVendor.mk
