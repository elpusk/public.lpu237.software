@echo off
chcp 65001 > nul
setlocal EnableExtensions EnableDelayedExpansion

:: need admin right 
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo restart to admin...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: full x86 & x64 - 1.8.55 ~ 1.8.75
:: msr only - 1.8.64 ~ 1.8.75
:: mapper only x86 & x64 - 1.44.0 ~ 1.50.1
echo lpu23x Software package Remover V3.1

set "ARCH=%PROCESSOR_ARCHITECTURE%"
echo initial ARCH: %ARCH%

if defined PROCESSOR_ARCHITEW6432 (
    set "ARCH=%PROCESSOR_ARCHITEW6432%"
)

echo adjusted OS ARCH: %ARCH%

set "PROGRAM_DIR=%ProgramFiles%"
set "PROGRAM_DIR86="

if /i "%ARCH%"=="AMD64" goto :LARCH_X64
if /i "%ARCH%"=="ARM64" goto :LARCH_ARM64
if /i "%ARCH%"=="x86"   goto :LARCH_X86
echo unknown architect : %ARCH%
exit /b 0

:LARCH_ARM64
echo this arm64 architect. Not support!
exit /b 0

:LARCH_X64
echo x64 architect
set "PROGRAM_DIR86=%ProgramFiles(x86)%"
goto :LARCH_DONE

:LARCH_X86
echo x86 architect

:LARCH_DONE

if "!PROGRAM_DIR86!" == "" goto :LPROGRAM_FILE

call :SUB_REMOVE_SERVICE "!PROGRAM_DIR86!"

call :SUB_UNREGISTER_SO "!PROGRAM_DIR86!" "OposLpu230.dll"
call :SUB_UNREGISTER_SO "!PROGRAM_DIR86!" "OposLpu230Lock.dll"

echo run clean OPOS ETC for x86 of x64(util_set_path.exe -rsow).
"!PROGRAM_DIR86!\Easyset\lpu230\javapos\lpu237lib\x86\util_set_path.exe" -rsow

call :SUB_REMOVE_PRODUCT_FILE_FOLDER "!PROGRAM_DIR86!" "lpu230"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "!PROGRAM_DIR86!" "lpu230_mapper_only"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
LPROGRAM_FILE:
call :SUB_REMOVE_SERVICE "%PROGRAM_DIR%"

call :SUB_UNREGISTER_SO "%PROGRAM_DIR%" "OposLpu230.dll"
call :SUB_UNREGISTER_SO "%PROGRAM_DIR%" "OposLpu230Lock.dll"

echo run clean OPOS ETC for x64(util_set_path.exe -rsow).
"%PROGRAM_DIR%\Easyset\lpu230\javapos\lpu237lib\x64\util_set_path.exe" -rsow

echo run clean OPOS ETC for x86(util_set_path.exe -rsow).
"%PROGRAM_DIR%\Easyset\lpu230\javapos\lpu237lib\x86\util_set_path.exe" -rsow

call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%PROGRAM_DIR%" "lpu230"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%PROGRAM_DIR%" "lpu230_mapper_only"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Delete ini Folder.
for /f "tokens=2*" %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Personal 2^>nul') do set "PERSONAL_DIR=%%b"
call set "INI_DIR=%PERSONAL_DIR%"

