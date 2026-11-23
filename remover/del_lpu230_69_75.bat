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

:: mapper only version 1.46.0 ~ 1.50.01
:: else (full and msr only) 1.8.64 ~ 1.8.75
echo lpu23x Software package Remover V2.0.69.75
echo (major.minor.support PKG start version.support PKG end version)

set "PROGRAM_DIR=%ProgramFiles%"
set "PROGRAM_DIR86=%ProgramFiles(x86)%"

echo === TRY REMOVE program x86 of x64 Folders.
echo Stop service.
"%PROGRAM_DIR86%\Easyset\lpu230\ng_DevMg\service\ng_SSS.exe" -k

echo uninstall service.
"%PROGRAM_DIR86%\Easyset\lpu230\ng_DevMg\service\ng_SSS.exe" -u

echo uninstall msr service object.
regsvr32.exe /s /u "%PROGRAM_DIR86%\Easyset\lpu230\bin\OposLpu230.dll"

echo uninstall keylock service object.
regsvr32.exe /s /u "%PROGRAM_DIR86%\Easyset\lpu230\bin\OposLpu230Lock.dll"

echo run clean OPOS ETC(util_set_path.exe -rsow).
"%PROGRAM_DIR86%\Easyset\lpu230\javapos\lpu237lib\x86\util_set_path.exe" -rsow

echo Delete Program Folder.
if exist "%PROGRAM_DIR86%\Easyset\lpu230" (
    echo "%PROGRAM_DIR86%\Easyset\lpu230" deleting folder...
    rd /s /q "%PROGRAM_DIR86%\Easyset\lpu230"
    
    if exist "%PROGRAM_DIR86%\Easyset\lpu230" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%PROGRAM_DIR86%\Easyset\lpu230"

        if exist "%PROGRAM_DIR86%\Easyset\" (
            rd "%PROGRAM_DIR86%\Easyset" 2>nul
            if not exist "%PROGRAM_DIR86%\Easyset" (
                echo [SUCCESS] delete OK : "%PROGRAM_DIR86%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders.
            )
        )
    )
) else (
    echo [info] Not found lpu230 folder.
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if exist "%PROGRAM_DIR86%\Easyset\lpu230_mapper_only" (
    echo "%PROGRAM_DIR86%\Easyset\lpu230_mapper_only" deleting folder...
    rd /s /q "%PROGRAM_DIR86%\Easyset\lpu230_mapper_only"
    
    if exist "%PROGRAM_DIR86%\Easyset\lpu230_mapper_only" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%PROGRAM_DIR86%\Easyset\lpu230_mapper_only"

        if exist "%PROGRAM_DIR86%\Easyset\" (
            rd "%PROGRAM_DIR86%\Easyset" 2>nul
            if not exist "%PROGRAM_DIR86%\Easyset" (
                echo [SUCCESS] delete OK : "%PROGRAM_DIR86%\Easyset"
            ) else (
                echo [INFO] deleting folder. NOT empty folders.
            )
        )
    )
) else (
    echo [info] Not found lpu230 folder.
)

