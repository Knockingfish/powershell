$begin = (Get-Date).AddDays(-30)
$end = Get-Date
$logs = Get-EventLog -LogName System -EntryType Error -After $begin -Before $end | Where-Object {$_.EntryType -eq "Error"}
$logs | Out-GridView