# read contents of Nimet1.txt and Nimet2.txt files
$nimet1 = Get-Content "Nimet1.txt"
$nimet2 = Get-Content "Nimet2.txt"

# find names that are in both Nimet1.txt and Nimet2.txt
$matching_names = $nimet1 | Where-Object { $_ -in $nimet2 }

# save missing names to file called missing_names.txt
$matching_names | Out-File -FilePath "matching_names.txt"
