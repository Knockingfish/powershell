# William Fabian

Get-ChildItem -Path "$env:windir\System32" -Include *.dll -Recurse 
| Select-Object -Property Name, Directory, VersionInfo 
| Set-Content -Path .\dll.html