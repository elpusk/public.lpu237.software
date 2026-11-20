@echo off
chcp 65001 > nul
setlocal

:: need admin right 
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo restart to admin...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo lpu23x 32Bits Software package Remover V1.4.69.75
echo (major.minor.support PKG start versio.support PKG end versio)

:: 32bits program file path
if defined ProgramFiles(x86) (
    set "PROGRAM_DIR=%ProgramFiles(x86)%"
) else (
    set "PROGRAM_DIR=%ProgramFiles%"
)

echo Stop service.
"%PROGRAM_DIR%\Easyset\lpu230\ng_DevMg\service\ng_SSS.exe" -k

echo uninstall service.
"%PROGRAM_DIR%\Easyset\lpu230\ng_DevMg\service\ng_SSS.exe" -u

echo uninstall msr service object.
regsvr32.exe /s /u "%PROGRAM_DIR%\Easyset\lpu230\bin\OposLpu230.dll"

echo uninstall keylock service object.
regsvr32.exe /s /u "%PROGRAM_DIR%\Easyset\lpu230\bin\OposLpu230Lock.dll"

echo run clean OPOS ETC(util_set_path.exe -rsow).
"%PROGRAM_DIR%\Easyset\lpu230\javapos\lpu237lib\x86\util_set_path.exe" -rsow

echo Delete Program Folder.
if exist "%PROGRAM_DIR%\Easyset\lpu230" (
    echo "%PROGRAM_DIR%\Easyset\lpu230" deleting folder...
    rd /s /q "%PROGRAM_DIR%\Easyset\lpu230"
    
    if exist "%PROGRAM_DIR%\Easyset\lpu230" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%PROGRAM_DIR%\Easyset\lpu230"

        if exist "%PROGRAM_DIR%\Easyset\" (
            rd "%PROGRAM_DIR%\Easyset" 2>nul
            if not exist "%PROGRAM_DIR%\Easyset" (
                echo [SUCCESS] delete OK : "%PROGRAM_DIR%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders.
            )
        )
    )
) else (
    echo [info] Not found lpu230 folder.
)

echo Delete ini Folder.
for /f "tokens=2*" %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Personal 2^>nul') do set "PERSONAL_DIR=%%b"
call set "INI_DIR=%PERSONAL_DIR%"

if exist "%INI_DIR%\Easyset\lpu230" (
    echo "%INI_DIR%\Easyset\lpu230" deleting folder...
    rd /s /q "%INI_DIR%\Easyset\lpu230"
    
    if exist "%INI_DIR%\Easyset\lpu230" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%INI_DIR%\Easyset\lpu230"

        if exist "%INI_DIR%\Easyset\" (
            rd "%INI_DIR%\Easyset"
            if not exist "%INI_DIR%\Easyset" (
                echo [SUCCESS] delete OK : "%INI_DIR%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders : "%INI_DIR%\Easyset"
            )
        )
    )
) else (
    echo [info] Not found ini folder.
)

echo Delete xml Folder.
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common AppData" 2^>nul') do set "COMMON_APPDATA=%%b"
call set "XML_DIR=%COMMON_APPDATA%"

if exist "%XML_DIR%\Easyset\00000000" (
    echo "%XML_DIR%\Easyset\00000000" deleting folder...
    rd /s /q "%XML_DIR%\Easyset\00000000"
    
    if exist "%XML_DIR%\Easyset\00000000" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%XML_DIR%\Easyset\00000000"

        if exist "%XML_DIR%\Easyset\" (
            rd "%XML_DIR%\Easyset" 2>nul
            if not exist "%XML_DIR%\Easyset" (
                echo [SUCCESS] delete OK : "%XML_DIR%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders.
            )
        )
    )
) else (
    echo [info] Not found xml folder.
)

echo Delete menu Folder.
for /f "tokens=3*" %%a in ('reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Programs" 2^>nul') do set "PROGRAMS_DIR=%%b"
call set "MENU_DIR=%PROGRAMS_DIR%"
cd "%MENU_DIR%"

