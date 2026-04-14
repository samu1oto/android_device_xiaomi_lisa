#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_NAME := lineage_lisa

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lisa_global-user 14 UKQ1.240624.001 OS2.0.1.0.UKOMIXM release-keys" \
    BuildFingerprint=Xiaomi/lisa_global/lisa:14/UKQ1.240624.001/OS2.0.1.0.UKOMIXM:user/release-keys
# AVIUM_VERSION_APPEND_TIME_OF_DAY is a boolean flag to indicate
# whether to append time of day to the build date.
AVIUM_VERSION_APPEND_TIME_OF_DAY ?= false
# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= samuioto

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= Snapdragon 778G
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= lisa

# GMS
# WITH_GMS is a boolean flag to indicate 
# whether to include Google Mobile Services (GMS) in the build.
WITH_GMS ?= true
# LatinIMEGooglePrebuilt
# Only works on vanilla builds,
# GMS builds will use the Google IME from GMS.
TARGET_INCLUDE_GOOGLEIME ?= false
TARGET_GOOGLEIME_OVERRIDE_IME ?= false

# Spoof Props
# Set to true to enable spoofing fake props.
# For letting apps think they are running on a locked device.
AVIUM_FORCE_SET_FAKE_PROP ?= false

# Blur Effect
# The blur usually enabled on Android 16 QPR2.
# If the blur not enabled, set to true to force enable blur for SystemUI.
TARGET_FORCE_ENABLE_BLUR ?= false
