#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
include vendor/xiaomi/redwood-miuicamera/vendor/BoardConfigVendor.mk

MIUICAMERA_PATH := vendor/xiaomi/redwood-miuicamera

# Camera
$(call soong_config_set,camera,override_format_from_reserved,$(TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED))

# Properties
TARGET_SYSTEM_PROP += $(MIUICAMERA_PATH)/system.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(MIUICAMERA_PATH)/sepolicy/vendor
