# William Fabian
$notepad = Get-Process -Name "notepad" -ErrorAction SilentlyContinue

if (!$notepad)
{
    Write-Host "Notepad is not running."
}
else {
    Write-Host "Notepad is running."
}