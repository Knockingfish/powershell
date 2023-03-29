# William Fabian
$joulu = (Get-Date -Month 12 -Day 24).DayOfYear - (Get-Date).DayofYear; Write-Output "Jouluun on enää $joulu päivää :)."

Read-Host "Press any key to continue..."