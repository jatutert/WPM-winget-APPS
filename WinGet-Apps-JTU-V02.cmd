:: Installatie Applicaties 
:: Versie 2.0 12-11-2022
:: 
@ECHO OFF
@CLS
::
:: ================================= Microsoft Visual Runtime =========================================
::
@ECHO Microsoft Visual Runtimes
::
:: == Versie 2005
winget list --id "Microsoft.VCRedist.2005.x86"
IF %ERRORLEVEL% NEQ 0 ( 
winget install --id "Microsoft.VCRedist.2005.x86" --accept-package-agreements --accept-source-agreements --silent
)
winget list --id "Microsoft.VCRedist.2005.x64"
IF %ERRORLEVEL% NEQ 0 ( 
winget install --id "Microsoft.VCRedist.2005.x64" --accept-package-agreements --accept-source-agreements --silent 
)
:: == Versie 2008
winget list --id "Microsoft.VC++2008Redist-x86"
IF %ERRORLEVEL% NEQ 0 ( 
winget install --id "Microsoft.VC++2008Redist-x86" --accept-package-agreements --accept-source-agreements --silent
)
winget list --id "Microsoft.VC++2008Redist-x64"
IF %ERRORLEVEL% NEQ 0 ( 
winget install --id "Microsoft.VC++2008Redist-x64" --accept-package-agreements --accept-source-agreements --silent 
)
::
:: == Versie 2010
winget list --id Microsoft.VCRedist.2010.x64
winget install --id Microsoft.VCRedist.2010.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.VCRedist.2010.x64 --accept-package-agreements --accept-source-agreements --silent
::
:: ================================= Microsoft Visual Runtime 2012 =========================================
::
ECHO Installatie Microsoft Visual Runtime 2012 x86 en x64 
winget install --id Microsoft.VCRedist.2012.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.VCRedist.2012.x64 --accept-package-agreements --accept-source-agreements --silent
::
ECHO Installatie Microsoft Visual Runtime 2013 x86 en x64 
winget install --id Microsoft.VCRedist.2013.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.VCRedist.2013.x64 --accept-package-agreements --accept-source-agreements --silent
::
ECHO Installatie Microsoft Visual Runtime 2015 x86 en x64 
winget install --id Microsoft.VCRedist.2015+.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.VCRedist.2015+.x64 --accept-package-agreements --accept-source-agreements --silent
::
:: ========================== Browsers ========================================================
::
:: Installatie Vivaldi
ECHO Installatie Vivaldi Browser
winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements --silent
if %ERRORLEVEL% EQU 0 Echo Vivaldi Browser succesvol geïnstalleerd 
::
:: Installatie Microsoft Edge
:: https://apps.microsoft.com/store/detail/XPFFTQ037JWMHS
ECHO Installatie Microsoft Edge
winget install --id Microsoft.Edge --accept-package-agreements --accept-source-agreements
if %ERRORLEVEL% EQU 0 Echo Microsoft Edge succesvol geïnstalleerd 
::
:: Installate FireFox MSIX versie 
:: https://www.microsoft.com/store/productId/9NZVDKPMR9RD
winget install --id Mozilla.Firefox --accept-package-agreements --accept-source-agreements
::
:: ========================== MultiMedia ========================================================
::
:: Installatie iTunes
:: https://www.microsoft.com/store/productId/9PB2MZ1ZMB1S
:: winget install --id Apple.iTunes --accept-package-agreements --accept-source-agreements
::
:: Installatie MP3Tag
:: https://www.microsoft.com/store/productId/9NN77TCQ1NC8
winget install --id Mp3tag.Mp3tag --accept-package-agreements --accept-source-agreements
::
:: Installatie PotPlayer
:: https://apps.microsoft.com/store/detail/XP8BSBGQW2DKS0
winget install --id Daum.PotPlayer --accept-package-agreements --accept-source-agreements
:: 
:: Installatie VLC
:: https://apps.microsoft.com/store/detail/XPDM1ZW6815MQM
winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
::
:: Installatie OpenShot Video Editor
winget install --id OpenShot.OpenShot --accept-package-agreements --accept-source-agreements
::
:: Installatie OBS Studio
:: https://apps.microsoft.com/store/detail/XPFFH613W8V6LV
winget install --id OBSProject.OBSStudio --accept-package-agreements --accept-source-agreements
::
:: Installatie VirtualDJ
:: https://apps.microsoft.com/store/detail/XPDC1LX9VNW7Z7
winget install --id AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
::
:: Installatie DisplayLink Manager
:: https://www.microsoft.com/store/productId/9N09F8V8FS02
winget install --id DisplayLink.GraphicsDriver --accept-package-agreements --accept-source-agreements
winget install --id 9N09F8V8FS02 --accept-package-agreements --accept-source-agreements
::
:: ========================== Tools ========================================================
::
:: Installatie 7-Zip
:: https://apps.microsoft.com/store/detail/XPDNKVCX4QD2DC
winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
::
:: Installatie CCleaner
:: https://apps.microsoft.com/store/detail/XPFCWP0SQWXM3V
winget install --id Piriform.CCleaner --accept-package-agreements --accept-source-agreements
::
:: Installatie MultiCommander
:: https://www.microsoft.com/store/productId/9NBLGGH4NFS5
winget install --id MathiasSvensson.MultiCommander --accept-package-agreements --accept-source-agreements
::
:: Installatie Putty
:: https://apps.microsoft.com/store/detail/XPFNZKSKLBP7RJ
winget install --id PuTTY.PuTTY --accept-package-agreements --accept-source-agreements
::
:: Installatie Wifi analyzer
:: https://www.microsoft.com/store/productId/9NBLGGH33N0N
winget install --id 9NBLGGH33N0N --accept-package-agreements --accept-source-agreements
::
:: Installatie Terminal 
:: https://www.microsoft.com/store/productId/9N0DX20HK701
winget install --id 9N0DX20HK701 --accept-package-agreements --accept-source-agreements
::
:: Installatie WireGuard Pro
:: https://www.microsoft.com/store/productId/9NWL6S3NTPZ8
winget install --id WireGuard.WireGuard --accept-package-agreements --accept-source-agreements
::
:: Installatie DriverBooster
winget install --id IObit.DriverBooster --accept-package-agreements --accept-source-agreements
::
:: Installatie KeePass
winget install --id DominikReichl.KeePass --accept-package-agreements --accept-source-agreements
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
:: ========================== Social ========================================================
::
:: Installatie Discord
:: https://apps.microsoft.com/store/detail/XPDC2RH70K22MN
winget install --id XPDC2RH70K22MN --accept-package-agreements --accept-source-agreements
::
:: Installatie Skype
:: https://www.microsoft.com/store/productId/9WZDNCRFJ364
winget install --id Microsoft.Skype --accept-package-agreements --accept-source-agreements
:: 
:: Instalatie TeamViewer
:: https://apps.microsoft.com/store/detail/XPDM17HK323C4X
winget install --id TeamViewer.TeamViewer --accept-package-agreements --accept-source-agreements
::
:: ========================== Grafisch ========================================================
::
:: Installatie GIMP 
:: https://apps.microsoft.com/store/detail/XPDM27W10192Q0
winget install --id GIMP.GIMP --accept-package-agreements --accept-source-agreements
::
:: Installatie IfranView
:: https://www.microsoft.com/store/productId/9NL0R0JNNZM0
winget install --id IrfanSkiljan.IrfanView --accept-package-agreements --accept-source-agreements
:: 
:: Installatie Inkscape
:: https://www.microsoft.com/store/productId/9PD9BHGLFC7H
winget install --id Inkscape.Inkscape --accept-package-agreements --accept-source-agreements
::
:: Installatie Draw.IO
:: https://www.microsoft.com/store/productId/9MVVSZK43QQW
winget install --id JGraph.Draw --accept-package-agreements --accept-source-agreements
::
:: Installatie XnView 
winget install --id XnSoft.XnView.Classic --accept-package-agreements --accept-source-agreements
::
:: ========================== Documenten ========================================================
::
:: Installatie Adobe Reader DC
winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
::
:: Installatie Calibre Library
winget install --id calibre.calibre --accept-package-agreements --accept-source-agreements
::
:: Installatie OneDrive
:: https://www.microsoft.com/store/productId/9WZDNCRFJ1P3
winget install --id 9WZDNCRFJ1P3 --accept-package-agreements --accept-source-agreements
::
:: ========================== Netwerken ========================================================
::
:: Installatie SpeedTest
:: https://www.microsoft.com/store/productId/9NBLGGH4Z1JC
winget install --id 9NBLGGH4Z1JC --accept-package-agreements --accept-source-agreements
::
:: ========================== Productiviteit ========================================================
::
:: Installatie Microsoft Teams
:: https://apps.microsoft.com/store/detail/XP8BT8DW290MPQ
:: winget install --id XP8BT8DW290MPQ --accept-package-agreements --accept-source-agreements
::
:: The End