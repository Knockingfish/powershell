#William Fabian
$sender_email = "varia.skriptaus.testimaili@gmail.com"
$sender_password = ConvertTo-SecureString "tauvqscpqgqxuhlo" -AsPlainText -Force
$recipient_email = "william.cloud.nine@gmail.com"
$subject = "Screenshot"

Add-Type -AssemblyName System.Windows.Forms
$screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
$bitmap = New-Object System.Drawing.Bitmap($screen.Width, $screen.Height)
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$graphics.CopyFromScreen($screen.X, $screen.Y, 0, 0, $screen.Size)
$screenshot_path = "C:\Users\FabianWilliam\Downloads\Tehtavakansio\screenshot.png"
$bitmap.Save($screenshot_path, [System.Drawing.Imaging.ImageFormat]::Png)

$smtp_server = "smtp.gmail.com"
$smtp_port = 587

$smtp_params = @{
    From = $sender_email
    To = $recipient_email
    Subject = $subject
    SmtpServer = $smtp_server
    Port = $smtp_port
    UseSsl = $true
    Credential = New-Object System.Management.Automation.PSCredential ($sender_email, $sender_password)
}

Send-MailMessage @smtp_params -Attachments $screenshot_path
