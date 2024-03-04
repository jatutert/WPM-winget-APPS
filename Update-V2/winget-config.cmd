::
:: WinGET Configure 
:: Versie 1
::
:: John Tutert
:: 1 maart 2024
:: 
@ECHO OFF
@CLS
@winget configure  --accept-configuration-agreements --verbose -f %USERPROFILE%\winget-config.yml
@multipass set local.driver=virtualbox