<!-- readme.md -->

---

&bullet; [u-boot.md](https://github.com/Un1Gfn/beaglebone/blob/master/u-boot.md)\
&bullet; [alarm.md](https://github.com/Un1Gfn/beaglebone/blob/master/alarm.md)\
**&#9656; readme.md**

---

<!-- NAV_END -->

[AM3358](https://www.ti.com/product/AM3358) = [Cortex-A8](https://en.wikipedia.org/wiki/ARM_Cortex-A8) = [ARMv7-A](https://en.wikipedia.org/wiki/Comparison_of_ARMv7-A_cores) = 32-bit w/ FPU = [gnueabihf](https://wiki.debian.org/Multiarch/Tuples#armhf)

[Allwinner V5 eMMC Support List](http://files.lindeni.org/lindenis-v5/documents/support_list/Allwinner%C2%A0V5%20eMMC%C2%A0Support%C2%A0List.pdf)\
&bullet; [MTFC8GAKAJCN-1M WT / **Micron MTFC4GACAJCN-1M WT (possibly 6FA27-JY976)**](https://www.micron.com/products/managed-nand/emmc/part-catalog/mtfc8gakajcn-1m-wt)

Prog.World - [eMMC 5.0 sequential write 90MB/s](https://prog.world/nvme-vs-ufs-3-1-the-battle-of-smartphone-memory-types-parsing/)

[BBGW schematics](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green_Wireless/master/resources/BeagleBone_Green%20Wireless_V1.0_SCH_20160314.pdf)

[Arch Linux ARM](https://archlinuxarm.org/platforms/armv7/ti/beaglebone-green-wireless)

    sha1sum -c ArchLinuxARM-am33x-latest.tar.gz.sha1sum
    mkdir rootfs
    tar xf ../ArchLinuxARM-am33x-latest.tar.gz
    PACMAN='pacman --sysroot /home/darren/beaglebone/rootfs'
    $PACMAN -Syu flashrom

[eLinux/Toolchains](https://elinux.org/Toolchains)

---

<details><summary><i>hidden</i></summary>

Future

```
Buildroot Linux on Lattice ECP5 via yosys+prjtrellis+nextpnr

ReFirmLabs/binwalk firmware analysis tool

U-boot on x86
https://www.denx.de/wiki/U-Boot/X86

https://elinux.org/BeagleBoardAngstrom
```

misc
```
txt -> md
pacman -Qttq | grep python | sudo pacman -Rc -

Render README with tools & stylesheets from GitHub 
https://github.com/sindresorhus/generate-github-markdown-css
https://github.com/github/markup
echo "readme.md" | entr -cnp "..."

tail --follow

Libreboot
‌‌‎sop8 clip 燒錄夾 (+ch341a)

GitHub Flavored Markdown html entity whitelist
https://github.com/jch/html-pipeline/blob/master/lib/html/pipeline/sanitization_filter.rb#L67

grab telegram saved messages
```
</details>

[Render md on GitHub Wiki](https://github.com/Un1Gfn/empty/wiki/_new)  
[HTML entities](http://www.amp-what.com/)  
TRM=TechnicalReferenceManual

---

###### Distro
* [Void Linux](https://voidlinux.org/)
  * [packages](https://voidlinux.org/packages/)
  * [void-beaglebone-musl-\*.img.xz](https://a-hel-fi.m.voidlinux.org/live/current/) extract &asymp; 2000 MiB sparse live image
  * [void-beaglebone-musl-\*.tar.xz](https://a-hel-fi.m.voidlinux.org/live/current/) extract &asymp; 400 MiB rootfs tarball [howto](https://wiki.voidlinux.org/Beaglebone)
* [Buildroot](https://buildroot.org/) (build images on CircleCI)
  * [packages](https://git.busybox.net/buildroot/tree/package)
* [yocto](https://www.yoctoproject.org/) (build images on CircleCI)
  * [packages](https://layers.openembedded.org/layerindex/branch/master/recipes/)

---

###### Communications
<!-- Guide RNDIS TFTP BOOTP Serial Mass bootloader kernel userspace NFS SSH-->
|Guide|[RNDIS](https://en.wikipedia.org/wiki/RNDIS)<br>[<sup>O</sup>](https://en.wikipedia.org/wiki/Ethernet_over_USB)|[TFTP](https://en.wikipedia.org/wiki/Trivial_File_Transfer_Protocol)|[BOOTP](https://en.wikipedia.org/wiki/Bootstrap_Protocol)|Serial|Mass<br>Storage|boot-<br>loader<br>build|kernel<br>build|user-<br>space<br>build|NFS|SSH|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|[techniq](https://github.com/techniq/wiki/wiki/Linux-USB-Gadget-API)|O|||O|O||||||
|[BBBlfs](https://github.com/ungureanuvladvictor/BBBlfs)|O|||||O|O|O|||
|[recovery guide](https://elinux.org/AM335x_recovery)<br>[<sup>O</sup>](https://www.barebox.org/) [<sup>O</sup>](https://www.pengutronix.de/en/software/barebox.html)|O|O|O|||O|||||
|[U-boot on AM335x](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide)|O|O||O||O|||O||
|[terminal shells](https://elinux.org/Beagleboard:Terminal_Shells)||||O||||||O|
|[Android USB SSH](https://stackoverflow.com/questions/44926644/control-beaglebone-black-linux-with-android-smartphone-through-usb-cable)|O|||||||||O|
|[deleted superuser question](https://superuser.com/questions/1529130/linux-tethering-ethernet-over-usb-network-device-usb0-not-exposed-after-loading)[<sup>O</sup>](https://github.com/techniq/wiki/wiki/Linux-USB-Gadget-API#network-g_ether)|O||||||||||
|[RidgeRun](https://developer.ridgerun.com/wiki/index.php/How_to_use_USB_device_networking)|O||||||||O||
|[eLinux build image](https://elinux.org/Beagleboard:BeagleBoneBlack_Rebuilding_Software_Image) (obselete)||||||O|O|O|||
|eLinux<br>[Beagle**board**](https://elinux.org/BeagleBoard_Community)||||O||O|O||||
||||||||||||
|[nfs-kernel-server](https://bootlin.com/blog/tftp-nfs-booting-beagle-bone-black-wireless-pocket-beagle)|||||||||||
<!-- |||||||||||| -->


---

###### Device
* eLinux wiki
  * [BB generations brief](https://elinux.org/BeagleBone_Community)
  * [BB](https://elinux.org/BeagleBoard_Community)
  * [BBB](https://elinux.org/Beagleboard:BeagleBoneBlack)
  * [BBBW](https://elinux.org/Beagleboard:BeagleBoneBlackWireless)
* Official wiki
  * [BBB](https://github.com/beagleboard/beaglebone-black/wiki/System-Reference-Manual)
  * [BBGW](http://wiki.seeedstudio.com/BeagleBone_Green_Wireless/#specification)
* Serial port
  * eLinux [<sup>O</sup>](https://elinux.org/Beagleboard:BeagleBone_Black_Serial) [<sup>O</sup>](https://elinux.org/Beagleboard:Terminal_Shells#Serial_Connect)
  * [unix stackexchange](https://unix.stackexchange.com/questions/22545/how-to-connect-to-a-serial-port-as-simple-as-using-ssh)
  * nixCraft [<sup>O</sup>](https://www.cyberciti.biz/faq/find-out-linux-serial-ports-with-setserial/) [<sup>O</sup>](https://www.cyberciti.biz/hardware/5-linux-unix-commands-for-connecting-to-the-serial-console/)
  * [dummies](https://www.dummies.com/computers/beaglebone/how-to-connect-the-beaglebone-black-via-serial-over-usb/)
  * [rpi stackexchange](https://raspberrypi.stackexchange.com/a/15825/71791)
  * [askubuntu](https://askubuntu.com/a/474560/634976)
* UART
  * [YouTube](https://www.youtube.com/watch?v=3y1LMNPoaJI)
  * [TI](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide#Boot_Over_UART)

---

###### [Sitara AM3358](http://www.ti.com/product/AM3358) ~ [Arm Cortex-A8](https://en.wikipedia.org/wiki/ARM_Cortex-A8) ~ 32-bit [armhf](https://wiki.debian.org/ArmHardFloatPort#Supported_devices) [<sup>O</sup>](https://wiki.debian.org/ArmEabiPort) [arm-linux-gnueabihf-](https://wiki.debian.org/ArmHardFloatPort#Rationale) [<sup>O</sup>](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide#Prerequisite)
* [Functional Block Diagram](http://www.ti.com/data-sheets/diagram.tsp?genericPartNumber=AM3358&diagramId=SPRS717K)
* Docs [latest rev](http://www.ti.com/product/AM3358/technicaldocuments)
  * Datasheet ~ AM335x Sitara™ Processors datasheet [trunc rev](http://www.ti.com/lit/gpn/am3358)
    * "Functional Block Diagram" ~ Page 5 (1.4)
  * User guides ~ AM335x and AMIC110 Sitara™ Processors Technical Reference Manual [trunc rev](http://www.ti.com/lit/pdf/spruh73)
    * "Memery Map" ~ Page 117 (2.1)
    * "Public ROM Code Architecture" (xmodem) ~ Page 5019 (26.1.2) (Figure 26-1)
* [Boot process](https://processors.wiki.ti.com/index.php/AM335x_board_bringup_tips)
* [U-boot on AM3358](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide)

---

###### [U-boot](https://www.denx.de/wiki/U-Boot)
* [Pentester Academy - Embedded Linux Booting Process](https://www.youtube.com/watch?v=DV5S_ZSdK0s)
* [FIT image](https://elinux.org/images/f/f4/Elc2013_Fernandes.pdf)
* [GitLab repo README](https://gitlab.denx.de/u-boot)
  * "Building the Software:"
  * [AM335X README](https://gitlab.denx.de/u-boot/u-boot/tree/master/board/ti/am335x) ~ readme
* [DULG Introduction](https://www.denx.de/wiki/view/DULG/Introduction) ~ 2.3. Availability ~ [manual in PDF](http://www.denx.de/wiki/publish/DULG/DULG-canyonlands.pdf)
* [U-boot on AM3358](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide)
* guides on building u-boot
  * [Texus Instruments](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide)
  * [PKGBUILD for other SoC](https://aur.archlinux.org/packages/?O=0&SeB=nd&K=u-boot&outdated=&SB=n&SO=a&PP=50&do_Search=Go)
  * [Buildroot](https://git.busybox.net/buildroot/tree/board/beaglebone/readme.txt)

###### Toolchain
* [Arago TI-SDK](http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment) [<sup>O</sup>](https://web.archive.org/web/https://processors.wiki.ti.com/index.php/AM335x_U-Boot_User's_Guide#Prerequisite)
* arm-linux-gnueabi**hf**-gcc [AUR](https://aur.archlinux.org/packages/arm-linux-gnueabihf-gcc/) [ArchLinuxCN](https://github.com/archlinuxcn/repo/tree/master/archlinuxcn/arm-linux-gnueabihf-gcc)

---

###### [BusyBox](https://www.busybox.net/)
* [udhcpc](https://en.wikipedia.org/wiki/Udhcpc)


ip & mask
* [NexGenT](https://www.youtube.com/watch?v=ddM9AcreVqY&list=PLl9NdZbdtA0wK8OIgttkScKRxcMkvoev_)
* [Eli the Computer Guy](https://www.youtube.com/watch?v=EkNq4TrHP_U)

C Standard Library Implementation
[musl/uClibc/dietlibc/glibc](http://www.etalabs.net/compare_libcs.html)
[uClibc->musl](https://elinux.org/images/e/eb/Transitioning_From_uclibc_to_musl_for_Embedded_Development.pdf)

chroot + qemu
 * [U&L](https://unix.stackexchange.com/questions/41889/how-can-i-chroot-into-a-filesystem-with-a-different-architechture)
 * [AUR](https://aur.archlinux.org/packages/?O=0&K=qemu+static)
 * [binfmt](https://en.wikipedia.org/wiki/Binfmt_misc)
 * [Gentoo wiki](https://wiki.gentoo.org/wiki/Embedded_Handbook/General/Compiling_with_qemu_user_chroot)
 * [Debian wiki](https://wiki.debian.org/QemuUserEmulation)

---

* [LVDS](https://en.wikipedia.org/wiki/Low-voltage_differential_signaling)
  * [FPD-Link](https://en.wikipedia.org/wiki/FPD-Link)
* [Miracast](https://en.wikipedia.org/wiki/Miracast)
* [DisplayPort](https://en.wikipedia.org/wiki/DisplayPort)
  * [royalty-free](https://en.wikipedia.org/wiki/DisplayPort#Cost)