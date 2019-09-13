![2K20 Banner](/repository/repository-banner.png)

# Introduction

2K20 is a general overhaul mod for Halo: Combat Evolved. It's main goal is to
 bring the game to the year 2020, by upgrading gameplay, visuals and screen ratio,
 while trying to maintain consistency with the original game. 2K20 is made for
 every PC gamer: PGM, beginner, modder, curious, streamer...

## What's inside?

![2K20 Content](/repository/repository-mode-content.png)

## Technical goal

2K20 is particular because the main technical goal is to ONLY update original
 textures/maps/behaviours. There is no new tag, no 4K HD textures... ONLY a
 massive redesign of many elements. This choice is motivated by two reasons:
  1. I am a passionate tunner, not a skilled modder
  2. Pushing the game as its maximum "as is" is a personal bet and a mark of respect for BUNGIE

## Retail vs 2k20

![Menu](https://giphy.com/gifs/h2ON5qDphWtyQqUBfp)

## Warning

Also, I implement [Chimera](https://github.com/Dwood15/Chimera), a third-party
 software that changes technical elements of Halo, but does not supports the
 retail version of Halo (Halo PC). No guarantees can be made on how stable Halo PC
 will be using this software.


# Table of Contents

* [**Requirements**](#requirements)
* [**Setup**](#setup)
  * [Backup](#backup)
  * [Prerequisite](#prerequisite)
    * [Chimera](#chimera)
      * [Install an old version of Chimera](#install-an-old-version-of-chimera)
      * [Configure Chimera](#configure-chimera)
    * [InjectSMAA](#injectsmaa)
  * [Installation](#installation)
    * [Maps](#maps)
      * [Visuals and behaviours](#visuals-and-behaviours)
    * [Anti-aliasing-with-injectsmaa](#anti-aliasing-with-injectsmaa)
    * [Update Launcher](#update-launcher)
  * [Partial Installation](#partial-installation)
    * [Build](#build)
      * [Behaviours](#behaviours)
      * [Textures](#textures)
* [**Roadmap**](#roadmap)
* [**Known bugs**](#known-bugs)
* [**Remove**](#remove)
* [**Credits**](#credits)
* [**Links**](#links)
* [**Microsoft Intellectual Property**](#microsoft-intellectual-property)

# Requirements

This mod supports Halo: Combat Evolved [ENGLISH] version 1.10 and is tested ONLY
on a 1080p definition (1920 x 1080 pixels).

# Setup

Ready to setup the mod? Let's go!

# Backup

...

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