echo === TRY REMOVE program Folders.
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if exist "%PROGRAM_DIR%\Easyset\lpu230_mapper_only" (
    echo "%PROGRAM_DIR%\Easyset\lpu230_mapper_only" deleting folder...
    rd /s /q "%PROGRAM_DIR%\Easyset\lpu230_mapper_only"
    
    if exist "%PROGRAM_DIR%\Easyset\lpu230_mapper_only" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%PROGRAM_DIR%\Easyset\lpu230_mapper_only"

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
    echo [info] Not found lpu230_mapper_only folder.
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if exist "%INI_DIR%\Easyset\lpu230_mapper_only" (
    echo "%INI_DIR%\Easyset\lpu230_mapper_only" deleting folder...
    rd /s /q "%INI_DIR%\Easyset\lpu230_mapper_only"
    
    if exist "%INI_DIR%\Easyset\lpu230_mapper_only" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%INI_DIR%\Easyset\lpu230_mapper_only"

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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if exist "%MENU_DIR%\Easyset\lpu230_mapper_only" (
    echo "%MENU_DIR%\Easyset\lpu230_mapper_only" deleting folder...
    rd /s /q "%MENU_DIR%\Easyset\lpu230_mapper_only"
    
    if exist "%MENU_DIR%\Easyset\lpu230_mapper_only" (
        echo [ERROR] deleting folder. Check a running program.
    ) else (
        echo [SUCCESS] delete OK : "%MENU_DIR%\Easyset\lpu230_mapper_only"

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

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: full x86 & x64 & msr only - 1.8.69
set "GUIDX86_X64_69={6E6146BA-E137-44DC-BE02-AF856C0C5D2D}"
set "GUIDX86_X64_69INV=AB6416E6731ECD44EB20FA58C6C0D5D2"

:: x86 - 1.8.70
set "GUIDX86_X64_70={545CD709-C841-4C9B-B8F3-AB907E04E330}"
set "GUIDX86_X64_70INV=907DC545148CB9C48B3FBA09E7403E03"

:: x86 - 1.8.71
set "GUIDX86_X64_71={861B56CC-8419-40EA-9D15-9AA6B9157216}"
set "GUIDX86_X64_71INV=CC65B1689148AE04D951A96A9B512761"

:: x86 - 1.8.72
set "GUIDX86_X64_72={8AB3EE9C-6D74-4852-9C1F-1747455E3229}"
set "GUIDX86_X64_72INV=C9EE3BA847D62584C9F1717454E52392"

:: x86 - 1.8.73
set "GUIDX86_X64_73={DE77A9C8-83BB-4ABC-8521-9D77245A5A24}"
set "GUIDX86_X64_73INV=8C9A77EDBB38CBA45812D97742A5A542"

:: x86 - 1.8.74
set "GUIDX86_X64_74={0989C2BC-38DC-4FC4-A519-7090605B1755}"
set "GUIDX86_X64_74INV=CB2C9890CD834CF45A91070906B57155"

:: x86 - 1.8.75
set "GUIDX86_X64_75={0A324057-AAB4-4F5C-9468-55AB417E1D90}"
set "GUIDX86_X64_75INV=750423A04BAAC5F4498655BA14E7D109"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: mapper only x86 & x64 - 1.8.69

:: mapper only - 1.46.0
set "GUID_ONLY_MAPPER_4600={3D3EA09A-CE5F-4F24-9D5E-F0D488B68B8F}"
set "GUID_ONLY_MAPPER_4600INV=A90AE3D3F5EC42F4D9E50F4D886BB8F8"

:: mapper only - 1.47.0
set "GUID_ONLY_MAPPER_4700={DF51C917-131A-42BD-A0C4-49C5A5965250}"
set "GUID_ONLY_MAPPER_4700INV=719C15FDA131DB240A4C945C5A692505"

:: mapper only - 1.47.01
set "GUID_ONLY_MAPPER_4701={0B06367A-94DD-479C-B54F-18E75AE42483}"
set "GUID_ONLY_MAPPER_4701INV=A76360B0DD49C9745BF4817EA54E4238"

:: mapper only - 1.48.0
set "GUID_ONLY_MAPPER_4800={1C2EAA1D-2051-47EE-99A4-FB0DDDF68715}"
set "GUID_ONLY_MAPPER_4800INV=D1AAE2C11502EE74994ABFD0DD6F7851"

:: mapper only - 1.49.0
set "GUID_ONLY_MAPPER_4900={98C6A659-8903-4A51-8066-D4D64FCDA43D}"
set "GUID_ONLY_MAPPER_4900INV=956A6C89309815A408664D6DF4DC3AD3"

:: mapper only - 1.50.0
set "GUID_ONLY_MAPPER_5000={C7B2116A-AC16-4C43-B95F-AABA3DE8A08C}"
set "GUID_ONLY_MAPPER_5000INV=A6112B7C61CA34C49BF5AAABD38E0AC8"

:: mapper only - 1.50.01
set "GUID_ONLY_MAPPER_5001={6EFAE5D9-9AC9-47A6-B8BE-29730569243D}"
set "GUID_ONLY_MAPPER_5001INV=9D5EAFE69CA96A748BEB9237509642D3"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: full x86, x64 msr only
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.69 info from registry.
msiexec /x "%GUIDX86_X64_69%" /qn /norestart

::  /f >nul 2>&1
echo manual uninstall program x86 v1.8.69 info from registry.
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_69%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_69%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_69INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_69INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_69INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.70 info from registry.
msiexec /x "%GUIDX86_X64_70%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_70%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_70%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_70INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_70INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_70INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.71 info from registry.
msiexec /x "%GUIDX86_X64_71%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_71%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_71%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_71INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_71INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_71INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.72 info from registry.
msiexec /x "%GUIDX86_X64_72%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_72%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_72%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_72INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_72INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_72INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.73 info from registry.
msiexec /x "%GUIDX86_X64_73%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_73%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_73%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_73INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_73INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_73INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.74 info from registry.
msiexec /x "%GUIDX86_X64_74%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_74%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_74%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_74INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_74INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_74INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program x86 v1.8.75 info from registry.
msiexec /x "%GUIDX86_X64_75%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_75%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUIDX86_X64_75%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUIDX86_X64_75INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUIDX86_X64_75INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUIDX86_X64_75INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: mapper only x64, x86
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.46.0 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_4600%" /qn /norestart

::  /f >nul 2>&1
echo manual uninstall program mapper only v1.46.0 info from registry.
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4600%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4600%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_4600INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_4600INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_4600INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.47.0 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_4700%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4700%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4700%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_4700INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_4700INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_4700INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.47.01 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_4701%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4701%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4701%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_4701INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_4701INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_4701INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.48.0 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_4800%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4800%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4800%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_4800INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_4800INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_4800INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.49.0 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_4900%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4900%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_4900%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_4900INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_4900INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_4900INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.50.0 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_5000%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_5000%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_5000%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_5000INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_5000INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_5000INV%" /f

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo try uninstall program mapper only v1.50.1 info from registry.
msiexec /x "%GUID_ONLY_MAPPER_5001%" /qn /norestart

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_5001%" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\%GUID_ONLY_MAPPER_5001%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Products\%GUID_ONLY_MAPPER_5001INV%" /f
reg delete "HKLM\SOFTWARE\Classes\Installer\Features\%GUID_ONLY_MAPPER_5001INV%" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\%GUID_ONLY_MAPPER_5001INV%" /f


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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