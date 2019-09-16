![2K20 Banner](/doc/repository-banner.png)

# Introduction

2K20 is a general overhaul mod for Halo: Combat Evolved (retail version).
 Experience the game
 with high quality graphics and enhanced playability, while retaining the
 feeling of the original game. If you never played Halo: Combat Evolved before,
 it is now the perfect time to try! Veterans can also rediscover the game of
 their childhood with modern gameplay and visuals.

## Changes

![2K20 Content](/doc/repository-mod-content.png)

## Project philosophy

2K20 only updates original textures and behaviours. It is a massive redesign
 of many elements, but it does not include 4K textures or new tags. This
 choice is motivated by two reasons:
  1. I am a passionate tunner, not a skilled modder
  2. Pushing the game as its maximum "as is" is a personal bet and a mark of respect for BUNGIE

## Original vs 2K20

![Banshee](/screenshots/gif/banshee.gif)

IN GAME screenshots are also available [here](/screenshots/1080p).

# Table of Contents

* [**Prerequisite**](#prerequisite)
  * [**Requirements**](#requirements)
  * [**Warning about third-party software**](#warning-about-third-party-software)
* [**Install**](#install)
  * [**Download**](#download)
  * [**Setup**](#setup)
  * [**Configure**](#configure)
  * [**Enjoy**](#enjoy)
* [**Upgrade**](#upgrade)
* [**Downgrade**](#downgrade)
* [**Remove**](#remove)
* [**Community**](#community)
  * [**Roadmap**](#roadmap)
  * [**Known bugs**](#known-bugs)
  * [**Credits**](#credits)
  * [**Links**](#links)


# Prerequisite

## Requirements

### General

- Halo: Combat Evolved, ENGLISH, version 1.10
- 1080p or better
- A working computer: potato PCs will die because of [Chimera interpolation](https://github.com/Dwood15/Chimera/blob/master/README.md#interpolation) setting

### Windows

 - Windows 10
 - Account with administrator access
 - [7-Zip](https://www.7-zip.org/)

### Linux

 - [p7zip](http://p7zip.sourceforge.net/). Some Linux distributions may already include the ability to open .7z archives without any additional software installation

## Warning about Third-party software

In the Halo 1 for PC community, there are 2 different games with a similar name:
 - Halo: Combat Evolved, as known as Halo PC, which is the retail version of Halo 1.
 - Halo Custom Edition, as kwnon as Halo CE, which is an unsupported version of
 Halo PC with unlocked modding capabilities

In the small world of modding, a great majority of modders prefer to work on
 Halo CE, so 2K20 is an exception and hijacks the use of certain third-party
 software like [Chimera](https://github.com/Dwood15/Chimera) to achieve objectives.
 It doesn't mean that the mod will not work, it means that the mod uses software
 that doesn't not support Halo PC, and can cease to work anytime or if you have
 the great idea to manually upgrade to a newer version by yourself.
 It also means that some features don't work, and there is nothing to do to
 fix that, except by porting this mod to Halo CE.

# Install

## Download

2K20 can be obtained from [https://mega.nz/2K20/release/](https://mega.nz/#F!8IMVVSLA!JaDc4ovBcdp_4pfYfzBP6g).

Download the latest available version:

![Download](/doc/repository-download-2K20.png)

Extract it anywhere:

![Extract](/doc/repository-extract-2K20.png)

Place the extracted folder in the root directory of Halo:

![Halo directory](/doc/repository-halo-folder-with-2K20-install-folder.png)

## Setup

You are going to install 2K20 files. It can be done using an automated
 script or by manually copy/pasting files and folders. Once installed,
 the mod is almost ready for use, but it still needs to be configured.

### Automated (Windows only)
The easiest way to install 2K20 is to `Run as administrator` the installation
 script, like in the following picture:

![2K20 install folder](/doc/repository-2K20-install-folder.png)

This will open a command window executing our `batch` script. Follow
 the displayed instructions and report any problem on our [2K20 Discord](https://discord.gg/p9m7Gn7).

![2K20 installer script](/doc/repository-2K20-installer-script.png)

Once finished, close the window.

### Manual

It is also possible to manually install 2K20. To do so, follow these steps:
 - move the folder `Halo/2K20-install-X.X.X/2K20` in `Halo/`
 - backup your existing maps in `Halo/2K20/backup/MAPS/`
 - move the content of `Halo/2K20-install-X.X.X/root` in `Halo/`
 - move the content of `Halo/2K20-install-X.X.X/controls` in `Halo/CONTROLS/`
 - move the content of `Halo/2K20-install-X.X.X/maps` in `Halo/MAPS/`

## Configure

### Shortcut

Find of create a shortcut for Halo. Then open its `Properties window`. Following
 the word `Target`, you should see something like this:
```
C:\Program Files\Halo\halo.exe
```
Replace the previous line by this one (once adapted to your needs and to your Halo installation path):
```
C:\Program Files\Halo\halo.exe -novideo -vidmode 1920,1080,60 -use21
```
 - `-novideo` disables intro video when the game is launched [Not necessary]
 - `-vidmode 1920,1080,60` lets you determine resolution and refresh rate
 - `-use21` forces Halo to launch using the latest supported version of shaders, the 2.1
 - `-console` will enable the IN GAME console [Not necessary]

### Ambient sound

Launch Halo and update **Audio config** like in the following picture:

![Halo sounds setting](/doc/repository-halo-sound-settings.png)

This is it! You're good to go!

## Enjoy

**Have fun!** (**feedbacks** in our [2K20 Discord](https://discord.gg/p9m7Gn7) will be greatly appreciated).

# Upgrade

### Automated (Windows only)

Install 2K20 like it's new, it will detect the current installation and
 remove it for you. **Warning**: it will also replace the existing
 backup of your old maps. So if your backup contains untouched Halo maps,
 they will be replaced by the maps you currently use in Halo.

# Downgrade

### Automated (Windows only)

 1. `Run as administrator` the script `Halo/2K20/UNINSTALL.cmd`
 2. Install the version of 2K20 you want

# Remove

`Run as administrator` the script `Halo/2K20/UNINSTALL.cmd`.

# Community

Feel free to download, copy and adapt the source files of this project to
 the needs of your next mod :). In exchange, share your work with us in our [2K20 Discord](https://discord.gg/p9m7Gn7).

## Roadmap

| Version          | Features                                                                                                             | Release | Status            |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- | ------- | ----------------- |
| v0.1.0 ALPHA     | UPDATE behaviours in campaign (unfinished)<br>UPDATE textures (unfinished)<br>ADD Third-party software configuration | Q3 2019 | Under development |
| v0.2.0 ALPHA     | UPDATE main menu UI - Halo Reach like (finished)<br>UPDATE existing textures<br>ADD new textures                     | Q4 2019 |                   |
| v1.0.0  BETA     | FIX all major issues<br>UPDATE campaign behaviours<br>UPDATE textures                                                | Q4 2019 |                   |
| v1.0.X    RC     | PUBLIC RELEASE Official release                                                                                      | Q1 2020 |                   |

## Known Bugs

- Behaviour/117: increasing walking speed causes side effects, such as "jumps on collision"
- Behaviour/Loaded plasma shot: increasing the velocity of the projectile makes it difficult to follow any target
- Texture/Needer: ammo counter on HUD is broken since magazine capacity has been increased to 22
- Texture/Jackal: texture of the upper jaw's teeth collide each other
- Texture/Sand: on some maps, the color is too damn pronounced (literally gold color on blood gulch)
- Texture/Main menu: given that Reach main menu is not finalized, it can be tricky to use it in some ways

## Credits

 - **Slip2Guerre** - Mod development and creation; documentation; testing
 - **Microsoft and BUNGIE** - For Halo
 - **Azzak** - Documentation; testing
 - **Orbmancer** - Testing
 - **Kavawuvi** - [Chimera](https://github.com/Dwood15/Chimera) development; Chimera is vital for the mod
 - **Shelly** - This nice fox will help you fix problems
 - **SOl_7** - [His work](https://www.youtube.com/channel/UCqeSNPrKO74SMtNwvvtoOtQ) is a great source of inspiration for this mod
 - **Derj** - His work is also a great source of inspiration for this mod
 - **Halo CE Reclaimers Discord** - Great people, caring and willing to help

 I do not own any of the Halo: Combat Evolved files. It is the property
  of Microsoft and thereby protected under their End-User License Agreement (EULA)
  or License Terms. I do not own any of the third-party software either.

## Links

 - [2K20 Discord](https://discord.gg/p9m7Gn7)
 - [Chimera Discord](https://discord.gg/ZwQeBE2)
 - [Halo CE Reclaimers Discord](https://discord.gg/YUJdesD)
 - [DSOAL Builds](http://vaporeon.io/hosted/dsoal-builds/)
