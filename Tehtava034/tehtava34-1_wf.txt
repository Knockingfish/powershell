#William Fabian
$file = ".\Linkit1.txt"
$links = Get-Content $file
foreach ($link in $links) {
    Start-Process $link
}
