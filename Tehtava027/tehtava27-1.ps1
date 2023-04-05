#William Fabian
$response = Invoke-WebRequest -UseBasicParsing https://ifconfig.me/
$content = $response | Select-Object -Property Content
Write-Host $content.Content