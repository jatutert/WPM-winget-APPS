@echo off
@cls
#
#
#
#
#   TTTTTT  U    U  TTTTTT  SSSSSS  OOOOOO  FFFFFF  TTTTTT
#     TT    U    U    TT    SS      O    O  FF        TT
#     TT    U    U    TT    SSSSSS  O    O  FFFF      TT
#     TT    U    U    TT        SS  O    O  FF        TT
#     TT    UUUUUU    TT    SSSSSS  OOOOOO  FF        TT
#
#     The Netherlands/Nederland/Niederlande/Pays Bas/Paisos Bajos
#     NL EU
#
#
#
#   Windows Desktop 
#   WinGet Application Installer
#
#
#   Makes your Windows ready for any use ! 
#
#
#   For Personal and/or Education Use Only ! 
#

#
#
#   ####################
#   DotNET DesktopRuntime
#   ####################
#
#

::  winget install Microsoft.DotNet.DesktopRuntime.8.x86 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.DotNet.DesktopRuntime.8.x64 --scope machine --accept-package-agreements --accept-source-agreements

#
#
#   ####################
#   MS VCRedist
#   ####################
#
#

@winget install Microsoft.VCRedist.2005.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2008.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2010.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2012.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2013.x64 --scope machine --accept-package-agreements --accept-source-agreements
@winget install Microsoft.VCRedist.2015+.x64 --scope machine --accept-package-agreements --accept-source-agreements

#
#
#   ####################
#   Windows Applications 
#   ####################
#
#

::  SHELL

@echo Terminal
@winget install Microsoft.WindowsTerminal
@winget install Microsoft.WindowsTerminal.Preview

@echo Command Shell
@winget install Microsoft.Powershell

::  Dynamic Theme
winget install 9NBLGGH1ZBKW

:: Internet WebBrowsers
::  Chromium
@winget install Microsoft.Edge.Dev   --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Google.Chrome        --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Brave.Brave.Beta     --accept-package-agreements --accept-source-agreements --locale nl-NL
@winget install Vivaldi.Vivaldi      --accept-package-agreements --accept-source-agreements --locale nl-NL
::  Gecko
@winget install Mozilla.Firefox.nl   --accept-package-agreements --accept-source-agreements

::  Internet Mail
winget install Mozilla.Thunderbird.nl --accept-package-agreements --accept-source-agreements

::  Internet Messengers
::
::  WhatsAPP
winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements

::  Office
winget install TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements

:: Graphics
winget install JGraph.Draw --accept-package-agreements --accept-source-agreements

:: AI
winget install ElementLabs.LMStudio --accept-package-agreements --accept-source-agreements

#
#
#   ####################
#   Tools
#   ####################
#
#

:: Cleaners
winget install WiseCleaner.WiseDiskCleaner          --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseRegistryCleaner      --accept-package-agreements --accept-source-agreements
winget install WiseCleaner.WiseProgramUninstaller   --accept-package-agreements --accept-source-agreements

:: Microsoft Tools
winget install Microsoft.PowerToys                  --accept-package-agreements --accept-source-agreements
winget install Microsoft.Sysinternals.Suite         --accept-package-agreements --accept-source-agreements

:: Application Updaters
winget Install PatchMyPC.PatchMyPC                  --accept-package-agreements --accept-source-agreements
winget Install Devolutions.UniGetUI                 --accept-package-agreements --accept-source-agreements

:: Windows Tweakers
winget install winaero.tweaker                      --accept-package-agreements --accept-source-agreements

:: Password Managers
winget install DominikReichl.KeePass                --accept-package-agreements --accept-source-agreements
winget install KeePassXCTeam.KeePassXC              --accept-package-agreements --accept-source-agreements

:: Zip
@winget install M2Team.NanaZip                       --accept-package-agreements --accept-source-agreements

:: Editors
@winget install Microsoft.Edit --scope machine       --accept-package-agreements --accept-source-agreements
@winget install GNU.Nano --scope machine             --accept-package-agreements --accept-source-agreements
@winget install Notepad++.Notepad++ --scope machine  --accept-package-agreements --accept-source-agreements

:: Internet File
@winget install cURL.cURL --scope machine            --accept-package-agreements --accept-source-agreements
@winget install GNU.Wget2 --scope machine            --accept-package-agreements --accept-source-agreements
@winget install Google.GoogleDrive                   --accept-package-agreements --accept-source-agreements

:: Printer
@winget install EPSON.PhotoPlus                      --accept-package-agreements --accept-source-agreements
@winget install EPSON.PrinterConnectionChecker       --accept-package-agreements --accept-source-agreements
@winget install EPSON.EpsonScan2                     --accept-package-agreements --accept-source-agreements
@winget install EPSON.Scan.PDFExtensions             --accept-package-agreements --accept-source-agreements
@winget install EPSON.ScanSmart                      --accept-package-agreements --accept-source-agreements
@winget install EPSON.EpsonNetPrint                  --accept-package-agreements --accept-source-agreements
@winget install EPSON.SoftwareUpdater                --accept-package-agreements --accept-source-agreements

:: Developer

@echo Developer
@winget install Git.Git --accept-package-agreements --accept-source-agreements
@winget install GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements
@winget Install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
@winget install Python.Python.3.14 --accept-package-agreements --accept-source-agreements

::  Docker

@echo Docker
@winget install wagoodman.dive --accept-package-agreements --accept-source-agreements

:: Kubernetes

@echo Kubernetes
@winget install kubernetes.kubectl                   --accept-package-agreements --accept-source-agreements
@winget install kubernetes.krew                      --accept-package-agreements --accept-source-agreements
@winget install kubernetes.minikube                  --accept-package-agreements --accept-source-agreements

