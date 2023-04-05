#William Fabian
Get-NetIPAddress 
| Select-Object IPAddress, InterfaceAlias, AddressFamily 
| ConvertTo-Html 
| Out-File -Encoding UTF8 ip.html