# William Fabian
[int]$viiko = Read-Host "Antaa viikonpäivän numeron, kiitos: "

if ($viiko -eq 1) {
    Write-Output "Viikopäivä on maanantai."
}
elseif ($viiko -eq (2)) {
    Write-Output "Viikopäivä on tiistai."
}
elseif ($viiko -eq 3) {
    Write-Output "Viikopäivä on keskiviiko."
}
elseif ($viiko -eq 4) {
    Write-Output "Viikopäivä on torstai."
}
elseif ($viiko -eq 5) {
    Write-Output "Viikopäivä on perjantai."
}
elseif ($viiko -eq 6) {
    Write-Output "Viikopäivä on lauantai."
}
elseif ($viiko -eq 7) {
    Write-Output "Viikopäivä on sunnuntai."
}
else {
    Write-Output "Viikonpäivän numero on virheellinen!"
}