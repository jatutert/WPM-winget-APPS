::
:: Windows Application Update 
:: Version 1 
:: Build 6
:: 20 april 2024
::
:: Auteur John Tutert
::
:: For Personal or Educational Use Only ! 
::
:: Verwijderen om later bij te kunnen werken 
@winget uninstall "SURF.eduVPNClient" --force
::
:: Verwijderen zodat niet aanwezig is vanwege beleid 
@winget uninstall --id Oracle.JavaRuntimeEnvironment --silent --force --accept-package-agreements --accept-source-agreements
:: @winget uninstall --id Oracle.JavaRuntimeEnvironment -a x64 --silent --force --accept-package-agreements --accept-source-agreements
::
:: Bijwerken
::
:: RUNTIMES
::
@echo Updating Runtime gestart ...  
:: x86
@winget upgrade --id Microsoft.VCRedist.2005.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2008.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2010.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2012.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2013.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2015+.x86 -a x86 --silent --accept-package-agreements --accept-source-agreements
:: x64
@winget upgrade --id Microsoft.VCRedist.2005.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2008.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2010.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2012.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2013.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
@winget upgrade --id Microsoft.VCRedist.2015+.x64 -a x64 --silent --accept-package-agreements --accept-source-agreements
:: .NET
@winget update --id Microsoft.DotNet.DesktopRuntime.5 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.DesktopRuntime.6 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.DesktopRuntime.7 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.DesktopRuntime.8 --silent --accept-package-agreements --accept-source-agreements
:: ASP.NET
@winget update --id Microsoft.DotNet.AspNetCore.5 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.AspNetCore.6 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.AspNetCore.7 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.DotNet.AspNetCore.8 --silent --accept-package-agreements --accept-source-agreements
:: APP Runtime 
@winget update --id Microsoft.WindowsAppRuntime.1.3 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.WindowsAppRuntime.1.4 --silent --accept-package-agreements --accept-source-agreements
@winget update --id Microsoft.WindowsAppRuntime.1.5 --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id Microsoft.AppInstaller --silent --accept-package-agreements --accept-source-agreements
:: 
@winget update --id Microsoft.EdgeWebView2Runtime --silent --accept-package-agreements --accept-source-agreements
::
:: SYSTEM TOOLS
:: 
@echo Updating System Tools gestart ...
::
winget update --id Microsoft.WindowsTerminal --silent --accept-package-agreements --accept-source-agreements
winget update --id Microsoft.PowerToys --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id 7zip.7zip --silent --accept-package-agreements --accept-source-agreements
::
winget update --id cURL.cURL --silent --accept-package-agreements --accept-source-agreements
winget update --id GNU.Wget2 --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id Kubernetes.minikube --silent --accept-package-agreements --accept-source-agreements
winget update --id Kubernetes.kubectl --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id Hashicorp.Terraform --silent --accept-package-agreements --accept-source-agreements
winget update --id Hashicorp.Vagrant --silent --accept-package-agreements --accept-source-agreements
:: winget update --id Canonical.Multipass --silent --accept-package-agreements --accept-source-agreements --force 
::
winget update --id Microsoft.VisualStudioCode.Insiders --silent --accept-package-agreements --accept-source-agreements
:: winget update --id JetBrains.IntelliJIDEA.Ultimate.EAP --silent --accept-package-agreements --accept-source-agreements
winget update --id GitHub.GitHubDesktop --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id IObit.DriverBooster --silent --accept-package-agreements --accept-source-agreements --uninstall-previous
::
:: Wise Registry Cleaner Free 
winget update --id XPDLS1XBTXVPP4 --silent --accept-package-agreements --accept-source-agreements
winget update --id WiseCleaner.WiseDiskCleaner --silent --accept-package-agreements --accept-source-agreements
:: Privacy Eraser Free
winget update --id XPDLMDV4FVRFW0 --silent --accept-package-agreements --accept-source-agreements
:: 
winget update --id DominikReichl.KeePass --silent --accept-package-agreements --accept-source-agreements 
::
winget install --id SURF.eduVPNClient --silent --accept-package-agreements --accept-source-agreements --force
::
:: WEB BROWSERS
:: 
winget update --id Brave.Brave --silent --accept-package-agreements --accept-source-agreements --force
winget update --id Microsoft.Edge --silent --accept-package-agreements --accept-source-agreements --force 
winget update --id Google.Chrome --silent --accept-package-agreements --accept-source-agreements --force 
winget update --id Mozilla.Firefox --silent --accept-package-agreements --accept-source-agreements --force 
::
winget update --id Adobe.Acrobat.Reader.64-bit --silent --accept-package-agreements --accept-source-agreements 
:: 
:: MultiMedia
winget update --id Daum.PotPlayer --silent --accept-package-agreements --accept-source-agreements
winget update --id HandBrake.HandBrake --silent --accept-package-agreements --accept-source-agreements
winget update --id Daum.PotPlayer --silent --accept-package-agreements --accept-source-agreements --force 
winget update --id AtomixProductions.VirtualDJ --silent --accept-package-agreements --accept-source-agreements
winget update --id OBSProject.OBSStudio --silent --accept-package-agreements --accept-source-agreements