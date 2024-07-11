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
:: Verwijderen om later bij te kunnen werken 
@winget uninstall "SURF.eduVPNClient" --force
@winget uninstall --id Microsoft.VCRedist.2013.x64 --force 
::
:: Verwijderen zodat niet aanwezig is vanwege beleid 
@echo Verwijderen Applicaties ... 
@winget uninstall --id Oracle.JavaRuntimeEnvironment --force
:: @winget uninstall --id Oracle.JavaRuntimeEnvironment -a x64 --silent --force --accept-package-agreements --accept-source-agreements
::
:: Bijwerken
::
:: RUNTIMES
::
@echo Updating Runtime gestart ...  
:: x86
@winget upgrade --id Microsoft.VCRedist.2005.x86 -a x86		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2008.x86 -a x86		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2010.x86 -a x86 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2012.x86 -a x86 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2013.x86 -a x86 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2015+.x86 -a x86 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: x64
@winget upgrade --id Microsoft.VCRedist.2005.x64 -a x64 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2008.x64 -a x64 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2010.x64 -a x64 	--force --accept-package-agreements --accept-source -agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2012.x64 -a x64 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2013.x64 -a x64 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget upgrade --id Microsoft.VCRedist.2015+.x64 -a x64 	--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: .NET
@winget update --id Microsoft.DotNet.DesktopRuntime.5 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.6 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.7 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.DesktopRuntime.8 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: ASP.NET
@winget update --id Microsoft.DotNet.AspNetCore.5 			--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.6 			--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.7 			--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.DotNet.AspNetCore.8 			--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: APP Runtime 
@winget update --id Microsoft.WindowsAppRuntime.1.3 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.WindowsAppRuntime.1.4 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.WindowsAppRuntime.1.5 		--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
@winget update --id Microsoft.AppInstaller 					--force --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
@winget update --id Microsoft.EdgeWebView2Runtime 			--force --accept-package-agreements --accept-source-agreements >nul 2>&1
::
:: SYSTEM TOOLS
:: 
@echo #### Updating System Tools gestart ...
::
:: 	Microsoft
@winget update --id Microsoft.WindowsTerminal --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Microsoft.PowerToys --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
:: Xbox Game BAR 
@winget update --id 9NZKPSTSNW4P --force 
:: 
@winget update --id 7zip.7zip	--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
::
::	Linux Tools
@winget update --id cURL.cURL 	--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id GNU.Wget2 	--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
::	Container Orchestration 
@winget update --id Kubernetes.minikube --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Kubernetes.kubectl --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
:: 
::	Infrastructure as Code 
@winget update --id Hashicorp.Terraform --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Hashicorp.Vagrant --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
:: winget update --id Canonical.Multipass --silent --accept-package-agreements --accept-source-agreements --force 
::
::	Development 
@winget update --id Microsoft.VisualStudioCode.Insiders --silent --accept-package-agreements --accept-source-agreements
:: winget update --id JetBrains.IntelliJIDEA.Ultimate.EAP --silent --accept-package-agreements --accept-source-agreements
@winget update --id GitHub.GitHubDesktop --silent --accept-package-agreements --accept-source-agreements
:: 
@winget update --id IObit.DriverBooster --silent --accept-package-agreements --accept-source-agreements --uninstall-previous
::
::	ISO Tooling 
@winget update --id Nlitesoft.NTLite --silent --accept-package-agreements --accept-source-agreements
::
:: Wise Registry Cleaner Free 
@winget update --id XPDLS1XBTXVPP4 --silent --accept-package-agreements --accept-source-agreements
@winget update --id WiseCleaner.WiseDiskCleaner --silent --accept-package-agreements --accept-source-agreements
:: Privacy Eraser Free
@winget update --id XPDLMDV4FVRFW0 			--silent --accept-package-agreements --accept-source-agreements
:: 
@winget update --id DominikReichl.KeePass	--silent --accept-package-agreements --accept-source-agreements 
::
@winget install --id SURF.eduVPNClient 		--silent --accept-package-agreements --accept-source-agreements --force
::
:: WEB BROWSERS
:: 
@echo #### Updaten WEB browsers ... 
::	Chromium 
::	https://www.chromium.org/Home/
::
@winget update --id Brave.Brave 				--silent --accept-package-agreements --accept-source-agreements --force
@winget update --id Microsoft.Edge 				--silent --accept-package-agreements --accept-source-agreements --force 
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
@winget update --id Daum.PotPlayer 				--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id HandBrake.HandBrake			--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id Daum.PotPlayer				--silent --accept-package-agreements --accept-source-agreements --force >nul 2>&1
@winget update --id AtomixProductions.VirtualDJ --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
@winget update --id OBSProject.OBSStudio 		--silent --accept-package-agreements --accept-source-agreements >nul 2>&1
::
:: Grafisch
@echo #### Update Grafisch ...
@winget update --id JGraph.Draw 				--silent --accept-package-agreements --accept-source-agreements >nul 2>&1