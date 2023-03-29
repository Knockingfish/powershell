$begin = (Get-Date).AddDays(-30)
$end = Get-Date
$logs = Get-EventLog -LogName System -EntryType Error -After $begin -Before $end | Where-Object {$_.EntryType -eq "Error"}
$html = $logs | ConvertTo-Html -Property TimeGenerated, EntryType, Source, Message
$html | Out-File -FilePath ".\eventlog.html"