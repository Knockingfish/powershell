#William Fabian
$username = Read-Host -Prompt "Enter the new username"
$firstName = Read-Host -Prompt "Enter the first name"
$lastName = Read-Host -Prompt "Enter the last name"
$description = Read-Host -Prompt "Enter the description"

do {
    $password = Read-Host -Prompt "Enter the password" -AsSecureString
    $confirmPassword = Read-Host -Prompt "Confirm the password" -AsSecureString

    $passwordString = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))
    $confirmPasswordString = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($confirmPassword))

    if ($passwordString -ne $confirmPasswordString) {
        Write-Host "Passwords do not match. Please try again."
    }
} while ($passwordString -ne $confirmPasswordString)

New-LocalUser -Name $username -FullName "$firstName $lastName" -Password $password -Description $description
Add-LocalGroupMember -Group "Users" -Member $username

Write-Host "User created!"