# William Fabian

Get-ChildItem -Filter *.txt -Path . -Recurse | ForEach-Object {Set-Content $_.FullName -Value "123"}