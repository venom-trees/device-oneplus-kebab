#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2003

PRODUCT_SYSTEM_NAME := OnePlus8T_EEA
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus8T \
    TARGET_PRODUCT=OnePlus8T_EEA \
    PRIVATE_BUILD_DESC="OnePlus8T-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus8T_EEA/OnePlus8T:11/RP1A.201005.001/2011101425:user/release-keys


#RicDroid stuffs

 RICE_MAINTAINER := VEN0M98
 RICE_CHIPSET := SDM865
 SUSHI_BOOTANIMATION := 1440
 TARGET_ENABLE_BLUR := true
 TARGET_HAS_UDFPS := true
 TARGET_SUPPORTS_QUICK_TAP := true
 TARGET_FACE_UNLOCK_SUPPORTED := true
 WITH_GMS := true
