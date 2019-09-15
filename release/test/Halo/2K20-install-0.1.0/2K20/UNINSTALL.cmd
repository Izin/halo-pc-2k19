:: Name:     UNINSTALL.cmd
:: Purpose:  Uninstall 2K20 the proper way
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
echo. #               U  N  I  N  S  T  A  L  L  E  R               #
echo. #                                                             #
echo. ###############################################################
echo.
echo. ^| INFO           Initializing... Please wait
timeout /t 2 /nobreak >nul

:: The mod seams to be located outside of Halo root directory...
if NOT EXIST "..\halo.exe" (
  echo.
  echo. ^| ERROR          The mod folder MUST be located under Halo
  echo. ^|                root directory
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: The mod is already uninstalled
if NOT EXIST ".\backup\MAPSp" (
  echo.
  echo. ^| ERROR          The mod is already uninstalled
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: The backup is incomplete or absent
if NOT EXIST ".\backup\MAPS\a10.map" (
  echo.
  echo. ^| ERROR          Backup is incomplete or missing
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

echo.
echo. ^| INFO           Uninstallation process will now start...
echo. ^|                (WAITING 5 SECONDS...)
timeout /t 5 /nobreak >nul
echo.

echo. ^| STEP 1         Replacing updated maps by those backed up
rd /s /q "..\MAPS" >nul
move ".\backup\MAPS" "..\" >nul

echo. ^| STEP 2         Removing DSOAL...
del "..\alsoft.ini" "..\dsoal-aldrv.dll" "..\dsound.dll" >nul

echo. ^| STEP 3         Removing InjectSMAA...
del "..\d3d9.dll" "..\injector.ini" "..\SMAA.fx" "..\SMAA.h" >nul

echo. ^| STEP 4         Removing Chimera...
del "..\CONTROLS\chimera.dll" "..\chimerasave.txt" >nul

echo.
timeout /t 2 /nobreak >nul
echo. ^| SUCCESS        2K20 has been successfully removed. You can
echo. ^| SUCCESS        now exit this windows
echo.
echo. ###############################################################

:script_end
  pause >nul
