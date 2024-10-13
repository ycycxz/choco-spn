$ErrorActionPreference = 'Stop'

Get-Process -Name 'spn' -ErrorAction SilentlyContinue | Stop-Process
Get-Process -Name 'sing-box' -ErrorAction SilentlyContinue | Stop-Process
