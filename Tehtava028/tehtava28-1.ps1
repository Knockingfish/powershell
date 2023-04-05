#William Fabian
$processes = Get-Process
$processes | Export-Excel -Path .\1.xlsx -AutoSize