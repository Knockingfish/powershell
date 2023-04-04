#William Fabian
$filePath = ".\Linkit2.txt"
$text = Get-Content $filePath
$regex = "(http|https)://[^\s]+"
$links = $text | Select-String -Pattern $regex -AllMatches | Foreach-Object { $_.Matches } | Foreach-Object { $_.Value }
foreach ($link in $links) {
    Start-Process $link
}
