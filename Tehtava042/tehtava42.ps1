#William Fabian
Get-ChildItem -Path "." -Recurse | Where-Object {$_.Length -lt 1048576} | Remove-Item
