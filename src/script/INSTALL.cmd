:: Name:     INSTALL.cmd
:: Purpose:  Install 2K20 the proper way
:: Author:   Izin
:: Revision: Sept. 2019 - initial version

@echo OFF
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: Window
title 2K20 - Installation wizard
mode con:cols=70 lines=35

:: Constants
set PARENT_PATH=%~dp0
set CURR_VERSION=0.1.0
set CURR_RELEASE=ALPHA
set HALO_PC_EXE=halo.exe

:: Variables
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
echo. # ----------------------------------------------------------- #
echo. #                      I N S T A L L E R                      #
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

:: Installation folder of the mod is not located under Halo root directory
if NOT EXIST "%PARENT_PATH%..\halo.exe" (
  echo.
  echo. ^| ERROR          The installation folder of the mod MUST be
  echo. ^|                placed under Halo root directory
  echo. ^| STOP           Installation ABORTED
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

:: The mod is already installed
if EXIST "%PARENT_PATH%..\2K20\backup\MAPS\a10.map" (

  REM but comes without the associated uninstaller
  if NOT EXIST "%PARENT_PATH%..\2K20\UNINSTALL.cmd" (
    echo.
    echo. ^| ERROR          The mod is ALREADY installed, but its
    echo. ^|                uninstaller is missing
    echo. ^| HINT           To manually remove the mod, replace
    echo. ^|                Halo/MAPS/ by Halo/2K20/backup/MAPS/, then
    echo. ^|                relaunch this script to restart the
    echo. ^|                installation process
    echo. ^| STOP           Installation ABORTED
    echo.
    echo. ###############################################################
    goto :script_end
  )

  echo.
  echo. ^| INFO           The mod is ALREADY installed. The uninstall
  echo. ^|                script will shortly be launched on a separate
  echo. ^|                window.
  echo -^> REQUEST        Focus on this new window and follow COMPLETELY
  echo. ^|                the uninstall process. When it's done, and IF
  echo. ^|                everything went well, go back here, on this
  echo. ^|                window, and resume installation
  timeout /t 10 /nobreak >nul
  start cmd /c "%PARENT_PATH%..\2K20\UNINSTALL.cmd"
)

echo.
:install_confirm

  set /P answer_install="-> QUESTION       Install the mod [yes/no] ? "
  if /I "!answer_install!"=="yes" goto :install_yes
  if /I "!answer_install!"=="no" goto :install_no
  goto :install_confirm

:install_yes

  echo.
  echo. ^| INFO           Installation process will begin shortly...
  timeout /t 5 /nobreak >nul
  echo.

  echo. ^| STEP 1         Creating the mod folder inside Halo root dir.
  if exist "%PARENT_PATH%..\2K20" rmdir /s /q "%PARENT_PATH%..\2K20" >nul
  if not exist "%PARENT_PATH%..\2K20" md "%PARENT_PATH%..\2K20" >nul
  move /Y "%PARENT_PATH%2K20\UNINSTALL.cmd" "%PARENT_PATH%..\2K20" >nul

  echo. ^| STEP 2         Creating a backup of your current Halo maps
  if not exist "%PARENT_PATH%..\2K20\backup\MAPS" (
    md "%PARENT_PATH%..\2K20\backup\MAPS" >nul
  )
  move /Y "%PARENT_PATH%..\MAPS\*" "%PARENT_PATH%..\2K20\backup\MAPS\" >nul

  echo. ^| STEP 3         Replacing these maps by those provided by 2K20
  move /Y "%PARENT_PATH%maps\*" "%PARENT_PATH%..\MAPS\" >nul

  echo. ^| STEP 4         Moving third-party software into Halo dirs.
  move "%PARENT_PATH%controls\*" "%PARENT_PATH%..\CONTROLS\" >nul
  move "%PARENT_PATH%root\*" "%PARENT_PATH%..\" >nul

  echo.
  timeout /t 2 /nobreak >nul
  echo. ^| SUCCESS        Job done. However, installation is still
  echo. ^|                INCOMPLETE
  echo -^> REQUEST        Please go back to the repository in Github.com
  echo. ^|                and follow the documentation to finalize
  echo. ^|                the installation. Thank you :)
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
