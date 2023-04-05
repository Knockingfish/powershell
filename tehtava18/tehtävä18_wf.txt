$objects=Get-ChildItem -Path . -Filter *.jpg
foreach ($object in $objects) {
    $date = ((Get-ExifDateTaken $object)).exifdatetaken
    $years = $date.Year
    $months = $date.Month
    $days = $date.Day
    $kuu=(Get-Culture).DateTimeFormat.GetMonthName($months)
    $paiva=(Get-Culture).DateTimeFormat.GetDayName((Get-Date $days).DayOfWeek.value__)
    New-Item -ItemType Directory -Name "$years\$months, $kuu\$days, $paiva"
    Move-Item $object .\$years\"$months, $kuu"\"$days, $paiva"
}