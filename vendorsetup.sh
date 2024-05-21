#!/bin/bash

# KernelSU
KSU=kernel/oplus/mt6877/KernelSU
rm -rf $KSU && git clone https://github.com/tiann/KernelSU $KSU

git clone https://github.com/Ko-Hi-Dev/ivan.git device/oplus/ivan

git clone https://gitlab.com/Ko_Hi/mt6877_vendor.git vendor/oplus/mt6877-common

git clone https://gitlab.com/Ko_Hi/mt6877.git vendor/oplus/ivan

git clone https://github.com/oplus-ossi-development/android_device_mediatek_sepolicy_vndr.git device/mediatek/seploicy_vndr

git clone -b lineage-21 https://github.com/LineageOS/android_hardware_oplus.git hardware/oplus

git clone https://github.com/oplus-ossi-development/android_hardware_mediatek.git hardware/mediatek

git clone https://github.com/oplus-ossi-development/android_packages_apps_OneplusParts.git packages/apps/OneplusParts

git clone https://github.com/oplus-ossi-development/android_hardware_mediatek_gnss.git hardware/mediatek/gnss

git clone https://github.com/oplus-ossi-development/android_hardware_mediatek_wlan.git hardware/mediatek/wlan

# clang
git clone --depth=1 https://github.com/oneplus-mediatek-dev/android_prebuilts_clang_host_linux-x86_clang-6443078.git -b 11.0.1 prebuilts/clang/host/linux-x86/clang-r383902


# Source patches
bash device/oplus/mt6877-common/patches/apply.sh

