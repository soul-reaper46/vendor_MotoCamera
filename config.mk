# Copyright (C) 2019 AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR_PATH := vendor/MotoCamera

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/framework,$(TARGET_COPY_OUT_PRODUCT)/framework) \
   	$(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MotCamera/lib/arm,$(TARGET_COPY_OUT_PRODUCT)/priv-app/MotCamera/lib/arm)

# Motorola Camera permissions
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/system/etc/permissions/com.motorola.androidx.camera.extensions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.motorola.androidx.camera.extensions.xml \
    $(VENDOR_PATH)/system/etc/permissions/com.motorola.cameraone.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.motorola.cameraone.xml \
    $(VENDOR_PATH)/system/etc/permissions/deviceowner-configuration-com.motorola.cameraone.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/deviceowner-configuration-com.motorola.cameraone.xml \
    $(VENDOR_PATH)/system/etc/permissions/privapp-permissions-com.motorola.cameraone.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.motorola.cameraone.xml \
    $(VENDOR_PATH)/system/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.motorola.motosignature.xml \
    $(VENDOR_PATH)/system/etc/sysconfig/hiddenapi-whitelist-com.motorola.cameraone.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-whitelist-com.motorola.cameraone.xml

PRODUCT_PACKAGES += \
    MotCamera \
    MotoSignatureApp
