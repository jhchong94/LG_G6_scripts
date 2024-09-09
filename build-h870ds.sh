#!/bin/bash
source scripts/sync-h870ds.sh

source build/envsetup.sh

source scripts/fixes.sh

make clean

brunch h870ds
