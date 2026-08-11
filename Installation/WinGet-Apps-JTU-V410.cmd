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
@echo WinGET Database bijwerken
@winget update


Keuze 1 Systeem
Keuze 2 Development 
Keuze 3 Internet
Keuze 4 MultiMedia
Keuze 5 Office

@REM 1-1
:applicationmanagers

winget Install PatchMyPC.PatchMyPC                  --accept-package-agreements --accept-source-agreements
winget Install Devolutions.UniGetUI                 --accept-package-agreements --accept-source-agreements

goto :

@REM 1-2
:filemanagementbackup

winget install JumpingBytes.PureSync.Personal --accept-package-agreements --accept-source-agreements
winget install Piriform.Recuva --accept-package-agreements --accept-source-agreements
winget install M2Team.NanaZip --accept-package-agreements --accept-source-agreements

goto:

@REM 1-3
:other

winget install Lenovo.SystemUpdate
winget install 9WZDNCRFJ4MV

goto : 

@REM 1-4
:systemcustomizationtweaking

winget install HelmutBuhler.8GadgetPack --accept-package-agreements --accept-source-agreements
winget install Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
winget install Microsoft.Sysinternals.Suite --accept-package-agreements --accept-source-agreements
winget install winaero.tweaker --accept-package-agreements --accept-source-agreements
winget install 9NBLGGH1ZBKW

goto :


@REM 1-5
:utilitiessystemtools

winget install Piriform.CCleaner                    --accept-package-agreements --accept-source-agreements
winget install EaseUS.PartitionMaster
winget install REALiX.HWiNFO
winget install XPDLMDV4FVRFW0                       --accept-package-agreements --accept-source-agreements
winget install RevoUninstaller.RevoUninstaller      --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseDiskCleaner          --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseRegistryCleaner      --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseProgramUninstaller   --accept-package-agreements --accept-source-agreements
winget install Microsoft.WindowsTerminal
winget install Microsoft.WindowsTerminal.Preview

goto :


@REM 1-6
:updateprintertools
winget install EPSON.PhotoPlus                      --accept-package-agreements --accept-source-agreements
winget install EPSON.PrinterConnectionChecker       --accept-package-agreements --accept-source-agreements
winget install EPSON.EpsonScan2                     --accept-package-agreements --accept-source-agreements
winget install EPSON.Scan.PDFExtensions             --accept-package-agreements --accept-source-agreements
winget install EPSON.ScanSmart                      --accept-package-agreements --accept-source-agreements
winget install EPSON.EpsonNetPrint                  --accept-package-agreements --accept-source-agreements
winget install EPSON.SoftwareUpdater                --accept-package-agreements --accept-source-agreements

goto :


@REM ===========================================================================================================


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

goto :


@REM ===========================================================================================================


@REM 3-1
:messagingcommunication

winget install XP89119P9F2PCQ --accept-package-agreements --accept-source-agreements
winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements

goto:


@REM 3-2
:networkingonline

winget install Google.GoogleDrive --accept-package-agreements --accept-source-agreements
winget install cURL.cURL --scope machine --accept-package-agreements --accept-source-agreements
winget install GNU.Wget2 --scope machine --accept-package-agreements --accept-source-agreements

goto :


@REM 3-3
:webbrowsers


winget install Brave.Brave.Beta     --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install Google.Chrome        --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install Microsoft.Edge.Dev   --accept-package-agreements --accept-source-agreements --locale nl-NL
winget install Mozilla.Firefox.nl   --accept-package-agreements --accept-source-agreements
winget install Vivaldi.Vivaldi      --accept-package-agreements --accept-source-agreements --locale nl-NL

goto : 




@REM 4
:gaming

winget install FelixRieseberg.Windows95 --accept-package-agreements --accept-source-agreements


goto:

@REM 4-1

:imagegraphics

winget install Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseImageX --accept-package-agreements --accept-source-agreements

goto :


@REM 4-2
:multimediatools

winget install gimp.gimp --accept-package-agreements --accept-source-agreements
winget install HandBrake.HandBrake --accept-package-agreements --accept-source-agreements
winget install IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
winget install CodecGuide.K-LiteCodecPack.Mega --accept-package-agreements --accept-source-agreements
winget install XPFFH613W8V6LV --accept-package-agreements --accept-source-agreements
winget install Daum.PotPlayer --accept-package-agreements --accept-source-agreements
winget install VideoLAN.VLC  --accept-package-agreements --accept-source-agreements
winget install AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseVideoConverter --accept-package-agreements --accept-source-agreements

goto :



@REM 5
:productivityoffice

winget install calibre.calibre --accept-package-agreements --accept-source-agreements
winget install JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install Foxit.FoxitReader --accept-package-agreements --accept-source-agreements
winget install TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements
winget install Mozilla.Thunderbird.nl --accept-package-agreements --accept-source-agreements
winget install 9NBLGGH5R558 --accept-package-agreements --accept-source-agreements

goto :

@REM 11
:security

winget install DominikReichl.KeePass                --accept-package-agreements --accept-source-agreements
winget install KeePassXCTeam.KeePassXC              --accept-package-agreements --accept-source-agreements

goto :












