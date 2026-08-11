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
@REM
@REM
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM   DotNET DesktopRuntime
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM
@REM
@echo DotNET Runtimes
@REM  winget install Microsoft.DotNet.DesktopRuntime.8.x86 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.DotNet.DesktopRuntime.8.x64 --scope machine --accept-package-agreements --accept-source-agreements

@REM
@REM
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM   MS VCRedist
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM
@REM
@echo MS VCRedist
@winget install Microsoft.VCRedist.2005.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2008.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2010.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2012.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2013.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2015+.x64 --scope machine --accept-package-agreements --accept-source-agreements

@REM
@REM
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM   Windows Applications 
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM
@REM

@REM  SHELL

@echo Terminal
@winget install Microsoft.WindowsTerminal
@winget install Microsoft.WindowsTerminal.Preview

@echo Command Shell
@winget install Microsoft.Powershell

@REM  Dynamic Theme
winget install 9NBLGGH1ZBKW

@REM Internet WebBrowsers
@echo Chromium
@winget install Microsoft.Edge.Dev   --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Google.Chrome        --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Brave.Brave.Beta     --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Vivaldi.Vivaldi      --accept-package-agreements --accept-source-agreements --locale nl-NL
@echo Gecko
@winget install Mozilla.Firefox.nl   --accept-package-agreements --accept-source-agreements

@REM  Internet Mail
winget install Mozilla.Thunderbird.nl --accept-package-agreements --accept-source-agreements

@REM  Internet Messengers
@REM
@REM  WhatsAPP
winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements

@REM  Office
winget install TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements

@REM To Do
winget install 9NBLGGH5R558 --accept-package-agreements --accept-source-agreements

@REM Graphics
winget install JGraph.Draw --accept-package-agreements --accept-source-agreements
winget install Inkscape.Inkscape --accept-package-agreements --accept-source-agreements

@REM AI
winget install ElementLabs.LMStudio --accept-package-agreements --accept-source-agreements
winget install XP9CXNGPPJ97XX --accept-package-agreements --accept-source-agreements

@REM
@REM
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM   Tools
@REM   :::::::::::::::::::::::::::::::::::::::::::::::::::::
@REM
@REM

@REM Cleaners
winget install WiseCleaner.WiseDiskCleaner          --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseRegistryCleaner      --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseProgramUninstaller   --accept-package-agreements --accept-source-agreements
winget install RevoUninstaller.RevoUninstaller      --accept-package-agreements --accept-source-agreements
winget install XPDLMDV4FVRFW0                       --accept-package-agreements --accept-source-agreements
winget install Piriform.CCleaner                    --accept-package-agreements --accept-source-agreements

@REM Lenovo
winget install Lenovo.SystemUpdate
winget install 9WZDNCRFJ4MV

@REM Microsoft Tools
winget install Microsoft.PowerToys                  --accept-package-agreements --accept-source-agreements
winget install Microsoft.Sysinternals.Suite         --accept-package-agreements --accept-source-agreements

@REM Application Updaters
winget Install PatchMyPC.PatchMyPC                  --accept-package-agreements --accept-source-agreements
winget Install Devolutions.UniGetUI                 --accept-package-agreements --accept-source-agreements

@REM Windows Tweakers
winget install winaero.tweaker                      --accept-package-agreements --accept-source-agreements

@REM Password Managers
winget install DominikReichl.KeePass                --accept-package-agreements --accept-source-agreements
winget install KeePassXCTeam.KeePassXC              --accept-package-agreements --accept-source-agreements

@REM Zip
@winget install M2Team.NanaZip                       --accept-package-agreements --accept-source-agreements

@REM Editors
@winget install Microsoft.Edit --scope machine       --accept-package-agreements --accept-source-agreements
@winget install GNU.Nano                             --accept-package-agreements --accept-source-agreements
@winget install Notepad++.Notepad++ --scope machine  --accept-package-agreements --accept-source-agreements

@REM Internet File
@winget install cURL.cURL --scope machine            --accept-package-agreements --accept-source-agreements
@winget install GNU.Wget2 --scope machine            --accept-package-agreements --accept-source-agreements
@winget install Google.GoogleDrive                   --accept-package-agreements --accept-source-agreements

@REM Printer
@winget install EPSON.PhotoPlus                      --accept-package-agreements --accept-source-agreements
@winget install EPSON.PrinterConnectionChecker       --accept-package-agreements --accept-source-agreements
@winget install EPSON.EpsonScan2                     --accept-package-agreements --accept-source-agreements
@winget install EPSON.Scan.PDFExtensions             --accept-package-agreements --accept-source-agreements
@winget install EPSON.ScanSmart                      --accept-package-agreements --accept-source-agreements
@winget install EPSON.EpsonNetPrint                  --accept-package-agreements --accept-source-agreements
@winget install EPSON.SoftwareUpdater                --accept-package-agreements --accept-source-agreements

@REM MultiMedia
@winget install VideoLAN.VLC  --accept-package-agreements --accept-source-agreements
@winget install Daum.PotPlayer --accept-package-agreements --accept-source-agreements
@winget install AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements

@REM Developer

@echo Developer
@winget install Git.Git --accept-package-agreements --accept-source-agreements
@winget install GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements
@winget Install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
@winget install Python.Python.3.14 --accept-package-agreements --accept-source-agreements

@REM  Docker

@echo Docker
@winget install wagoodman.dive --accept-package-agreements --accept-source-agreements

@REM Kubernetes

@echo Kubernetes
@winget install kubernetes.kubectl                   --accept-package-agreements --accept-source-agreements
@winget install kubernetes.krew                      --accept-package-agreements --accept-source-agreements
@winget install kubernetes.minikube                  --accept-package-agreements --accept-source-agreements

