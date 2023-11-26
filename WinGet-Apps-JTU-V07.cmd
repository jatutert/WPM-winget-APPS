:: Installatie Applicaties 
::
:: Versie 3.2 22-04-2023
:: Versie 3.3 23-04-2023
:: Versie 3.4 28-04-2023
:: Versie 3.5 18-11-2023
::
:: (C) John Tutert
::
@CLS
@ECHO OFF
@title Installatie Applicaties versie 3.5 (18-11-2023)
::
::
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected! 
) ELSE (
    ECHO Script NIET gestart met Adminstrator rechten ! 
    PAUSE
)
::
::
:hoofdmenu
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ===========================================================================
echo ====
echo ==== [1] Runtimes (o.a. C++, DotNET en JAVA) 
echo ==== [2] Chromium Browsers (Edge, Vivaldi) en FireFox  
echo ==== [3] Multimedia
echo ==== [4] TOOLS [SUBMENU]
echo ==== [5] StoreAPPS
echo ==== [6] Virtualisatie (o.a. MiniKube) 
echo ==== [7] Social (o.a. Discord, Skype)   
echo ==== [8] Scripting (o.a. PowerSHELL 7, Visual Studio Code) 
echo ==== [9] Windows Tweaks  
echo ====
echo ==== [0] Verlaten / Einde 
echo ====
echo ==== Maak uw keuze 
echo ====
::
choice /C:0123456789 /N
set antwoord=%errorlevel%
::
if %antwoord%==9 goto :tweaks
if %antwoord%==8 goto :social
if %antwoord%==7 goto :hoofdmenu
if %antwoord%==6 goto :virtualisatie 
if %antwoord%==5 goto :storeapps
if %antwoord%==4 goto :tools
if %antwoord%==3 goto :multimedia 
if %antwoord%==2 goto :browsers
if %antwoord%==1 goto :runtimes
if %antwoord%==0 exit /b
goto :hoofdmenu
::
::
::
::
:: ==== [1] Runtimes ===================================================================================================================================
::
:runtimes
::
ECHO Microsoft Visual C++ Runtimes 2005 - 2022
::
winget show Microsoft.VCRedist.2005.x86 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id "Microsoft.VCRedist.2005.x86" --accept-package-agreements --accept-source-agreements --force --silent
) 
winget show Microsoft.VCRedist.2008.x86 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id "Microsoft.VCRedist.2008.x86" --accept-package-agreements --accept-source-agreements --force --silent
)
winget show Microsoft.VCRedist.2008.x86 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id "Microsoft.VCRedist.2010.x86" --accept-package-agreements --accept-source-agreements --force --silent
) 
winget install --id "Microsoft.VCRedist.2012.x86" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2013.x86" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2015+.x86" --accept-package-agreements --accept-source-agreements --force --silent
::
winget install --id "Microsoft.VCRedist.2005.x64" --accept-package-agreements --accept-source-agreements --force --silent 
winget install --id "Microsoft.VCRedist.2008.x64" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2010.x64" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2012.x64" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2013.x64" --accept-package-agreements --accept-source-agreements --force --silent
winget install --id "Microsoft.VCRedist.2015+.x64" --accept-package-agreements --accept-source-agreements --force --silent
:: 
ECHO Microsoft DotNET Runtimes
winget show Microsoft.DotNet.DesktopRuntime.5 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id  Microsoft.DotNet.DesktopRuntime.5 --accept-package-agreements --accept-source-agreements --force --silent
)
winget show Microsoft.DotNet.DesktopRuntime.6 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id  Microsoft.DotNet.DesktopRuntime.6 --accept-package-agreements --accept-source-agreements --force --silent
)
winget show Microsoft.DotNet.DesktopRuntime.7 >nul 2>&1
if %errorlevel% neq 0 (
winget install --id  Microsoft.DotNet.DesktopRuntime.7 --accept-package-agreements --accept-source-agreements --force --silent
) 
::
ECHO Oracle Java Runtime Environment (JRE) 
winget install --id Oracle.JavaRuntimeEnvironment -a x86 --accept-package-agreements --accept-source-agreements --force --silent
winget install --id Oracle.JavaRuntimeEnvironment -a x64 --accept-package-agreements --accept-source-agreements --force --silent
::
::
goto hoofdmenu
::
::
:: ==== [2] Browsers ===================================================================================================================================
::
:browsers
::
ECHO Installatie Browsers
:: 
:: == Google Chrome ==
:: 
:: Webpagina https://www.chromium.org/getting-involved/dev-channel/
:: 
:: 
:: Stable channel: This channel has gotten the full testing and blessing of the Chrome test team
:: Stable channel: \Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default
winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements --silent 
:: 
:: Beta channel: It's updated every week roughly, with major updates coming every six weeks, more than a month before the Stable channel will get them.
:: Beta channel: \Users\%USERNAME%\AppData\Local\Google\Chrome Beta\User Data\Default
:: winget install --id Google.Chrome.Beta --accept-package-agreements --accept-source-agreements --silent 
:: 
:: DEV Channel - The Dev channel gets updated once or twice weekly, and it shows what we're working on right now
:: Dev channel: \Users\%USERNAME%\AppData\Local\Google\Chrome Dev\User Data\Default
:: winget install --id Google.Chrome.Dev --accept-package-agreements --accept-source-agreements --silent 
::
:: Canary Channel - Canary builds are the bleeding edge. Released daily, this build has not been tested or used, it's released as soon as it's built.
:: Canary builds: \Users\%USERNAME%\AppData\Local\Google\Chrome SxS\User Data\Default
:: winget install --id Google.Chrome.Canary --accept-package-agreements --accept-source-agreements --silent 
::
:: == Microsoft Edge ==
:: winget install --id Microsoft.Edge --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.Edge.Beta --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.Edge.Dev --accept-package-agreements --accept-source-agreements --silent
::
::== Vivaldi ==
:: winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements --silent
:: winget install --id VivaldiTechnologies.Vivaldi.Snapshot --accept-package-agreements --accept-source-agreements --silent
::
:: == Brave ==
winget install --id Brave.Brave --accept-package-agreements --accept-source-agreements --silent
:: 
:: == OPERA ==
:: winget install --id Opera.Opera --accept-package-agreements --accept-source-agreements --silent
::
:: == Mozilla FireFox == 
winget install --id Mozilla.Firefox --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Mozilla.Firefox.DeveloperEdition --accept-package-agreements --accept-source-agreements --silent
::
::
goto hoofdmenu
::
::
:: ==== [3] multimedia ===================================================================================================================================
::
:multimedia
::
@ECHO Installatie MultiMedia
::
:: Audio
winget install --id Apple.iTunes --accept-package-agreements --accept-source-agreements
winget install --id Mp3tag.Mp3tag --accept-package-agreements --accept-source-agreements
winget install --id Daum.PotPlayer --accept-package-agreements --accept-source-agreements
winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
winget install --id AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
::
:: Video
winget install --id OpenShot.OpenShot --accept-package-agreements --accept-source-agreements
winget install --id OBSProject.OBSStudio --accept-package-agreements --accept-source-agreements
:: 
goto hoofdmenu
::
:: ==== [4] tools ===================================================================================================================================
::
:tools
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Tooling
echo ===========================================================================
echo ====
echo ==== [1] Drivers (o.a. DriverBooster, DisplayManager) 
echo ==== [2] Windows extra tooling (o.a. 7-Zip, KeePASS, NeXus)
echo ==== [3] Microsoft Tooling (o.a. PowerToys, Terminal en PowerSHell)
echo ==== [4] Schoonmaken (o.a. CCleaner) 
echo ==== [5] RenoteControl (o.a. TeamViewer) 
echo ==== [6] Netwerk Tools  
echo ==== [7] Grafisch
echo ==== [8] Documenten (o.a. NotePAD++) 
echo ====
echo ==== [9] Hoofdmenu
echo ====
echo ==== Maak uw keuze 
echo ====
::
choice /C:123456789 /N
set subtoolantw=%errorlevel%
::
if %subtoolantw%==9 goto :hoofdmenu
if %subtoolantw%==8 goto :documenten
if %subtoolantw%==7 goto :grafisch
if %subtoolantw%==6 goto :hoofdmenu
if %subtoolantw%==5 goto :remotecontrol
if %subtoolantw%==4 goto :schoonmaken
if %subtoolantw%==3 goto :mstooling
if %subtoolantw%==2 goto :wintoolextra
if %subtoolantw%==1 goto :installdrivers
goto :tools
::
::
::
:installdrivers
@ECHO Installatie drivers
winget install --id IObit.DriverBooster --accept-package-agreements --accept-source-agreements
:: winget install --id DisplayLink.GraphicsDriver --accept-package-agreements --accept-source-agreements
:: winget install --id 9N09F8V8FS02 --accept-package-agreements --accept-source-agreements
::
goto :tools
::
: wintoolextra
@ECHO Extra Windows Tooling
winget install --id cURL.cURL --accept-package-agreements --accept-source-agreements
winget install --id GNU.Wget2 --accept-package-agreements --accept-source-agreements
winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
:: winget install --id MathiasSvensson.MultiCommander --accept-package-agreements --accept-source-agreements
winget install --id DominikReichl.KeePass --accept-package-agreements --accept-source-agreements
winget install --id REALiX.HWiNFO --accept-package-agreements --accept-source-agreements
winget install --id WinStep.Nexus --accept-package-agreements --accept-source-agreements
:: 
::
:: Downloaden via wget2
::
:: PatchMyPC
curl -s -o %USERPROFILE% https://patchmypc.com/freeupdater/PatchMyPC.exe
:: wget2 -P ...naam van directory waar bestand opgeslagen moet worden bijv c:\users... https://patchmypc.com/freeupdater/PatchMyPC.exe
::
::
goto :tools 
:: 
::
:mstooling
@ECHO Microsoft Tooling
winget install --id "Microsoft.WindowsTerminal" --accept-package-agreements --accept-source-agreements
:: winget install --id "Microsoft.WindowsTerminal.Preview" --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
:: SysInternals Suite (o.a. RAMmap) 
winget install --id 9P7KNL5RWT25 --accept-package-agreements --accept-source-agreements
::
:: 
goto :tools 
::
::
:schoonmaken
@ECHO Schoonmaken
winget install --id Piriform.CCleaner --accept-package-agreements --accept-source-agreements --silent
winget install --id WiseCleaner.WiseDiskCleaner --accept-package-agreements --accept-source-agreements --silent
winget install --id WiseCleaner.WiseRegistryCleaner --accept-package-agreements --accept-source-agreements --silent
::
::
goto :tools
::
::
:remotecontrol
@echo Remnote Control
w.inget install --id TeamViewer.TeamViewer --accept-package-agreements --accept-source-agreements
winget install --id PuTTY.PuTTY --accept-package-agreements --accept-source-agreements
::
::
goto :tools
:: 
::
:netwerktools
@echo Netwerk tools 
winget install --id WireGuard.WireGuard --accept-package-agreements --accept-source-agreements
winget install --id WiresharkFoundation.Wireshark --accept-package-agreements --accept-source-agreements
winget install --id MetaGeek.inSSIDer --accept-package-agreements --accept-source-agreements
:: Installatie OneDrive
winget install --id 9WZDNCRFJ1P3 --accept-package-agreements --accept-source-agreements
:: Installatie SpeedTest
winget install --id 9NBLGGH4Z1JC --accept-package-agreements --accept-source-agreements
::
::
goto :tools
::
:grafisch
@echo Grafisch
winget install --id GIMP.GIMP --accept-package-agreements --accept-source-agreements
winget install --id IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
winget install --id Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
winget install --id JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install --id XnSoft.XnView.Classic --accept-package-agreements --accept-source-agreements
::
::
goto :tools 
::
:documenten
@echo Documenten

