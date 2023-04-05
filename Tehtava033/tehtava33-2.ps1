#William Fabian
$apps = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*
$apps = $apps | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate
$html = $apps | ConvertTo-Html -Property DisplayName, DisplayVersion, Publisher, InstallDate -Fragment
$html | Out-File -FilePath applications.html
