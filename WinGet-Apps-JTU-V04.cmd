:: Installatie Applicaties 
:: Versie 3.2 22-04-2023
:: Versie 3.3 23-04-2023
:: (C) John Tutert
::
@CLS
@ECHO OFF
@title Installatie Applicaties versie 3
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
echo ==== Versie 3.3 d.d. 23-04-2023
echo ===========================================================================
echo ====
echo ==== [1] Runtimes (o.a. C++, DotNET en JAVA) 
echo ==== [2] Chromium Browsers (Edge, Vivaldi) en FireFox  
echo ==== [3] Multimedia
echo ==== [4] TOOLS [SUBMENU]
echo ==== [5] StoreAPPS
echo ==== [6] keuze 6 
echo ==== [7] keuze 7  
echo ==== [8] Social (o.a. Discord) 
echo ====
echo ==== [9] Verlaten / Einde 
echo ====
echo ==== Maak uw keuze 
echo ====
::
choice /C:123456789 /N
set antwoord=%errorlevel%
::
if %antwoord%==9 exit /b
if %antwoord%==8 goto :social
if %antwoord%==7 goto :hoofdmenu
if %antwoord%==6 goto :hoofdmenu
if %antwoord%==5 goto :storeapps
if %antwoord%==4 goto :tools
if %antwoord%==3 goto :multimedia 
if %antwoord%==2 goto :browsers
if %antwoord%==1 goto :runtimes
goto :hoofdmenu
::
::
::
::
:: ==== [1] Runtimes ===================================================================================================================================
::
:runtimes
::
ECHO Microsoft Visual C++ Runtimes
winget install --name "Microsoft Visual C++ 2005 Redistributable" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id "Microsoft.VCRedist.2005.x86" --accept-package-agreements --accept-source-agreements --silent
winget install --name "Microsoft Visual C++ 2005 Redistributable (x64)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id "Microsoft.VCRedist.2005.x64" --accept-package-agreements --accept-source-agreements --silent 
::
winget install --name "Microsoft Visual C++ 2008 Redistributable - x86" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id "Microsoft.VC++2008Redist-x86" --accept-package-agreements --accept-source-agreements --silent
winget install --name "Microsoft Visual C++ 2008 Redistributable - x64" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id "Microsoft.VC++2008Redist-x64" --accept-package-agreements --accept-source-agreements --silent 
::
winget install --name "Microsoft Visual C++ 2010 x86 Redistributable" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2010.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --name "Microsoft Visual C++ 2010 x64 Redistributable" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2010.x64 --accept-package-agreements --accept-source-agreements --silent
::
winget install --name "Microsoft Visual C++ 2012 Redistributable (x86)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2012.x86 --accept-package-agreements --accept-source-agreements --silent 
winget install --name "Microsoft Visual C++ 2012 Redistributable (x64)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2012.x64 --accept-package-agreements --accept-source-agreements --silent
::
winget install --name "Microsoft Visual C++ 2013 Redistributable (x86)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2013.x86 --accept-package-agreements --accept-source-agreements --silent 
winget install --name "Microsoft Visual C++ 2013 Redistributable (x64)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2013.x64 --accept-package-agreements --accept-source-agreements --silent
::
winget install --name "Microsoft Visual C++ 2015-2022 Redistributable (x86)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2015+.x86 --accept-package-agreements --accept-source-agreements --silent 
winget install --name "Microsoft Visual C++ 2015-2022 Redistributable (x64)" --accept-package-agreements --accept-source-agreements --silent
:: winget install --id Microsoft.VCRedist.2015+.x64 --accept-package-agreements --accept-source-agreements --silent
::
ECHO Microsoft DotNET Runtimes
winget install --id  Microsoft.DotNet.DesktopRuntime.5 --accept-package-agreements --accept-source-agreements --silent
winget install --id  Microsoft.DotNet.DesktopRuntime.6 --accept-package-agreements --accept-source-agreements --silent
winget install --id  Microsoft.DotNet.DesktopRuntime.7 --accept-package-agreements --accept-source-agreements --silent
::
ECHO Oracle Java Runtime Environment (JRE) 
winget install --id Oracle.JavaRuntimeEnvironment --accept-package-agreements --accept-source-agreements --silent
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
:: Chromium
winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements --silent 
winget install --id Microsoft.Edge --accept-package-agreements --accept-source-agreements --silent
winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements --silent
winget install --id Brave.Brave --accept-package-agreements --accept-source-agreements --silent
:: Mozilla 
winget install --id Mozilla.Firefox --accept-package-agreements --accept-source-agreements --silent
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
winget install --id DisplayLink.GraphicsDriver --accept-package-agreements --accept-source-agreements
winget install --id 9N09F8V8FS02 --accept-package-agreements --accept-source-agreements
::
: wintoolextra
@ECHO Extra Windows Tooling
winget install --id GNU.Wget2 --accept-package-agreements --accept-source-agreements
winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
winget install --id MathiasSvensson.MultiCommander --accept-package-agreements --accept-source-agreements
winget install --id DominikReichl.KeePass --accept-package-agreements --accept-source-agreements
winget install --id REALiX.HWiNFO --accept-package-agreements --accept-source-agreements
winget install --id WinStep.Nexus --accept-package-agreements --accept-source-agreements
::
:: Downloaden via wget2
::
:: PatchMyPC
wget2 https://patchmypc.com/freeupdater/PatchMyPC.exe
:: 
::
:mstooling
@ECHO Microsoft Tooling
winget install --id "Microsoft.WindowsTerminal" --accept-package-agreements --accept-source-agreements
winget install --name "Windows Terminal Preview" --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.PowerShell --accept-package-agreements --accept-source-agreements
:: winget install --id Microsoft.PowerShell.Preview --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
:: SysInternals Suite (o.a. RAMmap) 
winget install --id 9P7KNL5RWT25 --accept-package-agreements --accept-source-agreements
::
:schoonmaken
@ECHO Schoonmaken
winget install --id Piriform.CCleaner --accept-package-agreements --accept-source-agreements --silent
winget install --id WiseCleaner.WiseDiskCleaner --accept-package-agreements --accept-source-agreements --silent
winget install --id WiseCleaner.WiseRegistryCleaner --accept-package-agreements --accept-source-agreements --silent
::
:remotecontrol
@echo Remnote Control
winget install --id TeamViewer.TeamViewer --accept-package-agreements --accept-source-agreements
winget install --id PuTTY.PuTTY --accept-package-agreements --accept-source-agreements
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
:grafisch
@echo Grafisch
winget install --id GIMP.GIMP --accept-package-agreements --accept-source-agreements
winget install --id IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
winget install --id Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
winget install --id JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install --id XnSoft.XnView.Classic --accept-package-agreements --accept-source-agreements
::
:documenten
@echo Documenten
winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
winget install --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
winget install --id calibre.calibre --accept-package-agreements --accept-source-agreements
::
goto tools
::
::
:: ========================== StoreAPPS ========================================================
::
:storeapps
::
@ECHO Installatie StoreAPPS
::
:: Installatie ISS Finder
winget install --id 9NBLGGH51634 --accept-package-agreements --accept-source-agreements
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
:: ========================== Social ========================================================
::
:social
::
@ECHO Installatie Social
::
:: Installatie Discord
:: https://apps.microsoft.com/store/detail/XPDC2RH70K22MN
winget install --id XPDC2RH70K22MN --accept-package-agreements --accept-source-agreements
::
:: Installatie Skype
:: https://www.microsoft.com/store/productId/9WZDNCRFJ364
winget install --id Microsoft.Skype --accept-package-agreements --accept-source-agreements
::
:: ========================== Productiviteit ========================================================
::
:: Installatie Microsoft Teams
:: https://apps.microsoft.com/store/detail/XP8BT8DW290MPQ
:: winget install --id XP8BT8DW290MPQ --accept-package-agreements --accept-source-agreements
::
:: The End