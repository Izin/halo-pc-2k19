:: Name:     UNINSTALL.cmd
:: Purpose:  Uninstall 2K20 the proper way
:: Author:   Izin
:: Revision: Sept. 2019 - initial version

@echo OFF
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: Window
title 2K20 - Uninstallation wizard
mode con:cols=70 lines=35

:: Constants
set PARENT_PATH=%~dp0
set CURR_VERSION=0.1.0
set CURR_RELEASE=ALPHA
set HALO_PC_EXE=halo.exe

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

:: User must have admin privileges
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
  echo.
  echo. ^| ERROR          This script must be run as administrator
  echo. ^| STOP           Installation ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: Welcome the user
echo.
echo. ^| INFO           Initializing... Please wait
timeout /t 2 /nobreak >nul

:: The mod seams to be located outside of Halo root directory...
if NOT EXIST "%PARENT_PATH%..\halo.exe" (
  echo.
  echo. ^| ERROR          The mod folder MUST be located under Halo
  echo. ^|                root directory
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: The mod is already uninstalled
if NOT EXIST "%PARENT_PATH%backup\MAPS" (
  echo.
  echo. ^| ERROR          The mod is already uninstalled
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: The backup is incomplete or absent
if NOT EXIST "%PARENT_PATH%backup\MAPS\a10.map" (
  echo.
  echo. ^| ERROR          Backup is incomplete or missing
  echo. ^| STOP           Uninstall process ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

:: Halo is running and will be closed
if NOT EXIST "%PARENT_PATH%..\halo.exe" (
  echo.
  echo. ^| ERROR          The installation folder of the mod MUST be
  echo. ^|                placed under Halo root directory
  echo. ^| STOP           Installation ABORTED
  echo.
  echo. ###############################################################
  goto :script_end
)

for /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %HALO_PC_EXE%"') do if %%x == %HALO_PC_EXE% goto halo_pc_is_running
goto halo_pc_is_not_running
:halo_pc_is_running
  echo.
  echo. ^| WARNING        Halo PC is running. It will be automatically
  echo. ^|                closed in 10 seconds in order to prevent
  echo. ^|                errors when manipulating Halo files
  timeout /t 10 /nobreak >nul
  Taskkill /IM %HALO_PC_EXE% /FI "STATUS eq RUNNING" /F >nul
  echo.
  echo. ^| INFO           Halo PC is now closed
:halo_pc_is_not_running

echo.
:uninstall_confirm

  set /P answer_uninstall="-> QUESTION       Uninstall the current mod [yes/no] ? "
  if /I "!answer_uninstall!"=="yes" goto :uninstall_yes
  if /I "!answer_uninstall!"=="no" goto :uninstall_no
  goto :uninstall_confirm

:uninstall_yes

  echo.
  echo. ^| INFO           Uninstallation process will begin shortly...
  timeout /t 5 /nobreak >nul
  echo.

  echo. ^| STEP 1         Restoring backup...
  if exist "%PARENT_PATH%..\MAPS" rmdir /s /q "%PARENT_PATH%..\MAPS" >nul
  if exist "%PARENT_PATH%backup\MAPS" move "%PARENT_PATH%backup\MAPS" "%PARENT_PATH%..\" >nul

  echo. ^| STEP 2         Removing DSOAL...
  if exist "%PARENT_PATH%..\alsoft.ini" del "%PARENT_PATH%..\alsoft.ini" >nul
  if exist "%PARENT_PATH%..\dsoal-aldrv.dll" del "%PARENT_PATH%..\dsoal-aldrv.dll" >nul
  if exist "%PARENT_PATH%..\dsound.dll" del "%PARENT_PATH%..\dsound.dll" >nul

  echo. ^| STEP 3         Removing InjectSMAA...
  if exist "%PARENT_PATH%..\d3d9.dll" del "%PARENT_PATH%..\d3d9.dll" >nul
  if exist "%PARENT_PATH%..\injector.ini" del "%PARENT_PATH%..\injector.ini" >nul
  if exist "%PARENT_PATH%..\SMAA.fx" del "%PARENT_PATH%..\SMAA.fx" >nul
  if exist "%PARENT_PATH%..\SMAA.h" del "%PARENT_PATH%..\SMAA.h" >nul

  echo. ^| STEP 4         Removing Chimera...
  if exist "%PARENT_PATH%..\CONTROLS\chimera.dll" del "%PARENT_PATH%..\CONTROLS\chimera.dll" >nul
  if exist "%PARENT_PATH%..\chimerasave.txt" del "%PARENT_PATH%..\chimerasave.txt" >nul

  echo.
  timeout /t 2 /nobreak >nul
  echo. ^| SUCCESS        2K20 has been successfully removed. You can
  echo. ^|                now close this windows
  echo.
  echo. ###############################################################
  goto script_end

:uninstall_no

  echo.
  echo. ^| STOP           Uninstallation CANCELED
  echo.
  echo. ###############################################################
  goto script_end

:script_end
  pause >nul
