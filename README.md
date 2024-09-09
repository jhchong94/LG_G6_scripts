# LineageOS 21.0

### This scripts are derived from https://github.com/mor175/scripts, so many thanks to mor175 and others.

This scripts are only for LG G6 H870DS variant to build LOS 21.0 on Linux.

**Tested on Ubuntu 22.04 LTS**

To initialize your local repository, use this ninja command:

```Shell
mkdir ~/android && mkdir ~/android/lineage && cd ~/android/lineage && git clone https://github.com/jhchong94/LG_G6_scripts.git && repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && mkdir .repo/local_manifests && cp LG_G6_scripts/roomservice-h870ds.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870ds.xml .repo/local_manifests/roomservice.xml
```

To build /e/OS:

```Shell
source scripts/build-h870ds.sh
```

**Ubuntu 22.04 LTS - Special Notes :**

Instead of download and install "platform-tools-latest-linux.zip", you could do this :
```Shell
sudo apt-get install adb fastboot
```

You may need also add this packages : cpu-checker python-is-python3 zram-config git-lfs

JAVA : v1-t is equivalent to LineageOS 20, so it's not necessary to install OpenJDK 11 (included in source download)

To fix "Can't locate Getopt/Std.pm in @INC", execute this :
```Shell
sudo perl -e shell -MCPAN
cpan>install CPAN
cpan>reload cpan
cpan>install Getopt::Std
cpan>exit
```
ln -s /usr/share/perl/5.34.0/ /usr/share/perl/5.26

ln -s /usr/share/perl/5.34.0/ /usr/share/perl/5.26.1
