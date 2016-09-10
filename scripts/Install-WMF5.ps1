$url = 'https://download.microsoft.com/download/2/C/6/2C6E1B4A-EBE5-48A6-B225-2D2058A9CEFB/Win8.1AndW2K12R2-KB3134758-x64.msu'
$file = Split-Path $url -Leaf
$path = "C:\Windows\Temp\$file"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url,$path)
Invoke-Expression -Command "wusa.exe $path /quiet /norestart"
# not the best way to ensure a successful install, but it works for now
sleep -seconds 180