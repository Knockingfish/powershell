#William Fabian
$applications = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*
$applications | Out-File -FilePath 1.txt
