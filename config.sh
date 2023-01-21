#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
TW_BRANCH="12.1"
TARGET=(
	recoveryimage
)

repo init --depth=1 -u https://github.com/SHRP/manifest.git  -b shrp-${TW_BRANCH}
repo sync -j10 --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b shrp device/${OEM}/${DEVICE}

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}

cd ${OUT}

curl -sL https://git.io/file-transfer | sh
./transfer wet SHRP*.zip