call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%INI_DIR%" "lpu230"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%INI_DIR%" "lpu230_mapper_only"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Delete xml Folder.
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common AppData" 2^>nul') do set "COMMON_APPDATA=%%b"
call set "XML_DIR=%COMMON_APPDATA%"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%XML_DIR%" "00000000"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Delete menu Folder.
for /f "tokens=3*" %%a in ('reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Programs" 2^>nul') do set "PROGRAMS_DIR=%%b"
call set "MENU_DIR=%PROGRAMS_DIR%"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%MENU_DIR%" "lpu230"
call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%MENU_DIR%" "lpu230_mapper_only"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: full x64 - 1.8.55
call :SUB_REMOVE_PRODUCTCODE_KEY "full x64 - v1.8.55" "{C4E023BF-5A43-467B-827E-0803E6B71446}"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: full x86 - 1.8.55 ~ 1.8.75
:: full x64 - 1.8.56 ~ 1.8.75
:: msr only - 1.8.67 ~ 1.8.75
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.55" "{CB5D5E8D-EECE-4E72-AA37-2A077A718846}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.56" "{7EDF1D6F-DB5E-43CC-8348-42692984CC8E}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.57" "{1121C1E3-B177-41de-84CB-9EBDBF34B86E}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.58" "{FC77D8BE-A6C1-43E7-AF73-7B3AD0CFAB43}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.59" "{87A29317-5171-4e34-BA8B-AC3AA9B4A3F8}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.60" "{16492685-D690-4a68-AA76-E9AFA04B45CD}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.61" "{7FA61B2A-C59D-48D4-86B3-621C15D50CE3}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.62" "{0E320CA0-83F1-4BA6-A1AC-A73F43ACB09F}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.63" "{C19ECDE2-1772-4F2F-B373-7F1F0C6A9139}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.64" "{4DE8F563-AF2F-4C2A-A256-819BE34B531A}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.65" "{0F1543AE-7C32-41C7-82D8-B4818232DBAE}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.66" "{972E47E2-95FA-4EDF-84A6-9160425CF0E2}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.67" "{796A211F-FA55-4865-B7CC-1413D8F4AB40}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.68" "{54368A84-CBCD-4250-9290-548AFE5E6620}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.69" "{6E6146BA-E137-44DC-BE02-AF856C0C5D2D}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.70" "{545CD709-C841-4C9B-B8F3-AB907E04E330}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.71" "{861B56CC-8419-40EA-9D15-9AA6B9157216}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.72" "{8AB3EE9C-6D74-4852-9C1F-1747455E3229}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.73" "{DE77A9C8-83BB-4ABC-8521-9D77245A5A24}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.74" "{0989C2BC-38DC-4FC4-A519-7090605B1755}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.75" "{0A324057-AAB4-4F5C-9468-55AB417E1D90}"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: msr only - 1.8.64 ~ 1.8.66
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.64" "{33199A8F-7591-464F-9D05-D53E2735DC5D}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.65" "{D6F9A6C7-7CA1-4479-BEC7-2B1EBEDCCCB0}"
call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.66" "{68284F5F-D5C6-4462-89DC-73F2BEBAF3BA}"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: mapper only x86 & x64 - 1.44.0 ~ 1.50.1
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.44.0" "{C6FAC6D9-A089-472D-A72A-F12B2FC4D2E1}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.45.0" "{DBEE7262-4E98-4339-B49A-01013A2BAC93}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.45.1" "{7CABE46C-22FA-4F5F-AE3B-A706A2B16DB2}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.45.2" "{A4C0D0E0-B4C3-4C97-AAC2-6E8DA6BCADDF}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.46.0" "{3D3EA09A-CE5F-4F24-9D5E-F0D488B68B8F}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.47.0" "{DF51C917-131A-42BD-A0C4-49C5A5965250}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.47.1" "{0B06367A-94DD-479C-B54F-18E75AE42483}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.48.0" "{1C2EAA1D-2051-47EE-99A4-FB0DDDF68715}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.49.0" "{98C6A659-8903-4A51-8066-D4D64FCDA43D}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.50.0" "{C7B2116A-AC16-4C43-B95F-AABA3DE8A08C}"
call :SUB_REMOVE_PRODUCTCODE_KEY "mapper only v1.50.1" "{6EFAE5D9-9AC9-47A6-B8BE-29730569243D}"


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set "COMPONENT_ROOT_KEY=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components"
set "REG_BACKUP_FILE=%~dp0components_backup.reg"

echo Backup: Please Waits. "%REG_BACKUP_FILE%"
reg export "%COMPONENT_ROOT_KEY%" "%REG_BACKUP_FILE%" /y >nul
if errorlevel 1 (
    echo [ERROR] backup failed. abort.
    pause
    exit /b 1
)

set /a COUNT=0

call :SUB_REMOVE_SUBKEY_WITH_KEYWORD "Easyset\00000000\lpu230" "%COMPONENT_ROOT_KEY%"
call :SUB_REMOVE_SUBKEY_WITH_KEYWORD "Easyset\lpu230" "%COMPONENT_ROOT_KEY%"

echo.
echo Deleted %COUNT% key(s).
pause
exit /b 0

:: ============================================================================
:: the end of bat
:: ============================================================================

:: ============================================================================
:: sub routines
:: ============================================================================

:: ============================================================================
:: Remove the subkey of the second parameter whose data contains the string of the first parameter.
:: parameter 1'st - keyword string
:: parameter 2'nd - base key
:SUB_REMOVE_SUBKEY_WITH_KEYWORD
echo base key: %~2
echo Searching: %~1
:: /s: recursive, /f: search text, /d: search in value DATA only
:: Each matching subkey is printed once as a "HKEY_..." header line
for /f "delims=" %%K in ('reg query "%~2" /s /f "%~1" /d 2^>nul ^| findstr /b /i "HKEY_"') do (
    echo Deleting: %%K
    reg delete "%%K" /f
    if errorlevel 1 (
        echo [ERROR] delete failed: %%K
    ) else (
        set /a COUNT+=1
    )
)
exit /b 0


:: ============================================================================
:: remove product code & compressed product code key
:: parameter 1'st - product version string 
:: parameter 2'nd - product code string 
:: using ex) call :SUB_REMOVE_PRODUCTCODE_KEY "v1.8.69" "{6E6146BA-E137-44DC-BE02-AF856C0C5D2D}"
:SUB_REMOVE_PRODUCTCODE_KEY
set "INST_VER=%~1"
set "INST_GUID=%~2"

