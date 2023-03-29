#WilliamFabian
$excel = Import-Excel .\50_people.xlsx | Select-Object -Skip 1 -Property 'First Name','Last Name'
$excel | ConvertTo-Csv -NoTypeInformation | Select-Object -Skip 1 | ForEach-Object { $_ -replace '"' } | Out-File .\Names.txt
