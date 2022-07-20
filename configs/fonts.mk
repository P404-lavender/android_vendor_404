#
# Copyright (C) 2020-2022 Project 404
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

# Fonts
LOCAL_PATH := vendor/404/fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ttf,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \
    vendor/404/fonts/ttf/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    vendor/404/fonts/ttf/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/404/fonts/ttf/Inter-VF.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-VF.ttf \
    vendor/404/fonts/ttf/OppoSans-En-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OppoSans-En-Regular.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Black_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Black_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Black.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Black.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Bold_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Bold_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Bold.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Light_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Light_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Light.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Medium_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Medium_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Medium.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Regular_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Regular_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Regular.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Thin_Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Thin_Italic.ttf \
    vendor/404/fonts/ttf/HarmonyOS_Sans_Thin.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS_Sans_Thin.ttf

PRODUCT_PACKAGES += \
    FontGoogleSansOverlay \
    FontGoogleSansLatoOverlay \
    FontInterOverlay \
    FontOppoSansOverlay \
    FontHarmonyOS-SansOverlay