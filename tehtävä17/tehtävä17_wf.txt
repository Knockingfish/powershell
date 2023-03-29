$objects=Get-ChildItem -Path . -Filter *.jpg
foreach ($object in $objects) {
    $date = ((Get-ExifDateTaken $object)).exifdatetaken
    $years = $date.Year
    $months = $month.Month
    $days = $date.Day
    New-Item -ItemType Directory -Name "$years\$months\$days"
    Move-Item $object .\$years\$months\$days
}
