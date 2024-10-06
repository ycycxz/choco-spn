$ErrorActionPreference = 'Stop'
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName\$env:ChocolateyPackageName.exe"
$url64      = 'https://cdn.jsdelivr.net/gh/ycycxz/spn@main/spn' 
$checksum64 = "354d194a596d9027dc991d3c7a52ec796ee55694b9c590f8e560e1ae0d8be01d"
Get-ChocolateyWebFile $packageName $toolsDir $url64 -checksum64 $checksum64
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\SPN.lnk" -TargetPath "$(Get-ToolsLocation)\$env:ChocolateyPackageName\$env:ChocolateyPackageName.exe" -WorkingDirectory "$(Get-ToolsLocation)\$env:ChocolateyPackageName\" -RunAsAdmin -PinToTaskbar
