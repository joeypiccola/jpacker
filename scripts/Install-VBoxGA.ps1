# download 7zip
(New-Object System.Net.WebClient).DownloadFile('http://www.7-zip.org/a/7z920-x64.msi', 'C:\Windows\Temp\7z920-x64.msi')
# install 7zip
msiexec /qb /i C:\Windows\Temp\7z920-x64.msi
# sleep for a bit
sleep -seconds 20
# move GA iso
Move-Item C:\Users\vagrant\VBoxGuestAdditions.iso C:\Windows\Temp
# extract GA iso
."C:\Program Files\7-Zip\7z.exe" x C:\Windows\Temp\VBoxGuestAdditions.iso -oC:\Windows\Temp\virtualbox
# install GA oracle cert
certutil -addstore -f "TrustedPublisher" A:\oracle.cer
# install GA exe
Start-Process -FilePath "C:\Windows\Temp\virtualbox\VBoxWindowsAdditions.exe" -ArgumentList "/S" -WorkingDirectory "C:\Windows\Temp\virtualbox" -Wait
# remove GA iso and exe
Remove-Item C:\Windows\Temp\virtualbox -Recurse -Force
Remove-Item C:\Windows\Temp\VBoxGuestAdditions.iso -Force