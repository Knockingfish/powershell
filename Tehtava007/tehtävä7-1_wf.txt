# William Fabian
[int]$numero = Read-Host "Anna numero, kiitos: "

if ($numero -lt 10) 
{
    Write-Output "Annettu luku on pienempi kuin 10."
}
elseif ($numero -eq 10)
{
    Write-Output "Annettu luku on yhtä kuin 10, eli luku on 10."
}
elseif ($numero -gt 10)
{
    Write-Output "Annettu luku on isompi kuin 10."
}
else
{
    Write-Output "Anna numero, kiitos."
}

Read-Host -Prompt "Press any key to continue..."