#!/bin/bash
source LG_G6_scripts/sync-h870ds.sh

source build/envsetup.sh

source LG_G6_scripts/fixes.sh

source scripts/extras.sh

make clean

brunch h870ds
