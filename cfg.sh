#!/bin/bash
[ "$#" -gt 1 ] && cat <<EOF >/tmp/genimage.cfg
config {
   loglevel = 1
   outputpath = "/tmp/genimage_outputpath"
   inputpath = "/tmp/MINICOM_RES"
   # rootpath = "/tmp/genimage_emptydir"
   rootpath = "/dev/null"
   tmppath = "/tmp/genimage_tmppath"
}
image fat.partimg {
   # name = "bootloader"
   # https://github.com/pengutronix/genimage/blob/master/README.rst#vfat
   vfat {
      # Extra arguments passed to mkdosfs
      extraargs = "-F 12 -i 19890604 -v"
      # Don't include "u-boot-spl.bin"
      files = { $( printf '"%s", ' "$@" )}
   }
   # size = 200%
   # The content of "\${rootpath}\${mountpoint}" will be used to fill the filesystem.
   # mountpoint = "/"
   size = 2M
   empty = true
}
image emmc.img {
   hdimage {
      align = 4k
      # partition-table = true
      partition-table-type = "mbr"
      extended-partition = 0
      disk-signature = 0x19890604
   }
   partition bootloader {
      align = 4k
      # sfdisk -T
      partition-type = 0x1
      image = "fat.partimg"
      bootable = true
      in-partition-table = true
   }
}
EOF
