# Copyright (C) 2017 LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#include vendor/pa/main.mk
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit from N939St device
$(call inherit-product, device/zte/N939St/device.mk)

# Locales
PRODUCT_LOCALES := en_US

# Device identifier. This must come after all inclusions
BOARD_VENDOR := zte
PRODUCT_BRAND := ZTE
PRODUCT_DEVICE := N939St
PRODUCT_NAME := bliss_N939St
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Blade X9

PRODUCT_GMS_CLIENTID_BASE := android-zte