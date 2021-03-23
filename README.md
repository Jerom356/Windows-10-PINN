# Windows 10 PINN

# Features
u don't want a computer to install

Supports usb boot ,u can use a hard disk also(not tested with hard disk ,but supports uSD from 32G to 512G)

Only want network under 50 mb (u can turn off network safely after it shows "running partition setup script")

Supports multi-boot with Windows 10
# Disadvantages
Installation of Windows 10 and Windows 10 booting will takes so long time (cooling fan is recommended)

You can use only uSD 32G without usb boot (usb boot also want 32G or above 32G)

Sometimes it will shows "Windows Installation Cannot Procced (when booting Windows 10 first time,can be fixed)

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

If error has appear "Windows Installation Cannot Procced"

Follow [Comstepr/Win-10-on-64-bit-Pi3](https://github.com/Comstepr/Win10-on-64-bit-Pi3)

From 36th step To 55th Step

Note:if other error has came,try to reboot Windows 10

U don't need to copy finish.reg

I have already copied finish.reg in C:\Windows\finish.reg

#### Lines
Or i copy and pasted his lines here

##### starting of lines

36. When you see the error "Windows installation cannot proceed", press SHIFT+F10. The command prompt will open.
37. In the command prompt, enter 
```
mmc
```
38. In mmc, click File, Add/Remove Snap-ins.
39. Double-click Computer Management.
40. Click Finish.
41. Click Ok on the dialog box that says Event Viewer.
42. Click Ok on the Add/Remove Snap-ins menu.
43. In mmc, click Computer Management (Local), Local Users and Groups, Users.
44. Double-click on the Administrator account.
45. Uncheck Account is disabled.
46. Right-click on the Administrator account and click Set Password.
47. Click Proceed.
48. Enter your password. You may leave the password blank.
49. Click Ok on the Set Password dialog box.
50. Click Ok on the Local Users and Groups dialog box.
51. Close mmc.
52. Click No.
53. In the command prompt, navigate to the folder you copied the finish.reg to.
54. In the command prompt, enter 
```
regedit finish.reg
```
55. Restart the Raspberry Pi or enter 
```
shutdown /r /t 0
```
in the command prompt to restart it.
**Note: If entering the command does not restart Windows, restart it manually.**

##### end of lines

## Credits
Pinn https://github.com/procount/pinn

Windows 10 ISO(not modified wim) https://empyreal96.github.io/Win10ARM64.html

Fixing Error https://github.com/Comstepr/Win10-on-64-bit-Pi3

Compress Software https://www.7-zip.org
