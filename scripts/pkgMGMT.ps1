# for when wmf5 just isn't your thing...
# assuming bin has been downloaded and sync'd up to a:\
msiexec /qb /i a:\PackageManagement_x64.msi
sleep -seconds 10
Install-PackageProvider -Name NuGet -Force
Install-Module psWindowsUpdate -Force