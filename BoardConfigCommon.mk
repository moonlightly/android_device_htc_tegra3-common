#
# Copyright (C) 2012 The CyanogenMod Project
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
# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB

#Camera
USE_CAMERA_STUB := false
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
BOARD_HAVE_HTC_FFC := true
BOARD_CAMERA_HAVE_ISO := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Board 
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

# Optimization build flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := 
TARGET_BOARD_PLATFORM := tegra

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# USB
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 22
BOARD_HAS_SDCARD_INTERNAL := true

# HTC specific
BOARD_USE_NEW_LIBRIL_HTC := true

# HTCLOG
COMMON_GLOBAL_CFLAGS += -DHTCLOG


