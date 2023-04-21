# William Fabian
Import-Module Send-MailKitMessage

$sender_email = "william.cloud.nine@gmail.com"
$sender_password = "orqwjfaakrkcwfys"
$recipient_email = "william.cloud.nine@gmail.com"

$message = New-Object MimeKit.MimeMessage
$message.From.Add([MimeKit.MailboxAddress]::Parse($sender_email))
$message.To.Add([MimeKit.MailboxAddress]::Parse($recipient_email))
$message.Subject = "Test Email"

$body = New-Object MimeKit.TextPart("plain")
$body.Text = "This is a test email sent from PowerShell using the Send-MailKitMessage module."
$message.Body = $body

$smtp_server = "smtp.gmail.com"
$smtp_port = 587

$client = New-Object MailKit.Net.Smtp.SmtpClient
$client.Connect($smtp_server, $smtp_port, [MailKit.Security.SecureSocketOptions]::StartTls)
$client.Authenticate($sender_email, $sender_password)

$client.Send($message)

$client.Disconnect($true)
