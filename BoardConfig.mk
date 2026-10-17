#
# SPDX-FileCopyrightText: 2024-2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 71303168
BOARD_CACHEIMAGE_PARTITION_SIZE := 629145600
BOARD_DTBOIMG_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 86888448
BOARD_SUPER_PARTITION_SIZE := 10171187200

# Use OpenGL for media to fix broken colors with Vulkan
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# BORE scheduler (requires kernel with BORE vendor hooks)
TARGET_USE_BORE_SCHED := true

# Inherit from sm8250-commmon
include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7lwifi

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
TARGET_KERNEL_CONFIG += vendor/samsung/gts7lwifi.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_DEFAULT_ROTATION := ROTATION_RIGHT
TARGET_RECOVERY_DEFAULT_TOUCH_ROTATION := ROTATION_RIGHT

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest.xml
