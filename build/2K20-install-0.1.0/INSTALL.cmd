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
set answer=maybe

:: Vérifier qu'on est bien dans le répertoire de Halo/2K20
:: Vérifier que 2K20 n'est pas déjà installé
:: Demander à l'utilisateur de vérifier qu'il s'agit bien du bon path Halo et qu'on va installer 2K20
  :: S'il dit non, on annule, il doit fermer lui-même le cmd
  :: s'il dit oui, on continue et on log chaque STEP:
    :: STEP 1. Create a backup (MAPS)
    :: STEP 2. Install upgraded maps
    :: STEP 3. Install third-party software
    :: STEP 4. Finish installation (comprend la copie de remove.cmd)
  :: L'utilisateur est prévenu que l'installation n'est pas terminée, et qu'il doit ferme le cmd

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
  pause >nul
)

:: The mod is already installed
if EXIST "..\2K20" (

  echo.
  echo. ^| INFO           The mod is already installed. It must be
  echo. ^|                removed first!
  echo.

  :uninstall_confirm
    set /P answer="-> QUESTION       Remove existing installation [yes/no] ? "
    if /I "!answer!"=="yes" goto :uninstall_yes
    if /I "!answer!"=="no" goto :uninstall_no
    goto :uninstall_confirm
  :uninstall_yes
    echo.
    echo. ^| INFO           The uninstall script will now be launched...
    echo. ^|                Follow it COMPLETELY! Then come back here
    echo. ^|                (WAITING 10 SECONDS...)
    timeout /t 10 /nobreak >nul
    start "New Window" cmd /c "..\2K20\UNINSTALL.cmd"
    timeout /t 4 /nobreak >nul
    goto :install_confirm
  :uninstall_no
    echo.
    echo. ^| INFO           You declined the uninstall process. Existing
    echo. ^|                installation of the mod will stay untouched
    echo. ^| STOP           Installation ABORTED
    echo.
    echo. ###############################################################
    goto :script_end

  :install_confirm
    echo.
    set /P answer="-> QUESTION       Ready to install the mod [yes/no] ? "
    if /I "!answer!"=="yes" goto :install_yes
    if /I "!answer!"=="no" goto :install_no
    goto :install_confirm
  :install_yes

    echo.
    echo. ^| INFO           Installation process will now start...
    echo. ^|                (WAITING 5 SECONDS...)
    timeout /t 5 /nobreak >nul

    echo.
    echo. ^| STEP 1         Creating the mod folder inside Halo root directory
    rd /s /q "..\2K20" >nul
    pause >nul
    move ".\Halo\2K20" "..\" >nul
    timeout /t 1 /nobreak >nul


    REM echo. ^| STEP 2         Creating a backup of existing maps
    REM move "..\Halo\MAPS" "..\2K20\backup\" >nul
    goto :script_end
  :install_no
    echo.
    echo. ^| STOP           Installation CANCELED
    echo.
    echo. ###############################################################
    goto :script_end

)

:script_end
  pause >nul
