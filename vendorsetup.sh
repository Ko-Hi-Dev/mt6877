#!/bin/bash

# KernelSU
KSU=kernel/oplus/mt6877/KernelSU
rm -rf $KSU && git clone https://github.com/tiann/KernelSU $KSU

# Source patches
bash device/oplus/mt6877-common/patches/apply.sh
