# LineageOS 21.0

### This scripts are derived from https://github.com/mor175/scripts and https://github.com/LG-G6/scripts, so many thanks to Bernardo Bas, mor175 and others.

This scripts are only for LG G6 H870DS variant to build LOS 21.0 on Linux.

**Tested on Ubuntu 22.04 LTS**

To setup your environment, use these guides: https://github.com/shantanu-sarkar/CustomROM and https://wiki.lineageos.org/devices/h870/build/.

To initialize your local repository, use this ninja command:

```Shell
mkdir -p ~/bin && mkdir -p ~/android/lineage && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && git lfs install && git config --global trailer.changeid.key "Change-Id" && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && cd ~/android/lineage && git clone https://github.com/jhchong94/LG_G6_scripts.git && repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs && mkdir .repo/local_manifests && cp LG_G6_scripts/roomservice-h870ds.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870ds.xml .repo/local_manifests/roomservice.xml
```

To build LOS 21.0:

```Shell
source LG_G6_scripts/build-h870ds.sh
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
