#William Fabian
$response = Invoke-WebRequest -UseBasicParsing https://api.chucknorris.io/jokes/random
$content = $response | ConvertFrom-Json
Write-Host $content.value