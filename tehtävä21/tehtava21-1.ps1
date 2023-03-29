#William Fabian
$username = Read-Host -Prompt "Enter the new username"
$firstName = Read-Host -Prompt "Enter the first name"
$lastName = Read-Host -Prompt "Enter the last name"
$password = Read-Host -Prompt "Enter the password" -AsSecureString
$description = Read-Host -Prompt "Enter the description"

New-LocalUser -Name $username -FullName "$firstName $lastName" -Password $password -Description $description 
Add-LocalGroupMember -Group "Users" -Member $username

Write-Host "User created!"