:: get MSI Compressed GUID(INST_COMPRESS_GUID) product code GUID
set "G=%INST_GUID:{=%"
set "G=%G:}=%"
set "P1=%G:~0,8%"
set "P2=%G:~9,4%"
set "P3=%G:~14,4%"
set "P4=%G:~19,2%"
set "P5=%G:~21,2%"
set "P6=%G:~24,2%"
set "P7=%G:~26,2%"
set "P8=%G:~28,2%"
set "P9=%G:~30,2%"
set "P10=%G:~32,2%"
set "P11=%G:~34,2%"

set "INST_COMPRESS_GUID=%P1:~7,1%%P1:~6,1%%P1:~5,1%%P1:~4,1%%P1:~3,1%%P1:~2,1%%P1:~1,1%%P1:~0,1%"
set "INST_COMPRESS_GUID=%INST_COMPRESS_GUID%%P2:~3,1%%P2:~2,1%%P2:~1,1%%P2:~0,1%"
set "INST_COMPRESS_GUID=%INST_COMPRESS_GUID%%P3:~3,1%%P3:~2,1%%P3:~1,1%%P3:~0,1%"
set "INST_COMPRESS_GUID=%INST_COMPRESS_GUID%%P4:~1,1%%P4:~0,1%%P5:~1,1%%P5:~0,1%"
set "INST_COMPRESS_GUID=%INST_COMPRESS_GUID%%P6:~1,1%%P6:~0,1%%P7:~1,1%%P7:~0,1%%P8:~1,1%%P8:~0,1%%P9:~1,1%%P9:~0,1%%P10:~1,1%%P10:~0,1%%P11:~1,1%%P11:~0,1%"

echo [Trying MSI uninstall] %INST_VER%
msiexec /x "%INST_GUID%" /qn /norestart

echo [Cleaning registry] ORG : %INST_GUID%
echo [Cleaning registry] INST_COMPRESS_GUID : %INST_COMPRESS_GUID%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%INST_GUID%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%INST_GUID%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%INST_COMPRESS_GUID%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%INST_COMPRESS_GUID%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%INST_COMPRESS_GUID%" /f

exit /b 0

:: ============================================================================
:: remove product file folder
:: parameter 1'st - OS program file folder. "%PROGRAM_DIR%" or "%PROGRAM_DIR86%"
:: parameter 2'nd - product name string. "lpu230_mapper_only" or "lpu230"
:: using ex) call :SUB_REMOVE_PRODUCT_FILE_FOLDER "%PROGRAM_DIR%" "lpu230"
:SUB_REMOVE_PRODUCT_FILE_FOLDER
set "PF_FOLDER=%~1"
set "PRODUCT_NAME=%~2"

set "PRODUCT_FOLDER=%PF_FOLDER%\Easyset\%PRODUCT_NAME%"

echo delete folder : "%PRODUCT_FOLDER%"

if exist "!PRODUCT_FOLDER!" (
    echo "!PRODUCT_FOLDER!" deleting folder...
    rd /s /q "!PRODUCT_FOLDER!"
    
    if exist "!PRODUCT_FOLDER!" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "!PRODUCT_FOLDER!"

        if exist "!PF_FOLDER!\Easyset\" (
            rd "!PF_FOLDER!\Easyset" 2>nul
            if not exist "!PF_FOLDER!\Easyset" (
                echo [SUCCESS] delete OK : "!PF_FOLDER!\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders : "!PF_FOLDER!\Easyset"
            )
        )
    )
) else (
    echo [info] Not found "!PRODUCT_FOLDER!".
)

exit /b 0

:: ============================================================================
:: remove service
:: parameter 1'st - OS program file folder. "%PROGRAM_DIR%" or "%PROGRAM_DIR86%"
:: using ex) call :SUB_REMOVE_SERVICE "%PROGRAM_DIR%"
:SUB_REMOVE_SERVICE
set "PF_FOLDER=%~1"

set "SERVICE_FILE=%PF_FOLDER%\Easyset\lpu230\ng_DevMg\service\ng_SSS.exe"

echo stop serivce : "%SERVICE_FILE%"
"%SERVICE_FILE%" -k

echo uninstall service : "%SERVICE_FILE%"
"%SERVICE_FILE%" -u

exit /b 0

:: ============================================================================
:: unregister OPOS service object
:: parameter 1'st - OS program file folder. "%PROGRAM_DIR%" or "%PROGRAM_DIR86%"
:: parameter 2'nd - OPOS service object file name "OposLpu230.dll" or "OposLpu230Lock.dll"
:: using ex) call :SUB_UNREGISTER_SO "%PROGRAM_DIR%" "OposLpu230.dll"
:SUB_UNREGISTER_SO
set "PF_FOLDER=%~1"
set "SO_FNAME=%~2"

set "SO_PATH=%PF_FOLDER%\Easyset\lpu230\bin\%SO_FNAME%"

echo unregister service object : "%SO_PATH%"
regsvr32.exe /s /u "%SO_PATH%"

exit /b 0