curl -s -o %USERPROFILE%\Downloads\FoxitReader1014_L10N_Setup.exe http://cdn01.foxitsoftware.com/product/reader/desktop/win/10.1.4/FoxitReader1014_L10N_Setup.exe
curl -s -o %USERPROFILE%\Downloads\FoxitReader1014_L10N_Setup.msi http://cdn01.foxitsoftware.com/product/reader/desktop/win/10.1.4/FoxitReader1014_L10N_Setup.msi

:: winget install --id Foxit.FoxitReader --accept-package-agreements --accept-source-agreements
:: winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
winget install --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
winget install --id calibre.calibre --accept-package-agreements --accept-source-agreements
::
::
goto :tools
::
::
:: ========================== StoreAPPS ========================================================
::
:storeapps
::
@ECHO Installatie StoreAPPS
::
:: Installatie ISS Finder
:: winget install --id 9NBLGGH51634 --accept-package-agreements --accept-source-agreements
:: 
:: Installatie Dumpert
:: https://www.microsoft.com/store/productId/9NPFH8661NZQ
:: winget install --id 9NPFH8661NZQ --source msstore --accept-package-agreements --accept-source-agreements
::
:: Installatie BuienRadar
:: https://www.microsoft.com/store/productId/9WZDNCRFJ0RS
:: winget install --id 9WZDNCRFJ0RS --source msstore --accept-package-agreements --accept-source-agreements
::
::
goto hoofdmenu
::
::
:: =========================== Virtualisatie =============================================
:virtualisatie 
::
winget install --id Oracle.VirtualBox --accept-package-agreements --accept-source-agreements
winget install --id VMware.WorkstationPro --accept-package-agreements --accept-source-agreements
winget install --id Hashicorp.Vagrant --accept-package-agreements --accept-source-agreements
:: 
winget install --id Kubernetes.minikube --accept-package-agreements --accept-source-agreements
winget install --id Kubernetes.kubectl --accept-package-agreements --accept-source-agreements
::
curl -s -o %USERPROFILE%\Downloads\PCemV17Win.zip https://pcem-emulator.co.uk/files/PCemV17Win.zip 
curl -s -o %USERPROFILE%\Downloads\PCem-v17-ROMs.zip https://larchiviste.eu/wp-content/uploads/simple-file-list/PCem-v17-ROMs.zip
::
goto hoofdmenu
::
:: Keuze 8
:: ========================== Social ========================================================
::
:social
::
@ECHO Installatie Social
::
:: Installatie Discord
:: https://apps.microsoft.com/store/detail/XPDC2RH70K22MN
:: winget install --id XPDC2RH70K22MN --accept-package-agreements --accept-source-agreements
::
:: Installatie Skype
:: https://www.microsoft.com/store/productId/9WZDNCRFJ364
:: winget install --id Microsoft.Skype --accept-package-agreements --accept-source-agreements
::
::
:: Keuze 9
:: ========================== Tweaks ========================================================
::
:tweaks
::
:: WinAero Tweaks 
::
:: Windows Verbose Messages
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v VerboseStatus /t REG_DWORD /d 1 /f
:: Registratie Windows 
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d "Saxion University of Applied Sciences" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOrganization  /t REG_SZ /d "ACT |  HBO-ICT | John Tutert (JTU03)" /f
:: Windows 11 Classic Full Context Menus
REG add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_EXPAND_SZ /d %%systemroot%%\system32\Windows.Storage.ApplicationData.dll /f
:: REG ADD "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
:: Register backups
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v EnablePeriodicBackup /t REG_DWORD /d 1 /f
::
:: 
:: ========================== Scripting ========================================================
::
:: scripting
:: PowerSHELL 7
winget install --id Microsoft.PowerShell --accept-package-agreements --accept-source-agreements
:: winget install --id Microsoft.PowerShell.Preview --accept-package-agreements --accept-source-agreements
winget install -- id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
winget install -- id GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements
winget install -- id GNU.Nano --accept-package-agreements --accept-source-agreements
::
::
goto :hoofdmenu
::
::
:: ========================== Productiviteit ========================================================
::
:: Installatie Microsoft Teams
:: https://apps.microsoft.com/store/detail/XP8BT8DW290MPQ
:: winget install --id XP8BT8DW290MPQ --accept-package-agreements --accept-source-agreements
::
:: The End