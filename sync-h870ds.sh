#!/bin/bash

rm -rf build/make/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/g6-common/
rm -rf device/lge/

repo sync -c -j3 --force-sync --no-clone-bundle --no-tags

## as sync failed regularly...
repo sync -c -j1 --fail-fast --force-sync --no-clone-bundle --no-tags
