@echo off
@cls
@REM
@REM
@REM
@REM
@REM   TTTTTT  U    U  TTTTTT  SSSSSS  OOOOOO  FFFFFF  TTTTTT
@REM     TT    U    U    TT    SS      O    O  FF        TT
@REM     TT    U    U    TT    SSSSSS  O    O  FFFF      TT
@REM     TT    U    U    TT        SS  O    O  FF        TT
@REM     TT    UUUUUU    TT    SSSSSS  OOOOOO  FF        TT
@REM
@REM     The Netherlands/Nederland/Niederlande/Pays Bas/Paisos Bajos
@REM     NL EU
@REM
@REM
@REM
@REM   Windows Desktop 
@REM   WinGet Application Installer
@REM
@REM
@REM   Makes your Windows ready for any use ! 
@REM
@REM
@REM   For Personal and/or Education Use Only ! 
@REM
@REM
@NET SESSION >nul 2>&1
@IF %ERRORLEVEL% NEQ 0 (
    @ECHO Script NIET gestart met Adminstrator permissies / Script not started with Adminitrator premissions ! 
    @PAUSE
    @EXIT /b 0
)
@REM
@REM
@winget update
@REM
@REM
:hoofdmenu
@REM
@CLS
@REM
echo ===========================================================================
echo ==== Installatie / Updaten Applicaties 
echo ===========================================================================
echo ====
echo ==== [1] Systeem
echo ==== [2] Development
echo ==== [3] Internet
echo ==== [4] Multimedia
echo ==== [5] Office
echo ==== [6] Security
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Verlaten / Einde 
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
@set hoofdmenu_antwoord=%errorlevel%
::
@REM
if %hoofdmenu_antwoord%==9 exit /b
if %hoofdmenu_antwoord%==8 goto :hoofdmenu 
if %hoofdmenu_antwoord%==7 goto :hoofdmenu
if %hoofdmenu_antwoord%==6 goto :security
if %hoofdmenu_antwoord%==5 goto :office
if %hoofdmenu_antwoord%==4 goto :multimedia
if %hoofdmenu_antwoord%==3 goto :internet
if %hoofdmenu_antwoord%==2 goto :development
if %hoofdmenu_antwoord%==1 goto :systeem
goto :hoofdmenu
@REM
@REM
@REM ==== [1] Systeem ===================================================================================================================================
@REM
@REM
::
:systeem
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Systeem
echo ===========================================================================
echo ====
echo ==== [1] Application Managers (o.a. PatchMyPC en UniGetUI)
echo ==== [2] Filemanagement and Backup
echo ==== [3] Other
echo ==== [4] System Customizing and Tweaking
echo ==== [5] Utilities System Tools (o.a. Cleaners)
echo ==== [6] Open Epson webpagina (was Update Printer Tools)
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
@set systeem_menu_antwoord=%errorlevel%
::
if %systeem_menu_antwoord%==9 goto :hoofdmenu
if %systeem_menu_antwoord%==8 goto :systeem
if %systeem_menu_antwoord%==7 goto :systeem
if %systeem_menu_antwoord%==6 goto :updateprintertools
if %systeem_menu_antwoord%==5 goto :utilitiessystemtools
if %systeem_menu_antwoord%==4 goto :systemcustomizationtweaking
if %systeem_menu_antwoord%==3 goto :other
if %systeem_menu_antwoord%==2 goto :filemanagementbackup
if %systeem_menu_antwoord%==1 goto :applicationmanagers
goto :systeem
::
@REM 1-1
:applicationmanagers
winget Install PatchMyPC.PatchMyPC --accept-package-agreements --accept-source-agreements
winget Install Devolutions.UniGetUI --accept-package-agreements --accept-source-agreements
@REM
goto :systeem
@REM
@REM 1-2
:filemanagementbackup
winget install JumpingBytes.PureSync.Personal --accept-package-agreements --accept-source-agreements
winget install Piriform.Recuva --accept-package-agreements --accept-source-agreements
winget install M2Team.NanaZip --accept-package-agreements --accept-source-agreements
@REM
goto :systeem
@REM
@REM 1-3
:other
winget install Lenovo.SystemUpdate --accept-package-agreements --accept-source-agreements
winget install 9WZDNCRFJ4MV --accept-package-agreements --accept-source-agreements
@REM
goto :systeem 
@REM
@REM 1-4
:systemcustomizationtweaking
winget install HelmutBuhler.8GadgetPack --accept-package-agreements --accept-source-agreements
winget install Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
winget install Microsoft.Sysinternals.Suite --accept-package-agreements --accept-source-agreements
winget install winaero.tweaker --accept-package-agreements --accept-source-agreements
winget install 9NBLGGH1ZBKW --accept-package-agreements --accept-source-agreements
@REM
goto :systeem
@REM
@REM 1-5
:utilitiessystemtools
winget install McAfee.MCPR --accept-package-agreements --accept-source-agreements
winget install Piriform.CCleaner --accept-package-agreements --accept-source-agreements
winget install EaseUS.PartitionMaster --accept-package-agreements --accept-source-agreements
winget install REALiX.HWiNFO --accept-package-agreements --accept-source-agreements
@REM Privacy Eraser Free
winget install XPDLMDV4FVRFW0 --accept-package-agreements --accept-source-agreements
@REM Microsoft PC Manager
winget install 9PM860492SZD --accept-package-agreements --accept-source-agreements
winget install RevoUninstaller.RevoUninstaller --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseDiskCleaner --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseRegistryCleaner --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseProgramUninstaller --accept-package-agreements --accept-source-agreements
winget install Microsoft.WindowsTerminal --accept-package-agreements --accept-source-agreements
winget install Microsoft.WindowsTerminal.Preview --accept-package-agreements --accept-source-agreements
@REM
goto :systeem
@REM
@REM 1-6
:updateprintertools
start chrome https://www.epson.nl/nl_NL/support/sc/epson-expression-home-xp-4200/s/s2527?selected-tab=&selected-os=Windows+11
@REM
::  winget install EPSON.PhotoPlus --accept-package-agreements --accept-source-agreements
::  winget install EPSON.PrinterConnectionChecker --accept-package-agreements --accept-source-agreements
::  winget install EPSON.EpsonScan2 --accept-package-agreements --accept-source-agreements
::  winget install EPSON.Scan.PDFExtensions --accept-package-agreements --accept-source-agreements
::  winget install EPSON.ScanSmart --accept-package-agreements --accept-source-agreements
::  winget install EPSON.EpsonNetPrint --accept-package-agreements --accept-source-agreements
::  winget install EPSON.SoftwareUpdater --accept-package-agreements --accept-source-agreements
@REM
goto :systeem
@REM
@REM
@REM ==== [2] Development ===================================================================================================================================
@REM
@REM
::
:development
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Development
echo ===========================================================================
echo ====
echo ==== [1] Development Programming
echo ==== [2] x
echo ==== [3] x
echo ==== [4] x
echo ==== [5] x
echo ==== [6] x
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
@set development_menu_antwoord=%errorlevel%
::
if %development_menu_antwoord%==9 goto :hoofdmenu
if %development_menu_antwoord%==8 goto :development
if %development_menu_antwoord%==7 goto :development
if %development_menu_antwoord%==6 goto :development
if %development_menu_antwoord%==5 goto :development
if %development_menu_antwoord%==4 goto :development
if %development_menu_antwoord%==3 goto :development
if %development_menu_antwoord%==2 goto :development
if %development_menu_antwoord%==1 goto :developmentprogramming
goto :development
::
@REM 2-1
:developmentprogramming
@REM
winget install Git.Git --accept-package-agreements --accept-source-agreements
winget install GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements
@REM
winget install EclipseAdoptium.Temurin.26.JRE  --accept-package-agreements --accept-source-agreements
@REM
winget install Microsoft.DotNet.DesktopRuntime.8.x64 --scope machine --accept-package-agreements --accept-source-agreements
@REM
winget install Microsoft.VCRedist.2005.x64 --scope machine --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2008.x64 --scope machine --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2010.x64 --scope machine --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2012.x64 --scope machine --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2013.x64 --scope machine --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2015+.x64 --scope machine --accept-package-agreements --accept-source-agreements
@REM
winget Install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
@REM
winget install Notepad++.Notepad++ --scope machine  --accept-package-agreements --accept-source-agreements
@REM
winget install Microsoft.Powershell --accept-package-agreements --accept-source-agreements
@REM
winget install Python.Python.3.14 --accept-package-agreements --accept-source-agreements
@REM
winget install Microsoft.Edit --scope machine --accept-package-agreements --accept-source-agreements
winget install GNU.Nano --accept-package-agreements --accept-source-agreements
@REM
winget install kubernetes.kubectl --accept-package-agreements --accept-source-agreements
winget install kubernetes.krew --accept-package-agreements --accept-source-agreements
winget install kubernetes.minikube --accept-package-agreements --accept-source-agreements
winget install wagoodman.dive --accept-package-agreements --accept-source-agreements
@REM
winget install ElementLabs.LMStudio --accept-package-agreements --accept-source-agreements
winget install XP9CXNGPPJ97XX --accept-package-agreements --accept-source-agreements
@REM
goto :development
@REM
@REM
@REM ==== [3] Internet ===================================================================================================================================
@REM
@REM
::
:internet
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Internet
echo ===========================================================================
echo ====
echo ==== [1] Messaging Communication
echo ==== [2] Networking and Online (o.a. Curl en Google Drive)
echo ==== [3] Web Browsers
echo ==== [4] x
echo ==== [5] x
echo ==== [6] x
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
set internet_menu_antwoord=%errorlevel%
::
if %internet_menu_antwoord%==9 goto :hoofdmenu
if %internet_menu_antwoord%==8 goto :internet
if %internet_menu_antwoord%==7 goto :internet
if %internet_menu_antwoord%==6 goto :internet
if %internet_menu_antwoord%==5 goto :internet
if %internet_menu_antwoord%==4 goto :internet
if %internet_menu_antwoord%==3 goto :webbrowsers
if %internet_menu_antwoord%==2 goto :networkingonline
if %internet_menu_antwoord%==1 goto :messagingcommunication
goto :internet
::
@REM 3-1
:messagingcommunication
@REM Signal Desktop
winget install XP89119P9F2PCQ --accept-package-agreements --accept-source-agreements
@REM WhatsAPP Desktop
winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements
@REM
goto :internet
@REM
@REM 3-2
:networkingonline
winget install Google.GoogleDrive --accept-package-agreements --accept-source-agreements
winget install cURL.cURL --scope machine --accept-package-agreements --accept-source-agreements
winget install GNU.Wget2 --scope machine --accept-package-agreements --accept-source-agreements
winget install --id MetaGeek.inSSIDer --accept-package-agreements --accept-source-agreements
winget install --id WireGuard.WireGuard --accept-package-agreements --accept-source-agreements
winget install --id WiresharkFoundation.Wireshark --accept-package-agreements --accept-source-agreements
@REM
goto :internet
@REM
@REM 3-3
:webbrowsers
winget install --id Brave.Brave.Beta --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install --id Microsoft.Edge.Dev --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install --id Mozilla.Firefox.nl --accept-package-agreements --accept-source-agreements
winget install --id Vivaldi.Vivaldi --accept-package-agreements --accept-source-agreements --locale nl-NL
@REM
goto :internet 
@REM
@REM
@REM ==== [4] Multimedia ===================================================================================================================================
@REM
@REM
::
:multimedia
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Multimedia
echo ===========================================================================
echo ====
echo ==== [1] Gaming
echo ==== [2] Image Graphics (o.a. InkScape)
echo ==== [3] Multimedia Tools (o.a. PotPlayer)
echo ==== [4] x
echo ==== [5] x
echo ==== [6] x
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
set multimedia_menu_antwoord=%errorlevel%
::
if %multimedia_menu_antwoord%==9 goto :hoofdmenu
if %multimedia_menu_antwoord%==8 goto :multimedia
if %multimedia_menu_antwoord%==7 goto :multimedia
if %multimedia_menu_antwoord%==6 goto :multimedia
if %multimedia_menu_antwoord%==5 goto :multimedia
if %multimedia_menu_antwoord%==4 goto :multimedia
if %multimedia_menu_antwoord%==3 goto :multimediatools
if %multimedia_menu_antwoord%==2 goto :imagegraphics
if %multimedia_menu_antwoord%==1 goto :Gaming
goto :multimedia
::
@REM 4
:gaming
winget install FelixRieseberg.Windows95 --accept-package-agreements --accept-source-agreements
@REM
goto :multimedia
@REM
@REM 4-1
:imagegraphics
winget install Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseImageX --accept-package-agreements --accept-source-agreements
@REM
goto :multimedia
@REM
@REM 4-2
:multimediatools
winget install gimp.gimp --accept-package-agreements --accept-source-agreements
winget install HandBrake.HandBrake --accept-package-agreements --accept-source-agreements
winget install IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
winget install CodecGuide.K-LiteCodecPack.Mega --accept-package-agreements --accept-source-agreements
winget install --id OpenShot.OpenShot --accept-package-agreements --accept-source-agreements
winget install --id OBSProject.OBSStudio --accept-package-agreements --accept-source-agreements
winget install Daum.PotPlayer --accept-package-agreements --accept-source-agreements
winget install VideoLAN.VLC  --accept-package-agreements --accept-source-agreements
winget install AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseVideoConverter --accept-package-agreements --accept-source-agreements
@REM
goto :multimedia
@REM
@REM
@REM ==== [5] Office ===================================================================================================================================
@REM
@REM
::
:office
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Office
echo ===========================================================================
echo ====
echo ==== [1] Productivity Office
echo ==== [2] x
echo ==== [3] x
echo ==== [4] x
echo ==== [5] x
echo ==== [6] x
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
set office_menu_antwoord=%errorlevel%
::
if %office_menu_antwoord%==9 goto :hoofdmenu
if %office_menu_antwoord%==8 goto :office
if %office_menu_antwoord%==7 goto :office
if %office_menu_antwoord%==6 goto :office
if %office_menu_antwoord%==5 goto :office
if %office_menu_antwoord%==4 goto :office
if %office_menu_antwoord%==3 goto :office
if %office_menu_antwoord%==2 goto :office
if %office_menu_antwoord%==1 goto :productivityoffice
goto :office
::
@REM 5
:productivityoffice
winget install calibre.calibre --accept-package-agreements --accept-source-agreements
winget install JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install Foxit.FoxitReader --accept-package-agreements --accept-source-agreements
winget install TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements
winget install Mozilla.Thunderbird.nl --accept-package-agreements --accept-source-agreements
@REM Microsoft To Do
winget install 9NBLGGH5R558 --accept-package-agreements --accept-source-agreements
@REM
goto :office
::
:security
::
@CLS
::
echo ===========================================================================
echo ==== Installatie Applicaties 
echo ==== Submenu Security
echo ===========================================================================
echo ====
echo ==== [1] Security Tools (o.a. KeePass)
echo ==== [2] x
echo ==== [3] x
echo ==== [4] x
echo ==== [5] x
echo ==== [6] x
echo ==== [7] x
echo ==== [8] x
echo ==== [9] Hoofdmenu
@echo. 
@choice /C:123456789 /N /M "Maak uw keuze"
set security_menu_antwoord=%errorlevel%
::
if %security_menu_antwoord%==9 goto :hoofdmenu
if %security_menu_antwoord%==8 goto :office
if %security_menu_antwoord%==7 goto :office
if %security_menu_antwoord%==6 goto :office
if %security_menu_antwoord%==5 goto :office
if %security_menu_antwoord%==4 goto :office
if %security_menu_antwoord%==3 goto :office
if %security_menu_antwoord%==2 goto :office
if %security_menu_antwoord%==1 goto :securitytools
goto :security
::
@REM
@REM 11
:securitytools
winget install DominikReichl.KeePass --accept-package-agreements --accept-source-agreements
winget install KeePassXCTeam.KeePassXC --accept-package-agreements --accept-source-agreements
@REM
goto : security
@REM
