::
:: Windows Application Update 
:: Version 1 
:: Build 7
:: 16 juni 2024
::
:: Auteur John Tutert
::
:: For Personal or Educational Use Only ! 
::
::
::
@NET SESSION >nul 2>&1
@IF %ERRORLEVEL% EQU 0 (
    @ECHO Administrator PRIVILEGES Detected! 
) ELSE (
    @ECHO Script NIET gestart met Adminstrator rechten ! 
    @PAUSE
    @EXIT 1
)
::
::
@echo #### Verwijderen Applicaties ... 
::
:: Verwijderen om later bij te kunnen werken 
@winget uninstall "SURF.eduVPNClient" --force
@winget uninstall "JumpingBytes.PureSync.Personal" --force
:: @winget uninstall --id Microsoft.VCRedist.2013.x64 --force 
::
:: Verwijderen zodat niet aanwezig is vanwege beleid 
@winget uninstall --id Oracle.JavaRuntimeEnvironment --force
:: @winget uninstall --id Oracle.JavaRuntimeEnvironment -a x64 --silent --force --accept-package-agreements --accept-source-agreements
::
:: Bijwerken
::
:: RUNTIMES
::
@echo #### Updating Runtime gestart ...  
:: x86
@winget upgrade --id Microsoft.VCRedist.2005.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2008.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2010.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2012.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2013.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2015+.x86 -a x86 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: x64
@winget upgrade --id Microsoft.VCRedist.2005.x64 -a x64 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2008.x64 -a x64 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2010.x64 -a x64 --force --accept-package-agreements --accept-source -agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2012.x64 -a x64 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2013.x64 -a x64 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2015+.x64 -a x64 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: .NET
@winget update --id Microsoft.DotNet.DesktopRuntime.5 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.6 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.7 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.8 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: ASP.NET
@winget update --id Microsoft.DotNet.AspNetCore.5 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.6 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.7 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.8 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: APP Runtime 
@winget update --id Microsoft.WindowsAppRuntime.1.3 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.WindowsAppRuntime.1.4 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.WindowsAppRuntime.1.5 --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
@winget update --id Microsoft.AppInstaller --force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
@winget update --id Microsoft.EdgeWebView2Runtime --force --accept-package-agreements --accept-source-agreements >nul 2>&1
::
@winget update --id EclipseAdoptium.Temurin.23.JRE --force --accept-package-agreements --accept-source-agreements >nul 2>&1


:: SYSTEM TOOLS
:: 
@echo #### Updating System Tools gestart ...
::
:: 	Microsoft
@winget update --id Microsoft.WindowsTerminal --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.PowerToys --force --accept-package-agreements --accept-source-agreements
:: Xbox Game BAR 
@winget update --id 9NZKPSTSNW4P --force 
:: 
@winget update --id 7zip.7zip --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget install --id JumpingBytes.PureSync.Personal --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
::
::	Linux Tools
@winget update --id cURL.cURL --force --accept-package-agreements --accept-source-agreements
@winget update --id GNU.Wget2 --force --accept-package-agreements --accept-source-agreements
:: 
::	Container Orchestration 
@winget update --id Kubernetes.minikube --force --accept-package-agreements --accept-source-agreements
@winget update --id Kubernetes.kubectl --force --accept-package-agreements --accept-source-agreements
:: 
::	Infrastructure as Code 
@winget update --id Hashicorp.Terraform --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Hashicorp.Vagrant --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
:: winget update --id Canonical.Multipass --silent --accept-package-agreements --accept-source-agreements --force 
::
::	Development 
@winget update --id Microsoft.VisualStudioCode.Insiders --force --accept-package-agreements --accept-source-agreements
:: winget update --id JetBrains.IntelliJIDEA.Ultimate.EAP --silent --accept-package-agreements --accept-source-agreements
@winget update --id GitHub.GitHubDesktop --force --accept-package-agreements --accept-source-agreements
@winget update --id Git.Git --force --accept-package-agreements --accept-source-agreements
:: 
::	Drivers
@winget update --id IObit.DriverBooster --silent --accept-package-agreements --accept-source-agreements
::
::	Virtualisatie
winget update --id SoftwareFreedomConservancy.QEMU  --silent --accept-package-agreements --accept-source-agreements
winget update --id Oracle.VirtualBox --silent --accept-package-agreements --accept-source-agreements
:: 
::	ISO Tooling 
@winget update --id Nlitesoft.NTLite --silent --accept-package-agreements --accept-source-agreements
@winget update --id PowerSoftware.AnyBurn --silent --accept-package-agreements --accept-source-agreements
::
:: Wise Registry Cleaner Free 
@winget update --id XPDLS1XBTXVPP4 --force --accept-package-agreements --accept-source-agreements
@winget update --id WiseCleaner.WiseDiskCleaner --force --accept-package-agreements --accept-source-agreements
:: Privacy Eraser Free
@winget update --id XPDLMDV4FVRFW0 --silent --accept-package-agreements --accept-source-agreements
:: 
@winget update --id DominikReichl.KeePass --silent --accept-package-agreements --accept-source-agreements 
::
@winget install --id SURF.eduVPNClient --silent --accept-package-agreements --accept-source-agreements --force
::
:: WEB BROWSERS
:: 
@echo #### Updaten WEB browsers ... 
::	Chromium 
::	https://www.chromium.org/Home/
::
@winget update --id Brave.Brave 				--silent --accept-package-agreements --accept-source-agreements --force
:: @winget update --id Microsoft.Edge 				--silent --accept-package-agreements --accept-source-agreements --force 
@winget update --id Google.Chrome 				--silent --accept-package-agreements --accept-source-agreements --force 
::
::	Mozilla
@winget update --id Mozilla.Firefox 			--silent --accept-package-agreements --accept-source-agreements --force 
::
@echo #### PDF Tooling ....
::
:: Adobe
@winget update --id Adobe.Acrobat.Reader.64-bit	--silent --accept-package-agreements --accept-source-agreements 
:: 
:: MultiMedia
@echo #### Update Multimedia ... 
@winget update --id Daum.PotPlayer --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id HandBrake.HandBrake --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Daum.PotPlayer --force --accept-package-agreements --accept-source-agreements --force >nul 2>&1
@winget update --id AtomixProductions.VirtualDJ --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id OBSProject.OBSStudio --force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id FlorianHeidenreich.Mp3tag --force --accept-package-agreements --accept-source-agreements >nul 2>&1
::
:: Grafisch
@echo #### Update Grafisch ...
@winget update --id JGraph.Draw --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Inkscape.Inkscape --silent --accept-package-agreements --accept-source-agreements >nul 2>&1