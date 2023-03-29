# William Fabian
$x=""
$y=""
for ($x) {if ($x.Length -le 30){$x=$x+'x'; Write-Host $x}}
Start-Sleep -Milliseconds 20
$y=$x
Write-Host $y=$y-'x'