# William Fabian
$file1 = ".\Nimet1.xlsx"
$file2 = ".\Nimet2.xlsx"
$all_names_path = ".\kaikki_nimet.xlsx"

$names1 = Import-Excel -Path $file1 | Select-Object -ExpandProperty "First Name"
$names2 = Import-Excel -Path $file2 | Select-Object -ExpandProperty "Last Name"

$all_names = ($names1 + $names2) | Select-Object -Unique

$all_names | Export-Excel -Path $all_names_path -AutoSize
