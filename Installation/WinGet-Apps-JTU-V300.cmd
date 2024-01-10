:: Installatie Applicaties 
:: Versie 3.0 22-04-20223
:: (C) John Tutert
::
@ECHO OFF
::
@title Installatie Applicaties versie 3
::
::
:hoofdmenu
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Versie 3.0 d.d. 22-04-2023
echo ===========================================================================
echo ====
echo ==== [1] Microsoft Visual C++ Runtime 
echo ==== [2] Microsoft DotNET Runtime 
echo ==== [3] Chromium Browsers (Edge, Vivaldi) en FireFox 
echo ==== [4] Multimedia
echo ==== [5] Drivers 
echo ==== [6] Tools (inclusief grafische Tools en netwerk tools) 
echo ==== [7] Laatste keuze 
echo ====
echo ==== [8] Verlaten / Einde 
echo ====
echo ==== Maak uw keuze 
echo ====
::
choice /C:12345678 /N
set antwoord=%errorlevel%
::
if %antwoord%==8 exit /b
if %antwoord%==7 goto :MainMenu
if %antwoord%==6 goto :tools
if %antwoord%==5 goto :drivers
if %antwoord%==4 goto :multimedia
if %antwoord%==3 goto :browsers
if %antwoord%==2 goto :dotnetruntime
if %antwoord%==1 goto :csharpruntime
goto :MainMenu
::
:: ================================= Microsoft Visual C sharp Runtimes =========================================
::
:csharpruntime
::
@ECHO Microsoft Visual Runtimes
::
::
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
::
goto hoofdmenu
::
::
:: ================================= Microsoft DotNet Runtime =========================================
::
:dotnetruntime
::
@ECHO Microsoft DotNET Runtimes
::
winget install --id  Microsoft.DotNet.DesktopRuntime.5 --accept-package-agreements --accept-source-agreements --silent
winget install --id  Microsoft.DotNet.DesktopRuntime.6 --accept-package-agreements --accept-source-agreements --silent
winget install --id  Microsoft.DotNet.DesktopRuntime.7 --accept-package-agreements --accept-source-agreements --silent
::
winget install --id Oracle.JavaRuntimeEnvironment --accept-package-agreements --accept-source-agreements --silent
::
goto hoofdmenu
::
::
:: ================================= Browsers  =========================================
::
:browsers
::
@ECHO Installatie Browsers
::
winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements --silent 
winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.Edge --accept-package-agreements --accept-source-agreements --silent
winget install --id Mozilla.Firefox --accept-package-agreements --accept-source-agreements --silent
::
::
goto hoofdmenu
::
::
:: ========================== MultiMedia ========================================================
::
:multimedia
::
@ECHO Installatie MultiMedia
::
winget install --id Apple.iTunes --accept-package-agreements --accept-source-agreements
winget install --id Mp3tag.Mp3tag --accept-package-agreements --accept-source-agreements
winget install --id Daum.PotPlayer --accept-package-agreements --accept-source-agreements
winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
winget install --id OpenShot.OpenShot --accept-package-agreements --accept-source-agreements
winget install --id OBSProject.OBSStudio --accept-package-agreements --accept-source-agreements
winget install --id AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
:: 
goto hoofdmenu
::
::
:: ========================== drivers ========================================================
::
:drivers
::
@ECHO Installatie drivers
::
winget install --id IObit.DriverBooster --accept-package-agreements --accept-source-agreements
winget install --id DisplayLink.GraphicsDriver --accept-package-agreements --accept-source-agreements
winget install --id 9N09F8V8FS02 --accept-package-agreements --accept-source-agreements
::
::
goto hoofdmenu
::
::
:: ========================== tools ========================================================
::
:tools
::
@ECHO Installatie Tools
::
:: Uitbreiden Windows Tooling 
:: 
winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
winget install --id MathiasSvensson.MultiCommander --accept-package-agreements --accept-source-agreements
winget install --id PuTTY.PuTTY --accept-package-agreements --accept-source-agreements
winget install --id DominikReichl.KeePass --accept-package-agreements --accept-source-agreements
winget install --id REALiX.HWiNFO --accept-package-agreements --accept-source-agreements
::
:: Microsoft Tooling 
::
winget install --id "Microsoft.WindowsTerminal" --accept-package-agreements --accept-source-agreements
winget install --name "Windows Terminal Preview" --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.PowerShell --accept-package-agreements --accept-source-agreements
:: winget install --id Microsoft.PowerShell.Preview --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
::
:: schoonmaken
winget install --id Piriform.CCleaner --accept-package-agreements --accept-source-agreements
winget install --id WiseCleaner.WiseDiskCleaner --accept-package-agreements --accept-source-agreements
winget install --id WiseCleaner.WiseRegistryCleaner --accept-package-agreements --accept-source-agreements
::
winget install --id TeamViewer.TeamViewer --accept-package-agreements --accept-source-agreements
:: 
:: Netwerk
:: 
:: Installatie OneDrive
:: https://www.microsoft.com/store/productId/9WZDNCRFJ1P3
winget install --id 9WZDNCRFJ1P3 --accept-package-agreements --accept-source-agreements
::
:: Installatie SpeedTest
:: https://www.microsoft.com/store/productId/9NBLGGH4Z1JC
winget install --id 9NBLGGH4Z1JC --accept-package-agreements --accept-source-agreements
::
winget install --id WireGuard.WireGuard --accept-package-agreements --accept-source-agreements
winget install --id WiresharkFoundation.Wireshark --accept-package-agreements --accept-source-agreements
winget install --id MetaGeek.inSSIDer --accept-package-agreements --accept-source-agreements
::
:: Grafisch
::
winget install --id GIMP.GIMP --accept-package-agreements --accept-source-agreements
winget install --id IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
winget install --id Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
winget install --id JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install --id XnSoft.XnView.Classic --accept-package-agreements --accept-source-agreements
::
:: Documenten
::
winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
winget install --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
winget install --id calibre.calibre --accept-package-agreements --accept-source-agreements
::
goto hoofdmenu
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