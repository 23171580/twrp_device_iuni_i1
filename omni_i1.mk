#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/iuni/i1/kernel:kernel \
    device/iuni/i1/dtb:dtb

PRODUCT_COPY_FILES += device/iuni/i1/fstab.qcom:recovery/root/fstab.qcom

PRODUCT_NAME := omni_i1
PRODUCT_DEVICE := i1
PRODUCT_BRAND := IUNI
PRODUCT_MODEL := I1
PRODUCT_MANUFACTURER := IUNI
PRODUCT_CHARACTERISTICS := nosdcard
#Default region&language
PRODUCT_DEFAULT_REGION := CN
PRODUCT_DEFAULT_LANGUAGE := zh

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

#Language config
PRODUCT_LOCALES := en_US zh_CN zh_TW zh_HK

# Kernel inline build
#TARGET_KERNEL_CONFIG := i1_defconfig
#TARGET_VARIANT_CONFIG := i1_defconfig
#TARGET_SELINUX_CONFIG := i1_defconfig
