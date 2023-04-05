# William Fabian
$services=Get-Service
foreach($service in $services) {if ($service.Status -eq "Running") {Write-Host $service.Name}}
Read-Host "Press any key..."