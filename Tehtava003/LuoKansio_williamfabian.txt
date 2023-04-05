$kansio=Read-Host "Minkä niminen kansio luodaan?"
New-Item -Path . -ItemType "directory" -Name "$kansio"