if exist "%MENU_DIR%\Easyset\lpu230" (
    echo "%MENU_DIR%\Easyset\lpu230" deleting folder...
    rd /s /q "%MENU_DIR%\Easyset\lpu230"
    
    if exist "%MENU_DIR%\Easyset\lpu230" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%MENU_DIR%\Easyset\lpu230"

        if exist "%MENU_DIR%\Easyset\" (
            rd "%MENU_DIR%\Easyset" 2>nul
            if not exist "%MENU_DIR%\Easyset" (
                echo [SUCCESS] delete OK : "%MENU_DIR%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders.
            )
        )
    )
) else (
    echo [info] Not found menu folder.
)

::
set "GUID69={6E6146BA-E137-44DC-BE02-AF856C0C5D2D}"
set "GUID69INV=AB6416E6731ECD44EB20FA58C6C0D5D2"

echo try uninstall program v1.8.69 info from registry.
msiexec /x "%GUID69%" /qn /norestart

::  /f >nul 2>&1
echo manual uninstall program v1.8.69 info from registry.
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID69%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID69%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID69INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID69INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID69INV%" /f

::
set "GUID70={545CD709-C841-4C9B-B8F3-AB907E04E330}"
set "GUID70INV=907DC545148CB9C48B3FBA09E7403E03"

echo try uninstall program v1.8.70 info from registry.
msiexec /x "%GUID70%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID70%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID70%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID70INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID70INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID70INV%" /f

::
set "GUID71={861B56CC-8419-40EA-9D15-9AA6B9157216}"
set "GUID71INV=CC65B1689148AE04D951A96A9B512761"

echo try uninstall program v1.8.71 info from registry.
msiexec /x "%GUID71%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID71%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID71%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID71INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID71INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID71INV%" /f

::
set "GUID72={8AB3EE9C-6D74-4852-9C1F-1747455E3229}"
set "GUID72INV=C9EE3BA847D62584C9F1717454E52392"

echo try uninstall program v1.8.72 info from registry.
msiexec /x "%GUID72%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID72%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID72%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID72INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID72INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID72INV%" /f

::
set "GUID73={DE77A9C8-83BB-4ABC-8521-9D77245A5A24}"
set "GUID73INV=8C9A77EDBB38CBA45812D97742A5A542"

echo try uninstall program v1.8.73 info from registry.
msiexec /x "%GUID73%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID73%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID73%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID73INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID73INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID73INV%" /f

::
set "GUID74={0989C2BC-38DC-4FC4-A519-7090605B1755}"
set "GUID74INV=CB2C9890CD834CF45A91070906B57155"

echo try uninstall program v1.8.74 info from registry.
msiexec /x "%GUID74%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID74%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID74%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID74INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID74INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID74INV%" /f

::
set "GUID75={0A324057-AAB4-4F5C-9468-55AB417E1D90}"
set "GUID75INV=750423A04BAAC5F4498655BA14E7D109"

echo try uninstall program v1.8.75 info from registry.
msiexec /x "%GUID75%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID75%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID75%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID75INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID75INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID75INV%" /f


set "BASE=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components"
set "KEYWORD=lpu230"
set "BACKUP=%~dp0components_backup.reg"

echo Backup: Please Waits. "%BACKUP%"
reg export "%BASE%" "%BACKUP%" /y >nul
if errorlevel 1 (
    echo [ERROR] backup failed. abort.
    pause
    exit /b 1
)

set /a COUNT=0

call :CLEAN "Easyset\00000000\lpu230"
call :CLEAN "Easyset\lpu230"

echo.
echo Deleted %COUNT% key(s).
pause
exit /b 0


:CLEAN
echo.
echo Searching: %~1
:: /s: recursive, /f: search text, /d: search in value DATA only
:: Each matching subkey is printed once as a "HKEY_..." header line
for /f "delims=" %%K in ('reg query "%BASE%" /s /f "%~1" /d 2^>nul ^| findstr /b /i "HKEY_"') do (
    echo Deleting: %%K
    reg delete "%%K" /f
    if errorlevel 1 (
        echo [ERROR] delete failed: %%K
    ) else (
        set /a COUNT+=1
    )
)
exit /b 0