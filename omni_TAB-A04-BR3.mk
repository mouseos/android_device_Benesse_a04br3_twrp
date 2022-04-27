#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TAB-A04-BR3 device
$(call inherit-product, device/sts-tottori/TAB-A04-BR3/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TAB-A04-BR3
PRODUCT_NAME := omni_TAB-A04-BR3
PRODUCT_BRAND := benesse
PRODUCT_MODEL := TAB-A03-BR3
PRODUCT_MANUFACTURER := sts-tottori
