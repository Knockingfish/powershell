#William Fabian
$excel = Import-Excel .\50_people.xlsx
$excel | ConvertTo-Html | Out-File .\excel.html
