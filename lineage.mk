#
# Copyright 2020 The LineageOS Project.
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/bq/bulma/device.mk)

# Inherit from common device
$(call inherit-product, device/bq/mt6592-common/mt6592.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := bq Aquaris E6
PRODUCT_DEVICE := bulma
PRODUCT_NAME := lineage_bulma
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris E6
PRODUCT_MANUFACTURER := bq
PRODUCT_GMS_CLIENTID_BASE := android-bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=bulma \
   PRODUCT_NAME=bulma

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_E6/Aquaris_E6:4.4.2/KOT49H/1429864126:user/release-keys \
    PRIVATE_BUILD_DESC="bulma-user 4.4.2 KOT49H d2f4946 release-keys"
