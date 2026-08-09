#!/bin/bash
set -e

export OS_ARCH=$(uname -m)

if [ -f "/usr/share/vulkan/icd.d/lvp_icd.json" ]; then
    export VK_DRIVER_FILES="/usr/share/vulkan/icd.d/lvp_icd.json"
elif [ -f "/usr/share/vulkan/icd.d/lvp_icd.$OS_ARCH.json" ]; then
    export VK_DRIVER_FILES="/usr/share/vulkan/icd.d/lvp_icd.$OS_ARCH.json"
fi

exec "$@"