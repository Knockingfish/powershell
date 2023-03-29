# William Fabian
Get-Service | Select-Object -Property Name, Status, StartType | Sort-Object -Property Status, StartType
Read-Host -Prompt "Press any key to continue..."