$years=(Read-Host "Provide a start year")..(Read-Host "Provide an end year")
$months=1..12
$days=1..31

foreach ($year in $years) {
    foreach ($month in $months) {
        foreach ($day in $days) {
            New-Item -ItemType Directory -Path $year\$month\$day}}}