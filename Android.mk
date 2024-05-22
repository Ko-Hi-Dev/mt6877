#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter ivan cupida,$(TARGET_DEVICE)),)

subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
$(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

# Creating Vendor Symlinks
VENDOR_SYMLINKS := \
    $(TARGET_OUT_VENDOR)/lib \
    $(TARGET_OUT_VENDOR)/lib64 \
    $(TARGET_OUT_VENDOR)/lib/hw \
    $(TARGET_OUT_VENDOR)/lib64/hw \
    $(TARGET_OUT_VENDOR)/lib/egl \
    $(TARGET_OUT_VENDOR)/lib/mt6877 \
    $(TARGET_OUT_VENDOR)/lib64/mt6877 \
    $(TARGET_OUT_VENDOR)/lib64/egl

$(VENDOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)

	$(hide) echo "Making Vendor Symlinks"

	@mkdir -p $(TARGET_OUT_VENDOR)/lib/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/egl
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/egl
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/mt6877
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/mt6877

	@ln -sf libSoftGatekeeper.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.default.so
	@ln -sf /vendor/lib64/libSoftGatekeeper.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.default.so
	@ln -sf /vendor/lib/libMcGatekeeper.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.trustonic.so
	@ln -sf /vendor/lib64/libMcGatekeeper.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.trustonic.so
	@ln -sf /vendor/lib/kmsetkey.trustonic.so $(TARGET_OUT_VENDOR)/lib/hw/kmsetkey.default.so
	@ln -sf /vendor/lib64/kmsetkey.trustonic.so $(TARGET_OUT_VENDOR)/lib64/hw/kmsetkey.default.so
	@ln -sf /vendor/lib/mt6877/libdpframework.so $(TARGET_OUT_VENDOR)/lib/libdpframework.so
	@ln -sf /vendor/lib64/mt6877/libdpframework.so $(TARGET_OUT_VENDOR)/lib64/libdpframework.so
	@ln -sf /vendor/lib/mt6877/libpq_prot.so $(TARGET_OUT_VENDOR)/lib/libpq_prot.so
	@ln -sf /vendor/lib64/mt6877/libpq_prot.so $(TARGET_OUT_VENDOR)/lib64/libpq_prot.so
	@ln -sf /vendor/lib/mt6877/lib/mtk_drvb.so $(TARGET_OUT_VENDOR)/lib/libmtk_drvb.so
	@ln -sf /vendor/lib64/mt6877/libmtk_drvb.so $(TARGET_OUT_VENDOR)/lib64/libmtk_drvb.so
	@ln -sf /vendor/lib/mt6877/libaiselector.so $(TARGET_OUT_VENDOR)/lib/libaiselector.so
	@ln -sf /vendor/lib64/mt6877/libaiselector.so $(TARGET_OUT_VENDOR)/lib64/libaiselector.so
	@ln -sf /vendor/lib/mt6877/libgpudataproducer.so $(TARGET_OUT_VENDOR)/lib/libgpudataproducer.so
	@ln -sf /vendor/lib64/mt6877/libgpudataproducer.so $(TARGET_OUT_VENDOR)/lib64/libgpudataproducer.so
	@ln -sf /vendor/lib/mt6877/libnir_neon_driver.so $(TARGET_OUT_VENDOR)/lib/libnir_neon_driver.so
	@ln -sf /vendor/lib64/mt6877/libnir_neon_driver.so $(TARGET_OUT_VENDOR)/lib64/libnir_neon_driver.so
	@ln -sf /vendor/lib/mt6877/libneuron_platform.vpu.so $(TARGET_OUT_VENDOR)/lib/libneuron_platform.vpu.so
	@ln -sf /vendor/lib64/mt6877/libneuron_platform.vpu.so $(TARGET_OUT_VENDOR)/lib64/libneuron_platform.vpu.so
	@ln -sf /vendor/lib/egl/mt6877/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib/egl/libGLES_mali.so
	@ln -sf /vendor/lib64/egl/mt6877/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib64/egl/libGLES_mali.so
	@ln -sf /vendor/lib/mt6877/arm.graphics-V1-ndk_platform.so $(TARGET_OUT_VENDOR)/lib/arm.graphics-V1-ndk_platform.so
	@ln -sf /vendor/lib64/mt6877/arm.graphics-V1-ndk_platform.so $(TARGET_OUT_VENDOR)/lib64/arm.graphics-V1-ndk_platform.so
	@ln -sf /vendor/lib/mt6877/arm.graphics-ndk_platform.so $(TARGET_OUT_VENDOR)/lib/arm.graphics-ndk_platform.so
	@ln -sf /vendor/lib64/mt6877/arm.graphics-ndk_platform.so $(TARGET_OUT_VENDOR)/lib64/arm.graphics-ndk_platform.so
	@ln -sf /vendor/lib64/mt6877/libneuron_runtime.so $(TARGET_OUT_VENDOR)/lib64/libneuron_runtime.so
	@ln -sf /vendor/lib64/mt6877/libneuron_runtime.5.so $(TARGET_OUT_VENDOR)/lib64/libneuron_runtime.5.so
	@ln -sf /vendor/lib64/mt6877/hw/vulkan.mali.so $(TARGET_OUT_VENDOR)/lib/hw/vulkan.mali.so
	@ln -sf /vendor/lib64/ mt6877/vulkan.mali.so $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.mali.so
	@ln -sf /vendor/lib64/mt6877/android.hardware.graphics.allocator@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	@ln -sf /vendor/lib64/mt6877/android.hardware.graphics.allocator@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib64/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	@ln -sf /vendor/lib64/mt6877/android.hardware.graphics.mapper@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so
	@ln -sf /vendor/lib64/mt6877/android.hardware.graphics.mapper@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib64/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so
	@ln -sf /vendor/lib/egl/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib/hw/vulkan.mt6877.so
	@ln -sf /vendor/lib64/egl/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.mt6877.so
	@ln -sf /vendor/lib64/mt6877/libmcv_runtime.mtk.so $(TARGET_OUT_VENDOR)/lib64/libmcv_runtime.mtk.so
	@ln -sf /vendor/lib64/mt6877/libmnl.so $(TARGET_OUT_VENDOR)/lib64/libmnl.so
	@ln -sf /vendor/lib64/mt6877/libmdla_ut.so $(TARGET_OUT_VENDOR)/lib64/libmdla_ut.so
	@ln -sf /vendor/lib64/mt6877/libdpframework.so $(TARGET_OUT_VENDOR)/lib64/libdpframework.so
	@ln -sf /vendor/lib64/mt6877/libmtk_drvb.so $(TARGET_OUT_VENDOR)/lib64/libmtk_drvb.so
	@ln -sf /vendor/lib64/mt6877/libnir_neon_driver.so $(TARGET_OUT_VENDOR)/lib64/libnir_neon_driver.so
	@ln -sf /vendor/lib64/mt6877/libpq_prot.so $(TARGET_OUT_VENDOR)/lib64/libpq_prot.so
	@ln -sf /vendor/lib64/mt6877/libdpframework.so $(TARGET_OUT_VENDOR)/lib64/libdpframework.so

	$(hide) touch $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENDOR_SYMLINKS)

endif
