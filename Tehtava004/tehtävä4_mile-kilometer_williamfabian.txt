Write-Output "This script converts kilometers into miles.`n"

[float]$kilo = Read-Host "Give a number of kilometers: "
[float]$mile = $kilo * 0.62137

Write-Output "`n$kilo is $mile miles."

Read-Host "`nPress any key to exit"