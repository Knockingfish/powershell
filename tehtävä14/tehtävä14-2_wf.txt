#William Fabian
$years=2010..2015
$months=1..12
$days=1..31

foreach ($year in $years) {
    foreach ($month in $months) {
        foreach ($day in $days) {
            New-Item -ItemType Directory -Path $year\$month\$day}}}