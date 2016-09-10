:: Credit::
:: https://github.com/mwrock / http://www.hurryupandwait.io/
:: file renamed for easier reading

:: to sysprep
:: C:/windows/system32/sysprep/sysprep.exe /generalize /oobe /unattend:C:/Windows/Panther/Unattend/unattend.xml /quiet /shutdown

:: not to sysprep
shutdown /s /t 10 /f /d p:4:1 /c "Packer Shutdown"