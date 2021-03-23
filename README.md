# Windows 10 PINN

# Features
u don't want a computer to install

Supports usb boot ,u can use a hard disk also(not tested with hard disk ,but supports uSD from 32G to 512G)

Only want network under 50 mb (u can turn off network safely after it shows "running partition setup script")

Supports multi-boot with Windows 10
# Disadvantages
Installation of Windows 10 and Windows 10 booting will takes so long time (cooling fan is recommended)

You can use only uSD 32G without usb boot (usb boot also want 32G or above 32G)

Sometimes it will shows "Windows 10 Installation Cannot Procced (when booting Windows 10 first time,can be fixed)

If you want to install windows 10 immediately without thinking about this Disadvantages

I appreciate you
# Installation
## Requirements
An Raspberry pi 3B/3B+

Power supply atleast 5v 1.5A

Cooling fan for Raspberry pi (not have to use immediately ,but fan is recommended)

Monitor,Mouse,Keyboard

Pinn-Lite (not ready yet!)

## Tutorial
Extract pinn into sd card (for mobile use ZArchiver)

Eject sd card and put it in raspberry Pi

Go to Advanced

Select Windows 10 Desktop

Click Install
## Booting Settings
After Installation Reboot Raspberry pi

Now an Raspberry pi logo will appear

Press esc to go to Boot manager

Warning : don't skip this otherwise Windows 10 will be lag

Go to Device Manager>Raspberry pi Configuration>Chipset Configuration>Cpu Clock>Set That to Max>Esc>Esc>Y for that Prompt>Esc

Go to Boot manager>SD/MMC(if u use usb boot ,select uefi usb device)>Enter

Now Windows 10 will boot safely

If error has appear "Windows 10 Installation Cannot Procced"

Follow [Comstepr/Win-10-on-64-bit-Pi3](https://github.com/Comstepr/Win10-on-64-bit-Pi3)

From 36th step To 55th Step

U don't need to copy finish.reg

I have already copied finish.reg in C:\Windows\finish.reg
