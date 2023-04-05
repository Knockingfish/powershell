Write-Output "This script converts a temperature from Celsius to Fahrenheit. `n";

[int32]$v1=Read-Host "Give a temperature in Celsius"
$v2=(($v1 / 5) * 9) + 32

Write-Output "`n$v1 Celsius is $v2 degrees in Fahrenheit."

Read-Host -Prompt "`nPress Enter to exit"