#
# Copyright (C) 2010 The Android Open Source Project
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

PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only

ifeq ($(TARGET_PREBUILT_KERNEL),)
   LOCAL_KERNEL := device/FUHU_INC/nabi2_xd/kernel
 else
   LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
 endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel \
    device/FUHU_INC/nabi2_xd/fstab.nabi2_xd:root/fstab.nabi2_xd \
    device/FUHU_INC/nabi2_xd/init.nabi2_xd.rc:root/init.nabi2_xd.rc \
    device/FUHU_INC/nabi2_xd/recovery.fstab:root/recovery.fstab \

# the actual meat of the device-specific product definition
$(call inherit-product, device/FUHU_INC/nabi2_xd/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/FUHU_INC/nabi2_xd/device-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

DEVICE_PACKAGE_OVERLAYS := \
    device/FUHU_INC/nabi2_xd/overlay
