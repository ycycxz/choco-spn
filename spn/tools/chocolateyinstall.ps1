$ErrorActionPreference = 'Stop'
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName\$env:ChocolateyPackageName.exe"
$url64      = 'https://cdn.jsdelivr.net/gh/ycycxz/spn@main/spn' 
$checksum64 = "48f76e9969342a708ab31e5d56e1f5523259cc99aa95e5373af4b2fcd9f2eb66"
Get-ChocolateyWebFile $packageName $toolsDir $url64 -checksum64 $checksum64
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\SPN.lnk" -TargetPath "$(Get-ToolsLocation)\$env:ChocolateyPackageName\$env:ChocolateyPackageName.exe" -WorkingDirectory "$(Get-ToolsLocation)\$env:ChocolateyPackageName\" -RunAsAdmin -PinToTaskbar
