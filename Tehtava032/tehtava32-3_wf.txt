#William Fabian
Get-ChildItem -Path . -Recurse | ForEach-Object {
    if ($_.Name -ne "skripti1.ps1" -and $_.Name -ne "skripti2.ps1") {
        $_.Attributes += "Hidden"
    }
}