#William Fabian
$path = "."
$culture = [System.Globalization.CultureInfo]::CurrentCulture

Get-ChildItem $path -Filter *.mp4 | ForEach-Object {
    $filename = $_.Name
    $datestring = $filename.Substring(0, 8)
    $year = $datestring.Substring(0, 4)
    $month = $datestring.Substring(4, 2)
    $day = $datestring.Substring(6, 2)

    $monthName = $culture.DateTimeFormat.GetMonthName([int]$month)
    $dayName = $culture.DateTimeFormat.GetDayName($culture.Calendar.GetDayOfWeek([datetime]"$year-$month-$day"))

    $monthDirName = "$month $monthName"
    $dayDirName = "$day $dayName"
    $directory = Join-Path $path "$year\$monthDirName\$dayDirName"

    if (!(Test-Path $directory)) {
        New-Item -ItemType Directory -Path $directory | Out-Null
    }

    Move-Item $_.FullName $directory
}
