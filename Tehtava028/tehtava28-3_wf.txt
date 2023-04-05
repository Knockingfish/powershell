#WilliamFabian
$excel = Import-Excel .\50_people.xlsx | Select-Object -Property 'First Name','Last Name'
$names = $excel | Sort-Object -Property 'Last Name'
$names | Export-Excel -Path .\50_names.xlsx -AutoSize



