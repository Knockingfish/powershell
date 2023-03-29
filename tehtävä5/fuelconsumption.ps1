Write-Output "This script calculates the fuel consumption of a car in liters for a given number of kilometers travelled."

[int32]$fuel = Read-Host "`nWhat is the average fuel consumption of your vehicle in liters for every 100km"

[int32]$kilo = Read-Host "`nHow far in kilometers have you driven"

$result = ($fuel / 100) * $kilo

Write-Output "`n$result liters are consummed if you drive for $kilo kilometers."

Read-Host -Prompt "Press Enter to exit"