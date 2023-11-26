:: Installatie Applicaties 
:: Versie 1.01
:: 
:: "C:\Program Files (x86)\Mp3tag\Mp3tagUninstall.EXE"
:: "C:\Program Files\DAUM\PotPlayer\uninstall.exe"
:: "C:\Program Files\VideoLAN\VLC\uninstall.exe"
:: "C:\Program Files\obs-studio\uninstall.exe"
:: "C:\Program Files\MultiCommander (x64)\Uninstall MultiCommander.exe"
:: "C:\Program Files (x86)\TeamViewer\uninstall.exe"
:: "C:\Program Files\GIMP 2\uninst\unins000.exe" /SILENT
:: C:\Users\jtu03\AppData\Local\Discord\Update.exe --uninstall -s
:: "C:\Program Files\IrfanView\iv_uninstall.exe"
:: MsiExec.exe /X{B31222A7-E810-411F-90E8-F3B940138D7C}
::
@ECHO OFF
@CLS
::
:: ========================== Visual C++ Runtime ========================================================
::
ECHO Installatie Microsoft Visual Runtime 2005 x86
winget install --id Microsoft.VCRedist.2005.x86 --accept-package-agreements --accept-source-agreements --silent
if %ERRORLEVEL% EQU 0 Echo Microsoft Visual Runtime 2005 x86 succesvol geïnstalleerd 
::
ECHO Installatie Microsoft Visual Runtime 2005 x64 
winget install --id Microsoft.VCRedist.2005.x64 --accept-package-agreements --accept-source-agreements --silent
if %ERRORLEVEL% EQU 0 Echo Microsoft Visual Runtime 2005 x64 succesvol geïnstalleerd 
::
ECHO Installatie Microsoft Visual Runtime 2008 x86
winget install --id Microsoft.VCRedist.2008.x86 --accept-package-agreements --accept-source-agreements --silent
if %ERRORLEVEL% EQU 0 Echo Microsoft Visual Runtime 2008 x86 succesvol geïnstalleerd 
::
ECHO Installatie Microsoft Visual Runtime 2008 x64 
winget install --id Microsoft.VCRedist.2008.x64 --accept-package-agreements --accept-source-agreements --silent
if %ERRORLEVEL% EQU 0 Echo Microsoft Visual Runtime 2008 x86 succesvol geïnstalleerd 
::
ECHO Installatie Microsoft Visual Runtime 2010 x86 en x64 
winget install --id Microsoft.VCRedist.2010.x86 --accept-package-agreements --accept-source-agreements --silent
winget install --id Microsoft.VCRedist.2010.x64 --accept-package-agreements --accept-source-agreements --silent
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
winget install --id 9NZVDKPMR9RD --accept-package-agreements --accept-source-agreements
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
:: Installatie OBS Studio
:: https://apps.microsoft.com/store/detail/XPFFH613W8V6LV
winget install --id XPFFH613W8V6LV --accept-package-agreements --accept-source-agreements
::
:: Installatie VirtualDJ
:: https://apps.microsoft.com/store/detail/XPDC1LX9VNW7Z7
winget install --id AtomixProductions.VirtualDJ --accept-package-agreements --accept-source-agreements
::
:: Installatie DisplayLink Manager
:: https://www.microsoft.com/store/productId/9N09F8V8FS02
winget install --id 9N09F8V8FS02 --accept-package-agreements --accept-source-agreements
::
:: ========================== Tools ========================================================
::
:: Installatie 7-Zip
:: https://apps.microsoft.com/store/detail/XPDNKVCX4QD2DC
winget install --id XPDNKVCX4QD2DC --accept-package-agreements --accept-source-agreements
::
:: Installatie CCleaner
:: https://apps.microsoft.com/store/detail/XPFCWP0SQWXM3V
winget install --id XPFCWP0SQWXM3V --accept-package-agreements --accept-source-agreements
::
:: Installatie MultiCommander
:: https://www.microsoft.com/store/productId/9NBLGGH4NFS5
winget install --id 9NBLGGH4NFS5 --accept-package-agreements --accept-source-agreements
::
:: Installatie Putty
:: https://apps.microsoft.com/store/detail/XPFNZKSKLBP7RJ
winget install --id XPFNZKSKLBP7RJ --accept-package-agreements --accept-source-agreements
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
winget install --id 9NWL6S3NTPZ8 --accept-package-agreements --accept-source-agreements
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
winget install --id 9WZDNCRFJ364 --accept-package-agreements --accept-source-agreements
:: 
:: Instalatie TeamViewer
:: https://apps.microsoft.com/store/detail/XPDM17HK323C4X
winget install --id XPDM17HK323C4X --accept-package-agreements --accept-source-agreements
::
:: ========================== Grafisch ========================================================
::
:: Installatie GIMP 
:: https://apps.microsoft.com/store/detail/XPDM27W10192Q0
winget install --id XPDM27W10192Q0 --accept-package-agreements --accept-source-agreements
::
:: Installatie IfranView
:: https://www.microsoft.com/store/productId/9NL0R0JNNZM0
winget install --id 9NL0R0JNNZM0 --accept-package-agreements --accept-source-agreements
:: 
:: Installatie Inkscape
:: https://www.microsoft.com/store/productId/9PD9BHGLFC7H
winget install --id 9PD9BHGLFC7H --accept-package-agreements --accept-source-agreements
::
:: Installatie Draw.IO
:: https://www.microsoft.com/store/productId/9MVVSZK43QQW
winget install --id 9MVVSZK43QQW --accept-package-agreements --accept-source-agreements
::
:: ========================== Documenten ========================================================
::
:: Installatie Adobe Reader DC
:: https://apps.microsoft.com/store/detail/XPDP273C0XHQH2
winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
::
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