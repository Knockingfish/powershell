#William Fabian
$sender_email = "varia.skriptaus.testimaili@gmail.com"
$sender_password = ConvertTo-SecureString "tauvqscpqgqxuhlo" -AsPlainText -Force
$recipient_email = "william.cloud.nine@gmail.com"
$attachment_path = "C:\Users\FabianWilliam\Downloads\Tehtavakansio\testitiedosto.txt"

$smtp_server = "smtp.gmail.com"
$smtp_port = 587

$smtp_params = @{
    From = $sender_email
    To = $recipient_email
    Subject = "Test Email with Attachment"
    SmtpServer = "smtp.gmail.com"
    Port = 587
    UseSsl = $true
    Credential = New-Object System.Management.Automation.PSCredential ($sender_email, $sender_password)
}

Send-MailMessage @smtp_params -Attachments $attachment_path
