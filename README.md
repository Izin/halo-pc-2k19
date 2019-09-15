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

HD visuals are also available in [screenshots/1080p](/screenshots/1080p) folder.

## Warning

The mod uses [Chimera](https://github.com/Dwood15/Chimera), a third-party
 software that updates technical elements of Halo. However it does NOT support
 Halo PC (retail version of Halo: CE). No guarantees can be made on Halo PC
 stability!


# Table of Contents

* [**Prerequisite**](#prerequisite)
  * [**Requirements**](#requirements)
  * [**Warning about third-party software**](#warning-about-third-party-software)
* [**Getting Started**](#getting-started)
  * [**Download and extract**](#download-and-extract)
  * [**Install**](#install)
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

 - Windows 10 [for automatic install]
 - An account with administrator access
 - [7-Zip](https://www.7-zip.org/)
 - Halo: Combat Evolved [ENGLISH] version 1.10
 - At least a 1080p resolution
 - A real PC, not a potato one: mainly because of [Chimera requirements](https://github.com/Dwood15/Chimera/blob/master/README.md#requirements) and [Chimera interpolation](https://github.com/Dwood15/Chimera/blob/master/README.md#interpolation)

## Warning about Third-party software

In the Halo 1 for PC community, there are 2 different games with a similar name:
 - Halo: Combat Evolved, as known as Halo PC, which is the retail version of Halo 1
 - Halo Custom Edition, as kwnon as Halo CE, which is an unsupported version of
 Halo PC, but unlock modding capabilities
In the small world of modding, a great majority of modders prefer to work on
 Halo CE, so 2K20 is an exception and hijacks the use of certain third-party
 software like [Chimera](https://github.com/Dwood15/Chimera) to achieve objectives.
 It doesn't mean that the mod will not work, it means that the mod uses software
 that doesn't not support Halo PC, and can cease to work if you upgrade to a
 newer version by yourself. It also means that some features don't work, and
 there is nothing to do to fix that, except by porting this mod to Halo CE.

# Getting Started

## 2K20 Directory Structure [NOT INSTALLED]

```
2K20-install-X.X.X
├── 2K20
│   └── UNINSTALL.cmd
├── controls
│   └── chimera.dll
├── maps
│   ├── a10.map
│   ├── a30.map
│   └── ...
├── root
│   ├── alsoft.ini
│   ├── chimerasave.txt
│   └── ...
└── INSTALL.cmd
```

## 2K20 Directory Structure [INSTALLED]

```
2K20
├── backup
│   └── MAPS
│       ├── a10.map
│       ├── a30.map
│       └── ...
└── UNINSTALL.cmd
```

## Download and Extract

2K20 can be obtained from [https://mega.nz/2K20/release/](https://mega.nz/#F!8IMVVSLA!JaDc4ovBcdp_4pfYfzBP6g).
  Download the latest version and extract it inside of the root folder of Halo.

 ![Download](/doc/repository-download-2K20.png)
 ![Extract](/doc/repository-extract-2K20.png)
 ![Halo directory](/doc/repository-halo-folder-with-2K20-install-folder.png)

## Install

### Automatic [Windows]
The easiest way to install 2K20 is to use the `Windows batch script` that is
 provided in the installation folder. Run `Halo/2K20-install-X.X.X/INSTALL.cmd`
 as administrator and follow the steps.

![2K20 install folder](/doc/repository-2K20-install-folder.png)
![2K20 installer script](/doc/repository-2K20-installer-script.png)

### Manual [Windows, Linux]

It is also possible to manually install 2K20. To do so, follow the instructions:
 - move the folder `Halo/2K20-install-X.X.X/2K20` in `Halo/`
 - backup your existing maps in `Halo/2K20/backup/MAPS/`
 - move the content of `Halo/2K20-install-X.X.X/root` in `Halo/`
 - move the content of `Halo/2K20-install-X.X.X/controls` in `Halo/CONTROLS/`
 - move the content of `Halo/2K20-install-X.X.X/maps` in `Halo/MAPS/`

## Configure

### Shortcut

Find of create a shortcut for Halo. Then open its Properties. On Target field,
 you should see something like `C:\Program Files\Halo\halo.exe`. There are some
 arguments very usefull you can add to this line. For example, to disable intro
 video, you can write `C:\Program Files\Halo\halo.exe -novideo`. For this mod, I
 strongly recommend something like this:
```
C:\Program Files\Halo\halo.exe -novideo -vidmode 1920,1080,60 -use21`
```
`-vidmode` lets you determine resolution. Here it's 1920 x 1080 px, with 60 i/s,
 also known at 1080p 60 FPS. `-use21` forces Halo to launch using the latest
 shader version supported: 2.1.You can also enable the IG console by adding
 `-console`.

### EAX ambient sound

Launch Halo, go to `Settings > Audio config` and enable **Hardware acceleration.**.
 Chose **high** for **Sound quality** and **Sound variety**. Then chose **EAX**
 for **Ambient sound**, like in the following picture.

![Halo sounds setting](/doc/repository-halo-sound-settings.png)


## Enjoy

**PLAY!**, and don't forget to come give us your feedback in [2K20 Discord](https://discord.gg/p9m7Gn7).
 You have the opportunity to make it better.

# Upgrade

## Automatic [Windows]

Install 2K20 like it's new, it will detect the current installation and
 remove it for you.

**WARNING**: it will also replace the backup already made. So if
 your backup contains untouched Halo maps, they will be replaced by the maps
 you currently use with the mod.

## Manually [Windows, Linux]

You probably know very well how to do the things, but if you're stuck, you'll  
 find help on the [2K20 Discord](https://discord.gg/p9m7Gn7).

# Downgrade

## Automatic [Windows]

You MUST run `Halo/2K20/UNINSTALL.cmd` as administrator in order to cleanly
 remove you current installation. Then, and ONLY then, download and install
 the version of 2K20 you want the normal way.

# Remove

Run `Halo/2K20/UNINSTALL.cmd` as administrator

# Community

All the source files of this project can be found here: [/src](/src). Feel free
 to download, copy and adapt them to the needs of your next mod :). In exchange,
 share your work with me! Let me know in the Discord server (link below) what
 you managed to achieve!

## Roadmap

| Version          | Features                                                                                                             | Release |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- | ------- |
| v0.1.0 ALPHA     | UPDATE behaviours in campaign (unfinished)<br>UPDATE textures (unfinished)<br>ADD Third-party software configuration | Q3 2019 |
| v0.2.0 ALPHA     | UPDATE main menu UI - Halo Reach like (finished)<br>UPDATE existing textures<br>ADD new textures                     | Q4 2019 |
| v1.0.0  BETA     | FIX all major issues<br>UPDATE campaign behaviours<br>UPDATE textures                                                | Q4 2019 |
| v1.0.X    RC     | PUBLIC RELEASE Official release                                                                                      | Q1 2020 |

## Known Bugs

- Behaviour/117: increasing walking speed causes side effects, such as "jumps on collision"
- Behaviour/Loaded plasma shot: increasing the velocity of the projectile makes it difficult to follow any target
- Texture/Needer: ammo counter on HUD is broken since magazine capacity has been increased to 22
- Texture/Jackal: texture of the upper jaw's teeth collide each other
- Texture/Sand: on some maps, the color is too damn pronounced (literally gold color on blood gulch)
- Texture/Main menu: given that Reach main menu is not finalized, it can be tricky to use it in some ways

## Credits

These people were invaluable to the development of Chimera:

 - **Microsoft and BUNGIE** - For Halo
 - **Azzak** - Documentation; testing
 - **Orbmancer** - Testing
 - **Kavawuvi** - [Chimera](https://github.com/Dwood15/Chimera) development; Chimera is vital for the mod
 - **Shelly** - This nice fox will help you fix problems
 - **SOl_7** - [His work](https://www.youtube.com/channel/UCqeSNPrKO74SMtNwvvtoOtQ) is a great source of inspiration for this mod
 - **Derj** - His work is also a great source of inspiration for this mod
 - **Halo CE Reclaimers Discord** - Great people, caring and willing to help. This state of mind motivated me to release my work

 I do not own any of the Halo: Combat Evolved files. It is the property
  of Microsoft and thereby protected under their End-User License Agreement (EULA)
  or License Terms. I do not own any of the third-party software either.

## Links

 - [2K20 Discord](https://discord.gg/p9m7Gn7)
 - [Chimera Discord](https://discord.gg/ZwQeBE2)
 - [Halo CE Reclaimers Discord](https://discord.gg/YUJdesD)
 - https://opencarnage.net/index.php?/topic/7383-the-halo-ce-ultimate-enhancement-guide-updated-05092019/
 - [DSOAL Builds](http://vaporeon.io/hosted/dsoal-builds/)
