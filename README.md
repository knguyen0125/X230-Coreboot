# X230 Coreboot Instruction

## Prerequisites - Hardware
* Lenovo x230
* Raspberry Pi 3 Model B V1.2
* SOIC-8 Clip (Pomona 5250 clip recommended - most cheaper SOIC-8 clips don't have 0.050" Lead Spacing, making it harder to use jumper cable)
* Female-to-Female Jumper Cable
* Keyboard, HDMI cable, Monitor

## Prerequisites - Software
* For x230 - Ubuntu 18.04 LTS - Install with GRUB2, Legacy - not UEFI - Very Important
	* If you need to extract vgabios blobs, you need Desktop version
	* Otherwise, Server version is fine
* For Raspberry Pi 3: Raspbian (any version)

# Preparation
* Fork this project - You need a shared space for your romdump (from x230's bioses) and finished coreboot rom between x230 and RPi
* Clone the forked project on both X230 and RPi

## On Rasberry Pi 3
* Enable SSH and SPI using ``raspi-config``
* Run this script to install Flashrom

## On X230
* Run this script to install Coreboot

```
./PrepareCoreboot.sh
```
