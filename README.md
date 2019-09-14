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

* [**Installation**](#installation)
  * [**Prerequisite**](#prerequisite)
    * [**Requirements**](#requirements)
    * [**Backup**](#backup)
    * [**Warning about third-party software**](#warning-about-third-party-software)
  * [**Update game files**](#update-game-files)
* [**Configuration**](#configuration)
* [**Upgrade**](#upgrade)
* [**Remove**](#remove)
* [**Community**](#community)
  * [**Roadmap**](#roadmap)
  * [**Known bugs**](#known-bugs)
  * [**Credits**](#credits)
  * [**Links**](#links)

# Installation

## Prerequisite

### Requirements

#### Software

This mod supports Halo: Combat Evolved [ENGLISH] version 1.10 for Windows. It
 is tested ONLY on a 1080p screen and Windows 10.

#### Hardware

Please, don't try this mod with a Potato PC, or you will have surprises,
 especially because of some third-party software.

### Backup

In order to remove the mod later, create a backup of your **MAPS** folder. You
 can place this backup in the same place and call it **MAPS_backup"** for
 example. Here is an example of a the path to **MAPS**:
 **"/C:/Program Files/Microsoft Games/Halo/MAPS"**

This is it!

### Warning about Third-party software

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

## Updated game files

This step will setup almost everything. To do so, simply merge the content of
 **[/build/halo](/build/halo)** in the root folder of Halo PC. Here is an
 example of the destination path: **"/C:/Program Files/Microsoft Games/Halo/"**.
 When Windows asks you if you want to replace existing files, says **YES**.
 PLEASE D'ONT FORGET TO MAKE A [BACKUP](#backup) FIRST.

## Upgrade



## Remove

This step will setup technical enhancements such as environmental audio. To do
 so, simply copy/paste the content of **[/build/config](/build/maps)**


@todo

...

# Roadmap

| Version          | Features                                                                                                             | Release |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- | ------- |
| v0.1.0 ALPHA     | UPDATE behaviours in campaign (unfinished)<br>UPDATE textures (unfinished)<br>ADD Third-party software configuration | Q3 2019 |
| v0.2.0 ALPHA     | UPDATE main menu UI - Halo Reach like (finished)<br>UPDATE existing textures<br>ADD new textures                     | Q4 2019 |
| v1.0.0  BETA     | FIX all major issues<br>UPDATE campaign behaviours<br>UPDATE textures                                                | Q4 2019 |
| v1.0.X    RC     | PUBLIC RELEASE Official release                                                                                      | Q1 2020 |

# Know bugs

- Behaviour/117: increasing walking speed causes side effects, such as "jumps on collision"
- Behaviour/Loaded plasma shot: increasing the velocity of the projectile makes it difficult to follow any target
- Texture/Needer: ammo counter on HUD is broken since magazine capacity has been increased to 22
- Texture/Jackal: texture of the upper jaw's teeth collide each other
- Texture/Sand: on some maps, the color is too damn pronounced (literally gold color on blood gulch)
- Texture/Main menu: given that Reach main menu is not finalized, it can be tricky to use it in some ways

# I love MODDERS <3

All the source files of this project can be found here: [/src](/src). Feel free
 to download, copy and adapt them to the needs of your next mod :). In exchange,
 share your work with me! Let me know in the Discord server (link below) what
 you managed to achieve!

# Credits

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

# Links

 - [2K20 Discord](https://discord.gg/p9m7Gn7)
 - [Chimera Discord](https://discord.gg/ZwQeBE2)
 - [Halo CE Reclaimers Discord](https://discord.gg/YUJdesD)
 - http://hce.halomaps.org
 - https://opencarnage.net/index.php?/topic/7383-the-halo-ce-ultimate-enhancement-guide-updated-05092019/
