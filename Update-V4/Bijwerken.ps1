#
#   https://www.scriptrunner.com/en/blog/master-managing-winget-powershell
#

Install-Module -Name Microsoft.WinGet.Client   


# Updaten in een commmando
# Doe eerst een winget update en hierna een update van de gevonden applicaties
# Neem daarbij de zaken die bij in het lijstje staan niet mee in de update
Get-WinGetPackage | Where {$_.Source -eq 'WinGet' `
-AND $_.IsUpdateAvailable `
-AND $_.Name -notlike "*Microsoft 365*" `
-AND $_.Name -notlike "*Teams*" `
-AND $_.Name -notlike "*WeBDrive*" `
-AND $_.Name -notlike "*Foxit*" } `
| Update-WinGetPackage `
-Mode Silent `
-Scope Any


# Updaten in meerdere commandos

# Microsoft Visual Runtimes
# Get-WinGetPackage | Where {$_.Name -Like '*Visual*' -AND $_.Source -Like 'Winget'} | Update-WinGetPackage

# Microsoft .NET
# Get-WinGetPackage | Where {$_.Name -Like '*.NET*' -AND $_.Source -Like 'Winget'} | Update-WinGetPackage -Mode Silent

# Mozilla Firefox 
# Get-WinGetPackage | Where {$_.Id -Like '*Firefox*' -AND $_.Source -Like 'Winget'} | Update-WinGetPackage -InstallerType EXE

# PotPlayer
# Get-WinGetPackage | Where {$_.Name -Like '*Potplayer*' -AND $_.Source -Like 'Winget'} | Update-WinGetPackage -Mode Silent