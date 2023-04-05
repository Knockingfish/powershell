# William Fabian
$banana=Read-Host "How many numbers would you like to give?"
$apple=1

$melon=while ($apple -le $banana) {Read-Host "Provide a number"; $apple++}

$berry=($melon -split ' '  | measure-object -sum).sum
$nut=$berry/$banana

Write-Output "The average of the given numbers is $nut."