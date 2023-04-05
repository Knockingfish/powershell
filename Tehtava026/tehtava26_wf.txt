#William Fabian
$startDate = Read-Host -Prompt "Provide a start date in the format dd MM yyyy"
$endDate = Read-Host -Prompt "Provide an end date in the format dd MM yyyy"
$startDateObject = [datetime]::ParseExact($startDate, "dd MM yyyy", $null)
$endDateObject = [datetime]::ParseExact($endDate, "dd MM yyyy", $null)

$currentDate = $startDateObject
while ($currentDate -le $endDateObject) {
    $year = $currentDate.Year.ToString()
    $month = $currentDate.Month.ToString()
    $culture = Get-Culture
    $monthName = $currentDate.ToString("MMMM", $culture)
    $day = $currentDate.Day.ToString()
    $dayName = $currentDate.DayOfWeek.ToString()

    $directoryName = "$year\$month $monthName\$day $dayName"
    New-Item -ItemType Directory -Path $directoryName

    $currentDate = $currentDate.AddDays(1)
}
