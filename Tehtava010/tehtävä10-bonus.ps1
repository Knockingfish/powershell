# William Fabian
while ($true) {
  for ($x = 0; $x -le 30; $x++) {
    Write-Host ('++' * $x) -ForegroundColor ([System.ConsoleColor]::GetValues([System.ConsoleColor]) | Where-Object { $_ -ne [System.ConsoleColor]::Black } | Get-Random)
    Start-Sleep -Milliseconds 16.6666
  }
  for ($x = 29; $x -ge 1; $x--) {
    Write-Host ('++' * $x) -ForegroundColor ([System.ConsoleColor]::GetValues([System.ConsoleColor]) | Where-Object { $_ -ne [System.ConsoleColor]::Black } | Get-Random)
    Start-Sleep -Milliseconds 16.6666
  }
}