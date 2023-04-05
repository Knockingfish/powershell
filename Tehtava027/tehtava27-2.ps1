#William Fabian
$response = Invoke-WebRequest -UseBasicParsing https://wttr.in/Helsinki
$content = $response | Select-Object -Property Content
Write-Host $content.Content