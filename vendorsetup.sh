#!/bin/bash

git clone https://github.com/oneplus-mediatek-dev/kernel_oneplus_ivan_4.19.git kernel/oplus/mt6877

# KernelSU
KSU=kernel/oplus/mt6877/KernelSU
rm -rf $KSU && git clone https://github.com/tiann/KernelSU $KSU

git clone https://github.com/Ko-Hi-Dev/ivan.git device/oplus/ivan

#git clone https://gitlab.com/Ko_Hi/mt6877_vendor.git vendor/oplus/mt6877-common

#git clone https://gitlab.com/Ko_Hi/mt6877.git vendor/oplus/ivan

git clone https://gitlab.com/Ko_Hi/vendor_ivan.git vendor/oplus/ivan

git clone -b thirteen https://github.com/PixelOS-Devices/hardware_oplus.git hardware/oplus

git clone -b lineage-20 https://github.com/oplus-ossi-development/android_hardware_mediatek.git hardware/mediatek

git clone -b lineage-20 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr


# clang
git clone --depth=1 https://github.com/oneplus-mediatek-dev/android_prebuilts_clang_host_linux-x86_clang-6443078.git -b 11.0.1 prebuilts/clang/host/linux-x86/clang-r383902


# Source patches
# bash device/oplus/mt6877-common/patches/apply.sh

