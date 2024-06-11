#!/bin/bash

# Cam fix for LG G6
cd frameworks/base/
git fetch https://github.com/mor175/android_frameworks_base.git v1-t
git cherry-pick bd320b75a6c8d0212145406b5fd598181a199b1a
cd ../../
