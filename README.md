# X230 Coreboot Instruction

## Prerequisites - Hardware
* Lenovo Thinkpad x230
* Raspberry Pi 3 Model B V1.2
* SOIC-8 Clip (Pomona 5250 clip recommended - most cheaper SOIC-8 clips don't have 0.050" Lead Spacing, making it harder to use jumper cable)
* Female-to-Female Jumper Cable
* Keyboard, HDMI cable, Monitor

## Prerequisites - Software
* For x230 - Ubuntu 18.04 LTS - Install with GRUB2, Legacy
	* If you want to extract vgabios blobs, you need Desktop version
		* Otherwise, Server version is fine
	* _Note_: Any recent Ubuntu version is fine - I only tested this with 18.04 LTS.
	* _Note_: Live CD is also acceptable - IF you don't need to modify Coreboot.
	* _Note_: It is possible to compile Coreboot from RPi, but it's hugely time-consuming and not recommended.
	* __NOTE__: UEFI boot is not supported (?) under SeaBIOS. If you have OS with UEFI, you might not be able to boot after install Coreboot and may need to reinstall OS. It is possible to fix it without changing everything, but it's outside the scope of this project
* For Raspberry Pi 3: Raspbian (any version)

# Preparation
* Fork this project - You need a shared space for your romdump (gotten from Raspberry Pi 3) and finished coreboot rom between x230 and RPi
* Clone the forked project on both X230 and RPi, preferably with ssh

## On Rasberry Pi 3
* Enable SSH and SPI using ``raspi-config``
* Run this script to install Flashrom

## On X230
* Run this script to install Coreboot

```
./PrepareCoreboot.sh
```
