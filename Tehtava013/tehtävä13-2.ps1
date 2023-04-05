Get-ChildItem -Path C:\Windows\System32 -Include *.dll -Recurse -Force | Select-Object -Property Name, Directory | Format-List
.\tehtävä13-2.ps1 *> results.txt 2> error.txt