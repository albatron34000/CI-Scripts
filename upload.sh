#!/usr/bin/env bash

# Define Variables
DEVICE="RMX2151"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
SHRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)

cd /tmp/cirrus-ci-build/out/target/product/z3s/

curl -sL https://git.io/file-transfer | sh
./transfer wet SHRP_12.1*.zip

