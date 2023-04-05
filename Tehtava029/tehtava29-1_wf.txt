#William Fabian
$begin = (Get-Date).AddDays(-30)
$end = Get-Date
Get-EventLog -LogName System -After $begin -Before $end