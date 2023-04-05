#William Fabian
Get-ChildItem -Path "." -Recurse -Force | Where-Object {$_.Attributes -match "Hidden"} | ForEach-Object { $_.Attributes = $_.Attributes -band (-bnot [System.IO.FileAttributes]::Hidden) }
