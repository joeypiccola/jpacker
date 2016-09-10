# for when wmf5 just isn't your thing...
msiexec /qb /i a:\PackageManagement_x64.msi
sleep -seconds 10
Install-PackageProvider -Name NuGet -Force
Install-Module psWindowsUpdate -Force