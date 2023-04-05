#William Fabian
$path = "."
$files = Get-ChildItem $path -Filter *.mp4

foreach ($file in $files) {
    $filename = $file.Name
    $datestring = $filename.Substring(0, 8)
    $year = $datestring.Substring(0, 4)
    $month = $datestring.Substring(4, 2)
    $day = $datestring.Substring(6, 2)
    
    $directory = Join-Path $path "$year\$month\$day"
    
    if (!(Test-Path $directory)) {
        New-Item -ItemType Directory -Path $directory | Out-Null
    }
    
    Move-Item $file.FullName $directory
}
