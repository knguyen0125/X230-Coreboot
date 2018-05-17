# X230 Coreboot Instruction
DISCLAIMER: This guide and its tools is provided AS-IS. Flashing BIOS is risky and may permanently damage your laptop. I'm NOT personally liable for any damages caused by following this guide. Follow at your own risks.

## Why Coreboot - ME_Cleaner?
* Faster boot time
* Remove whitelists (for Wireless-AC installation)


## Prerequisites - Hardware
* Lenovo Thinkpad x230
* Raspberry Pi 3 Model B V1.2
* SOIC-8 Clip (e.g. Pomona 5250 clip)
* Female-to-Female Jumper Cable
* Keyboard, Mouse, HDMI cable, Monitor

## Prerequisites - Software
* For x230 - Ubuntu 18.04 LTS - Install with GRUB2, Legacy
	* If you want to extract vgabios blobs, you need Desktop version
		* Otherwise, Server version is fine
	* _Note_: Any recent Ubuntu version is fine - I only tested this with 18.04 LTS.
	* _Note_: Live CD is also acceptable - IF you don't need to modify Coreboot.
	* _Note_: It is possible to compile Coreboot from RPi, but it's hugely time-consuming and not recommended.
	* __NOTE__: UEFI is not supported (?) by SeaBIOS. If you have OS with UEFI, you might not be able to boot after install Coreboot and may need to reinstall OS. It is possible to fix it without changing everything, but it's outside the scope of this project
* Also for x230: Update BIOS to latest version. You cannot update EC after installing the CoreBoot (you need to reflash original bios for them to work). If you want the classic 7-row keyboards or disable battery check, it's best to it now with ``thinkpad-ec``
* For Raspberry Pi 3: Raspbian (any version)

## Hardware Preparation


# Software Preparation
* Fork this project - You need a shared space for your romdump (gotten from Raspberry Pi 3) and finished coreboot rom between x230 and RPi
* Clone the forked project on both X230 and RPi, preferably with ssh
* Run this script on both devices for dependencies:

```
./PrepareEnv.sh
```

## On Rasberry Pi 3
* Enable SSH and SPI using ``raspi-config``
* Run this script to install Flashrom

```
./PrepareFlashrom.sh
```

## On X230
* Run this script to clone Coreboot and build toolchains (can take a LONG time)

```
./PrepareCoreboot.sh
```
