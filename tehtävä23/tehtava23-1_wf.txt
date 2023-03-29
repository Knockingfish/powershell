# William Fabian
Get-Content -Path .\names.txt | ForEach-Object {
    $fullname = ($_ -split ' ')[0,1] -join ' '
    $username = ($_ -split ' ')[0,1] -join '.'
    $password = ($_ -split ' ')[2]

    New-LocalUser -Name $username -FullName $fullName -AccountNeverExpires -Password (ConvertTo-SecureString $password -AsPlainText -Force)
    Add-LocalGroupMember -Group "Users" -Member $username
}