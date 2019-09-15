:: Name:     INSTALL.cmd
:: Purpose:  Install 2K20 the proper way
:: Author:   Izin
:: Revision: Sept. 2019 - initial version

@echo OFF
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: Constants
set PARENT_PATH=%~dp0
set CURR_VERSION=0.1.0
set CURR_RELEASE=ALPHA

:: Variables
set answer_uninstall=maybe
set answer_install=maybe

:: Header
echo.
echo. ###############################################################
echo. #    _______      ___  __         _______      ________       #
echo. #   /  ___  \    ^|\  \^|\  \      /  ___  \    ^|\   __  \      #
echo. #  /__/^|_/  /^|   \ \  \/  /^|_   /__/^|_/  /^|   \ \  \^|\  \     #
echo. #  ^|__^|//  / /    \ \   ___  \  ^|__^|//  / /    \ \  \\\  \    #
echo. #      /  /_/__    \ \  \\ \  \     /  /_/__    \ \  \\\  \   #
echo. #     ^|\________\   \ \__\\ \__\   ^|\________\   \ \_______\  #
echo. #      \^|_______^|    \^|__^| \^|__^|    \^|_______^|    \^|_______^|  #
echo. #                                                             #
echo. #                        v%CURR_VERSION% %CURR_RELEASE%                         #
echo. #               -------------------------------               #
echo. #                  I  N  S  T  A  L  L  E  R                  #
echo. #                                                             #
echo. ###############################################################
echo.
echo. ^| INFO           Initializing... Please wait
timeout /t 2 /nobreak >nul

:: Installation folder of the mod is not located under Halo root directory
if NOT EXIST "..\halo.exe" (
  echo.
  echo. ^| ERROR          The installation folder of the mod MUST be
  echo. ^|                placed under Halo root directory
  echo. ^| STOP           Installation ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: The mod is already installed
if EXIST "..\2K20\backup\MAPS\a10.map" (
  echo.
  echo. ^| INFO           The mod is already installed
  echo.

  REM but there is no uninstaller
  if NOT EXIST "..\2K20\UNINSTALL.cmd" (
    echo.
    echo. ^| ERROR          The uninstaller for the installed version
    echo. ^|                of this mod was not found
    echo. ^| STOP           Installation ABORTED
    echo.
    echo. ###############################################################
    goto :script_end
  )

  echo.
  echo. ^| INFO           The uninstaller for the installed version has
  echo. ^|                been found and will be launched in 5 seconds...
  echo. ^|                Follow the uninstall process COMPLETELY, then
  echo. ^|                come back to resume the installation process
  echo. ^|                (WAITING 5 SECONDS...)
  echo.
  timeout /t 5 /nobreak >nul
  start "2K20 - Uninstall wizard" cmd /c "..\2K20\UNINSTALL.cmd"

  :install_confirm

    set /P answer_install="-> QUESTION       Ready to install the mod [yes/no] ? "
    if /I "!answer_install!"=="yes" goto :install_yes
    if /I "!answer_install!"=="no" goto :install_no
    goto :install_confirm

  :install_yes

    echo.
    echo. ^| INFO           Installation process will now start...
    echo. ^|                (WAITING 5 SECONDS...)
    timeout /t 5 /nobreak >nul
    echo.

    echo. ^| STEP 1         Creating the mod folder inside Halo root dir.
    rd /s /q "..\2K20" >nul
    move ".\2K20" "..\" >nul

    echo. ^| STEP 2         Creating a backup of your existing Halo maps
    move "..\MAPS" "..\2K20\backup\" >nul

    echo. ^| STEP 3         Moving updated maps into Halo root directory
    move ".\MAPS" "..\" >nul

    echo. ^| STEP 4         Moving third-party software into Halo dirs.
    move ".\CONTROLS\*" "..\CONTROLS" >nul
    move ".\ROOT\*" "..\" >nul

    echo.
    timeout /t 2 /nobreak >nul
    echo. ^| SUCCESS        Process is complete. However, installation
    echo. ^|                is still INCOMPLETE. Please go back to the
    echo. ^|                Github repository documentation to finalize
    echo. ^|                the installation process. Thank you :)
    echo.
    echo. ###############################################################
    goto :script_end

  :install_no

    echo.
    echo. ^| STOP           Installation CANCELED
    echo.
    echo. ###############################################################
    goto :script_end

:script_end
  pause >nul
  EXIT /B 0
