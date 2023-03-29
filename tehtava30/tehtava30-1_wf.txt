# William Fabian
$nimet1 = Get-Content "Nimet1.txt"
$nimet2 = Get-Content "Nimet2.txt"
$missingNames = $nimet1 | Where-Object { $_ -notin $nimet2 }
$missingNames | Out-File -FilePath "missing_names.txt"